.class abstract Lcom/motorola/blur/fsm/SetupFSMContext$BackgroundSetupForQAMap;
.super Ljava/lang/Object;
.source "SetupFSMContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/fsm/SetupFSMContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BackgroundSetupForQAMap"
.end annotation


# static fields
.field public static final CreateBackgroundBlueAccount:Lcom/motorola/blur/fsm/SetupFSMContext$BackgroundSetupForQAMap_CreateBackgroundBlueAccount;

.field private static final Default:Lcom/motorola/blur/fsm/SetupFSMContext$BackgroundSetupForQAMap_Default;

.field public static final Finish:Lcom/motorola/blur/fsm/SetupFSMContext$BackgroundSetupForQAMap_Finish;

.field public static final QaSilent:Lcom/motorola/blur/fsm/SetupFSMContext$BackgroundSetupForQAMap_QaSilent;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5497
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSMContext$BackgroundSetupForQAMap_CreateBackgroundBlueAccount;

    const-string v1, "BackgroundSetupForQAMap.CreateBackgroundBlueAccount"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/fsm/SetupFSMContext$BackgroundSetupForQAMap_CreateBackgroundBlueAccount;-><init>(Ljava/lang/String;ILcom/motorola/blur/fsm/SetupFSMContext$1;)V

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSMContext$BackgroundSetupForQAMap;->CreateBackgroundBlueAccount:Lcom/motorola/blur/fsm/SetupFSMContext$BackgroundSetupForQAMap_CreateBackgroundBlueAccount;

    .line 5499
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSMContext$BackgroundSetupForQAMap_QaSilent;

    const-string v1, "BackgroundSetupForQAMap.QaSilent"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/fsm/SetupFSMContext$BackgroundSetupForQAMap_QaSilent;-><init>(Ljava/lang/String;ILcom/motorola/blur/fsm/SetupFSMContext$1;)V

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSMContext$BackgroundSetupForQAMap;->QaSilent:Lcom/motorola/blur/fsm/SetupFSMContext$BackgroundSetupForQAMap_QaSilent;

    .line 5501
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSMContext$BackgroundSetupForQAMap_Finish;

    const-string v1, "BackgroundSetupForQAMap.Finish"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/fsm/SetupFSMContext$BackgroundSetupForQAMap_Finish;-><init>(Ljava/lang/String;ILcom/motorola/blur/fsm/SetupFSMContext$1;)V

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSMContext$BackgroundSetupForQAMap;->Finish:Lcom/motorola/blur/fsm/SetupFSMContext$BackgroundSetupForQAMap_Finish;

    .line 5503
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSMContext$BackgroundSetupForQAMap_Default;

    const-string v1, "BackgroundSetupForQAMap.Default"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/fsm/SetupFSMContext$BackgroundSetupForQAMap_Default;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSMContext$BackgroundSetupForQAMap;->Default:Lcom/motorola/blur/fsm/SetupFSMContext$BackgroundSetupForQAMap_Default;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 5484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
