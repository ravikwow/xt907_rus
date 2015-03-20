.class public final Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "CloudsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoginCloudResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;,
        Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Error;
    }
.end annotation


# static fields
.field public static final CLOUD_FIELD_NUMBER:I = 0x2

.field public static final ERROR_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;


# instance fields
.field private cloud_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

.field private error_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Error;

.field private hasCloud:Z

.field private hasError:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1342
    new-instance v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->defaultInstance:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    .line 1343
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->internalForceInit()V

    .line 1344
    sget-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->defaultInstance:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    invoke-direct {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->initFields()V

    .line 1345
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1024
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1025
    invoke-direct {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->initFields()V

    .line 1026
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$1;

    .prologue
    .line 1021
    invoke-direct {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "noInit"    # Z

    .prologue
    .line 1027
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    return-void
.end method

.method static synthetic access$4002(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 1021
    iput-boolean p1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->hasError:Z

    return p1
.end method

.method static synthetic access$4102(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Error;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Error;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Error;

    .prologue
    .line 1021
    iput-object p1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->error_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Error;

    return-object p1
.end method

.method static synthetic access$4202(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 1021
    iput-boolean p1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->hasCloud:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->cloud_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    .prologue
    .line 1021
    iput-object p1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->cloud_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;
    .locals 1

    .prologue
    .line 1031
    sget-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->defaultInstance:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1040
    # getter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->internal_static_LoginCloudResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->access$3500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 1134
    sget-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Error;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Error;

    iput-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->error_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Error;

    .line 1135
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->getDefaultInstance()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->cloud_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    .line 1136
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;
    .locals 1

    .prologue
    .line 1204
    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->create()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->access$3800()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    .prologue
    .line 1207
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1173
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;

    move-result-object v0

    .line 1174
    .local v0, "builder":Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1175
    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->access$3700(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    move-result-object v1

    .line 1177
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1184
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;

    move-result-object v0

    .line 1185
    .local v0, "builder":Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1186
    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->access$3700(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    move-result-object v1

    .line 1188
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1140
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->access$3700(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1146
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->access$3700(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1194
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->access$3700(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1200
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->access$3700(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1162
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->access$3700(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1168
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->access$3700(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1151
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->access$3700(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1157
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->access$3700(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCloud()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    .locals 1

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->cloud_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1021
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1021
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;
    .locals 1

    .prologue
    .line 1035
    sget-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->defaultInstance:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Error;
    .locals 1

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->error_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Error;

    return-object v0
.end method

.method public hasCloud()Z
    .locals 1

    .prologue
    .line 1130
    iget-boolean v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->hasCloud:Z

    return v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 1123
    iget-boolean v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->hasError:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1045
    # getter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->internal_static_LoginCloudResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->access$3600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1021
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->newBuilderForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1021
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->newBuilderForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;
    .locals 1

    .prologue
    .line 1205
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1021
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->toBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1021
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->toBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;
    .locals 1

    .prologue
    .line 1209
    invoke-static {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->newBuilder(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method
