.class public final Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "PhotosProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhotoResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;,
        Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;
    }
.end annotation


# static fields
.field public static final ERROR_FIELD_NUMBER:I = 0x2

.field public static final STATUS_FIELD_NUMBER:I = 0x3

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;


# instance fields
.field private error_:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

.field private hasError:Z

.field private hasVersion:Z

.field private status_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;",
            ">;"
        }
    .end annotation
.end field

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1014
    new-instance v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->defaultInstance:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    .line 1015
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol;->internalForceInit()V

    .line 1016
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->defaultInstance:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->initFields()V

    .line 1017
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 731
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->version_:I

    .line 744
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->status_:Ljava/util/List;

    .line 411
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->initFields()V

    .line 412
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$1;

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 413
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 731
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->version_:I

    .line 744
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->status_:Ljava/util/List;

    .line 413
    return-void
.end method

.method static synthetic access$2500(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->status_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 407
    iput-object p1, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->status_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 407
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->hasVersion:Z

    return p1
.end method

.method static synthetic access$2702(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;
    .param p1, "x1"    # I

    .prologue
    .line 407
    iput p1, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->version_:I

    return p1
.end method

.method static synthetic access$2802(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 407
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->hasError:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->error_:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    .prologue
    .line 407
    iput-object p1, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->error_:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;
    .locals 1

    .prologue
    .line 417
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->defaultInstance:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 426
    # getter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol;->internal_static_PhotoResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol;->access$1300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 755
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;->getDefaultInstance()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->error_:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    .line 756
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;
    .locals 1

    .prologue
    .line 824
    # invokes: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->create()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->access$2300()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    .prologue
    .line 827
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->newBuilder()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 793
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->newBuilder()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;

    move-result-object v0

    .line 794
    .local v0, "builder":Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 795
    # invokes: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->buildParsed()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->access$2200(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    move-result-object v1

    .line 797
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 804
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->newBuilder()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;

    move-result-object v0

    .line 805
    .local v0, "builder":Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 806
    # invokes: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->buildParsed()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->access$2200(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    move-result-object v1

    .line 808
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 760
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->newBuilder()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;

    # invokes: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->buildParsed()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->access$2200(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 766
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->newBuilder()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;

    # invokes: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->buildParsed()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->access$2200(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 814
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->newBuilder()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;

    # invokes: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->buildParsed()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->access$2200(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 820
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->newBuilder()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;

    # invokes: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->buildParsed()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->access$2200(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 782
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->newBuilder()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;

    # invokes: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->buildParsed()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->access$2200(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 788
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->newBuilder()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;

    # invokes: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->buildParsed()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->access$2200(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 771
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->newBuilder()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;

    # invokes: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->buildParsed()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->access$2200(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 777
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->newBuilder()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;

    # invokes: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->buildParsed()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->access$2200(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;
    .locals 1

    .prologue
    .line 421
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->defaultInstance:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->error_:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    return-object v0
.end method

.method public getStatus(I)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 751
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->status_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    return-object v0
.end method

.method public getStatusCount()I
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->status_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getStatusList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 747
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->status_:Ljava/util/List;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 733
    iget v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->version_:I

    return v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 739
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->hasError:Z

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 732
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->hasVersion:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 431
    # getter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol;->internal_static_PhotoResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol;->access$1400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->newBuilderForType()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->newBuilderForType()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;
    .locals 1

    .prologue
    .line 825
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->newBuilder()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->toBuilder()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->toBuilder()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;
    .locals 1

    .prologue
    .line 829
    invoke-static {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->newBuilder(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method
