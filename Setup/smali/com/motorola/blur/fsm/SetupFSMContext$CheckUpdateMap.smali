.class abstract Lcom/motorola/blur/fsm/SetupFSMContext$CheckUpdateMap;
.super Ljava/lang/Object;
.source "SetupFSMContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/fsm/SetupFSMContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "CheckUpdateMap"
.end annotation


# static fields
.field private static final Default:Lcom/motorola/blur/fsm/SetupFSMContext$CheckUpdateMap_Default;

.field public static final Ready:Lcom/motorola/blur/fsm/SetupFSMContext$CheckUpdateMap_Ready;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 4611
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSMContext$CheckUpdateMap_Ready;

    const-string v1, "CheckUpdateMap.Ready"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/fsm/SetupFSMContext$CheckUpdateMap_Ready;-><init>(Ljava/lang/String;ILcom/motorola/blur/fsm/SetupFSMContext$1;)V

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSMContext$CheckUpdateMap;->Ready:Lcom/motorola/blur/fsm/SetupFSMContext$CheckUpdateMap_Ready;

    .line 4613
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSMContext$CheckUpdateMap_Default;

    const-string v1, "CheckUpdateMap.Default"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/fsm/SetupFSMContext$CheckUpdateMap_Default;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSMContext$CheckUpdateMap;->Default:Lcom/motorola/blur/fsm/SetupFSMContext$CheckUpdateMap_Default;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 4598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
