.class public final Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;
.super Lcom/google/protobuf/GeneratedMessage;
.source "NewsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeleteSubscriptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;
    }
.end annotation


# static fields
.field public static final BLURFEEDID_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;


# instance fields
.field private blurFeedId_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3051
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;

    .line 3052
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internalForceInit()V

    .line 3053
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;

    invoke-direct {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;->initFields()V

    .line 3054
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2828
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2854
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;->blurFeedId_:Ljava/util/List;

    .line 2829
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;->initFields()V

    .line 2830
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;

    .prologue
    .line 2825
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 2831
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2854
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;->blurFeedId_:Ljava/util/List;

    .line 2831
    return-void
.end method

.method static synthetic access$11000(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;

    .prologue
    .line 2825
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;->blurFeedId_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$11002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 2825
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;->blurFeedId_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;
    .locals 1

    .prologue
    .line 2835
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2844
    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionRequest_DeleteSubscriptions_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$10500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 2865
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;
    .locals 1

    .prologue
    .line 2933
    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;->access$10800()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;

    .prologue
    .line 2936
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2902
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;

    move-result-object v0

    .line 2903
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2904
    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;->access$10700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;

    move-result-object v1

    .line 2906
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2913
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;

    move-result-object v0

    .line 2914
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2915
    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;->access$10700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;

    move-result-object v1

    .line 2917
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2869
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;->access$10700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2875
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;->access$10700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2923
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;->access$10700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2929
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;->access$10700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2891
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;->access$10700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2897
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;->access$10700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2880
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;->access$10700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2886
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;->access$10700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBlurFeedId(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 2861
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;->blurFeedId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBlurFeedIdCount()I
    .locals 1

    .prologue
    .line 2859
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;->blurFeedId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getBlurFeedIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2857
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;->blurFeedId_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2825
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2825
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;
    .locals 1

    .prologue
    .line 2839
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 2849
    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionRequest_DeleteSubscriptions_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$10600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2825
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;->newBuilderForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2825
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;->newBuilderForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;
    .locals 1

    .prologue
    .line 2934
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2825
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;->toBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2825
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;->toBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;
    .locals 1

    .prologue
    .line 2938
    invoke-static {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;->newBuilder(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;

    move-result-object v0

    return-object v0
.end method
