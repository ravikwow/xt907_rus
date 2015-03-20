.class abstract Lcom/motorola/blur/fsm/SetupFSMContext$SetupMap;
.super Ljava/lang/Object;
.source "SetupFSMContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/fsm/SetupFSMContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "SetupMap"
.end annotation


# static fields
.field private static final Default:Lcom/motorola/blur/fsm/SetupFSMContext$SetupMap_Default;

.field public static final Ready:Lcom/motorola/blur/fsm/SetupFSMContext$SetupMap_Ready;

.field public static final StartHome:Lcom/motorola/blur/fsm/SetupFSMContext$SetupMap_StartHome;

.field public static final Startup:Lcom/motorola/blur/fsm/SetupFSMContext$SetupMap_Startup;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 355
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSMContext$SetupMap_Startup;

    const-string v1, "SetupMap.Startup"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupMap_Startup;-><init>(Ljava/lang/String;ILcom/motorola/blur/fsm/SetupFSMContext$1;)V

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSMContext$SetupMap;->Startup:Lcom/motorola/blur/fsm/SetupFSMContext$SetupMap_Startup;

    .line 357
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSMContext$SetupMap_Ready;

    const-string v1, "SetupMap.Ready"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupMap_Ready;-><init>(Ljava/lang/String;ILcom/motorola/blur/fsm/SetupFSMContext$1;)V

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSMContext$SetupMap;->Ready:Lcom/motorola/blur/fsm/SetupFSMContext$SetupMap_Ready;

    .line 359
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSMContext$SetupMap_StartHome;

    const-string v1, "SetupMap.StartHome"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupMap_StartHome;-><init>(Ljava/lang/String;ILcom/motorola/blur/fsm/SetupFSMContext$1;)V

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSMContext$SetupMap;->StartHome:Lcom/motorola/blur/fsm/SetupFSMContext$SetupMap_StartHome;

    .line 361
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSMContext$SetupMap_Default;

    const-string v1, "SetupMap.Default"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/fsm/SetupFSMContext$SetupMap_Default;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSMContext$SetupMap;->Default:Lcom/motorola/blur/fsm/SetupFSMContext$SetupMap_Default;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
