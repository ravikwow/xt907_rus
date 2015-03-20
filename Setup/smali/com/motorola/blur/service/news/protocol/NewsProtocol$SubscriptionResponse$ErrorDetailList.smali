.class public final Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;
.super Lcom/google/protobuf/GeneratedMessage;
.source "NewsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ErrorDetailList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;,
        Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;
    }
.end annotation


# static fields
.field public static final ERRORDETAIL_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;


# instance fields
.field private errorDetail_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3871
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;

    .line 3872
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internalForceInit()V

    .line 3873
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;

    invoke-direct {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;->initFields()V

    .line 3874
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3390
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 3657
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;->errorDetail_:Ljava/util/List;

    .line 3391
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;->initFields()V

    .line 3392
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;

    .prologue
    .line 3387
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 3393
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 3657
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;->errorDetail_:Ljava/util/List;

    .line 3393
    return-void
.end method

.method static synthetic access$13800(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;

    .prologue
    .line 3387
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;->errorDetail_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$13802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 3387
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;->errorDetail_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;
    .locals 1

    .prologue
    .line 3397
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3406
    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionResponse_ErrorDetailList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$12400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 3668
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;
    .locals 1

    .prologue
    .line 3736
    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;->access$13600()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;

    .prologue
    .line 3739
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3705
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;

    move-result-object v0

    .line 3706
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3707
    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;->access$13500(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;

    move-result-object v1

    .line 3709
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3716
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;

    move-result-object v0

    .line 3717
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3718
    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;->access$13500(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;

    move-result-object v1

    .line 3720
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3672
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;->access$13500(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3678
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;->access$13500(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3726
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;->access$13500(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3732
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;->access$13500(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3694
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;->access$13500(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3700
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;->access$13500(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3683
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;->access$13500(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3689
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;->access$13500(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3387
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3387
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;
    .locals 1

    .prologue
    .line 3401
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;

    return-object v0
.end method

.method public getErrorDetail(I)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 3664
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;->errorDetail_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;

    return-object v0
.end method

.method public getErrorDetailCount()I
    .locals 1

    .prologue
    .line 3662
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;->errorDetail_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getErrorDetailList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3660
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;->errorDetail_:Ljava/util/List;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 3411
    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionResponse_ErrorDetailList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$12500()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3387
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;->newBuilderForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3387
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;->newBuilderForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;
    .locals 1

    .prologue
    .line 3737
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3387
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;->toBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3387
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;->toBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;
    .locals 1

    .prologue
    .line 3741
    invoke-static {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;->newBuilder(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;

    move-result-object v0

    return-object v0
.end method
