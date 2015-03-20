.class abstract Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap;
.super Ljava/lang/Object;
.source "SetupFSMContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/fsm/SetupFSMContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "CoreMap"
.end annotation


# static fields
.field public static final Congrats:Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_Congrats;

.field private static final Default:Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_Default;

.field public static final Finish:Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_Finish;

.field public static final GoogleSetup:Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_GoogleSetup;

.field public static final SkipSetup:Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_SkipSetup;

.field public static final SplashScreen:Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_SplashScreen;

.field public static final Start:Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_Start;

.field public static final TermsOfService:Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_TermsOfService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 921
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_Start;

    const-string v1, "CoreMap.Start"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_Start;-><init>(Ljava/lang/String;ILcom/motorola/blur/fsm/SetupFSMContext$1;)V

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap;->Start:Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_Start;

    .line 923
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_SplashScreen;

    const-string v1, "CoreMap.SplashScreen"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_SplashScreen;-><init>(Ljava/lang/String;ILcom/motorola/blur/fsm/SetupFSMContext$1;)V

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap;->SplashScreen:Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_SplashScreen;

    .line 925
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_GoogleSetup;

    const-string v1, "CoreMap.GoogleSetup"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_GoogleSetup;-><init>(Ljava/lang/String;ILcom/motorola/blur/fsm/SetupFSMContext$1;)V

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap;->GoogleSetup:Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_GoogleSetup;

    .line 927
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_TermsOfService;

    const-string v1, "CoreMap.TermsOfService"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_TermsOfService;-><init>(Ljava/lang/String;ILcom/motorola/blur/fsm/SetupFSMContext$1;)V

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap;->TermsOfService:Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_TermsOfService;

    .line 929
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_SkipSetup;

    const-string v1, "CoreMap.SkipSetup"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_SkipSetup;-><init>(Ljava/lang/String;ILcom/motorola/blur/fsm/SetupFSMContext$1;)V

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap;->SkipSetup:Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_SkipSetup;

    .line 931
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_Congrats;

    const-string v1, "CoreMap.Congrats"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_Congrats;-><init>(Ljava/lang/String;ILcom/motorola/blur/fsm/SetupFSMContext$1;)V

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap;->Congrats:Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_Congrats;

    .line 933
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_Finish;

    const-string v1, "CoreMap.Finish"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_Finish;-><init>(Ljava/lang/String;ILcom/motorola/blur/fsm/SetupFSMContext$1;)V

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap;->Finish:Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_Finish;

    .line 935
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_Default;

    const-string v1, "CoreMap.Default"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_Default;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap;->Default:Lcom/motorola/blur/fsm/SetupFSMContext$CoreMap_Default;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 908
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
