.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChangePasswordResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;
    }
.end annotation


# static fields
.field public static final ERROR_FIELD_NUMBER:I = 0x1

.field public static final MESSAGEINFO_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;


# instance fields
.field private error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field private hasError:Z

.field private hasMessageInfo:Z

.field private messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7511
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    .line 7512
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internalForceInit()V

    .line 7513
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->initFields()V

    .line 7514
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7264
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 7265
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->initFields()V

    .line 7266
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;

    .prologue
    .line 7261
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "noInit"    # Z

    .prologue
    .line 7267
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    return-void
.end method

.method static synthetic access$26402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 7261
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->hasError:Z

    return p1
.end method

.method static synthetic access$26502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .prologue
    .line 7261
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    return-object p1
.end method

.method static synthetic access$26602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 7261
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->hasMessageInfo:Z

    return p1
.end method

.method static synthetic access$26700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    .prologue
    .line 7261
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method static synthetic access$26702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 7261
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;
    .locals 1

    .prologue
    .line 7271
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 7280
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_ChangePasswordResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$25900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 7303
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->UNKNOWN_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 7304
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 7305
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;
    .locals 1

    .prologue
    .line 7373
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->access$26200()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    .prologue
    .line 7376
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7342
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;

    move-result-object v0

    .line 7343
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7344
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->access$26100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    move-result-object v1

    .line 7346
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7353
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;

    move-result-object v0

    .line 7354
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7355
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->access$26100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    move-result-object v1

    .line 7357
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7309
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->access$26100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7315
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->access$26100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7363
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->access$26100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7369
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->access$26100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7331
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->access$26100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7337
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->access$26100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7320
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->access$26100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7326
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->access$26100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 7261
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7261
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;
    .locals 1

    .prologue
    .line 7275
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 1

    .prologue
    .line 7293
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 7300
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 7292
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->hasError:Z

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 7299
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->hasMessageInfo:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 7285
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_ChangePasswordResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$26000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7261
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7261
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;
    .locals 1

    .prologue
    .line 7374
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7261
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7261
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;
    .locals 1

    .prologue
    .line 7378
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method
