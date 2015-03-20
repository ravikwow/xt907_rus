.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AccountInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;,
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;
    }
.end annotation


# static fields
.field public static final ACTION_FIELD_NUMBER:I = 0x3

.field public static final LOGIN_FIELD_NUMBER:I = 0x1

.field public static final PASSWORD_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;


# instance fields
.field private action_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;

.field private hasAction:Z

.field private hasLogin:Z

.field private hasPassword:Z

.field private login_:Ljava/lang/String;

.field private password_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13835
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    .line 13836
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internalForceInit()V

    .line 13837
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->initFields()V

    .line 13838
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 13508
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 13604
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->login_:Ljava/lang/String;

    .line 13611
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->password_:Ljava/lang/String;

    .line 13509
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->initFields()V

    .line 13510
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;

    .prologue
    .line 13505
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 13511
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 13604
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->login_:Ljava/lang/String;

    .line 13611
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->password_:Ljava/lang/String;

    .line 13511
    return-void
.end method

.method static synthetic access$48602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 13505
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->hasLogin:Z

    return p1
.end method

.method static synthetic access$48702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 13505
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->login_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$48802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 13505
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->hasPassword:Z

    return p1
.end method

.method static synthetic access$48902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 13505
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->password_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$49002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 13505
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->hasAction:Z

    return p1
.end method

.method static synthetic access$49102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;

    .prologue
    .line 13505
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->action_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;
    .locals 1

    .prologue
    .line 13515
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 13524
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_AccountInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$48100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 13623
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;->CREATE:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->action_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;

    .line 13624
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;
    .locals 1

    .prologue
    .line 13692
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->access$48400()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    .prologue
    .line 13695
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13661
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;

    move-result-object v0

    .line 13662
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13663
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->access$48300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    move-result-object v1

    .line 13665
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13672
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;

    move-result-object v0

    .line 13673
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13674
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->access$48300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    move-result-object v1

    .line 13676
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13628
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->access$48300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13634
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->access$48300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13682
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->access$48300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13688
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->access$48300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13650
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->access$48300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13656
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->access$48300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13639
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->access$48300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13645
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->access$48300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAction()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;
    .locals 1

    .prologue
    .line 13620
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->action_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 13505
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13505
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;
    .locals 1

    .prologue
    .line 13519
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    return-object v0
.end method

.method public getLogin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13606
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->login_:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13613
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->password_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAction()Z
    .locals 1

    .prologue
    .line 13619
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->hasAction:Z

    return v0
.end method

.method public hasLogin()Z
    .locals 1

    .prologue
    .line 13605
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->hasLogin:Z

    return v0
.end method

.method public hasPassword()Z
    .locals 1

    .prologue
    .line 13612
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->hasPassword:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 13529
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_AccountInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$48200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13505
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13505
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;
    .locals 1

    .prologue
    .line 13693
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13505
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13505
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;
    .locals 1

    .prologue
    .line 13697
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;

    move-result-object v0

    return-object v0
.end method
