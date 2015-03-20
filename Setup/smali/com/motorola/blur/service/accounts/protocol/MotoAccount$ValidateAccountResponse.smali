.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ValidateAccountResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;
    }
.end annotation


# static fields
.field public static final ERROR_FIELD_NUMBER:I = 0x1

.field public static final MESSAGEINFO_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;


# instance fields
.field private error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field private hasError:Z

.field private hasMessageInfo:Z

.field private messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9371
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    .line 9372
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internalForceInit()V

    .line 9373
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->initFields()V

    .line 9374
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9124
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 9125
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->initFields()V

    .line 9126
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;

    .prologue
    .line 9121
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "noInit"    # Z

    .prologue
    .line 9127
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    return-void
.end method

.method static synthetic access$32902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 9121
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->hasError:Z

    return p1
.end method

.method static synthetic access$33002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .prologue
    .line 9121
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    return-object p1
.end method

.method static synthetic access$33102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 9121
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->hasMessageInfo:Z

    return p1
.end method

.method static synthetic access$33200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    .prologue
    .line 9121
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method static synthetic access$33202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 9121
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;
    .locals 1

    .prologue
    .line 9131
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 9140
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_ValidateAccountResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$32400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 9163
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->UNKNOWN_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 9164
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 9165
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;
    .locals 1

    .prologue
    .line 9233
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->access$32700()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    .prologue
    .line 9236
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9202
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;

    move-result-object v0

    .line 9203
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9204
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->access$32600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    move-result-object v1

    .line 9206
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9213
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;

    move-result-object v0

    .line 9214
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9215
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->access$32600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    move-result-object v1

    .line 9217
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9169
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->access$32600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9175
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->access$32600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9223
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->access$32600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9229
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->access$32600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9191
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->access$32600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9197
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->access$32600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9180
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->access$32600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9186
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->access$32600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 9121
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9121
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;
    .locals 1

    .prologue
    .line 9135
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 1

    .prologue
    .line 9153
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 9160
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 9152
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->hasError:Z

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 9159
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->hasMessageInfo:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 9145
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_ValidateAccountResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$32500()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 9121
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9121
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;
    .locals 1

    .prologue
    .line 9234
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 9121
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9121
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;
    .locals 1

    .prologue
    .line 9238
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method
