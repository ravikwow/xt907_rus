.class public Lnet/sf/smc/parser/SmcParserContext$ArgsMap_Default;
.super Lnet/sf/smc/parser/SmcParserContext$SmcParserState;
.source "SmcParserContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/smc/parser/SmcParserContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ArgsMap_Default"
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 9677
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/parser/SmcParserContext$SmcParserState;-><init>(Ljava/lang/String;I)V

    .line 9678
    return-void
.end method
