.class public final Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "NewsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/news/protocol/NewsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubscriptionResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;,
        Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;
    }
.end annotation


# static fields
.field public static final ERRORDETAILLIST_FIELD_NUMBER:I = 0x4

.field public static final ERROR_FIELD_NUMBER:I = 0x2

.field public static final SUBLIST_FIELD_NUMBER:I = 0x3

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;


# instance fields
.field private errorDetailList_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;

.field private error_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

.field private hasError:Z

.field private hasErrorDetailList:Z

.field private hasSubList:Z

.field private hasVersion:Z

.field private subList_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4188
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    .line 4189
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internalForceInit()V

    .line 4190
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    invoke-direct {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->initFields()V

    .line 4191
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3363
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 3882
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->version_:I

    .line 3364
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->initFields()V

    .line 3365
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;

    .prologue
    .line 3360
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 3366
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 3882
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->version_:I

    .line 3366
    return-void
.end method

.method static synthetic access$14202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 3360
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->hasVersion:Z

    return p1
.end method

.method static synthetic access$14302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;
    .param p1, "x1"    # I

    .prologue
    .line 3360
    iput p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->version_:I

    return p1
.end method

.method static synthetic access$14402(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 3360
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->hasError:Z

    return p1
.end method

.method static synthetic access$14500(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    .prologue
    .line 3360
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->error_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    return-object v0
.end method

.method static synthetic access$14502(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    .prologue
    .line 3360
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->error_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    return-object p1
.end method

.method static synthetic access$14602(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 3360
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->hasSubList:Z

    return p1
.end method

.method static synthetic access$14700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    .prologue
    .line 3360
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->subList_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    return-object v0
.end method

.method static synthetic access$14702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    .prologue
    .line 3360
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->subList_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    return-object p1
.end method

.method static synthetic access$14802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 3360
    iput-boolean p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->hasErrorDetailList:Z

    return p1
.end method

.method static synthetic access$14900(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    .prologue
    .line 3360
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->errorDetailList_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;

    return-object v0
.end method

.method static synthetic access$14902(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;

    .prologue
    .line 3360
    iput-object p1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->errorDetailList_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;
    .locals 1

    .prologue
    .line 3370
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3379
    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$12200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 3908
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->error_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    .line 3909
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->subList_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    .line 3910
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->errorDetailList_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;

    .line 3911
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;
    .locals 1

    .prologue
    .line 3979
    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->access$14000()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    .prologue
    .line 3982
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3948
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;

    move-result-object v0

    .line 3949
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3950
    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->access$13900(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    move-result-object v1

    .line 3952
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3959
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;

    move-result-object v0

    .line 3960
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3961
    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->access$13900(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    move-result-object v1

    .line 3963
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3915
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->access$13900(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3921
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->access$13900(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3969
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->access$13900(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3975
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->access$13900(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3937
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->access$13900(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3943
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->access$13900(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3926
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->access$13900(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3932
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;

    # invokes: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->access$13900(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3360
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3360
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;
    .locals 1

    .prologue
    .line 3374
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->defaultInstance:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    .locals 1

    .prologue
    .line 3891
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->error_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    return-object v0
.end method

.method public getErrorDetailList()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;
    .locals 1

    .prologue
    .line 3905
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->errorDetailList_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;

    return-object v0
.end method

.method public getSubList()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;
    .locals 1

    .prologue
    .line 3898
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->subList_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 3884
    iget v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->version_:I

    return v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 3890
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->hasError:Z

    return v0
.end method

.method public hasErrorDetailList()Z
    .locals 1

    .prologue
    .line 3904
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->hasErrorDetailList:Z

    return v0
.end method

.method public hasSubList()Z
    .locals 1

    .prologue
    .line 3897
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->hasSubList:Z

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 3883
    iget-boolean v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->hasVersion:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 3384
    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$12300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3360
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->newBuilderForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3360
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->newBuilderForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;
    .locals 1

    .prologue
    .line 3980
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->newBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3360
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->toBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3360
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->toBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;
    .locals 1

    .prologue
    .line 3984
    invoke-static {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->newBuilder(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;

    move-result-object v0

    return-object v0
.end method
