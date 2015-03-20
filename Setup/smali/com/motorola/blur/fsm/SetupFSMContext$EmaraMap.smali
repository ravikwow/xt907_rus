.class abstract Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap;
.super Ljava/lang/Object;
.source "SetupFSMContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/fsm/SetupFSMContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "EmaraMap"
.end annotation


# static fields
.field public static final DataSettings:Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_DataSettings;

.field private static final Default:Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_Default;

.field public static final Finish:Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_Finish;

.field public static final GoogleSetup:Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_GoogleSetup;

.field public static final LocationConsent:Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_LocationConsent;

.field public static final SkipSetup:Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_SkipSetup;

.field public static final SplashScreen:Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_SplashScreen;

.field public static final Start:Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_Start;

.field public static final TermsOfService:Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_TermsOfService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3070
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_Start;

    const-string v1, "EmaraMap.Start"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_Start;-><init>(Ljava/lang/String;ILcom/motorola/blur/fsm/SetupFSMContext$1;)V

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap;->Start:Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_Start;

    .line 3072
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_DataSettings;

    const-string v1, "EmaraMap.DataSettings"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_DataSettings;-><init>(Ljava/lang/String;ILcom/motorola/blur/fsm/SetupFSMContext$1;)V

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap;->DataSettings:Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_DataSettings;

    .line 3074
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_SplashScreen;

    const-string v1, "EmaraMap.SplashScreen"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_SplashScreen;-><init>(Ljava/lang/String;ILcom/motorola/blur/fsm/SetupFSMContext$1;)V

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap;->SplashScreen:Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_SplashScreen;

    .line 3076
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_GoogleSetup;

    const-string v1, "EmaraMap.GoogleSetup"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_GoogleSetup;-><init>(Ljava/lang/String;ILcom/motorola/blur/fsm/SetupFSMContext$1;)V

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap;->GoogleSetup:Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_GoogleSetup;

    .line 3078
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_TermsOfService;

    const-string v1, "EmaraMap.TermsOfService"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_TermsOfService;-><init>(Ljava/lang/String;ILcom/motorola/blur/fsm/SetupFSMContext$1;)V

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap;->TermsOfService:Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_TermsOfService;

    .line 3080
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_SkipSetup;

    const-string v1, "EmaraMap.SkipSetup"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_SkipSetup;-><init>(Ljava/lang/String;ILcom/motorola/blur/fsm/SetupFSMContext$1;)V

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap;->SkipSetup:Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_SkipSetup;

    .line 3082
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_LocationConsent;

    const-string v1, "EmaraMap.LocationConsent"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_LocationConsent;-><init>(Ljava/lang/String;ILcom/motorola/blur/fsm/SetupFSMContext$1;)V

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap;->LocationConsent:Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_LocationConsent;

    .line 3084
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_Finish;

    const-string v1, "EmaraMap.Finish"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_Finish;-><init>(Ljava/lang/String;ILcom/motorola/blur/fsm/SetupFSMContext$1;)V

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap;->Finish:Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_Finish;

    .line 3086
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_Default;

    const-string v1, "EmaraMap.Default"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_Default;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap;->Default:Lcom/motorola/blur/fsm/SetupFSMContext$EmaraMap_Default;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 3057
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
