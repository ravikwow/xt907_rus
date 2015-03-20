.class abstract Lnet/sf/smc/parser/SmcLexerContext$NewCommentMap;
.super Ljava/lang/Object;
.source "SmcLexerContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/smc/parser/SmcLexerContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "NewCommentMap"
.end annotation


# static fields
.field private static final Default:Lnet/sf/smc/parser/SmcLexerContext$NewCommentMap_Default;

.field public static final Start:Lnet/sf/smc/parser/SmcLexerContext$NewCommentMap_Start;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 3791
    new-instance v0, Lnet/sf/smc/parser/SmcLexerContext$NewCommentMap_Start;

    const-string v1, "NewCommentMap.Start"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcLexerContext$NewCommentMap_Start;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcLexerContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcLexerContext$NewCommentMap;->Start:Lnet/sf/smc/parser/SmcLexerContext$NewCommentMap_Start;

    .line 3793
    new-instance v0, Lnet/sf/smc/parser/SmcLexerContext$NewCommentMap_Default;

    const-string v1, "NewCommentMap.Default"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lnet/sf/smc/parser/SmcLexerContext$NewCommentMap_Default;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sf/smc/parser/SmcLexerContext$NewCommentMap;->Default:Lnet/sf/smc/parser/SmcLexerContext$NewCommentMap_Default;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 3778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
