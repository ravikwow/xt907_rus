.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserProfile"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;,
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;,
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;
    }
.end annotation


# static fields
.field public static final DISPLAYNAME_FIELD_NUMBER:I = 0x2

.field public static final LANGUAGE_FIELD_NUMBER:I = 0x3

.field public static final STATUS_FIELD_NUMBER:I = 0x4

.field public static final USERID_FIELD_NUMBER:I = 0x6

.field public static final USERNAME_FIELD_NUMBER:I = 0x1

.field public static final VERIFICATIONSTATUS_FIELD_NUMBER:I = 0x5

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;


# instance fields
.field private displayName_:Ljava/lang/String;

.field private hasDisplayName:Z

.field private hasLanguage:Z

.field private hasStatus:Z

.field private hasUserId:Z

.field private hasUserName:Z

.field private hasVerificationStatus:Z

.field private language_:Ljava/lang/String;

.field private status_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;

.field private userId_:Ljava/lang/String;

.field private userName_:Ljava/lang/String;

.field private verificationStatus_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13497
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    .line 13498
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internalForceInit()V

    .line 13499
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->initFields()V

    .line 13500
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 13018
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 13181
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->userName_:Ljava/lang/String;

    .line 13188
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->displayName_:Ljava/lang/String;

    .line 13195
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->language_:Ljava/lang/String;

    .line 13202
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->userId_:Ljava/lang/String;

    .line 13019
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->initFields()V

    .line 13020
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;

    .prologue
    .line 13015
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 13021
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 13181
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->userName_:Ljava/lang/String;

    .line 13188
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->displayName_:Ljava/lang/String;

    .line 13195
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->language_:Ljava/lang/String;

    .line 13202
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->userId_:Ljava/lang/String;

    .line 13021
    return-void
.end method

.method static synthetic access$46902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    .param p1, "x1"    # Z

    .prologue
    .line 13015
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->hasUserName:Z

    return p1
.end method

.method static synthetic access$47002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 13015
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->userName_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$47102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    .param p1, "x1"    # Z

    .prologue
    .line 13015
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->hasDisplayName:Z

    return p1
.end method

.method static synthetic access$47202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 13015
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->displayName_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$47302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    .param p1, "x1"    # Z

    .prologue
    .line 13015
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->hasLanguage:Z

    return p1
.end method

.method static synthetic access$47402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 13015
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->language_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$47502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    .param p1, "x1"    # Z

    .prologue
    .line 13015
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->hasUserId:Z

    return p1
.end method

.method static synthetic access$47602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 13015
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->userId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$47702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    .param p1, "x1"    # Z

    .prologue
    .line 13015
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->hasStatus:Z

    return p1
.end method

.method static synthetic access$47802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;

    .prologue
    .line 13015
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->status_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;

    return-object p1
.end method

.method static synthetic access$47902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    .param p1, "x1"    # Z

    .prologue
    .line 13015
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->hasVerificationStatus:Z

    return p1
.end method

.method static synthetic access$48002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;

    .prologue
    .line 13015
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->verificationStatus_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    .locals 1

    .prologue
    .line 13025
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 13034
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_UserProfile_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$46400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 13221
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;->ENABLED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->status_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;

    .line 13222
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;->VERIFIED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->verificationStatus_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;

    .line 13223
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;
    .locals 1

    .prologue
    .line 13291
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->access$46700()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    .prologue
    .line 13294
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13260
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;

    move-result-object v0

    .line 13261
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13262
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->access$46600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    move-result-object v1

    .line 13264
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13271
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;

    move-result-object v0

    .line 13272
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13273
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->access$46600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    move-result-object v1

    .line 13275
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13227
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->access$46600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13233
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->access$46600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13281
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->access$46600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13287
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->access$46600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13249
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->access$46600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13255
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->access$46600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13238
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->access$46600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13244
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->access$46600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 13015
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13015
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    .locals 1

    .prologue
    .line 13029
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13190
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->displayName_:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13197
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->language_:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;
    .locals 1

    .prologue
    .line 13211
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->status_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13204
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->userId_:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13183
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->userName_:Ljava/lang/String;

    return-object v0
.end method

.method public getVerificationStatus()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;
    .locals 1

    .prologue
    .line 13218
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->verificationStatus_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;

    return-object v0
.end method

.method public hasDisplayName()Z
    .locals 1

    .prologue
    .line 13189
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->hasDisplayName:Z

    return v0
.end method

.method public hasLanguage()Z
    .locals 1

    .prologue
    .line 13196
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->hasLanguage:Z

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 13210
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->hasStatus:Z

    return v0
.end method

.method public hasUserId()Z
    .locals 1

    .prologue
    .line 13203
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->hasUserId:Z

    return v0
.end method

.method public hasUserName()Z
    .locals 1

    .prologue
    .line 13182
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->hasUserName:Z

    return v0
.end method

.method public hasVerificationStatus()Z
    .locals 1

    .prologue
    .line 13217
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->hasVerificationStatus:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 13039
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_UserProfile_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$46500()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13015
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13015
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;
    .locals 1

    .prologue
    .line 13292
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13015
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13015
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;
    .locals 1

    .prologue
    .line 13296
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;

    move-result-object v0

    return-object v0
.end method
