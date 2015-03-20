.class public final Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
.super Lcom/google/protobuf/GeneratedMessage;
.source "StatusProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StatusAndMood"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;
    }
.end annotation


# static fields
.field public static final ACCOUNTID_FIELD_NUMBER:I = 0x2

.field public static final ERROR_FIELD_NUMBER:I = 0xa

.field public static final EXTERNALID_FIELD_NUMBER:I = 0x3

.field public static final FRIENDID_FIELD_NUMBER:I = 0x4

.field public static final MOOD_FIELD_NUMBER:I = 0x7

.field public static final PROVIDERID_FIELD_NUMBER:I = 0x5

.field public static final PROVIDER_FIELD_NUMBER:I = 0x1

.field public static final STATUS_FIELD_NUMBER:I = 0x6

.field public static final SYNCERROR_FIELD_NUMBER:I = 0xc

.field public static final SYNCTIMESTAMP_FIELD_NUMBER:I = 0xb

.field public static final SYNC_ANCHOR_FIELD_NUMBER:I = 0x9

.field public static final SYNC_FIELD_NUMBER:I = 0x8

.field private static final defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;


# instance fields
.field private accountId_:Ljava/lang/String;

.field private error_:I

.field private externalId_:Ljava/lang/String;

.field private friendId_:Ljava/lang/String;

.field private hasAccountId:Z

.field private hasError:Z

.field private hasExternalId:Z

.field private hasFriendId:Z

.field private hasMood:Z

.field private hasProvider:Z

.field private hasProviderId:Z

.field private hasStatus:Z

.field private hasSync:Z

.field private hasSyncAnchor:Z

.field private hasSyncError:Z

.field private hasSyncTimestamp:Z

.field private mood_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

.field private providerId_:I

.field private provider_:Ljava/lang/String;

.field private status_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

.field private syncAnchor_:Ljava/lang/String;

.field private syncError_:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field private syncTimestamp_:J

.field private sync_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4336
    new-instance v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    .line 4337
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internalForceInit()V

    .line 4338
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->initFields()V

    .line 4339
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3804
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 3831
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->provider_:Ljava/lang/String;

    .line 3838
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->accountId_:Ljava/lang/String;

    .line 3845
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->externalId_:Ljava/lang/String;

    .line 3852
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->friendId_:Ljava/lang/String;

    .line 3859
    iput v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->providerId_:I

    .line 3880
    iput-boolean v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->sync_:Z

    .line 3887
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->syncAnchor_:Ljava/lang/String;

    .line 3894
    iput v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->error_:I

    .line 3901
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->syncTimestamp_:J

    .line 3805
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->initFields()V

    .line 3806
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;

    .prologue
    .line 3801
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .param p1, "noInit"    # Z

    .prologue
    const/4 v1, 0x0

    .line 3807
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 3831
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->provider_:Ljava/lang/String;

    .line 3838
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->accountId_:Ljava/lang/String;

    .line 3845
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->externalId_:Ljava/lang/String;

    .line 3852
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->friendId_:Ljava/lang/String;

    .line 3859
    iput v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->providerId_:I

    .line 3880
    iput-boolean v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->sync_:Z

    .line 3887
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->syncAnchor_:Ljava/lang/String;

    .line 3894
    iput v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->error_:I

    .line 3901
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->syncTimestamp_:J

    .line 3807
    return-void
.end method

.method static synthetic access$15202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    .param p1, "x1"    # Z

    .prologue
    .line 3801
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasProvider:Z

    return p1
.end method

.method static synthetic access$15302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 3801
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->provider_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$15402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    .param p1, "x1"    # Z

    .prologue
    .line 3801
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasAccountId:Z

    return p1
.end method

.method static synthetic access$15502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 3801
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->accountId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$15602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    .param p1, "x1"    # Z

    .prologue
    .line 3801
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasExternalId:Z

    return p1
.end method

.method static synthetic access$15702(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 3801
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->externalId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$15802(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    .param p1, "x1"    # Z

    .prologue
    .line 3801
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasFriendId:Z

    return p1
.end method

.method static synthetic access$15902(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 3801
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->friendId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$16002(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    .param p1, "x1"    # Z

    .prologue
    .line 3801
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasProviderId:Z

    return p1
.end method

.method static synthetic access$16102(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    .param p1, "x1"    # I

    .prologue
    .line 3801
    iput p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->providerId_:I

    return p1
.end method

.method static synthetic access$16202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    .param p1, "x1"    # Z

    .prologue
    .line 3801
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasStatus:Z

    return p1
.end method

.method static synthetic access$16300(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    .prologue
    .line 3801
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->status_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    return-object v0
.end method

.method static synthetic access$16302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    .param p1, "x1"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    .prologue
    .line 3801
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->status_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    return-object p1
.end method

.method static synthetic access$16402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    .param p1, "x1"    # Z

    .prologue
    .line 3801
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasMood:Z

    return p1
.end method

.method static synthetic access$16500(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    .prologue
    .line 3801
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->mood_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    return-object v0
.end method

.method static synthetic access$16502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    .param p1, "x1"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    .prologue
    .line 3801
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->mood_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    return-object p1
.end method

.method static synthetic access$16602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    .param p1, "x1"    # Z

    .prologue
    .line 3801
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasSync:Z

    return p1
.end method

.method static synthetic access$16702(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    .param p1, "x1"    # Z

    .prologue
    .line 3801
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->sync_:Z

    return p1
.end method

.method static synthetic access$16802(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    .param p1, "x1"    # Z

    .prologue
    .line 3801
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasSyncAnchor:Z

    return p1
.end method

.method static synthetic access$16902(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 3801
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->syncAnchor_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$17002(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    .param p1, "x1"    # Z

    .prologue
    .line 3801
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasError:Z

    return p1
.end method

.method static synthetic access$17102(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    .param p1, "x1"    # I

    .prologue
    .line 3801
    iput p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->error_:I

    return p1
.end method

.method static synthetic access$17202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    .param p1, "x1"    # Z

    .prologue
    .line 3801
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasSyncTimestamp:Z

    return p1
.end method

.method static synthetic access$17302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;J)J
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    .param p1, "x1"    # J

    .prologue
    .line 3801
    iput-wide p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->syncTimestamp_:J

    return-wide p1
.end method

.method static synthetic access$17402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    .param p1, "x1"    # Z

    .prologue
    .line 3801
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasSyncError:Z

    return p1
.end method

.method static synthetic access$17502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;)Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    .param p1, "x1"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .prologue
    .line 3801
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->syncError_:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    .locals 1

    .prologue
    .line 3811
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3820
    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusAndMood_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$14700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 3913
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->status_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    .line 3914
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->mood_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    .line 3915
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->SUCCESS:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->syncError_:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 3916
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;
    .locals 1

    .prologue
    .line 3984
    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->access$15000()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    .prologue
    .line 3987
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3953
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;

    move-result-object v0

    .line 3954
    .local v0, "builder":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3955
    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->access$14900(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    move-result-object v1

    .line 3957
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3964
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;

    move-result-object v0

    .line 3965
    .local v0, "builder":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3966
    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->access$14900(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    move-result-object v1

    .line 3968
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3920
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->access$14900(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3926
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->access$14900(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3974
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->access$14900(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3980
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->access$14900(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3942
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->access$14900(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3948
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->access$14900(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3931
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->access$14900(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3937
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->access$14900(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3840
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->accountId_:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3801
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3801
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    .locals 1

    .prologue
    .line 3815
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    return-object v0
.end method

.method public getError()I
    .locals 1

    .prologue
    .line 3896
    iget v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->error_:I

    return v0
.end method

.method public getExternalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3847
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->externalId_:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3854
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->friendId_:Ljava/lang/String;

    return-object v0
.end method

.method public getMood()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    .locals 1

    .prologue
    .line 3875
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->mood_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3833
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->provider_:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderId()I
    .locals 1

    .prologue
    .line 3861
    iget v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->providerId_:I

    return v0
.end method

.method public getStatus()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .locals 1

    .prologue
    .line 3868
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->status_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    return-object v0
.end method

.method public getSync()Z
    .locals 1

    .prologue
    .line 3882
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->sync_:Z

    return v0
.end method

.method public getSyncAnchor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3889
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->syncAnchor_:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncError()Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;
    .locals 1

    .prologue
    .line 3910
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->syncError_:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    return-object v0
.end method

.method public getSyncTimestamp()J
    .locals 2

    .prologue
    .line 3903
    iget-wide v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->syncTimestamp_:J

    return-wide v0
.end method

.method public hasAccountId()Z
    .locals 1

    .prologue
    .line 3839
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasAccountId:Z

    return v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 3895
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasError:Z

    return v0
.end method

.method public hasExternalId()Z
    .locals 1

    .prologue
    .line 3846
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasExternalId:Z

    return v0
.end method

.method public hasFriendId()Z
    .locals 1

    .prologue
    .line 3853
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasFriendId:Z

    return v0
.end method

.method public hasMood()Z
    .locals 1

    .prologue
    .line 3874
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasMood:Z

    return v0
.end method

.method public hasProvider()Z
    .locals 1

    .prologue
    .line 3832
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasProvider:Z

    return v0
.end method

.method public hasProviderId()Z
    .locals 1

    .prologue
    .line 3860
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasProviderId:Z

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 3867
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasStatus:Z

    return v0
.end method

.method public hasSync()Z
    .locals 1

    .prologue
    .line 3881
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasSync:Z

    return v0
.end method

.method public hasSyncAnchor()Z
    .locals 1

    .prologue
    .line 3888
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasSyncAnchor:Z

    return v0
.end method

.method public hasSyncError()Z
    .locals 1

    .prologue
    .line 3909
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasSyncError:Z

    return v0
.end method

.method public hasSyncTimestamp()Z
    .locals 1

    .prologue
    .line 3902
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasSyncTimestamp:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 3825
    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusAndMood_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$14800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3801
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->newBuilderForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3801
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->newBuilderForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;
    .locals 1

    .prologue
    .line 3985
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3801
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->toBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3801
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->toBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;
    .locals 1

    .prologue
    .line 3989
    invoke-static {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->newBuilder(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;

    move-result-object v0

    return-object v0
.end method
