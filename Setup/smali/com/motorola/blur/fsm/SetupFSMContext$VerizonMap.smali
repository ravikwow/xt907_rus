.class abstract Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap;
.super Ljava/lang/Object;
.source "SetupFSMContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/fsm/SetupFSMContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "VerizonMap"
.end annotation


# static fields
.field public static final BackupAssistant:Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_BackupAssistant;

.field public static final BackupAssistantIntro:Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_BackupAssistantIntro;

.field public static final Congrats:Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_Congrats;

.field private static final Default:Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_Default;

.field public static final Finish:Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_Finish;

.field public static final HuxEmail:Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_HuxEmail;

.field public static final SimActivation:Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_SimActivation;

.field public static final SkipSetup:Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_SkipSetup;

.field public static final Start:Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_Start;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2202
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_Start;

    const-string v1, "VerizonMap.Start"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_Start;-><init>(Ljava/lang/String;ILcom/motorola/blur/fsm/SetupFSMContext$1;)V

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap;->Start:Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_Start;

    .line 2204
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_SimActivation;

    const-string v1, "VerizonMap.SimActivation"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_SimActivation;-><init>(Ljava/lang/String;ILcom/motorola/blur/fsm/SetupFSMContext$1;)V

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap;->SimActivation:Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_SimActivation;

    .line 2206
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_BackupAssistantIntro;

    const-string v1, "VerizonMap.BackupAssistantIntro"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_BackupAssistantIntro;-><init>(Ljava/lang/String;ILcom/motorola/blur/fsm/SetupFSMContext$1;)V

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap;->BackupAssistantIntro:Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_BackupAssistantIntro;

    .line 2208
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_BackupAssistant;

    const-string v1, "VerizonMap.BackupAssistant"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_BackupAssistant;-><init>(Ljava/lang/String;ILcom/motorola/blur/fsm/SetupFSMContext$1;)V

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap;->BackupAssistant:Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_BackupAssistant;

    .line 2210
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_HuxEmail;

    const-string v1, "VerizonMap.HuxEmail"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_HuxEmail;-><init>(Ljava/lang/String;ILcom/motorola/blur/fsm/SetupFSMContext$1;)V

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap;->HuxEmail:Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_HuxEmail;

    .line 2212
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_Congrats;

    const-string v1, "VerizonMap.Congrats"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_Congrats;-><init>(Ljava/lang/String;ILcom/motorola/blur/fsm/SetupFSMContext$1;)V

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap;->Congrats:Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_Congrats;

    .line 2214
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_SkipSetup;

    const-string v1, "VerizonMap.SkipSetup"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_SkipSetup;-><init>(Ljava/lang/String;ILcom/motorola/blur/fsm/SetupFSMContext$1;)V

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap;->SkipSetup:Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_SkipSetup;

    .line 2216
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_Finish;

    const-string v1, "VerizonMap.Finish"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_Finish;-><init>(Ljava/lang/String;ILcom/motorola/blur/fsm/SetupFSMContext$1;)V

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap;->Finish:Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_Finish;

    .line 2218
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_Default;

    const-string v1, "VerizonMap.Default"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_Default;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap;->Default:Lcom/motorola/blur/fsm/SetupFSMContext$VerizonMap_Default;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 2189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
