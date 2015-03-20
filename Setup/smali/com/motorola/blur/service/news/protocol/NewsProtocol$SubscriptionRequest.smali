.class public final Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "NewsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/news/protocol/NewsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubscriptionRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;,
        Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;,
        Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;,
        Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;
    }
.end annotation


# static fields
.field public static final DELETESUBS_FIELD_NUMBER:I = 0x4

.field public static final NEWSUBS_FIELD_NUMBER:I = 0x3

.field public static final TYPE_FIELD_NUMBER:I = 0x2

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;


# instance fields
.field private deleteSubs_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;

.field private hasDeleteSubs:Z

.field private hasNewSubs:Z

.field private hasType:Z

.field private hasVersion:Z

.field private newSubs_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

.field private type_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3352
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    .line 3353
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internalForceInit()V

    .line 3354
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    invoke-direct {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->initFields()V

    .line 3355
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2494
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 3062
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->version_:I

    .line 2495
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->initFields()V

    .line 2496
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;

    .prologue
    .line 2491
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 2497
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 3062
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->version_:I

    .line 2497
    return-void
.end method

.method static synthetic access$11402(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 2491
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->hasVersion:Z

    return p1
.end method

.method static synthetic access$11502(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;
    .param p1, "x1"    # I

    .prologue
    .line 2491
    iput p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->version_:I

    return p1
.end method

.method static synthetic access$11602(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 2491
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->hasType:Z

    return p1
.end method

.method static synthetic access$11702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;

    .prologue
    .line 2491
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->type_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;

    return-object p1
.end method

.method static synthetic access$11802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 2491
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->hasNewSubs:Z

    return p1
.end method

.method static synthetic access$11900(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    .prologue
    .line 2491
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->newSubs_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    return-object v0
.end method

.method static synthetic access$11902(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    .prologue
    .line 2491
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->newSubs_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    return-object p1
.end method

.method static synthetic access$12002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 2491
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->hasDeleteSubs:Z

    return p1
.end method

.method static synthetic access$12100(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    .prologue
    .line 2491
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->deleteSubs_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;

    return-object v0
.end method

.method static synthetic access$12102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;

    .prologue
    .line 2491
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->deleteSubs_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;
    .locals 1

    .prologue
    .line 2501
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2510
    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$9700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 3088
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;->ADD:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->type_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;

    .line 3089
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->newSubs_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    .line 3090
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->deleteSubs_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;

    .line 3091
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;
    .locals 1

    .prologue
    .line 3159
    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->access$11200()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    .prologue
    .line 3162
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3128
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;

    move-result-object v0

    .line 3129
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3130
    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->access$11100(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    move-result-object v1

    .line 3132
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3139
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;

    move-result-object v0

    .line 3140
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3141
    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->access$11100(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    move-result-object v1

    .line 3143
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3095
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->access$11100(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3101
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->access$11100(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3149
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->access$11100(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3155
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->access$11100(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3117
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->access$11100(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3123
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->access$11100(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3106
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->access$11100(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3112
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->access$11100(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2491
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2491
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;
    .locals 1

    .prologue
    .line 2505
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    return-object v0
.end method

.method public getDeleteSubs()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;
    .locals 1

    .prologue
    .line 3085
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->deleteSubs_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;

    return-object v0
.end method

.method public getNewSubs()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;
    .locals 1

    .prologue
    .line 3078
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->newSubs_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    return-object v0
.end method

.method public getType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;
    .locals 1

    .prologue
    .line 3071
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->type_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 3064
    iget v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->version_:I

    return v0
.end method

.method public hasDeleteSubs()Z
    .locals 1

    .prologue
    .line 3084
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->hasDeleteSubs:Z

    return v0
.end method

.method public hasNewSubs()Z
    .locals 1

    .prologue
    .line 3077
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->hasNewSubs:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 3070
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->hasType:Z

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 3063
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->hasVersion:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 2515
    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$9800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2491
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->newBuilderForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2491
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->newBuilderForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;
    .locals 1

    .prologue
    .line 3160
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2491
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->toBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2491
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->toBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;
    .locals 1

    .prologue
    .line 3164
    invoke-static {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->newBuilder(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;

    move-result-object v0

    return-object v0
.end method
