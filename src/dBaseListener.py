# Generated from dBase.g4 by ANTLR 4.13.2
from antlr4 import *
if "." in __name__:
    from .dBaseParser import dBaseParser
else:
    from dBaseParser import dBaseParser

# This class defines a complete listener for a parse tree produced by dBaseParser.
class dBaseListener(ParseTreeListener):

    # Enter a parse tree produced by dBaseParser#prog.
    def enterProg(self, ctx:dBaseParser.ProgContext):
        pass

    # Exit a parse tree produced by dBaseParser#prog.
    def exitProg(self, ctx:dBaseParser.ProgContext):
        pass


    # Enter a parse tree produced by dBaseParser#expr.
    def enterExpr(self, ctx:dBaseParser.ExprContext):
        pass

    # Exit a parse tree produced by dBaseParser#expr.
    def exitExpr(self, ctx:dBaseParser.ExprContext):
        pass



del dBaseParser