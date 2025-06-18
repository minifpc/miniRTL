class GridGraphicsViewFormDesigner(QGraphicsView):
    def __init__(self, scene, window_size):
        super().__init__(scene)
        self.setRenderHint(QPainter.Antialiasing)
        self.setHorizontalScrollBarPolicy(Qt.ScrollBarAlwaysOn)
        self.setVerticalScrollBarPolicy(Qt.ScrollBarAlwaysOn)
        
        # Setze die Größe der Szene auf das Doppelte der Fenstergröße
        scene.setSceneRect(0, 0, window_size.width() * 2, window_size.height() * 2)
        self.selected_item   = None  # Aktuell ausgewähltes Element
        self.resize_mode     = None  # Speichert den aktiven Ziehpunkt
        self.last_resize_pos = None  # Speichert die letzte Position für die 10-Pixel-Schritte
        self.window_size     = window_size  # Speichert die Fenstergröße, um die Mausbewegung zu begrenzen
    
    def drawBackground(self, painter, rect):
        super().drawBackground(painter, rect)

        # Gitterabstand und Punktgröße festlegen
        grid_size  = 10  # Abstand zwischen den Punkten
        point_size =  2  # Punktgröße: 2x2 Pixel

        # Pinsel und Farbe für das Gitter definieren
        pen = QPen(QColor(200, 200, 200))  # Farbe der Punkte
        painter.setPen(pen)
        brush = QBrush(QColor(200, 200, 200))  # Füllfarbe der Punkte
        painter.setBrush(brush)

        # Start- und Endkoordinaten des sichtbaren Bereichs bestimmen
        left = int(rect.left()) - (int(rect.left()) % grid_size)
        top = int(rect.top()) - (int(rect.top()) % grid_size)

        # Punkt-Gitter zeichnen als 2x2 Pixel Rechtecke
        for x in range(left, int(rect.right()), grid_size):
            for y in range(top, int(rect.bottom()), grid_size):
                painter.drawRect(x, y, point_size, point_size)
    
    def drawForeground(self, painter, rect):
        super().drawForeground(painter, rect)
        
        if self.selected_item:
            pen = QPen(QColor("red"), 4, Qt.DashLine)
            painter.setPen(pen)
            item_rect = self.selected_item.sceneBoundingRect()
            painter.drawRect(item_rect)

            # Füllfarbe und Größe für die Ziehpunkte festlegen
            painter.setBrush(QBrush(QColor("red")))
            rect_size = 12

            # Berechne und zeichne die Positionen der Ziehpunkte auf jeder Seite
            for point in self.calculate_resize_handles(item_rect):
                painter.drawRect(int(point.x() - rect_size / 2), int(point.y() - rect_size / 2), rect_size, rect_size)

    def calculate_resize_handles(self, item_rect):
        """Berechnet die Positionen der Ziehpunkte an den Seiten des Rahmens."""
        left_center   = QPointF(item_rect.left ()     , item_rect.center().y())
        right_center  = QPointF(item_rect.right()     , item_rect.center().y())
        top_center    = QPointF(item_rect.center().x(), item_rect.top())
        bottom_center = QPointF(item_rect.center().x(), item_rect.bottom())
        return [left_center, right_center, top_center, bottom_center]

    def mousePressEvent(self, event):
        # Bestimme das ausgewählte Element und speichere es
        item = self.itemAt(event.pos())
        if isinstance(item, QGraphicsItem):
            self.selected_item = item
            self.last_resize_pos = self.mapToScene(event.pos())  # Setze die Ausgangsposition
        else:
            self.selected_item   = None
            self.last_resize_pos = None
        
        # Prüfe, ob ein Ziehpunkt angeklickt wurde
        pos = self.mapToScene(event.pos())
        item_rect = self.selected_item.sceneBoundingRect() if self.selected_item else None
        handles = self.calculate_resize_handles(item_rect) if item_rect else []

        # Zuordnung der Ziehpunkte zu den Seiten mit einem Toleranzbereich von 10 Pixel
        if self.selected_item and self.is_near_point(pos, handles[0], threshold=10):
            self.resize_mode = 'left'
        elif self.selected_item and self.is_near_point(pos, handles[1], threshold=10):
            self.resize_mode = 'right'
        elif self.selected_item and self.is_near_point(pos, handles[2], threshold=10):
            self.resize_mode = 'top'
        elif self.selected_item and self.is_near_point(pos, handles[3], threshold=10):
            self.resize_mode = 'bottom'
        else:
            self.resize_mode = None  # Keine Ziehpunkte ausgewählt

        self.viewport().update()
        super().mousePressEvent(event)

    def mouseMoveEvent(self, event):
        # Begrenze die Mausbewegung auf die Fenstergröße
        if event.pos().x() < 0 or event.pos().y() < 0 or event.pos().x() > self.window_size.width() or event.pos().y() > self.window_size.height():
            return

        if self.selected_item and self.resize_mode:
            pos = self.mapToScene(event.pos())
            delta = pos - self.last_resize_pos  # Berechne die Verschiebung seit dem letzten Schritt

            # Anpassung des Rechtecks in 10-Pixel-Schritten
            if self.resize_mode == 'left' and abs(delta.x()) >= 10:
                adjustment = 10 * (-1 if delta.x() > 0 else 1)
                new_width = max(10, self.selected_item.rect().width() + adjustment)
                self.selected_item.setRect(self.selected_item.rect().x() - adjustment, 
                                           self.selected_item.rect().y(), 
                                           new_width, 
                                           self.selected_item.rect().height())
                self.last_resize_pos = pos  # Aktualisiere die Position

            elif self.resize_mode == 'right' and abs(delta.x()) >= 10:
                adjustment = 10 * (1 if delta.x() > 0 else -1)
                new_width = max(10, self.selected_item.rect().width() + adjustment)
                self.selected_item.setRect(self.selected_item.rect().x(), 
                                           self.selected_item.rect().y(), 
                                           new_width, 
                                           self.selected_item.rect().height())
                self.last_resize_pos = pos  # Aktualisiere die Position

            elif self.resize_mode == 'top' and abs(delta.y()) >= 10:
                adjustment = 10 * (-1 if delta.y() > 0 else 1)
                new_height = max(10, self.selected_item.rect().height() + adjustment)
                self.selected_item.setRect(self.selected_item.rect().x(), 
                                           self.selected_item.rect().y() - adjustment, 
                                           self.selected_item.rect().width(), 
                                           new_height)
                self.last_resize_pos = pos  # Aktualisiere die Position

            elif self.resize_mode == 'bottom' and abs(delta.y()) >= 10:
                adjustment = 10 * (1 if delta.y() > 0 else -1)
                new_height = max(10, self.selected_item.rect().height() + adjustment)
                self.selected_item.setRect(self.selected_item.rect().x(), 
                                           self.selected_item.rect().y(), 
                                           self.selected_item.rect().width(), 
                                           new_height)
                self.last_resize_pos = pos  # Aktualisiere die Position

            self.viewport().update()
        elif self.selected_item:
            # Snap-Funktion beim Bewegen des Elements
            grid_size = 10
            new_pos = self.mapToScene(event.pos())
            snapped_x = round(new_pos.x() / grid_size) * grid_size
            snapped_y = round(new_pos.y() / grid_size) * grid_size

            # Verschieben der Szene, wenn sich das Element an den Rand nähert
            buffer_zone = 20  # Abstand zum Rand, um die Szene zu verschieben
            move_offset = 10  # Verschiebung der Szene in Pixeln
            if new_pos.x() > self.window_size.width() - buffer_zone:
                self.setSceneRect(self.sceneRect().adjusted(-move_offset, 0, move_offset, 0))
            elif new_pos.x() < buffer_zone:
                self.setSceneRect(self.sceneRect().adjusted(move_offset, 0, -move_offset, 0))
            if new_pos.y() > self.window_size.height() - buffer_zone:
                self.setSceneRect(self.sceneRect().adjusted(0, -move_offset, 0, move_offset))
            elif new_pos.y() < buffer_zone:
                self.setSceneRect(self.sceneRect().adjusted(0, move_offset, 0, -move_offset))

            self.selected_item.setPos(snapped_x, snapped_y)
            self.viewport().update()
        else:
            super().mouseMoveEvent(event)

    def mouseReleaseEvent(self, event):
        # Zurücksetzen des Resize-Modus nach dem Loslassen
        self.resize_mode = None
        super().mouseReleaseEvent(event)

    def is_near_point(self, pos, point, threshold=10):
        """Hilfsfunktion zur Überprüfung, ob die Position `pos` nahe an einem bestimmten Punkt `point` liegt."""
        return abs(pos.x() - point.x()) < threshold and abs(pos.y() - point.y()) < threshold

class DraggableComponentFormDesigner(QGraphicsRectItem):
    def __init__(self, name, x=0, y=0, width=50, height=50, view=None, label="", connections=[]):
        super().__init__(0, 0, width, height)
        self.setFlag(QGraphicsItem.ItemIsMovable)
        self.setFlag(QGraphicsItem.ItemIsSelectable)
        self.setPos(x, y)
        self.name = name
        self.label = label
        self.connections = connections  # Speichert relative Positionen der Verankerungen
        self.view = view
        self.last_snap_pos = QPointF(x, y)
        self.scroll_timer = QTimer()
        self.scroll_timer.setSingleShot(True)
        self.scroll_timer.timeout.connect(self.resume_movement)
        self.is_scrolling = False
        
    def resume_movement(self):
        self.is_scrolling = False
    
    def paint(self, painter, option, widget):
        # Hintergrundfarbe und Rahmen zeichnen
        painter.setBrush(QColor("skyblue"))
        painter.drawRect(self.rect())
        
        # Text im Zentrum des Bauteils zeichnen
        painter.setPen(QPen(Qt.black))
        painter.drawText(self.rect(), Qt.AlignCenter, self.label)


class GridGraphicsView(QGraphicsView):
    def __init__(self, scene, window_size):
        super().__init__(scene)
        self.setRenderHint(QPainter.Antialiasing)
        self.setHorizontalScrollBarPolicy(Qt.ScrollBarAlwaysOn)
        self.setVerticalScrollBarPolicy(Qt.ScrollBarAlwaysOn)
        
        # Setze die Größe der Szene auf das Doppelte der Fenstergröße
        scene.setSceneRect(0, 0, window_size.width() * 2, window_size.height() * 2)
        self.selected_item = None  # Aktuell ausgewähltes Element
        self.resize_mode = None  # Speichert den aktiven Ziehpunkt
        self.last_resize_pos = None  # Speichert die letzte Position für die 10-Pixel-Schritte
    
    def drawBackground(self, painter, rect):
        super().drawBackground(painter, rect)

        # Gitterabstand und Punktgröße festlegen
        grid_size  = 10  # Abstand zwischen den Punkten
        point_size =  2  # Punktgröße: 2x2 Pixel

        # Pinsel und Farbe für das Gitter definieren
        pen = QPen(QColor(200, 200, 200))  # Farbe der Punkte
        painter.setPen(pen)
        brush = QBrush(QColor(200, 200, 200))  # Füllfarbe der Punkte
        painter.setBrush(brush)

        # Start- und Endkoordinaten des sichtbaren Bereichs bestimmen
        left = int(rect.left()) - (int(rect.left()) % grid_size)
        top = int(rect.top()) - (int(rect.top()) % grid_size)

        # Punkt-Gitter zeichnen als 2x2 Pixel Rechtecke
        for x in range(left, int(rect.right()), grid_size):
            for y in range(top, int(rect.bottom()), grid_size):
                painter.drawRect(x, y, point_size, point_size)
    
    def drawForeground(self, painter, rect):
        super().drawForeground(painter, rect)
        
        if self.selected_item:
            pen = QPen(QColor("red"), 4, Qt.DashLine)
            painter.setPen(pen)
            item_rect = self.selected_item.sceneBoundingRect()
            painter.drawRect(item_rect)

            # Füllfarbe und Größe für die Ziehpunkte festlegen
            painter.setBrush(QBrush(QColor("red")))
            rect_size = 12

            # Berechne und zeichne die Positionen der Ziehpunkte auf jeder Seite
            for point in self.calculate_resize_handles(item_rect):
                painter.drawRect(int(point.x() - rect_size / 2), int(point.y() - rect_size / 2), rect_size, rect_size)

    def calculate_resize_handles(self, item_rect):
        """Berechnet die Positionen der Ziehpunkte an den Seiten des Rahmens."""
        left_center = QPointF(item_rect.left(), item_rect.center().y())
        right_center = QPointF(item_rect.right(), item_rect.center().y())
        top_center = QPointF(item_rect.center().x(), item_rect.top())
        bottom_center = QPointF(item_rect.center().x(), item_rect.bottom())
        return [left_center, right_center, top_center, bottom_center]

    def mousePressEvent(self, event):
        # Bestimme das ausgewählte Element und speichere es
        item = self.itemAt(event.pos())
        if isinstance(item, QGraphicsItem):
            self.selected_item = item
            self.last_resize_pos = self.mapToScene(event.pos())  # Setze die Ausgangsposition
        else:
            self.selected_item   = None
            self.last_resize_pos = None
        
        # Prüfe, ob ein Ziehpunkt angeklickt wurde
        pos = self.mapToScene(event.pos())
        item_rect = self.selected_item.sceneBoundingRect() if self.selected_item else None
        handles = self.calculate_resize_handles(item_rect) if item_rect else []

        # Zuordnung der Ziehpunkte zu den Seiten mit einem Toleranzbereich von 10 Pixel
        if self.selected_item and self.is_near_point(pos, handles[0], threshold=10):
            self.resize_mode = 'left'
        elif self.selected_item and self.is_near_point(pos, handles[1], threshold=10):
            self.resize_mode = 'right'
        elif self.selected_item and self.is_near_point(pos, handles[2], threshold=10):
            self.resize_mode = 'top'
        elif self.selected_item and self.is_near_point(pos, handles[3], threshold=10):
            self.resize_mode = 'bottom'
        else:
            self.resize_mode = None  # Keine Ziehpunkte ausgewählt

        self.viewport().update()
        super().mousePressEvent(event)

    def mouseMoveEvent(self, event):
        if self.selected_item and self.resize_mode:
            pos = self.mapToScene(event.pos())
            delta = pos - self.last_resize_pos  # Berechne die Verschiebung seit dem letzten Schritt

            # Anpassung des Rechtecks in 10-Pixel-Schritten
            if self.resize_mode == 'left' and abs(delta.x()) >= 10:
                adjustment = 10 * (-1 if delta.x() > 0 else 1)
                new_width = max(10, self.selected_item.rect().width() + adjustment)
                self.selected_item.setRect(self.selected_item.rect().x() - adjustment, 
                                           self.selected_item.rect().y(), 
                                           new_width, 
                                           self.selected_item.rect().height())
                self.last_resize_pos = pos  # Aktualisiere die Position

            elif self.resize_mode == 'right' and abs(delta.x()) >= 10:
                adjustment = 10 * (1 if delta.x() > 0 else -1)
                new_width = max(10, self.selected_item.rect().width() + adjustment)
                self.selected_item.setRect(self.selected_item.rect().x(), 
                                           self.selected_item.rect().y(), 
                                           new_width, 
                                           self.selected_item.rect().height())
                self.last_resize_pos = pos  # Aktualisiere die Position

            elif self.resize_mode == 'top' and abs(delta.y()) >= 10:
                adjustment = 10 * (-1 if delta.y() > 0 else 1)
                new_height = max(10, self.selected_item.rect().height() + adjustment)
                self.selected_item.setRect(self.selected_item.rect().x(), 
                                           self.selected_item.rect().y() - adjustment, 
                                           self.selected_item.rect().width(), 
                                           new_height)
                self.last_resize_pos = pos  # Aktualisiere die Position

            elif self.resize_mode == 'bottom' and abs(delta.y()) >= 10:
                adjustment = 10 * (1 if delta.y() > 0 else -1)
                new_height = max(10, self.selected_item.rect().height() + adjustment)
                self.selected_item.setRect(self.selected_item.rect().x(), 
                                           self.selected_item.rect().y(), 
                                           self.selected_item.rect().width(), 
                                           new_height)
                self.last_resize_pos = pos  # Aktualisiere die Position

            self.viewport().update()
        else:
            super().mouseMoveEvent(event)

    def mouseReleaseEvent(self, event):
        # Zurücksetzen des Resize-Modus nach dem Loslassen
        self.resize_mode = None
        super().mouseReleaseEvent(event)

    def is_near_point(self, pos, point, threshold=10):
        """Hilfsfunktion zur Überprüfung, ob die Position `pos` nahe an einem bestimmten Punkt `point` liegt."""
        return abs(pos.x() - point.x()) < threshold and abs(pos.y() - point.y()) < threshold

class CircuitDesigner(QWidget):
    def __init__(self):
        super().__init__()
        
        # QGraphicsScene und GridGraphicsView erstellen
        window_size = QSize(800, 600)
        self.scene  = QGraphicsScene()
        self.view   = GridGraphicsViewFormDesigner(self.scene, window_size)
        
        # Layout für das QWidget
        layout = QVBoxLayout()
        layout.addWidget(self.view)
        self.setLayout(layout)
        
        
        #self.setCentralWidget(self.view)
        #self.resize(window_size)
        self.init_components()

    def init_components(self):
        # Bauteile mit individuellen Beschriftungen und Verankerungen hinzufügen
        and_gate = DraggableComponentFormDesigner(
            "AND-Gate", x=100, y=100, view=self.view, label="AND",
            connections=[
                (QPointF(-10, 10), QPointF( 0, 10)),    # Linke obere Verankerung
                (QPointF(-10, 30), QPointF( 0, 30)),    # Linke untere Verankerung
                (QPointF( 50, 20), QPointF(60, 20))     # Rechte Verankerung
            ]
        )
        
        lamp = DraggableComponentFormDesigner(
            "Lamp", x=200, y=200, view=self.view, label="LED",
            connections=[
                (QPointF(-10, 20), QPointF( 0, 20)),    # Linke Verankerung
                (QPointF( 50, 20), QPointF(60, 20))     # Rechte Verankerung
            ]
        )
        
        battery = DraggableComponentFormDesigner(
            "Battery", x=300, y=300, view=self.view, label="SRC",
            connections=[
                (QPointF(-10, 20), QPointF( 0, 20)),    # Linke Verankerung
                (QPointF( 50, 20), QPointF(60, 20))     # Rechte Verankerung
            ]
        )
        
        wire1 = DraggableComponent(
            "Wire1", x=200, y=100, width=100, height=2, view=self.view,
            connections=[
                (QPointF(  0,0), QPointF(  0,0)),
                (QPointF(100,0), QPointF(100,0))
            ]
        )
        
        self.scene.addItem(and_gate)
        self.scene.addItem(lamp)
        self.scene.addItem(battery)
        self.scene.addItem(wire1)
