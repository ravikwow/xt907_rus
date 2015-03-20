.class public final Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;
.super Lcom/google/protobuf/GeneratedMessage;
.source "NewsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/news/protocol/NewsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Subscription"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;
    }
.end annotation


# static fields
.field public static final INFO_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;


# instance fields
.field private hasInfo:Z

.field private info_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 5126
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    .line 5127
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internalForceInit()V

    .line 5128
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    invoke-direct {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->initFields()V

    .line 5129
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4908
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 4909
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->initFields()V

    .line 4910
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;

    .prologue
    .line 4905
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "noInit"    # Z

    .prologue
    .line 4911
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    return-void
.end method

.method static synthetic access$18602(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;
    .param p1, "x1"    # Z

    .prologue
    .line 4905
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->hasInfo:Z

    return p1
.end method

.method static synthetic access$18700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    .prologue
    .line 4905
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->info_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    return-object v0
.end method

.method static synthetic access$18702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;
    .param p1, "x1"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    .prologue
    .line 4905
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->info_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;
    .locals 1

    .prologue
    .line 4915
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4924
    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_Subscription_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$18100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 4940
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->info_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    .line 4941
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;
    .locals 1

    .prologue
    .line 5009
    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->access$18400()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    .prologue
    .line 5012
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4978
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;

    move-result-object v0

    .line 4979
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4980
    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->access$18300(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    move-result-object v1

    .line 4982
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4989
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;

    move-result-object v0

    .line 4990
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4991
    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->access$18300(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    move-result-object v1

    .line 4993
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4945
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->access$18300(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4951
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->access$18300(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4999
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->access$18300(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5005
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->access$18300(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4967
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->access$18300(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4973
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->access$18300(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4956
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->access$18300(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4962
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->access$18300(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4905
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4905
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;
    .locals 1

    .prologue
    .line 4919
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    return-object v0
.end method

.method public getInfo()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    .locals 1

    .prologue
    .line 4937
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->info_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    return-object v0
.end method

.method public hasInfo()Z
    .locals 1

    .prologue
    .line 4936
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->hasInfo:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 4929
    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_Subscription_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$18200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4905
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->newBuilderForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4905
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->newBuilderForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;
    .locals 1

    .prologue
    .line 5010
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4905
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->toBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4905
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->toBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;
    .locals 1

    .prologue
    .line 5014
    invoke-static {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->newBuilder(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;

    move-result-object v0

    return-object v0
.end method
