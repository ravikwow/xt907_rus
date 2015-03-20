.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NewAccountResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;
    }
.end annotation


# static fields
.field public static final ERROR_FIELD_NUMBER:I = 0x1

.field public static final MESSAGEINFO_FIELD_NUMBER:I = 0x3

.field public static final SESSION_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;


# instance fields
.field private error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field private hasError:Z

.field private hasMessageInfo:Z

.field private hasSession:Z

.field private messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

.field private session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 868
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    .line 869
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internalForceInit()V

    .line 870
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->initFields()V

    .line 871
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 576
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 577
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->initFields()V

    .line 578
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;

    .prologue
    .line 573
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "noInit"    # Z

    .prologue
    .line 579
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    return-void
.end method

.method static synthetic access$1802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 573
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->hasError:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .prologue
    .line 573
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 573
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->hasSession:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    .prologue
    .line 573
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    .prologue
    .line 573
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 573
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->hasMessageInfo:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    .prologue
    .line 573
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 573
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;
    .locals 1

    .prologue
    .line 583
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 592
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_NewAccountResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$1300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 622
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->UNKNOWN_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 623
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    .line 624
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 625
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;
    .locals 1

    .prologue
    .line 693
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->access$1600()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    .prologue
    .line 696
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 662
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;

    move-result-object v0

    .line 663
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 664
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->access$1500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    move-result-object v1

    .line 666
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 673
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;

    move-result-object v0

    .line 674
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 675
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->access$1500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    move-result-object v1

    .line 677
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 629
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->access$1500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 635
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->access$1500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 683
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->access$1500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 689
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->access$1500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 651
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->access$1500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 657
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->access$1500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 640
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->access$1500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 646
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->access$1500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;
    .locals 1

    .prologue
    .line 587
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method public getSession()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 604
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->hasError:Z

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 618
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->hasMessageInfo:Z

    return v0
.end method

.method public hasSession()Z
    .locals 1

    .prologue
    .line 611
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->hasSession:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 597
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_NewAccountResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$1400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;
    .locals 1

    .prologue
    .line 694
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;
    .locals 1

    .prologue
    .line 698
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method
