.class abstract Lnet/sf/smc/parser/SmcLexerContext$OldCommentMap;
.super Ljava/lang/Object;
.source "SmcLexerContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/smc/parser/SmcLexerContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "OldCommentMap"
.end annotation


# static fields
.field public static final CommentEnd:Lnet/sf/smc/parser/SmcLexerContext$OldCommentMap_CommentEnd;

.field public static final CommentStart:Lnet/sf/smc/parser/SmcLexerContext$OldCommentMap_CommentStart;

.field private static final Default:Lnet/sf/smc/parser/SmcLexerContext$OldCommentMap_Default;

.field public static final Start:Lnet/sf/smc/parser/SmcLexerContext$OldCommentMap_Start;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2863
    new-instance v0, Lnet/sf/smc/parser/SmcLexerContext$OldCommentMap_Start;

    const-string v1, "OldCommentMap.Start"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcLexerContext$OldCommentMap_Start;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcLexerContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcLexerContext$OldCommentMap;->Start:Lnet/sf/smc/parser/SmcLexerContext$OldCommentMap_Start;

    .line 2865
    new-instance v0, Lnet/sf/smc/parser/SmcLexerContext$OldCommentMap_CommentStart;

    const-string v1, "OldCommentMap.CommentStart"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcLexerContext$OldCommentMap_CommentStart;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcLexerContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcLexerContext$OldCommentMap;->CommentStart:Lnet/sf/smc/parser/SmcLexerContext$OldCommentMap_CommentStart;

    .line 2867
    new-instance v0, Lnet/sf/smc/parser/SmcLexerContext$OldCommentMap_CommentEnd;

    const-string v1, "OldCommentMap.CommentEnd"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcLexerContext$OldCommentMap_CommentEnd;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcLexerContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcLexerContext$OldCommentMap;->CommentEnd:Lnet/sf/smc/parser/SmcLexerContext$OldCommentMap_CommentEnd;

    .line 2869
    new-instance v0, Lnet/sf/smc/parser/SmcLexerContext$OldCommentMap_Default;

    const-string v1, "OldCommentMap.Default"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lnet/sf/smc/parser/SmcLexerContext$OldCommentMap_Default;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sf/smc/parser/SmcLexerContext$OldCommentMap;->Default:Lnet/sf/smc/parser/SmcLexerContext$OldCommentMap_Default;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 2850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
