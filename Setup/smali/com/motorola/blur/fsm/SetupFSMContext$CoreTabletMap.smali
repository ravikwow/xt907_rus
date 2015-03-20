.class abstract Lcom/motorola/blur/fsm/SetupFSMContext$CoreTabletMap;
.super Ljava/lang/Object;
.source "SetupFSMContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/fsm/SetupFSMContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "CoreTabletMap"
.end annotation


# static fields
.field private static final Default:Lcom/motorola/blur/fsm/SetupFSMContext$CoreTabletMap_Default;

.field public static final Finish:Lcom/motorola/blur/fsm/SetupFSMContext$CoreTabletMap_Finish;

.field public static final Start:Lcom/motorola/blur/fsm/SetupFSMContext$CoreTabletMap_Start;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2018
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSMContext$CoreTabletMap_Start;

    const-string v1, "CoreTabletMap.Start"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/fsm/SetupFSMContext$CoreTabletMap_Start;-><init>(Ljava/lang/String;ILcom/motorola/blur/fsm/SetupFSMContext$1;)V

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSMContext$CoreTabletMap;->Start:Lcom/motorola/blur/fsm/SetupFSMContext$CoreTabletMap_Start;

    .line 2020
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSMContext$CoreTabletMap_Finish;

    const-string v1, "CoreTabletMap.Finish"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/fsm/SetupFSMContext$CoreTabletMap_Finish;-><init>(Ljava/lang/String;ILcom/motorola/blur/fsm/SetupFSMContext$1;)V

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSMContext$CoreTabletMap;->Finish:Lcom/motorola/blur/fsm/SetupFSMContext$CoreTabletMap_Finish;

    .line 2022
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSMContext$CoreTabletMap_Default;

    const-string v1, "CoreTabletMap.Default"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/fsm/SetupFSMContext$CoreTabletMap_Default;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSMContext$CoreTabletMap;->Default:Lcom/motorola/blur/fsm/SetupFSMContext$CoreTabletMap_Default;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 2005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
