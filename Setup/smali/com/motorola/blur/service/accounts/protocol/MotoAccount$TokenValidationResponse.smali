.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TokenValidationResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;
    }
.end annotation


# static fields
.field public static final ERROR_FIELD_NUMBER:I = 0x1

.field public static final MESSAGEINFO_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;


# instance fields
.field private error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field private hasError:Z

.field private hasMessageInfo:Z

.field private messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11284
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    .line 11285
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internalForceInit()V

    .line 11286
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->initFields()V

    .line 11287
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11037
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 11038
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->initFields()V

    .line 11039
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;

    .prologue
    .line 11034
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "noInit"    # Z

    .prologue
    .line 11040
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    return-void
.end method

.method static synthetic access$39702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 11034
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->hasError:Z

    return p1
.end method

.method static synthetic access$39802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .prologue
    .line 11034
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    return-object p1
.end method

.method static synthetic access$39902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 11034
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->hasMessageInfo:Z

    return p1
.end method

.method static synthetic access$40000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    .prologue
    .line 11034
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method static synthetic access$40002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 11034
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;
    .locals 1

    .prologue
    .line 11044
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 11053
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_TokenValidationResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$39200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 11076
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->UNKNOWN_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 11077
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 11078
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;
    .locals 1

    .prologue
    .line 11146
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->access$39500()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    .prologue
    .line 11149
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11115
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;

    move-result-object v0

    .line 11116
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11117
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->access$39400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    move-result-object v1

    .line 11119
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11126
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;

    move-result-object v0

    .line 11127
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11128
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->access$39400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    move-result-object v1

    .line 11130
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11082
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->access$39400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11088
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->access$39400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11136
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->access$39400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11142
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->access$39400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11104
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->access$39400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11110
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->access$39400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11093
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->access$39400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11099
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->access$39400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 11034
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11034
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;
    .locals 1

    .prologue
    .line 11048
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 1

    .prologue
    .line 11066
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 11073
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 11065
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->hasError:Z

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 11072
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->hasMessageInfo:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 11058
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_TokenValidationResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$39300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11034
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11034
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;
    .locals 1

    .prologue
    .line 11147
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11034
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11034
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;
    .locals 1

    .prologue
    .line 11151
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;

    move-result-object v0

    return-object v0
.end method
