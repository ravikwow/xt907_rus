.class public final Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ClientSettingsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Providers"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;
    }
.end annotation


# static fields
.field public static final FALLBACK_URL_FIELD_NUMBER:I = 0xa

.field public static final LOGIN_LABEL_FIELD_NUMBER:I = 0x8

.field public static final MULTIPLE_ACCOUNTS_FIELD_NUMBER:I = 0x9

.field public static final PATH_FIELD_NUMBER:I = 0x6

.field public static final PRETTY_NAME_FIELD_NUMBER:I = 0x5

.field public static final PROVIDER_FIELD_NUMBER:I = 0x4

.field public static final PROVIDER_URL_FIELD_NUMBER:I = 0xb

.field public static final PWD_STORAGE_POLICY_FIELD_NUMBER:I = 0xc

.field public static final SYNC_ANCHOR_FIELD_NUMBER:I = 0x2

.field public static final SYNC_ID_FIELD_NUMBER:I = 0x1

.field public static final UI_ORDER_FIELD_NUMBER:I = 0x7

.field public static final _ID_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;


# instance fields
.field private Id_:I

.field private fallbackUrl_:Ljava/lang/String;

.field private hasFallbackUrl:Z

.field private hasId:Z

.field private hasLoginLabel:Z

.field private hasMultipleAccounts:Z

.field private hasPath:Z

.field private hasPrettyName:Z

.field private hasProvider:Z

.field private hasProviderUrl:Z

.field private hasPwdStoragePolicy:Z

.field private hasSyncAnchor:Z

.field private hasSyncId:Z

.field private hasUiOrder:Z

.field private loginLabel_:Ljava/lang/String;

.field private multipleAccounts_:I

.field private path_:Ljava/lang/String;

.field private prettyName_:Ljava/lang/String;

.field private providerUrl_:Ljava/lang/String;

.field private provider_:Ljava/lang/String;

.field private pwdStoragePolicy_:I

.field private syncAnchor_:Ljava/lang/String;

.field private syncId_:Ljava/lang/String;

.field private uiOrder_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1305
    new-instance v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->defaultInstance:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    .line 1306
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internalForceInit()V

    .line 1307
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->defaultInstance:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->initFields()V

    .line 1308
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 808
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 835
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->syncId_:Ljava/lang/String;

    .line 842
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->syncAnchor_:Ljava/lang/String;

    .line 849
    iput v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->Id_:I

    .line 856
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->provider_:Ljava/lang/String;

    .line 863
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->prettyName_:Ljava/lang/String;

    .line 870
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->path_:Ljava/lang/String;

    .line 877
    iput v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->uiOrder_:I

    .line 884
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->loginLabel_:Ljava/lang/String;

    .line 891
    iput v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->multipleAccounts_:I

    .line 898
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->fallbackUrl_:Ljava/lang/String;

    .line 905
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->providerUrl_:Ljava/lang/String;

    .line 912
    iput v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->pwdStoragePolicy_:I

    .line 809
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->initFields()V

    .line 810
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$1;

    .prologue
    .line 805
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .param p1, "noInit"    # Z

    .prologue
    const/4 v1, 0x0

    .line 811
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 835
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->syncId_:Ljava/lang/String;

    .line 842
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->syncAnchor_:Ljava/lang/String;

    .line 849
    iput v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->Id_:I

    .line 856
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->provider_:Ljava/lang/String;

    .line 863
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->prettyName_:Ljava/lang/String;

    .line 870
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->path_:Ljava/lang/String;

    .line 877
    iput v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->uiOrder_:I

    .line 884
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->loginLabel_:Ljava/lang/String;

    .line 891
    iput v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->multipleAccounts_:I

    .line 898
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->fallbackUrl_:Ljava/lang/String;

    .line 905
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->providerUrl_:Ljava/lang/String;

    .line 912
    iput v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->pwdStoragePolicy_:I

    .line 811
    return-void
.end method

.method static synthetic access$2802(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    .param p1, "x1"    # Z

    .prologue
    .line 805
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasSyncId:Z

    return p1
.end method

.method static synthetic access$2902(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 805
    iput-object p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->syncId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3002(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    .param p1, "x1"    # Z

    .prologue
    .line 805
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasSyncAnchor:Z

    return p1
.end method

.method static synthetic access$3102(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 805
    iput-object p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->syncAnchor_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    .param p1, "x1"    # Z

    .prologue
    .line 805
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasId:Z

    return p1
.end method

.method static synthetic access$3302(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    .param p1, "x1"    # I

    .prologue
    .line 805
    iput p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->Id_:I

    return p1
.end method

.method static synthetic access$3402(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    .param p1, "x1"    # Z

    .prologue
    .line 805
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasProvider:Z

    return p1
.end method

.method static synthetic access$3502(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 805
    iput-object p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->provider_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3602(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    .param p1, "x1"    # Z

    .prologue
    .line 805
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasPrettyName:Z

    return p1
.end method

.method static synthetic access$3702(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 805
    iput-object p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->prettyName_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3802(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    .param p1, "x1"    # Z

    .prologue
    .line 805
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasPath:Z

    return p1
.end method

.method static synthetic access$3902(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 805
    iput-object p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->path_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4002(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    .param p1, "x1"    # Z

    .prologue
    .line 805
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasUiOrder:Z

    return p1
.end method

.method static synthetic access$4102(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    .param p1, "x1"    # I

    .prologue
    .line 805
    iput p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->uiOrder_:I

    return p1
.end method

.method static synthetic access$4202(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    .param p1, "x1"    # Z

    .prologue
    .line 805
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasLoginLabel:Z

    return p1
.end method

.method static synthetic access$4302(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 805
    iput-object p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->loginLabel_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4402(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    .param p1, "x1"    # Z

    .prologue
    .line 805
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasMultipleAccounts:Z

    return p1
.end method

.method static synthetic access$4502(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    .param p1, "x1"    # I

    .prologue
    .line 805
    iput p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->multipleAccounts_:I

    return p1
.end method

.method static synthetic access$4602(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    .param p1, "x1"    # Z

    .prologue
    .line 805
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasFallbackUrl:Z

    return p1
.end method

.method static synthetic access$4702(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 805
    iput-object p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->fallbackUrl_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4802(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    .param p1, "x1"    # Z

    .prologue
    .line 805
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasProviderUrl:Z

    return p1
.end method

.method static synthetic access$4902(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 805
    iput-object p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->providerUrl_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5002(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    .param p1, "x1"    # Z

    .prologue
    .line 805
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasPwdStoragePolicy:Z

    return p1
.end method

.method static synthetic access$5102(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    .param p1, "x1"    # I

    .prologue
    .line 805
    iput p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->pwdStoragePolicy_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    .locals 1

    .prologue
    .line 815
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->defaultInstance:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 824
    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_Providers_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->access$2300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 917
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;
    .locals 1

    .prologue
    .line 985
    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->create()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->access$2600()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    .prologue
    .line 988
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 954
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;

    move-result-object v0

    .line 955
    .local v0, "builder":Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 956
    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->access$2500(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    move-result-object v1

    .line 958
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 965
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;

    move-result-object v0

    .line 966
    .local v0, "builder":Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 967
    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->access$2500(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    move-result-object v1

    .line 969
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 921
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->access$2500(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 927
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->access$2500(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 975
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->access$2500(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 981
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->access$2500(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 943
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->access$2500(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 949
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->access$2500(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 932
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->access$2500(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 938
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->access$2500(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 805
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 805
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    .locals 1

    .prologue
    .line 819
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->defaultInstance:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    return-object v0
.end method

.method public getFallbackUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->fallbackUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 851
    iget v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->Id_:I

    return v0
.end method

.method public getLoginLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->loginLabel_:Ljava/lang/String;

    return-object v0
.end method

.method public getMultipleAccounts()I
    .locals 1

    .prologue
    .line 893
    iget v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->multipleAccounts_:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->path_:Ljava/lang/String;

    return-object v0
.end method

.method public getPrettyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 865
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->prettyName_:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 858
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->provider_:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->providerUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getPwdStoragePolicy()I
    .locals 1

    .prologue
    .line 914
    iget v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->pwdStoragePolicy_:I

    return v0
.end method

.method public getSyncAnchor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->syncAnchor_:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->syncId_:Ljava/lang/String;

    return-object v0
.end method

.method public getUiOrder()I
    .locals 1

    .prologue
    .line 879
    iget v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->uiOrder_:I

    return v0
.end method

.method public hasFallbackUrl()Z
    .locals 1

    .prologue
    .line 899
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasFallbackUrl:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 850
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasId:Z

    return v0
.end method

.method public hasLoginLabel()Z
    .locals 1

    .prologue
    .line 885
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasLoginLabel:Z

    return v0
.end method

.method public hasMultipleAccounts()Z
    .locals 1

    .prologue
    .line 892
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasMultipleAccounts:Z

    return v0
.end method

.method public hasPath()Z
    .locals 1

    .prologue
    .line 871
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasPath:Z

    return v0
.end method

.method public hasPrettyName()Z
    .locals 1

    .prologue
    .line 864
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasPrettyName:Z

    return v0
.end method

.method public hasProvider()Z
    .locals 1

    .prologue
    .line 857
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasProvider:Z

    return v0
.end method

.method public hasProviderUrl()Z
    .locals 1

    .prologue
    .line 906
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasProviderUrl:Z

    return v0
.end method

.method public hasPwdStoragePolicy()Z
    .locals 1

    .prologue
    .line 913
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasPwdStoragePolicy:Z

    return v0
.end method

.method public hasSyncAnchor()Z
    .locals 1

    .prologue
    .line 843
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasSyncAnchor:Z

    return v0
.end method

.method public hasSyncId()Z
    .locals 1

    .prologue
    .line 836
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasSyncId:Z

    return v0
.end method

.method public hasUiOrder()Z
    .locals 1

    .prologue
    .line 878
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasUiOrder:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 829
    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_Providers_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->access$2400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 805
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->newBuilderForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 805
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->newBuilderForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;
    .locals 1

    .prologue
    .line 986
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 805
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->toBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 805
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->toBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;
    .locals 1

    .prologue
    .line 990
    invoke-static {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->newBuilder(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;

    move-result-object v0

    return-object v0
.end method
