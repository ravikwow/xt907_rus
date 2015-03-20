.class public final Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ClientSettingsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActiveServices"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;
    }
.end annotation


# static fields
.field public static final ACCOUNT_FIELD_NUMBER:I = 0x6

.field public static final ERROR_FIELD_NUMBER:I = 0x5

.field public static final MAX_SIZE_FIELD_NUMBER:I = 0x9

.field public static final PASSWORD_FIELD_NUMBER:I = 0x8

.field public static final POLLING_INTERVAL_FIELD_NUMBER:I = 0xa

.field public static final RETENTION_POLICY_FIELD_NUMBER:I = 0xb

.field public static final SECURITY_POLICY_FIELD_NUMBER:I = 0xd

.field public static final SERVICE_ID_FIELD_NUMBER:I = 0x4

.field public static final SYNC_ANCHOR_FIELD_NUMBER:I = 0x2

.field public static final SYNC_ID_FIELD_NUMBER:I = 0x1

.field public static final USERNAME_FIELD_NUMBER:I = 0x7

.field public static final VERIFY_CA_FIELD_NUMBER:I = 0xc

.field public static final _ID_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;


# instance fields
.field private Id_:I

.field private account_:I

.field private error_:Ljava/lang/String;

.field private hasAccount:Z

.field private hasError:Z

.field private hasId:Z

.field private hasMaxSize:Z

.field private hasPassword:Z

.field private hasPollingInterval:Z

.field private hasRetentionPolicy:Z

.field private hasSecurityPolicy:Z

.field private hasServiceId:Z

.field private hasSyncAnchor:Z

.field private hasSyncId:Z

.field private hasUsername:Z

.field private hasVerifyCa:Z

.field private maxSize_:I

.field private password_:Ljava/lang/String;

.field private pollingInterval_:I

.field private retentionPolicy_:I

.field private securityPolicy_:I

.field private serviceId_:I

.field private syncAnchor_:Ljava/lang/String;

.field private syncId_:Ljava/lang/String;

.field private username_:Ljava/lang/String;

.field private verifyCa_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3157
    new-instance v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->defaultInstance:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;

    .line 3158
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internalForceInit()V

    .line 3159
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->defaultInstance:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->initFields()V

    .line 3160
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2644
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2671
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->syncId_:Ljava/lang/String;

    .line 2678
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->syncAnchor_:Ljava/lang/String;

    .line 2685
    iput v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->Id_:I

    .line 2692
    iput v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->serviceId_:I

    .line 2699
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->error_:Ljava/lang/String;

    .line 2706
    iput v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->account_:I

    .line 2713
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->username_:Ljava/lang/String;

    .line 2720
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->password_:Ljava/lang/String;

    .line 2727
    iput v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->maxSize_:I

    .line 2734
    iput v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->pollingInterval_:I

    .line 2741
    iput v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->retentionPolicy_:I

    .line 2748
    iput v2, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->verifyCa_:I

    .line 2755
    iput v2, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->securityPolicy_:I

    .line 2645
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->initFields()V

    .line 2646
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$1;

    .prologue
    .line 2641
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 3
    .param p1, "noInit"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2647
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2671
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->syncId_:Ljava/lang/String;

    .line 2678
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->syncAnchor_:Ljava/lang/String;

    .line 2685
    iput v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->Id_:I

    .line 2692
    iput v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->serviceId_:I

    .line 2699
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->error_:Ljava/lang/String;

    .line 2706
    iput v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->account_:I

    .line 2713
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->username_:Ljava/lang/String;

    .line 2720
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->password_:Ljava/lang/String;

    .line 2727
    iput v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->maxSize_:I

    .line 2734
    iput v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->pollingInterval_:I

    .line 2741
    iput v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->retentionPolicy_:I

    .line 2748
    iput v2, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->verifyCa_:I

    .line 2755
    iput v2, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->securityPolicy_:I

    .line 2647
    return-void
.end method

.method static synthetic access$10602(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    .param p1, "x1"    # Z

    .prologue
    .line 2641
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->hasSyncId:Z

    return p1
.end method

.method static synthetic access$10702(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2641
    iput-object p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->syncId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$10802(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    .param p1, "x1"    # Z

    .prologue
    .line 2641
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->hasSyncAnchor:Z

    return p1
.end method

.method static synthetic access$10902(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2641
    iput-object p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->syncAnchor_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$11002(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    .param p1, "x1"    # Z

    .prologue
    .line 2641
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->hasId:Z

    return p1
.end method

.method static synthetic access$11102(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    .param p1, "x1"    # I

    .prologue
    .line 2641
    iput p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->Id_:I

    return p1
.end method

.method static synthetic access$11202(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    .param p1, "x1"    # Z

    .prologue
    .line 2641
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->hasServiceId:Z

    return p1
.end method

.method static synthetic access$11302(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    .param p1, "x1"    # I

    .prologue
    .line 2641
    iput p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->serviceId_:I

    return p1
.end method

.method static synthetic access$11402(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    .param p1, "x1"    # Z

    .prologue
    .line 2641
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->hasError:Z

    return p1
.end method

.method static synthetic access$11502(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2641
    iput-object p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->error_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$11602(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    .param p1, "x1"    # Z

    .prologue
    .line 2641
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->hasAccount:Z

    return p1
.end method

.method static synthetic access$11702(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    .param p1, "x1"    # I

    .prologue
    .line 2641
    iput p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->account_:I

    return p1
.end method

.method static synthetic access$11802(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    .param p1, "x1"    # Z

    .prologue
    .line 2641
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->hasUsername:Z

    return p1
.end method

.method static synthetic access$11902(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2641
    iput-object p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->username_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$12002(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    .param p1, "x1"    # Z

    .prologue
    .line 2641
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->hasPassword:Z

    return p1
.end method

.method static synthetic access$12102(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2641
    iput-object p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->password_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$12202(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    .param p1, "x1"    # Z

    .prologue
    .line 2641
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->hasMaxSize:Z

    return p1
.end method

.method static synthetic access$12302(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    .param p1, "x1"    # I

    .prologue
    .line 2641
    iput p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->maxSize_:I

    return p1
.end method

.method static synthetic access$12402(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    .param p1, "x1"    # Z

    .prologue
    .line 2641
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->hasPollingInterval:Z

    return p1
.end method

.method static synthetic access$12502(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    .param p1, "x1"    # I

    .prologue
    .line 2641
    iput p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->pollingInterval_:I

    return p1
.end method

.method static synthetic access$12602(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    .param p1, "x1"    # Z

    .prologue
    .line 2641
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->hasRetentionPolicy:Z

    return p1
.end method

.method static synthetic access$12702(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    .param p1, "x1"    # I

    .prologue
    .line 2641
    iput p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->retentionPolicy_:I

    return p1
.end method

.method static synthetic access$12802(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    .param p1, "x1"    # Z

    .prologue
    .line 2641
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->hasVerifyCa:Z

    return p1
.end method

.method static synthetic access$12902(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    .param p1, "x1"    # I

    .prologue
    .line 2641
    iput p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->verifyCa_:I

    return p1
.end method

.method static synthetic access$13002(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    .param p1, "x1"    # Z

    .prologue
    .line 2641
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->hasSecurityPolicy:Z

    return p1
.end method

.method static synthetic access$13102(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    .param p1, "x1"    # I

    .prologue
    .line 2641
    iput p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->securityPolicy_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    .locals 1

    .prologue
    .line 2651
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->defaultInstance:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2660
    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_ActiveServices_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->access$10100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 2760
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;
    .locals 1

    .prologue
    .line 2828
    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;->create()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;->access$10400()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;

    .prologue
    .line 2831
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2797
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;

    move-result-object v0

    .line 2798
    .local v0, "builder":Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2799
    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;->access$10300(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;

    move-result-object v1

    .line 2801
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2808
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;

    move-result-object v0

    .line 2809
    .local v0, "builder":Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2810
    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;->access$10300(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;

    move-result-object v1

    .line 2812
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2764
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;->access$10300(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2770
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;->access$10300(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2818
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;->access$10300(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2824
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;->access$10300(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2786
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;->access$10300(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2792
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;->access$10300(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2775
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;->access$10300(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2781
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;->access$10300(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAccount()I
    .locals 1

    .prologue
    .line 2708
    iget v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->account_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2641
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2641
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    .locals 1

    .prologue
    .line 2655
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->defaultInstance:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2701
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->error_:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 2687
    iget v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->Id_:I

    return v0
.end method

.method public getMaxSize()I
    .locals 1

    .prologue
    .line 2729
    iget v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->maxSize_:I

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2722
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->password_:Ljava/lang/String;

    return-object v0
.end method

.method public getPollingInterval()I
    .locals 1

    .prologue
    .line 2736
    iget v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->pollingInterval_:I

    return v0
.end method

.method public getRetentionPolicy()I
    .locals 1

    .prologue
    .line 2743
    iget v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->retentionPolicy_:I

    return v0
.end method

.method public getSecurityPolicy()I
    .locals 1

    .prologue
    .line 2757
    iget v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->securityPolicy_:I

    return v0
.end method

.method public getServiceId()I
    .locals 1

    .prologue
    .line 2694
    iget v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->serviceId_:I

    return v0
.end method

.method public getSyncAnchor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2680
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->syncAnchor_:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2673
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->syncId_:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2715
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->username_:Ljava/lang/String;

    return-object v0
.end method

.method public getVerifyCa()I
    .locals 1

    .prologue
    .line 2750
    iget v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->verifyCa_:I

    return v0
.end method

.method public hasAccount()Z
    .locals 1

    .prologue
    .line 2707
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->hasAccount:Z

    return v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 2700
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->hasError:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 2686
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->hasId:Z

    return v0
.end method

.method public hasMaxSize()Z
    .locals 1

    .prologue
    .line 2728
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->hasMaxSize:Z

    return v0
.end method

.method public hasPassword()Z
    .locals 1

    .prologue
    .line 2721
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->hasPassword:Z

    return v0
.end method

.method public hasPollingInterval()Z
    .locals 1

    .prologue
    .line 2735
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->hasPollingInterval:Z

    return v0
.end method

.method public hasRetentionPolicy()Z
    .locals 1

    .prologue
    .line 2742
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->hasRetentionPolicy:Z

    return v0
.end method

.method public hasSecurityPolicy()Z
    .locals 1

    .prologue
    .line 2756
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->hasSecurityPolicy:Z

    return v0
.end method

.method public hasServiceId()Z
    .locals 1

    .prologue
    .line 2693
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->hasServiceId:Z

    return v0
.end method

.method public hasSyncAnchor()Z
    .locals 1

    .prologue
    .line 2679
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->hasSyncAnchor:Z

    return v0
.end method

.method public hasSyncId()Z
    .locals 1

    .prologue
    .line 2672
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->hasSyncId:Z

    return v0
.end method

.method public hasUsername()Z
    .locals 1

    .prologue
    .line 2714
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->hasUsername:Z

    return v0
.end method

.method public hasVerifyCa()Z
    .locals 1

    .prologue
    .line 2749
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->hasVerifyCa:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 2665
    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_ActiveServices_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->access$10200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2641
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->newBuilderForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2641
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->newBuilderForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;
    .locals 1

    .prologue
    .line 2829
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2641
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->toBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2641
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->toBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;
    .locals 1

    .prologue
    .line 2833
    invoke-static {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;->newBuilder(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;

    move-result-object v0

    return-object v0
.end method
