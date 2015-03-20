.class abstract Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap;
.super Ljava/lang/Object;
.source "SetupFSMContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/fsm/SetupFSMContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Ready2GoMap"
.end annotation


# static fields
.field public static final Congrats:Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap_Congrats;

.field private static final Default:Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap_Default;

.field public static final Finish:Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap_Finish;

.field public static final GoogleBackup:Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap_GoogleBackup;

.field public static final GoogleSetup:Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap_GoogleSetup;

.field public static final MultipleGoogleBackup:Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap_MultipleGoogleBackup;

.field public static final Start:Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap_Start;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4738
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap_Start;

    const-string v1, "Ready2GoMap.Start"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap_Start;-><init>(Ljava/lang/String;ILcom/motorola/blur/fsm/SetupFSMContext$1;)V

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap;->Start:Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap_Start;

    .line 4740
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap_GoogleSetup;

    const-string v1, "Ready2GoMap.GoogleSetup"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap_GoogleSetup;-><init>(Ljava/lang/String;ILcom/motorola/blur/fsm/SetupFSMContext$1;)V

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap;->GoogleSetup:Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap_GoogleSetup;

    .line 4742
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap_MultipleGoogleBackup;

    const-string v1, "Ready2GoMap.MultipleGoogleBackup"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap_MultipleGoogleBackup;-><init>(Ljava/lang/String;ILcom/motorola/blur/fsm/SetupFSMContext$1;)V

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap;->MultipleGoogleBackup:Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap_MultipleGoogleBackup;

    .line 4744
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap_GoogleBackup;

    const-string v1, "Ready2GoMap.GoogleBackup"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap_GoogleBackup;-><init>(Ljava/lang/String;ILcom/motorola/blur/fsm/SetupFSMContext$1;)V

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap;->GoogleBackup:Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap_GoogleBackup;

    .line 4746
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap_Congrats;

    const-string v1, "Ready2GoMap.Congrats"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap_Congrats;-><init>(Ljava/lang/String;ILcom/motorola/blur/fsm/SetupFSMContext$1;)V

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap;->Congrats:Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap_Congrats;

    .line 4748
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap_Finish;

    const-string v1, "Ready2GoMap.Finish"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap_Finish;-><init>(Ljava/lang/String;ILcom/motorola/blur/fsm/SetupFSMContext$1;)V

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap;->Finish:Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap_Finish;

    .line 4750
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap_Default;

    const-string v1, "Ready2GoMap.Default"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap_Default;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap;->Default:Lcom/motorola/blur/fsm/SetupFSMContext$Ready2GoMap_Default;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 4725
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
