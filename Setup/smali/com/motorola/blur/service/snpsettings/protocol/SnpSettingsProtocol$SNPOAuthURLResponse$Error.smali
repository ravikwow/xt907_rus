.class public final Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SnpSettingsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;,
        Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$ErrorType;
    }
.end annotation


# static fields
.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;


# instance fields
.field private hasType:Z

.field private type_:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$ErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2220
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;->defaultInstance:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;

    .line 2221
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internalForceInit()V

    .line 2222
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;->defaultInstance:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;

    invoke-direct {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;->initFields()V

    .line 2223
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1947
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1948
    invoke-direct {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;->initFields()V

    .line 1949
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$1;

    .prologue
    .line 1944
    invoke-direct {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "noInit"    # Z

    .prologue
    .line 1950
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    return-void
.end method

.method static synthetic access$8902(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;
    .param p1, "x1"    # Z

    .prologue
    .line 1944
    iput-boolean p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;->hasType:Z

    return p1
.end method

.method static synthetic access$9002(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$ErrorType;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$ErrorType;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;
    .param p1, "x1"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$ErrorType;

    .prologue
    .line 1944
    iput-object p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;->type_:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$ErrorType;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;
    .locals 1

    .prologue
    .line 1954
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;->defaultInstance:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1963
    # getter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_SNPOAuthURLResponse_Error_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->access$8400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 2050
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$ErrorType;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$ErrorType;

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;->type_:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$ErrorType;

    .line 2051
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;
    .locals 1

    .prologue
    .line 2119
    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;->create()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;->access$8700()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;

    .prologue
    .line 2122
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2088
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;

    move-result-object v0

    .line 2089
    .local v0, "builder":Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2090
    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;->access$8600(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;

    move-result-object v1

    .line 2092
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2099
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;

    move-result-object v0

    .line 2100
    .local v0, "builder":Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2101
    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;->access$8600(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;

    move-result-object v1

    .line 2103
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2055
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;->access$8600(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2061
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;->access$8600(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2109
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;->access$8600(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2115
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;->access$8600(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2077
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;->access$8600(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2083
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;->access$8600(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2066
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;->access$8600(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2072
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;->access$8600(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1944
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;->getDefaultInstanceForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1944
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;->getDefaultInstanceForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;
    .locals 1

    .prologue
    .line 1958
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;->defaultInstance:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;

    return-object v0
.end method

.method public getType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$ErrorType;
    .locals 1

    .prologue
    .line 2047
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;->type_:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$ErrorType;

    return-object v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 2046
    iget-boolean v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;->hasType:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1968
    # getter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_SNPOAuthURLResponse_Error_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->access$8500()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1944
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;->newBuilderForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1944
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;->newBuilderForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;
    .locals 1

    .prologue
    .line 2120
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1944
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;->toBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1944
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;->toBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;
    .locals 1

    .prologue
    .line 2124
    invoke-static {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;->newBuilder(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;

    move-result-object v0

    return-object v0
.end method
