.class public final Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;
.super Lcom/google/protobuf/GeneratedMessage;
.source "AdminFeedProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OTAUpdate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;
    }
.end annotation


# static fields
.field public static final ADDITIONALOTAINFORMATION_FIELD_NUMBER:I = 0x3

.field public static final DATA_FIELD_NUMBER:I = 0x2

.field public static final NOTIFICATIONMESSAGE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;


# instance fields
.field private additionalOTAInformation_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation;

.field private data_:Lcom/google/protobuf/ByteString;

.field private hasAdditionalOTAInformation:Z

.field private hasData:Z

.field private hasNotificationMessage:Z

.field private notificationMessage_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2666
    new-instance v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->defaultInstance:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    .line 2667
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol;->internalForceInit()V

    .line 2668
    sget-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->defaultInstance:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->initFields()V

    .line 2669
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2375
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2409
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->data_:Lcom/google/protobuf/ByteString;

    .line 2376
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->initFields()V

    .line 2377
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$1;

    .prologue
    .line 2372
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 2378
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2409
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->data_:Lcom/google/protobuf/ByteString;

    .line 2378
    return-void
.end method

.method static synthetic access$8902(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;
    .param p1, "x1"    # Z

    .prologue
    .line 2372
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->hasNotificationMessage:Z

    return p1
.end method

.method static synthetic access$9000(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    .prologue
    .line 2372
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->notificationMessage_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    return-object v0
.end method

.method static synthetic access$9002(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;
    .param p1, "x1"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    .prologue
    .line 2372
    iput-object p1, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->notificationMessage_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    return-object p1
.end method

.method static synthetic access$9102(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;
    .param p1, "x1"    # Z

    .prologue
    .line 2372
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->hasData:Z

    return p1
.end method

.method static synthetic access$9202(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2372
    iput-object p1, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->data_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$9302(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;
    .param p1, "x1"    # Z

    .prologue
    .line 2372
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->hasAdditionalOTAInformation:Z

    return p1
.end method

.method static synthetic access$9400(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    .prologue
    .line 2372
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->additionalOTAInformation_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation;

    return-object v0
.end method

.method static synthetic access$9402(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;
    .param p1, "x1"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation;

    .prologue
    .line 2372
    iput-object p1, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->additionalOTAInformation_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;
    .locals 1

    .prologue
    .line 2382
    sget-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->defaultInstance:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2391
    # getter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol;->internal_static_OTAUpdate_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol;->access$8400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 2421
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;->getDefaultInstance()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->notificationMessage_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    .line 2422
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation;->getDefaultInstance()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->additionalOTAInformation_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation;

    .line 2423
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;
    .locals 1

    .prologue
    .line 2491
    # invokes: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->create()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->access$8700()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    .prologue
    .line 2494
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2460
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;

    move-result-object v0

    .line 2461
    .local v0, "builder":Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2462
    # invokes: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->access$8600(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    move-result-object v1

    .line 2464
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2471
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;

    move-result-object v0

    .line 2472
    .local v0, "builder":Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2473
    # invokes: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->access$8600(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    move-result-object v1

    .line 2475
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2427
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;

    # invokes: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->access$8600(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2433
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;

    # invokes: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->access$8600(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2481
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;

    # invokes: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->access$8600(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2487
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;

    # invokes: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->access$8600(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2449
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;

    # invokes: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->access$8600(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2455
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;

    # invokes: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->access$8600(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2438
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;

    # invokes: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->access$8600(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2444
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;

    # invokes: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->access$8600(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAdditionalOTAInformation()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation;
    .locals 1

    .prologue
    .line 2418
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->additionalOTAInformation_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation;

    return-object v0
.end method

.method public getData()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 2411
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->data_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2372
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2372
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;
    .locals 1

    .prologue
    .line 2386
    sget-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->defaultInstance:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    return-object v0
.end method

.method public getNotificationMessage()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;
    .locals 1

    .prologue
    .line 2404
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->notificationMessage_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    return-object v0
.end method

.method public hasAdditionalOTAInformation()Z
    .locals 1

    .prologue
    .line 2417
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->hasAdditionalOTAInformation:Z

    return v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 2410
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->hasData:Z

    return v0
.end method

.method public hasNotificationMessage()Z
    .locals 1

    .prologue
    .line 2403
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->hasNotificationMessage:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 2396
    # getter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol;->internal_static_OTAUpdate_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol;->access$8500()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2372
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->newBuilderForType()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2372
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->newBuilderForType()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;
    .locals 1

    .prologue
    .line 2492
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2372
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->toBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2372
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->toBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;
    .locals 1

    .prologue
    .line 2496
    invoke-static {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->newBuilder(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;

    move-result-object v0

    return-object v0
.end method
