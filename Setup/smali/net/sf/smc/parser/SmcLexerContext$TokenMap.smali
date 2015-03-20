.class abstract Lnet/sf/smc/parser/SmcLexerContext$TokenMap;
.super Ljava/lang/Object;
.source "SmcLexerContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/smc/parser/SmcLexerContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "TokenMap"
.end annotation


# static fields
.field public static final Colon:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Colon;

.field public static final CommentStart:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_CommentStart;

.field private static final Default:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default;

.field public static final PercentKeyword:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_PercentKeyword;

.field public static final PercentStart:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_PercentStart;

.field public static final Scope:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Scope;

.field public static final Start:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Start;

.field public static final Word:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Word;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 532
    new-instance v0, Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Start;

    const-string v1, "TokenMap.Start"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Start;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcLexerContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Start:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Start;

    .line 534
    new-instance v0, Lnet/sf/smc/parser/SmcLexerContext$TokenMap_CommentStart;

    const-string v1, "TokenMap.CommentStart"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcLexerContext$TokenMap_CommentStart;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcLexerContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->CommentStart:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_CommentStart;

    .line 536
    new-instance v0, Lnet/sf/smc/parser/SmcLexerContext$TokenMap_PercentStart;

    const-string v1, "TokenMap.PercentStart"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcLexerContext$TokenMap_PercentStart;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcLexerContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->PercentStart:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_PercentStart;

    .line 538
    new-instance v0, Lnet/sf/smc/parser/SmcLexerContext$TokenMap_PercentKeyword;

    const-string v1, "TokenMap.PercentKeyword"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcLexerContext$TokenMap_PercentKeyword;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcLexerContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->PercentKeyword:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_PercentKeyword;

    .line 540
    new-instance v0, Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Word;

    const-string v1, "TokenMap.Word"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Word;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcLexerContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Word:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Word;

    .line 542
    new-instance v0, Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Scope;

    const-string v1, "TokenMap.Scope"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Scope;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcLexerContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Scope:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Scope;

    .line 544
    new-instance v0, Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Colon;

    const-string v1, "TokenMap.Colon"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Colon;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcLexerContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Colon:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Colon;

    .line 546
    new-instance v0, Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default;

    const-string v1, "TokenMap.Default"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Default:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
