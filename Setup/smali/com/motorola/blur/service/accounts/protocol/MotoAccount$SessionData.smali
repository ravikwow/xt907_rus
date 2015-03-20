.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SessionData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;
    }
.end annotation


# static fields
.field public static final AUTHTOKEN_FIELD_NUMBER:I = 0x2

.field public static final USERID_FIELD_NUMBER:I = 0x1

.field public static final USERINFO_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;


# instance fields
.field private authToken_:Ljava/lang/String;

.field private hasAuthToken:Z

.field private hasUserId:Z

.field private hasUserInfo:Z

.field private userId_:Ljava/lang/String;

.field private userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14768
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    .line 14769
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internalForceInit()V

    .line 14770
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->initFields()V

    .line 14771
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14494
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 14521
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->userId_:Ljava/lang/String;

    .line 14528
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->authToken_:Ljava/lang/String;

    .line 14495
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->initFields()V

    .line 14496
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;

    .prologue
    .line 14491
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 14497
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 14521
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->userId_:Ljava/lang/String;

    .line 14528
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->authToken_:Ljava/lang/String;

    .line 14497
    return-void
.end method

.method static synthetic access$52702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    .param p1, "x1"    # Z

    .prologue
    .line 14491
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->hasUserId:Z

    return p1
.end method

.method static synthetic access$52802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 14491
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->userId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$52902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    .param p1, "x1"    # Z

    .prologue
    .line 14491
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->hasAuthToken:Z

    return p1
.end method

.method static synthetic access$53002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 14491
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->authToken_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$53102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    .param p1, "x1"    # Z

    .prologue
    .line 14491
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->hasUserInfo:Z

    return p1
.end method

.method static synthetic access$53200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    .prologue
    .line 14491
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    return-object v0
.end method

.method static synthetic access$53202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .prologue
    .line 14491
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    .locals 1

    .prologue
    .line 14501
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 14510
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_SessionData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$52200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 14540
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 14541
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;
    .locals 1

    .prologue
    .line 14609
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->access$52500()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    .prologue
    .line 14612
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14578
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    move-result-object v0

    .line 14579
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14580
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->access$52400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v1

    .line 14582
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14589
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    move-result-object v0

    .line 14590
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14591
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->access$52400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v1

    .line 14593
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14545
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->access$52400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14551
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->access$52400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14599
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->access$52400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14605
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->access$52400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14567
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->access$52400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14573
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->access$52400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14556
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->access$52400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14562
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->access$52400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14530
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->authToken_:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 14491
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14491
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    .locals 1

    .prologue
    .line 14505
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14523
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->userId_:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1

    .prologue
    .line 14537
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    return-object v0
.end method

.method public hasAuthToken()Z
    .locals 1

    .prologue
    .line 14529
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->hasAuthToken:Z

    return v0
.end method

.method public hasUserId()Z
    .locals 1

    .prologue
    .line 14522
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->hasUserId:Z

    return v0
.end method

.method public hasUserInfo()Z
    .locals 1

    .prologue
    .line 14536
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->hasUserInfo:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 14515
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_SessionData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$52300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14491
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14491
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;
    .locals 1

    .prologue
    .line 14610
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14491
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14491
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;
    .locals 1

    .prologue
    .line 14614
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    move-result-object v0

    return-object v0
.end method
