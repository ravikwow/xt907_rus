.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AccountLoginResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;
    }
.end annotation


# static fields
.field public static final ERROR_FIELD_NUMBER:I = 0x1

.field public static final MESSAGEINFO_FIELD_NUMBER:I = 0x3

.field public static final SESSION_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;


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
    .line 5583
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    .line 5584
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internalForceInit()V

    .line 5585
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->initFields()V

    .line 5586
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5291
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 5292
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->initFields()V

    .line 5293
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;

    .prologue
    .line 5288
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "noInit"    # Z

    .prologue
    .line 5294
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    return-void
.end method

.method static synthetic access$19102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 5288
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->hasError:Z

    return p1
.end method

.method static synthetic access$19202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .prologue
    .line 5288
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    return-object p1
.end method

.method static synthetic access$19302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 5288
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->hasSession:Z

    return p1
.end method

.method static synthetic access$19400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    .prologue
    .line 5288
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    return-object v0
.end method

.method static synthetic access$19402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    .prologue
    .line 5288
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    return-object p1
.end method

.method static synthetic access$19502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 5288
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->hasMessageInfo:Z

    return p1
.end method

.method static synthetic access$19600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    .prologue
    .line 5288
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method static synthetic access$19602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 5288
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;
    .locals 1

    .prologue
    .line 5298
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5307
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_AccountLoginResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$18600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 5337
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->UNKNOWN_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 5338
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    .line 5339
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 5340
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;
    .locals 1

    .prologue
    .line 5408
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->access$18900()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    .prologue
    .line 5411
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5377
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;

    move-result-object v0

    .line 5378
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5379
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->access$18800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    move-result-object v1

    .line 5381
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5388
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;

    move-result-object v0

    .line 5389
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5390
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->access$18800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    move-result-object v1

    .line 5392
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5344
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->access$18800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5350
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->access$18800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5398
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->access$18800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5404
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->access$18800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5366
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->access$18800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5372
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->access$18800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5355
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->access$18800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5361
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->access$18800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5288
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5288
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;
    .locals 1

    .prologue
    .line 5302
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 1

    .prologue
    .line 5320
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 5334
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method public getSession()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    .locals 1

    .prologue
    .line 5327
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 5319
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->hasError:Z

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 5333
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->hasMessageInfo:Z

    return v0
.end method

.method public hasSession()Z
    .locals 1

    .prologue
    .line 5326
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->hasSession:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5312
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_AccountLoginResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$18700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5288
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5288
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;
    .locals 1

    .prologue
    .line 5409
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5288
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5288
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;
    .locals 1

    .prologue
    .line 5413
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;

    move-result-object v0

    return-object v0
.end method
