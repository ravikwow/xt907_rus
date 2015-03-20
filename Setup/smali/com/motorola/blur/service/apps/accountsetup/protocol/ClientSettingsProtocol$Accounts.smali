.class public final Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ClientSettingsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Accounts"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;
    }
.end annotation


# static fields
.field public static final ACCOUNT_PRETTY_NAME_FIELD_NUMBER:I = 0x7

.field public static final EMAIL_ADDRESS_FIELD_NUMBER:I = 0x5

.field public static final EXTRA_FIELD_NUMBER:I = 0x8

.field public static final PROVIDER_ID_FIELD_NUMBER:I = 0x4

.field public static final SYNC_ANCHOR_FIELD_NUMBER:I = 0x2

.field public static final SYNC_ID_FIELD_NUMBER:I = 0x1

.field public static final USER_PRETTY_NAME_FIELD_NUMBER:I = 0x6

.field public static final _ID_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;


# instance fields
.field private Id_:I

.field private accountPrettyName_:Ljava/lang/String;

.field private emailAddress_:Ljava/lang/String;

.field private extra_:Ljava/lang/String;

.field private hasAccountPrettyName:Z

.field private hasEmailAddress:Z

.field private hasExtra:Z

.field private hasId:Z

.field private hasProviderId:Z

.field private hasSyncAnchor:Z

.field private hasSyncId:Z

.field private hasUserPrettyName:Z

.field private providerId_:I

.field private syncAnchor_:Ljava/lang/String;

.field private syncId_:Ljava/lang/String;

.field private userPrettyName_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3944
    new-instance v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->defaultInstance:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;

    .line 3945
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internalForceInit()V

    .line 3946
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->defaultInstance:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->initFields()V

    .line 3947
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3553
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 3580
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->syncId_:Ljava/lang/String;

    .line 3587
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->syncAnchor_:Ljava/lang/String;

    .line 3594
    iput v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->Id_:I

    .line 3601
    iput v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->providerId_:I

    .line 3608
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->emailAddress_:Ljava/lang/String;

    .line 3615
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->userPrettyName_:Ljava/lang/String;

    .line 3622
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->accountPrettyName_:Ljava/lang/String;

    .line 3629
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->extra_:Ljava/lang/String;

    .line 3554
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->initFields()V

    .line 3555
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$1;

    .prologue
    .line 3550
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .param p1, "noInit"    # Z

    .prologue
    const/4 v1, 0x0

    .line 3556
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 3580
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->syncId_:Ljava/lang/String;

    .line 3587
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->syncAnchor_:Ljava/lang/String;

    .line 3594
    iput v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->Id_:I

    .line 3601
    iput v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->providerId_:I

    .line 3608
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->emailAddress_:Ljava/lang/String;

    .line 3615
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->userPrettyName_:Ljava/lang/String;

    .line 3622
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->accountPrettyName_:Ljava/lang/String;

    .line 3629
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->extra_:Ljava/lang/String;

    .line 3556
    return-void
.end method

.method static synthetic access$14502(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;
    .param p1, "x1"    # Z

    .prologue
    .line 3550
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->hasSyncId:Z

    return p1
.end method

.method static synthetic access$14602(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 3550
    iput-object p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->syncId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$14702(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;
    .param p1, "x1"    # Z

    .prologue
    .line 3550
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->hasSyncAnchor:Z

    return p1
.end method

.method static synthetic access$14802(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 3550
    iput-object p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->syncAnchor_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$14902(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;
    .param p1, "x1"    # Z

    .prologue
    .line 3550
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->hasId:Z

    return p1
.end method

.method static synthetic access$15002(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;
    .param p1, "x1"    # I

    .prologue
    .line 3550
    iput p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->Id_:I

    return p1
.end method

.method static synthetic access$15102(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;
    .param p1, "x1"    # Z

    .prologue
    .line 3550
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->hasProviderId:Z

    return p1
.end method

.method static synthetic access$15202(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;
    .param p1, "x1"    # I

    .prologue
    .line 3550
    iput p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->providerId_:I

    return p1
.end method

.method static synthetic access$15302(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;
    .param p1, "x1"    # Z

    .prologue
    .line 3550
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->hasEmailAddress:Z

    return p1
.end method

.method static synthetic access$15402(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 3550
    iput-object p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->emailAddress_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$15502(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;
    .param p1, "x1"    # Z

    .prologue
    .line 3550
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->hasUserPrettyName:Z

    return p1
.end method

.method static synthetic access$15602(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 3550
    iput-object p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->userPrettyName_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$15702(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;
    .param p1, "x1"    # Z

    .prologue
    .line 3550
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->hasAccountPrettyName:Z

    return p1
.end method

.method static synthetic access$15802(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 3550
    iput-object p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->accountPrettyName_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$15902(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;
    .param p1, "x1"    # Z

    .prologue
    .line 3550
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->hasExtra:Z

    return p1
.end method

.method static synthetic access$16002(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 3550
    iput-object p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->extra_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;
    .locals 1

    .prologue
    .line 3560
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->defaultInstance:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3569
    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_Accounts_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->access$14000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 3634
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;
    .locals 1

    .prologue
    .line 3702
    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;->create()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;->access$14300()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;

    .prologue
    .line 3705
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3671
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;

    move-result-object v0

    .line 3672
    .local v0, "builder":Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3673
    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;->access$14200(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;

    move-result-object v1

    .line 3675
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3682
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;

    move-result-object v0

    .line 3683
    .local v0, "builder":Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3684
    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;->access$14200(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;

    move-result-object v1

    .line 3686
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3638
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;->access$14200(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3644
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;->access$14200(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3692
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;->access$14200(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3698
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;->access$14200(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3660
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;->access$14200(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3666
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;->access$14200(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3649
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;->access$14200(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3655
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;->access$14200(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAccountPrettyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3624
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->accountPrettyName_:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3550
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3550
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;
    .locals 1

    .prologue
    .line 3564
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->defaultInstance:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3610
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->emailAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3631
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->extra_:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 3596
    iget v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->Id_:I

    return v0
.end method

.method public getProviderId()I
    .locals 1

    .prologue
    .line 3603
    iget v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->providerId_:I

    return v0
.end method

.method public getSyncAnchor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3589
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->syncAnchor_:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3582
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->syncId_:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPrettyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3617
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->userPrettyName_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAccountPrettyName()Z
    .locals 1

    .prologue
    .line 3623
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->hasAccountPrettyName:Z

    return v0
.end method

.method public hasEmailAddress()Z
    .locals 1

    .prologue
    .line 3609
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->hasEmailAddress:Z

    return v0
.end method

.method public hasExtra()Z
    .locals 1

    .prologue
    .line 3630
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->hasExtra:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 3595
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->hasId:Z

    return v0
.end method

.method public hasProviderId()Z
    .locals 1

    .prologue
    .line 3602
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->hasProviderId:Z

    return v0
.end method

.method public hasSyncAnchor()Z
    .locals 1

    .prologue
    .line 3588
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->hasSyncAnchor:Z

    return v0
.end method

.method public hasSyncId()Z
    .locals 1

    .prologue
    .line 3581
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->hasSyncId:Z

    return v0
.end method

.method public hasUserPrettyName()Z
    .locals 1

    .prologue
    .line 3616
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->hasUserPrettyName:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 3574
    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_Accounts_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->access$14100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3550
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->newBuilderForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3550
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->newBuilderForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;
    .locals 1

    .prologue
    .line 3703
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3550
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->toBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3550
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->toBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;
    .locals 1

    .prologue
    .line 3707
    invoke-static {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;->newBuilder(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;

    move-result-object v0

    return-object v0
.end method
