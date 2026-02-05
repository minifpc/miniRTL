# Generated from dBase.g4 by ANTLR 4.13.2
from antlr4 import *
if "." in __name__:
    from .dBaseParser import dBaseParser
else:
    from dBaseParser import dBaseParser

# This class defines a complete generic visitor for a parse tree produced by dBaseParser.

class dBaseVisitor(ParseTreeVisitor):

    # Visit a parse tree produced by dBaseParser#prog.
    def visitProg(self, ctx:dBaseParser.ProgContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by dBaseParser#expr.
    def visitExpr(self, ctx:dBaseParser.ExprContext):
        return self.visitChildren(ctx)



del dBaseParser