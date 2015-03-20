.class public final Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "CloudsvcProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ErrorResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;
    }
.end annotation


# static fields
.field public static final ERROR_FIELD_NUMBER:I = 0x1

.field public static final ERROR_TEXT_FIELD_NUMBER:I = 0x2

.field public static final ERROR_URL_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;


# instance fields
.field private errorText_:Ljava/lang/String;

.field private errorUrl_:Ljava/lang/String;

.field private error_:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

.field private hasError:Z

.field private hasErrorText:Z

.field private hasErrorUrl:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 403
    new-instance v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->defaultInstance:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    .line 404
    invoke-static {}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol;->internalForceInit()V

    .line 405
    sget-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->defaultInstance:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    invoke-direct {v0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->initFields()V

    .line 406
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 179
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->errorText_:Ljava/lang/String;

    .line 186
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->errorUrl_:Ljava/lang/String;

    .line 146
    invoke-direct {p0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->initFields()V

    .line 147
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$1;

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 179
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->errorText_:Ljava/lang/String;

    .line 186
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->errorUrl_:Ljava/lang/String;

    .line 148
    return-void
.end method

.method static synthetic access$1002(Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->errorUrl_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->hasError:Z

    return p1
.end method

.method static synthetic access$602(Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;)Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->error_:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    return-object p1
.end method

.method static synthetic access$702(Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->hasErrorText:Z

    return p1
.end method

.method static synthetic access$802(Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->errorText_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->hasErrorUrl:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->defaultInstance:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 161
    # getter for: Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol;->internal_static_cloudsvc_ErrorResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OK:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    iput-object v0, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->error_:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    .line 192
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;
    .locals 1

    .prologue
    .line 260
    # invokes: Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->create()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;
    invoke-static {}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->access$300()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;)Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    .prologue
    .line 263
    invoke-static {}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->newBuilder()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    invoke-static {}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->newBuilder()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;

    move-result-object v0

    .line 230
    .local v0, "builder":Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    # invokes: Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->buildParsed()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->access$200(Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;)Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    move-result-object v1

    .line 233
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    invoke-static {}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->newBuilder()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;

    move-result-object v0

    .line 241
    .local v0, "builder":Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    # invokes: Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->buildParsed()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->access$200(Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;)Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    move-result-object v1

    .line 244
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-static {}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->newBuilder()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;

    # invokes: Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->buildParsed()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->access$200(Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;)Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 202
    invoke-static {}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->newBuilder()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;

    # invokes: Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->buildParsed()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->access$200(Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;)Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    invoke-static {}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->newBuilder()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;

    # invokes: Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->buildParsed()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->access$200(Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;)Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    invoke-static {}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->newBuilder()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;

    # invokes: Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->buildParsed()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->access$200(Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;)Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-static {}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->newBuilder()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;

    # invokes: Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->buildParsed()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->access$200(Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;)Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    invoke-static {}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->newBuilder()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;

    # invokes: Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->buildParsed()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->access$200(Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;)Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-static {}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->newBuilder()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;

    # invokes: Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->buildParsed()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->access$200(Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;)Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-static {}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->newBuilder()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;

    # invokes: Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->buildParsed()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->access$200(Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;)Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->defaultInstance:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->error_:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    return-object v0
.end method

.method public getErrorText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->errorText_:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->errorUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->hasError:Z

    return v0
.end method

.method public hasErrorText()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->hasErrorText:Z

    return v0
.end method

.method public hasErrorUrl()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->hasErrorUrl:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 166
    # getter for: Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol;->internal_static_cloudsvc_ErrorResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->newBuilderForType()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->newBuilderForType()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;
    .locals 1

    .prologue
    .line 261
    invoke-static {}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->newBuilder()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->toBuilder()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->toBuilder()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;
    .locals 1

    .prologue
    .line 265
    invoke-static {p0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->newBuilder(Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;)Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;

    move-result-object v0

    return-object v0
.end method
