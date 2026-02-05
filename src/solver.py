# solver_qt5.py
# Voraussetzungen: pip install PyQt5 sympy matplotlib

from __future__ import annotations
import sys
from dataclasses import dataclass
from typing import Any, List, Tuple, Dict, Union, Optional

from fractions import Fraction

import sympy as sp
from sympy.parsing.sympy_parser import parse_expr
from sympy import Eq

from PyQt5.QtCore import Qt
from PyQt5.QtWidgets import (
    QApplication, QWidget, QMainWindow, QVBoxLayout, QHBoxLayout, QLabel,
    QLineEdit, QPushButton, QTextEdit, QComboBox, QTabWidget, QMessageBox,
    QSpinBox, QFormLayout
)

# Matplotlib in Qt einbetten
from matplotlib.backends.backend_qt5agg import FigureCanvasQTAgg as FigureCanvas
from matplotlib.figure import Figure
import numpy as np

# ---------------- Schritte-Protokoll ----------------
@dataclass
class Step:
    action: str
    detail: str
    state: str  # menschenlesbar

class StepRecorder:
    def __init__(self):
        self.steps: List[Step] = []

    def add(self, action: str, detail: str, state_obj: Any):
        try:
            state = sp.pretty(state_obj)
        except Exception:
            state = str(state_obj)
        self.steps.append(Step(action, detail, state))

    def as_text(self) -> str:
        lines = []
        for i, s in enumerate(self.steps, 1):
            lines.append(f"[{i}] {s.action}: {s.detail}\n{s.state}")
        return "\n\n".join(lines)

    def clear(self):
        self.steps.clear()


# ---------------- Algebraische Tools ----------------

class AlgebraTools:
    def __init__(self, rec: StepRecorder):
        self.rec = rec

    def parse(self, expr_str: str) -> sp.Expr:
        expr = parse_expr(expr_str, evaluate=False)
        self.rec.add("Parser", f"Ausdruck geparst: {expr_str}", expr)
        return expr

    def expand_binomial(self, expr: Union[str, sp.Expr]) -> sp.Expr:
        expr = self.parse(expr) if isinstance(expr, str) else expr
        after = sp.expand(expr)
        self.rec.add("Binomische Formel / Expand", "Ausdruck expandiert", after)
        return after

    def factor(self, expr: Union[str, sp.Expr]) -> sp.Expr:
        expr = self.parse(expr) if isinstance(expr, str) else expr
        after = sp.factor(expr)
        self.rec.add("Faktorisierung", "Gemeinsame Faktoren/Polynome herausgezogen", after)
        return after

    def simplify_expr(self, expr: Union[str, sp.Expr]) -> sp.Expr:
        expr = self.parse(expr) if isinstance(expr, str) else expr
        after = sp.simplify(expr)
        self.rec.add("Vereinfachen", "Algebraische Vereinfachung", after)
        return after

    def log_rules(self, expr: Union[str, sp.Expr]) -> sp.Expr:
        expr = self.parse(expr) if isinstance(expr, str) else expr
        x = sp.logcombine(expr, force=True)
        self.rec.add("Log-Regeln", "log combine/split", x)
        return x

    def exp_rules(self, expr: Union[str, sp.Expr]) -> sp.Expr:
        expr = self.parse(expr) if isinstance(expr, str) else expr
        x = sp.powsimp(sp.expand(expr), force=True)
        self.rec.add("Exp-/Potenz-Regeln", "powsimp + expand", x)
        return x

    def sqrt_simplify(self, expr: Union[str, sp.Expr]) -> sp.Expr:
        expr = self.parse(expr) if isinstance(expr, str) else expr
        x = sp.sqrtdenest(sp.sqrtdenest(expr))
        x = sp.nsimplify(x)
        self.rec.add("Wurzel-Vereinfachung", "sqrtdenest + nsimplify", x)
        return x

    def binom_coeff(self, n: int, k: int) -> int:
        self.rec.add("Binomialkoeffizient", f"n={n}, k={k}", "C(n,k) = n!/(k!(n-k)!)")
        val = sp.binomial(n, k)
        self.rec.add("Berechnung", "SymPy binomial", val)
        return int(val)

    def gcd_steps(self, a: int, b: int) -> int:
        self.rec.add("GGT", f"Start a={a}, b={b}", f"ggt({a},{b})")
        x, y = abs(a), abs(b)
        while y != 0:
            q = x // y
            r = x % y
            self.rec.add("Euklid-Schritt", f"{x} = {q}*{y} + {r}", f"Rest={r}")
            x, y = y, r
        self.rec.add("Ergebnis", "GGT gefunden", x)
        return x

    def lcm_from_gcd(self, a: int, b: int) -> int:
        g = self.gcd_steps(a, b)
        l = abs(a*b) // g if g != 0 else 0
        self.rec.add("KGV", f"KGV = |a*b|/GGT = {abs(a*b)}/{g}", l)
        return l

    def percent_part(self, base: float, percent: float) -> float:
        res = base * percent / 100.0
        self.rec.add("Prozent", f"{percent}% von {base}", res)
        return res

    def percent_up(self, base: float, percent: float) -> float:
        res = base * (1 + percent/100.0)
        self.rec.add("Prozent-Aufschlag", f"+{percent}% auf {base}", res)
        return res

    def percent_down(self, base: float, percent: float) -> float:
        res = base * (1 - percent/100.0)
        self.rec.add("Prozent-Abschlag", f"-{percent}% von {base}", res)
        return res

    def dreisatz(self, a: float, b: float, c: float) -> float:
        self.rec.add("Dreisatz", f"{a} entspricht {b}; gesucht für {c}", "")
        x = (b / a) * c
        self.rec.add("Berechnung", "x = (b/a)*c", x)
        return x

    def dreisatz_zusammengesetzt(self, basis: float, faktoren: List[Tuple[float, float, str]]) -> float:
        """faktoren: Liste aus (alt, neu, typ) mit typ in {"pro", "anti"}
        pro: skaliere mit neu/alt; anti: skaliere mit alt/neu
        """
        val = basis
        self.rec.add("Zusammengesetzter Dreisatz", f"Startwert {basis}", val)
        for alt, neu, typ in faktoren:
            if typ == "pro":
                val = val * (neu / alt)
                self.rec.add("Skalierung (pro)", f"× (neu/alt) = {neu}/{alt}", val)
            else:
                val = val * (alt / neu)
                self.rec.add("Skalierung (anti)", f"× (alt/neu) = {alt}/{neu}", val)
        return val


# ---------------- Gleichungen & LGS ----------------

class EquationSolver:
    def __init__(self, rec: StepRecorder):
        self.rec = rec

    def solve_eq(self, left: Union[str, sp.Expr], right: Union[str, sp.Expr], var: str = "x"):
        x = sp.Symbol(var)
        L = parse_expr(left, evaluate=False) if isinstance(left, str) else left
        R = parse_expr(right, evaluate=False) if isinstance(right, str) else right
        self.rec.add("Gleichung", f"{left} = {right}", sp.Eq(L, R))
        expr = L - R
        self.rec.add("Normalform", "Alles auf eine Seite", expr)
        expr_simpl = sp.simplify(expr)
        if expr_simpl != expr:
            self.rec.add("Vereinfachen", "simplify", expr_simpl)
        sol = sp.solve(sp.Eq(expr_simpl, 0), x, dict=True)
        self.rec.add("Lösung", "solve()", sol)
        return sol

class LinearSystemSolver:
    def __init__(self, rec: StepRecorder):
        self.rec = rec

    @staticmethod
    def _to_fraction_matrix(A: List[List[float]], b: List[float]):
        M = [[Fraction(a).limit_denominator() for a in row] for row in A]
        v = [Fraction(val).limit_denominator() for val in b]
        return M, v

    def solve(self, A: List[List[float]], b: List[float]) -> Dict[str, Any]:
        M, v = self._to_fraction_matrix(A, b)
        m, n = len(M), len(M[0])
        self.rec.add("LGS Start", f"{m} Gleichungen, {n} Unbekannte", f"A|b = {M}|{v}")

        row = 0
        pivots = []
        for col in range(n):
            pivot = None
            for r in range(row, m):
                if M[r][col] != 0:
                    pivot = r
                    break
            if pivot is None:
                continue
            if pivot != row:
                M[row], M[pivot] = M[pivot], M[row]
                v[row], v[pivot] = v[pivot], v[row]
                self.rec.add("Zeilen tauschen", f"R{row+1} <-> R{pivot+1}", f"{M}|{v}")

            fac = M[row][col]
            if fac != 1:
                M[row] = [x / fac for x in M[row]]
                v[row] = v[row] / fac
                self.rec.add("Pivotskalierung", f"R{row+1} := R{row+1}/{fac}", f"{M}|{v}")

            for r in range(m):
                if r == row:
                    continue
                if M[r][col] != 0:
                    fac = M[r][col]
                    M[r] = [a - fac * b for a, b in zip(M[r], M[row])]
                    v[r] = v[r] - fac * v[row]
                    self.rec.add("Elimination", f"R{r+1} := R{r+1} - ({fac})*R{row+1}", f"{M}|{v}")

            pivots.append(col)
            row += 1
            if row == m:
                break

        for r in range(m):
            if all(M[r][c] == 0 for c in range(n)) and v[r] != 0:
                self.rec.add("Widerspruch", "0 = c ≠ 0", f"R{r+1}")
                return {"type": "none", "solution": None, "rref": (M, v)}

        if len(pivots) == n:
            sol = [Fraction(0) for _ in range(n)]
            for r, c in enumerate(pivots):
                sol[c] = v[r]
            self.rec.add("Lösungstyp", "eindeutig", sol)
            return {"type": "unique", "solution": [float(s) for s in sol], "rref": (M, v)}
        else:
            self.rec.add("Lösungstyp", "unendlich viele (Parameter)", f"Pivots: {pivots}")
            return {"type": "infinite", "solution": None, "rref": (M, v)}

# ---------------- Matplotlib Canvas ----------------
class MplCanvas(FigureCanvas):
    def __init__(self, parent=None, width=5, height=4, dpi=100):
        fig = Figure(figsize=(width, height), dpi=dpi)
        self.ax = fig.add_subplot(111)
        super().__init__(fig)
        self.setParent(parent)

    def clear(self):
        self.ax.clear()
        self.draw()


# ---------------- Haupt-GUI ----------------

class SolverWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("Rechen- & Lösungsweg-Solver (Qt5)")
        self.resize(1000, 700)

        self.rec = StepRecorder()
        self.alg = AlgebraTools(self.rec)
        self.eq = EquationSolver(self.rec)
        self.lgs = LinearSystemSolver(self.rec)

        tabs = QTabWidget()
        tabs.addTab(self._build_algebra_tab(), "Algebra")
        tabs.addTab(self._build_equation_tab(), "Gleichung")
        tabs.addTab(self._build_lgs_tab(), "LGS")
        tabs.addTab(self._build_plot_tab(), "Plot")

        self.setCentralWidget(tabs)

    # ------- Hilfen -------
    def show_steps(self, target: QTextEdit):
        target.setPlainText(self.rec.as_text())

    def error(self, msg: str):
        QMessageBox.critical(self, "Fehler", msg)

    # ------- Algebra-Tab -------
    def _build_algebra_tab(self) -> QWidget:
        w = QWidget()
        layout = QVBoxLayout(w)

        expr_row = QHBoxLayout()
        expr_row.addWidget(QLabel("Ausdruck:"))
        self.algebra_expr = QLineEdit("(x+3)**2")
        expr_row.addWidget(self.algebra_expr)

        self.algebra_op = QComboBox()
        self.algebra_op.addItems([
            "Expand (binomisch)",
            "Faktorisieren",
            "Vereinfachen",
            "Log-Regeln",
            "Exp-/Potenz-Regeln",
            "Wurzel vereinfachen",
        ])

        do_btn = QPushButton("Ausführen")
        do_btn.clicked.connect(self.on_algebra_run)

        top = QHBoxLayout()
        top.addLayout(expr_row)
        top.addWidget(self.algebra_op)
        top.addWidget(do_btn)

        self.steps_algebra = QTextEdit()
        self.steps_algebra.setReadOnly(True)

        # Zahlentheorie/Prozent/Dreisatz (kleine Werkzeuge)
        small_tools = QHBoxLayout()

        # Binomialkoeffizient
        self.n_spin = QSpinBox(); self.n_spin.setRange(0, 200); self.n_spin.setValue(10)
        self.k_spin = QSpinBox(); self.k_spin.setRange(0, 200); self.k_spin.setValue(3)
        binom_btn = QPushButton("C(n,k)")
        binom_btn.clicked.connect(self.on_binom)

        # GGT/KGV
        self.ggt_a = QLineEdit("252")
        self.ggt_b = QLineEdit("105")
        ggt_btn = QPushButton("GGT & KGV")
        ggt_btn.clicked.connect(self.on_gcd_lcm)

        # Prozent
        self.percent_base = QLineEdit("120")
        self.percent_val = QLineEdit("15")
        p_combo = QComboBox(); p_combo.addItems(["Anteil","Aufschlag","Abschlag"])
        self.percent_combo = p_combo
        p_btn = QPushButton("Prozent rechnen")
        p_btn.clicked.connect(self.on_percent)

        # Dreisatz
        self.ds_a = QLineEdit("4"); self.ds_b = QLineEdit("10"); self.ds_c = QLineEdit("7")
        ds_btn = QPushButton("Dreisatz")
        ds_btn.clicked.connect(self.on_dreisatz)

        small_tools.addWidget(QLabel("n:")); small_tools.addWidget(self.n_spin)
        small_tools.addWidget(QLabel("k:")); small_tools.addWidget(self.k_spin)
        small_tools.addWidget(binom_btn)
        small_tools.addSpacing(20)
        small_tools.addWidget(QLabel("a:")); small_tools.addWidget(self.ggt_a)
        small_tools.addWidget(QLabel("b:")); small_tools.addWidget(self.ggt_b)
        small_tools.addWidget(ggt_btn)
        small_tools.addSpacing(20)
        small_tools.addWidget(QLabel("Basis:")); small_tools.addWidget(self.percent_base)
        small_tools.addWidget(QLabel("%:")); small_tools.addWidget(self.percent_val)
        small_tools.addWidget(self.percent_combo)
        small_tools.addWidget(p_btn)
        small_tools.addSpacing(20)
        small_tools.addWidget(QLabel("a→b:")); small_tools.addWidget(self.ds_a); small_tools.addWidget(self.ds_b)
        small_tools.addWidget(QLabel("c:")); small_tools.addWidget(self.ds_c)
        small_tools.addWidget(ds_btn)

        layout.addLayout(top)
        layout.addLayout(small_tools)
        layout.addWidget(QLabel("Schritte:"))
        layout.addWidget(self.steps_algebra)
        return w

    def on_algebra_run(self):
        try:
            self.rec.clear()
            expr = self.algebra_expr.text().strip()
            op = self.algebra_op.currentText()
            if op.startswith("Expand"):
                res = self.alg.expand_binomial(expr)
            elif op.startswith("Faktorisieren"):
                res = self.alg.factor(expr)
            elif op.startswith("Vereinfachen"):
                res = self.alg.simplify_expr(expr)
            elif op.startswith("Log"):
                res = self.alg.log_rules(expr)
            elif op.startswith("Exp-/Potenz"):
                res = self.alg.exp_rules(expr)
            elif op.startswith("Wurzel"):
                res = self.alg.sqrt_simplify(expr)
            else:
                res = None
            self.rec.add("Ergebnis", op, res)
            self.show_steps(self.steps_algebra)
        except Exception as e:
            self.error(str(e))

    def on_binom(self):
        try:
            self.rec.clear()
            n, k = self.n_spin.value(), self.k_spin.value()
            val = self.alg.binom_coeff(n, k)
            self.rec.add("Ergebnis", "C(n,k)", val)
            self.show_steps(self.steps_algebra)
        except Exception as e:
            self.error(str(e))

    def on_gcd_lcm(self):
        try:
            self.rec.clear()
            a = int(self.ggt_a.text()); b = int(self.ggt_b.text())
            g = self.alg.gcd_steps(a, b)
            l = self.alg.lcm_from_gcd(a, b)
            self.rec.add("Zusammenfassung", "GGT & KGV", f"GGT={g}, KGV={l}")
            self.show_steps(self.steps_algebra)
        except Exception as e:
            self.error(str(e))

    def on_percent(self):
        try:
            self.rec.clear()
            base = float(self.percent_base.text()); p = float(self.percent_val.text())
            mode = self.percent_combo.currentText()
            if mode == "Anteil":
                v = self.alg.percent_part(base, p)
            elif mode == "Aufschlag":
                v = self.alg.percent_up(base, p)
            else:
                v = self.alg.percent_down(base, p)
            self.rec.add("Ergebnis", mode, v)
            self.show_steps(self.steps_algebra)
        except Exception as e:
            self.error(str(e))

    def on_dreisatz(self):
        try:
            self.rec.clear()
            a = float(self.ds_a.text()); b = float(self.ds_b.text()); c = float(self.ds_c.text())
            v = self.alg.dreisatz(a, b, c)
            self.rec.add("Ergebnis", "Dreisatz", v)
            self.show_steps(self.steps_algebra)
        except Exception as e:
            self.error(str(e))

    # ------- Gleichung-Tab -------
    def _build_equation_tab(self) -> QWidget:
        w = QWidget()
        layout = QVBoxLayout(w)

        row = QHBoxLayout()
        self.eq_left = QLineEdit("2*x + 4")
        self.eq_right = QLineEdit("x - 5")
        var_row = QHBoxLayout()
        self.eq_var = QLineEdit("x"); self.eq_var.setFixedWidth(60)
        var_row.addWidget(QLabel("Variable:")); var_row.addWidget(self.eq_var)

        row.addWidget(QLabel("Linke Seite:")); row.addWidget(self.eq_left)
        row.addWidget(QLabel("Rechte Seite:")); row.addWidget(self.eq_right)
        row.addLayout(var_row)

        btn = QPushButton("Lösen")
        btn.clicked.connect(self.on_solve_eq)

        self.steps_eq = QTextEdit(); self.steps_eq.setReadOnly(True)

        layout.addLayout(row)
        layout.addWidget(btn)
        layout.addWidget(QLabel("Schritte:"))
        layout.addWidget(self.steps_eq)
        return w

    def on_solve_eq(self):
        try:
            self.rec.clear()
            L = self.eq_left.text().strip(); R = self.eq_right.text().strip(); v = self.eq_var.text().strip() or "x"
            sol = self.eq.solve_eq(L, R, v)
            self.rec.add("Lösung (zusammen)", f"{v}", sol)
            self.show_steps(self.steps_eq)
        except Exception as e:
            self.error(str(e))

    # ------- LGS-Tab -------
    def _build_lgs_tab(self) -> QWidget:
        w = QWidget()
        layout = QVBoxLayout(w)

        form = QFormLayout()
        self.A_edit = QLineEdit("2,1; 1,-1")
        self.b_edit = QLineEdit("4; -1")
        form.addRow(QLabel("Matrix A (Zeilen durch ';', Werte durch ',')"), self.A_edit)
        form.addRow(QLabel("Vektor b (durch ';')"), self.b_edit)

        btn = QPushButton("Gauss-Jordan lösen")
        btn.clicked.connect(self.on_solve_lgs)

        self.steps_lgs = QTextEdit(); self.steps_lgs.setReadOnly(True)

        layout.addLayout(form)
        layout.addWidget(btn)
        layout.addWidget(QLabel("Schritte:"))
        layout.addWidget(self.steps_lgs)
        return w

    def parse_matrix(self, txt: str) -> List[List[float]]:
        rows = [r.strip() for r in txt.split(';') if r.strip()]
        M = []
        for r in rows:
            M.append([float(x.strip()) for x in r.split(',') if x.strip()])
        return M

    def parse_vector(self, txt: str) -> List[float]:
        return [float(x.strip()) for x in txt.split(';') if x.strip()]

    def on_solve_lgs(self):
        try:
            self.rec.clear()
            A = self.parse_matrix(self.A_edit.text())
            b = self.parse_vector(self.b_edit.text())
            if len(A) == 0 or len(A) != len(b):
                raise ValueError("Dimensionen passen nicht (Zeilen von A vs. Länge von b)")
            res = self.lgs.solve(A, b)
            self.rec.add("Ergebnis", res.get("type", ""), res.get("solution", ""))
            self.show_steps(self.steps_lgs)
        except Exception as e:
            self.error(str(e))

    # ------- Plot-Tab -------
    def _build_plot_tab(self) -> QWidget:
        w = QWidget()
        layout = QVBoxLayout(w)

        row = QHBoxLayout()
        self.plot_exprs = QLineEdit("x**2-4, x-1")
        row.addWidget(QLabel("Funktionen f(x), getrennt durch ',' :"))
        row.addWidget(self.plot_exprs)

        xrow = QHBoxLayout()
        self.xmin = QLineEdit("-4"); self.xmax = QLineEdit("4")
        xrow.addWidget(QLabel("x min:")); xrow.addWidget(self.xmin)
        xrow.addWidget(QLabel("x max:")); xrow.addWidget(self.xmax)

        btn = QPushButton("Plotten")
        btn.clicked.connect(self.on_plot)

        self.canvas = MplCanvas(self, width=5, height=4, dpi=100)

        layout.addLayout(row)
        layout.addLayout(xrow)
        layout.addWidget(btn)
        layout.addWidget(self.canvas)
        return w

    def on_plot(self):
        try:
            self.canvas.clear()
            xs = np.linspace(float(self.xmin.text()), float(self.xmax.text()), 400)
            exprs = [e.strip() for e in self.plot_exprs.text().split(',') if e.strip()]
            x = sp.Symbol('x')
            for e in exprs:
                expr = parse_expr(e, evaluate=False)
                f = sp.lambdify(x, expr, 'numpy')
                ys = f(xs)
                self.canvas.ax.plot(xs, ys, label=str(expr))
            self.canvas.ax.grid(True)
            self.canvas.ax.set_xlabel('x'); self.canvas.ax.set_ylabel('y')
            self.canvas.ax.legend()
            self.canvas.draw()
        except Exception as e:
            self.error(str(e))

def main():
    app = QApplication(sys.argv)
    win = SolverWindow()
    win.show()
    sys.exit(app.exec_())

if __name__ == "__main__":
    main()
