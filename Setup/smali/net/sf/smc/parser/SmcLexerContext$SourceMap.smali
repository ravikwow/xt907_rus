.class abstract Lnet/sf/smc/parser/SmcLexerContext$SourceMap;
.super Ljava/lang/Object;
.source "SmcLexerContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/smc/parser/SmcLexerContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "SourceMap"
.end annotation


# static fields
.field private static final Default:Lnet/sf/smc/parser/SmcLexerContext$SourceMap_Default;

.field public static final NeverUsed:Lnet/sf/smc/parser/SmcLexerContext$SourceMap_NeverUsed;

.field public static final SourceEnd:Lnet/sf/smc/parser/SmcLexerContext$SourceMap_SourceEnd;

.field public static final Start:Lnet/sf/smc/parser/SmcLexerContext$SourceMap_Start;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4483
    new-instance v0, Lnet/sf/smc/parser/SmcLexerContext$SourceMap_Start;

    const-string v1, "SourceMap.Start"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcLexerContext$SourceMap_Start;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcLexerContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcLexerContext$SourceMap;->Start:Lnet/sf/smc/parser/SmcLexerContext$SourceMap_Start;

    .line 4485
    new-instance v0, Lnet/sf/smc/parser/SmcLexerContext$SourceMap_SourceEnd;

    const-string v1, "SourceMap.SourceEnd"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcLexerContext$SourceMap_SourceEnd;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcLexerContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcLexerContext$SourceMap;->SourceEnd:Lnet/sf/smc/parser/SmcLexerContext$SourceMap_SourceEnd;

    .line 4487
    new-instance v0, Lnet/sf/smc/parser/SmcLexerContext$SourceMap_NeverUsed;

    const-string v1, "SourceMap.NeverUsed"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcLexerContext$SourceMap_NeverUsed;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcLexerContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcLexerContext$SourceMap;->NeverUsed:Lnet/sf/smc/parser/SmcLexerContext$SourceMap_NeverUsed;

    .line 4489
    new-instance v0, Lnet/sf/smc/parser/SmcLexerContext$SourceMap_Default;

    const-string v1, "SourceMap.Default"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lnet/sf/smc/parser/SmcLexerContext$SourceMap_Default;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sf/smc/parser/SmcLexerContext$SourceMap;->Default:Lnet/sf/smc/parser/SmcLexerContext$SourceMap_Default;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 4470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
