.class abstract Lcom/motorola/blur/fsm/SetupFSMContext$TosMap;
.super Ljava/lang/Object;
.source "SetupFSMContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/fsm/SetupFSMContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "TosMap"
.end annotation


# static fields
.field private static final Default:Lcom/motorola/blur/fsm/SetupFSMContext$TosMap_Default;

.field public static final Ready:Lcom/motorola/blur/fsm/SetupFSMContext$TosMap_Ready;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 4282
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSMContext$TosMap_Ready;

    const-string v1, "TosMap.Ready"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/fsm/SetupFSMContext$TosMap_Ready;-><init>(Ljava/lang/String;ILcom/motorola/blur/fsm/SetupFSMContext$1;)V

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSMContext$TosMap;->Ready:Lcom/motorola/blur/fsm/SetupFSMContext$TosMap_Ready;

    .line 4284
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSMContext$TosMap_Default;

    const-string v1, "TosMap.Default"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/fsm/SetupFSMContext$TosMap_Default;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSMContext$TosMap;->Default:Lcom/motorola/blur/fsm/SetupFSMContext$TosMap_Default;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 4269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
