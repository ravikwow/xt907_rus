.class abstract Lnet/sf/smc/parser/SmcParserContext$ActionMap;
.super Ljava/lang/Object;
.source "SmcParserContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/smc/parser/SmcParserContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ActionMap"
.end annotation


# static fields
.field public static final ActionArgs:Lnet/sf/smc/parser/SmcParserContext$ActionMap_ActionArgs;

.field public static final ActionEnd:Lnet/sf/smc/parser/SmcParserContext$ActionMap_ActionEnd;

.field public static final ActionError:Lnet/sf/smc/parser/SmcParserContext$ActionMap_ActionError;

.field public static final ActionName:Lnet/sf/smc/parser/SmcParserContext$ActionMap_ActionName;

.field private static final Default:Lnet/sf/smc/parser/SmcParserContext$ActionMap_Default;

.field public static final PropertyAssignment:Lnet/sf/smc/parser/SmcParserContext$ActionMap_PropertyAssignment;

.field public static final Start:Lnet/sf/smc/parser/SmcParserContext$ActionMap_Start;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 8930
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ActionMap_Start;

    const-string v1, "ActionMap.Start"

    const/16 v2, 0x39

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ActionMap_Start;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ActionMap;->Start:Lnet/sf/smc/parser/SmcParserContext$ActionMap_Start;

    .line 8932
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ActionMap_ActionName;

    const-string v1, "ActionMap.ActionName"

    const/16 v2, 0x3a

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ActionMap_ActionName;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ActionMap;->ActionName:Lnet/sf/smc/parser/SmcParserContext$ActionMap_ActionName;

    .line 8934
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ActionMap_ActionArgs;

    const-string v1, "ActionMap.ActionArgs"

    const/16 v2, 0x3b

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ActionMap_ActionArgs;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ActionMap;->ActionArgs:Lnet/sf/smc/parser/SmcParserContext$ActionMap_ActionArgs;

    .line 8936
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ActionMap_ActionEnd;

    const-string v1, "ActionMap.ActionEnd"

    const/16 v2, 0x3c

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ActionMap_ActionEnd;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ActionMap;->ActionEnd:Lnet/sf/smc/parser/SmcParserContext$ActionMap_ActionEnd;

    .line 8938
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ActionMap_PropertyAssignment;

    const-string v1, "ActionMap.PropertyAssignment"

    const/16 v2, 0x3d

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ActionMap_PropertyAssignment;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ActionMap;->PropertyAssignment:Lnet/sf/smc/parser/SmcParserContext$ActionMap_PropertyAssignment;

    .line 8940
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ActionMap_ActionError;

    const-string v1, "ActionMap.ActionError"

    const/16 v2, 0x3e

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ActionMap_ActionError;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ActionMap;->ActionError:Lnet/sf/smc/parser/SmcParserContext$ActionMap_ActionError;

    .line 8942
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ActionMap_Default;

    const-string v1, "ActionMap.Default"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lnet/sf/smc/parser/SmcParserContext$ActionMap_Default;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ActionMap;->Default:Lnet/sf/smc/parser/SmcParserContext$ActionMap_Default;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 8917
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
