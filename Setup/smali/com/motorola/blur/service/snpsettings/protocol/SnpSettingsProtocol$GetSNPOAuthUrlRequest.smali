.class public final Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SnpSettingsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetSNPOAuthUrlRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;
    }
.end annotation


# static fields
.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;


# instance fields
.field private hasType:Z

.field private type_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1909
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;->defaultInstance:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    .line 1910
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internalForceInit()V

    .line 1911
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;->defaultInstance:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    invoke-direct {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;->initFields()V

    .line 1912
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1708
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1735
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;->type_:Ljava/lang/String;

    .line 1709
    invoke-direct {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;->initFields()V

    .line 1710
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$1;

    .prologue
    .line 1705
    invoke-direct {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 1711
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1735
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;->type_:Ljava/lang/String;

    .line 1711
    return-void
.end method

.method static synthetic access$8002(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 1705
    iput-boolean p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;->hasType:Z

    return p1
.end method

.method static synthetic access$8102(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1705
    iput-object p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;->type_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;
    .locals 1

    .prologue
    .line 1715
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;->defaultInstance:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1724
    # getter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_GetSNPOAuthUrlRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->access$7500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 1740
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;
    .locals 1

    .prologue
    .line 1808
    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->create()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->access$7800()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    .prologue
    .line 1811
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1777
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;

    move-result-object v0

    .line 1778
    .local v0, "builder":Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1779
    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->access$7700(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    move-result-object v1

    .line 1781
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1788
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;

    move-result-object v0

    .line 1789
    .local v0, "builder":Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1790
    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->access$7700(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    move-result-object v1

    .line 1792
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1744
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->access$7700(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1750
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->access$7700(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1798
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->access$7700(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1804
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->access$7700(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1766
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->access$7700(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1772
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->access$7700(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1755
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->access$7700(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1761
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->access$7700(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1705
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1705
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;
    .locals 1

    .prologue
    .line 1719
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;->defaultInstance:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1737
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;->type_:Ljava/lang/String;

    return-object v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 1736
    iget-boolean v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;->hasType:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1729
    # getter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_GetSNPOAuthUrlRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->access$7600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1705
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;->newBuilderForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1705
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;->newBuilderForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;
    .locals 1

    .prologue
    .line 1809
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1705
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;->toBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1705
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;->toBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;
    .locals 1

    .prologue
    .line 1813
    invoke-static {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;->newBuilder(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;

    move-result-object v0

    return-object v0
.end method
