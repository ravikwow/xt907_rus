.class public final Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;
.super Lcom/google/protobuf/GeneratedMessage;
.source "AdminFeedProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Notify"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;
    }
.end annotation


# static fields
.field public static final NOTIFICATIONMESSAGE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;


# instance fields
.field private hasNotificationMessage:Z

.field private notificationMessage_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1898
    new-instance v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;->defaultInstance:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;

    .line 1899
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol;->internalForceInit()V

    .line 1900
    sget-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;->defaultInstance:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;->initFields()V

    .line 1901
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1680
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1681
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;->initFields()V

    .line 1682
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$1;

    .prologue
    .line 1677
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "noInit"    # Z

    .prologue
    .line 1683
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    return-void
.end method

.method static synthetic access$6602(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;
    .param p1, "x1"    # Z

    .prologue
    .line 1677
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;->hasNotificationMessage:Z

    return p1
.end method

.method static synthetic access$6700(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;

    .prologue
    .line 1677
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;->notificationMessage_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    return-object v0
.end method

.method static synthetic access$6702(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;
    .param p1, "x1"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    .prologue
    .line 1677
    iput-object p1, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;->notificationMessage_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;
    .locals 1

    .prologue
    .line 1687
    sget-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;->defaultInstance:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1696
    # getter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol;->internal_static_Notify_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol;->access$6100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 1712
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;->getDefaultInstance()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;->notificationMessage_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    .line 1713
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;
    .locals 1

    .prologue
    .line 1781
    # invokes: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;->create()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;->access$6400()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;

    .prologue
    .line 1784
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;->newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1750
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;->newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;

    move-result-object v0

    .line 1751
    .local v0, "builder":Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1752
    # invokes: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;->buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;->access$6300(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;

    move-result-object v1

    .line 1754
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1761
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;->newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;

    move-result-object v0

    .line 1762
    .local v0, "builder":Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1763
    # invokes: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;->buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;->access$6300(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;

    move-result-object v1

    .line 1765
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1717
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;->newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;

    # invokes: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;->buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;->access$6300(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1723
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;->newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;

    # invokes: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;->buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;->access$6300(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1771
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;->newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;

    # invokes: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;->buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;->access$6300(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1777
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;->newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;

    # invokes: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;->buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;->access$6300(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1739
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;->newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;

    # invokes: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;->buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;->access$6300(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1745
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;->newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;

    # invokes: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;->buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;->access$6300(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1728
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;->newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;

    # invokes: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;->buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;->access$6300(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1734
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;->newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;

    # invokes: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;->buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;->access$6300(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1677
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1677
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;
    .locals 1

    .prologue
    .line 1691
    sget-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;->defaultInstance:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;

    return-object v0
.end method

.method public getNotificationMessage()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;
    .locals 1

    .prologue
    .line 1709
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;->notificationMessage_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    return-object v0
.end method

.method public hasNotificationMessage()Z
    .locals 1

    .prologue
    .line 1708
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;->hasNotificationMessage:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1701
    # getter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol;->internal_static_Notify_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol;->access$6200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1677
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;->newBuilderForType()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1677
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;->newBuilderForType()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;
    .locals 1

    .prologue
    .line 1782
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;->newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1677
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;->toBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1677
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;->toBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;
    .locals 1

    .prologue
    .line 1786
    invoke-static {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;->newBuilder(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Notify$Builder;

    move-result-object v0

    return-object v0
.end method
