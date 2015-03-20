.class public final Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "CloudsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CloudResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;,
        Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Error;
    }
.end annotation


# static fields
.field public static final CLOUD_FIELD_NUMBER:I = 0x3

.field public static final ERROR_FIELD_NUMBER:I = 0x2

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;


# instance fields
.field private cloud_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

.field private error_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Error;

.field private hasCloud:Z

.field private hasError:Z

.field private hasVersion:Z

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2351
    new-instance v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->defaultInstance:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    .line 2352
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->internalForceInit()V

    .line 2353
    sget-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->defaultInstance:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    invoke-direct {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->initFields()V

    .line 2354
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2012
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2106
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->version_:I

    .line 2013
    invoke-direct {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->initFields()V

    .line 2014
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$1;

    .prologue
    .line 2009
    invoke-direct {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 2015
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2106
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->version_:I

    .line 2015
    return-void
.end method

.method static synthetic access$7202(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 2009
    iput-boolean p1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->hasVersion:Z

    return p1
.end method

.method static synthetic access$7302(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;
    .param p1, "x1"    # I

    .prologue
    .line 2009
    iput p1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->version_:I

    return p1
.end method

.method static synthetic access$7402(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 2009
    iput-boolean p1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->hasError:Z

    return p1
.end method

.method static synthetic access$7502(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Error;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Error;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Error;

    .prologue
    .line 2009
    iput-object p1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->error_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Error;

    return-object p1
.end method

.method static synthetic access$7602(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 2009
    iput-boolean p1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->hasCloud:Z

    return p1
.end method

.method static synthetic access$7700(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    .prologue
    .line 2009
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->cloud_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    return-object v0
.end method

.method static synthetic access$7702(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    .prologue
    .line 2009
    iput-object p1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->cloud_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;
    .locals 1

    .prologue
    .line 2019
    sget-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->defaultInstance:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2028
    # getter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->internal_static_CloudResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->access$6700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 2125
    sget-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Error;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Error;

    iput-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->error_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Error;

    .line 2126
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->getDefaultInstance()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->cloud_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    .line 2127
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;
    .locals 1

    .prologue
    .line 2195
    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->create()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->access$7000()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    .prologue
    .line 2198
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2164
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;

    move-result-object v0

    .line 2165
    .local v0, "builder":Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2166
    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->access$6900(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    move-result-object v1

    .line 2168
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2175
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;

    move-result-object v0

    .line 2176
    .local v0, "builder":Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2177
    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->access$6900(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    move-result-object v1

    .line 2179
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2131
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->access$6900(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2137
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->access$6900(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2185
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->access$6900(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2191
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->access$6900(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2153
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->access$6900(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2159
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->access$6900(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2142
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->access$6900(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2148
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;

    # invokes: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->access$6900(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCloud()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    .locals 1

    .prologue
    .line 2122
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->cloud_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2009
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2009
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;
    .locals 1

    .prologue
    .line 2023
    sget-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->defaultInstance:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Error;
    .locals 1

    .prologue
    .line 2115
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->error_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Error;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 2108
    iget v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->version_:I

    return v0
.end method

.method public hasCloud()Z
    .locals 1

    .prologue
    .line 2121
    iget-boolean v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->hasCloud:Z

    return v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 2114
    iget-boolean v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->hasError:Z

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 2107
    iget-boolean v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->hasVersion:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 2033
    # getter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->internal_static_CloudResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->access$6800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2009
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->newBuilderForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2009
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->newBuilderForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;
    .locals 1

    .prologue
    .line 2196
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->newBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2009
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->toBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2009
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->toBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;
    .locals 1

    .prologue
    .line 2200
    invoke-static {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->newBuilder(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method
