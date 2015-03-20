.class public Lnet/sf/smc/parser/SmcLexerContext$SourceMap_Default;
.super Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;
.source "SmcLexerContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/smc/parser/SmcLexerContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SourceMap_Default"
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 4503
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;-><init>(Ljava/lang/String;I)V

    .line 4504
    return-void
.end method
