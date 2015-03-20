.class public final Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;
.super Lcom/google/protobuf/GeneratedMessage;
.source "PhotosProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhotoSharingStatus"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;,
        Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;
    }
.end annotation


# static fields
.field public static final PHOTOID_FIELD_NUMBER:I = 0x2

.field public static final PROVIDER_FIELD_NUMBER:I = 0x4

.field public static final STATE_FIELD_NUMBER:I = 0x3

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;


# instance fields
.field private hasPhotoId:Z

.field private hasProvider:Z

.field private hasState:Z

.field private hasVersion:Z

.field private photoId_:I

.field private provider_:Ljava/lang/String;

.field private state_:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 399
    new-instance v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->defaultInstance:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    .line 400
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol;->internalForceInit()V

    .line 401
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->defaultInstance:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->initFields()V

    .line 402
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 146
    iput v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->version_:I

    .line 153
    iput v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->photoId_:I

    .line 167
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->provider_:Ljava/lang/String;

    .line 15
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->initFields()V

    .line 16
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$1;

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 146
    iput v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->version_:I

    .line 153
    iput v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->photoId_:I

    .line 167
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->provider_:Ljava/lang/String;

    .line 17
    return-void
.end method

.method static synthetic access$1002(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;
    .param p1, "x1"    # Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->state_:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->hasProvider:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->provider_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->hasVersion:Z

    return p1
.end method

.method static synthetic access$602(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;
    .param p1, "x1"    # I

    .prologue
    .line 11
    iput p1, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->version_:I

    return p1
.end method

.method static synthetic access$702(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->hasPhotoId:Z

    return p1
.end method

.method static synthetic access$802(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;
    .param p1, "x1"    # I

    .prologue
    .line 11
    iput p1, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->photoId_:I

    return p1
.end method

.method static synthetic access$902(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->hasState:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->defaultInstance:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 30
    # getter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol;->internal_static_PhotoSharingStatus_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 172
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->SUCCESS_COMPLETE:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    iput-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->state_:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    .line 173
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;
    .locals 1

    .prologue
    .line 241
    # invokes: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->create()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->access$300()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    .prologue
    .line 244
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->newBuilder()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->newBuilder()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;

    move-result-object v0

    .line 211
    .local v0, "builder":Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    # invokes: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->buildParsed()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->access$200(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    move-result-object v1

    .line 214
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->newBuilder()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;

    move-result-object v0

    .line 222
    .local v0, "builder":Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    # invokes: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->buildParsed()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->access$200(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    move-result-object v1

    .line 225
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->newBuilder()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;

    # invokes: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->buildParsed()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->access$200(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->newBuilder()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;

    # invokes: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->buildParsed()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->access$200(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->newBuilder()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;

    # invokes: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->buildParsed()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->access$200(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->newBuilder()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;

    # invokes: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->buildParsed()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->access$200(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->newBuilder()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;

    # invokes: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->buildParsed()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->access$200(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->newBuilder()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;

    # invokes: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->buildParsed()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->access$200(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->newBuilder()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;

    # invokes: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->buildParsed()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->access$200(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->newBuilder()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;

    # invokes: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->buildParsed()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->access$200(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->defaultInstance:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    return-object v0
.end method

.method public getPhotoId()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->photoId_:I

    return v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->provider_:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->state_:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->version_:I

    return v0
.end method

.method public hasPhotoId()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->hasPhotoId:Z

    return v0
.end method

.method public hasProvider()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->hasProvider:Z

    return v0
.end method

.method public hasState()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->hasState:Z

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->hasVersion:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 35
    # getter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol;->internal_static_PhotoSharingStatus_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->newBuilderForType()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->newBuilderForType()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;
    .locals 1

    .prologue
    .line 242
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->newBuilder()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->toBuilder()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->toBuilder()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;
    .locals 1

    .prologue
    .line 246
    invoke-static {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->newBuilder(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;

    move-result-object v0

    return-object v0
.end method
