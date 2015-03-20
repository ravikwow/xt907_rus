.class public final Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "AdminFeedProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2029
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$7000(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2024
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7100()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;
    .locals 1

    .prologue
    .line 2024
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->create()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2075
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2076
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2079
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->buildPartial()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;
    .locals 3

    .prologue
    .line 2032
    new-instance v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;-><init>()V

    .line 2033
    .local v0, "builder":Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;-><init>(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;

    .line 2034
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2024
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->build()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2024
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->build()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;
    .locals 1

    .prologue
    .line 2067
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2068
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2070
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->buildPartial()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2024
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->buildPartial()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2024
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->buildPartial()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;
    .locals 3

    .prologue
    .line 2083
    iget-object v1, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;

    if-nez v1, :cond_0

    .line 2084
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2087
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;

    .line 2088
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;

    .line 2089
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2024
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->clear()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2024
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->clear()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2024
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->clear()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;
    .locals 2

    .prologue
    .line 2042
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;

    if-nez v0, :cond_0

    .line 2043
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2046
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;-><init>(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;

    .line 2047
    return-object p0
.end method

.method public clearNotificationMessage()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;
    .locals 2

    .prologue
    .line 2125
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;->hasNotificationMessage:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;->access$7302(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;Z)Z

    .line 2126
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;

    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;->getDefaultInstance()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;->notificationMessage_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;->access$7402(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    .line 2127
    return-object p0
.end method

.method public clearServiceName()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;
    .locals 2

    .prologue
    .line 2146
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;->hasServiceName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;->access$7502(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;Z)Z

    .line 2147
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;

    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;->getDefaultInstance()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;->getServiceName()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;->serviceName_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;->access$7602(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;Ljava/lang/String;)Ljava/lang/String;

    .line 2148
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2024
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->clone()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2024
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->clone()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2024
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->clone()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2024
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->clone()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2024
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->clone()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;
    .locals 2

    .prologue
    .line 2051
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->create()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 2024
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->clone()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2024
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2024
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;
    .locals 1

    .prologue
    .line 2060
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;->getDefaultInstance()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2056
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationMessage()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;
    .locals 1

    .prologue
    .line 2098
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;->getNotificationMessage()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    move-result-object v0

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2135
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;->getServiceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasNotificationMessage()Z
    .locals 1

    .prologue
    .line 2095
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;->hasNotificationMessage()Z

    move-result v0

    return v0
.end method

.method public hasServiceName()Z
    .locals 1

    .prologue
    .line 2132
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;->hasServiceName()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 2024
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;
    .locals 1

    .prologue
    .line 2038
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2064
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeNotificationMessage(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    .prologue
    .line 2114
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;->hasNotificationMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;

    # getter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;->notificationMessage_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;->access$7400(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;->getDefaultInstance()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2116
    iget-object v1, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;

    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;

    # getter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;->notificationMessage_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;->access$7400(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;->newBuilder(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage$Builder;->buildPartial()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;->notificationMessage_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;->access$7402(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    .line 2121
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;->hasNotificationMessage:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;->access$7302(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;Z)Z

    .line 2122
    return-object p0

    .line 2119
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;->notificationMessage_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;->access$7402(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    goto :goto_0
.end method

.method public setNotificationMessage(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage$Builder;

    .prologue
    .line 2109
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;->hasNotificationMessage:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;->access$7302(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;Z)Z

    .line 2110
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage$Builder;->build()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;->notificationMessage_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;->access$7402(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    .line 2111
    return-object p0
.end method

.method public setNotificationMessage(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    .prologue
    .line 2101
    if-nez p1, :cond_0

    .line 2102
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2104
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;->hasNotificationMessage:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;->access$7302(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;Z)Z

    .line 2105
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;->notificationMessage_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;->access$7402(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    .line 2106
    return-object p0
.end method

.method public setServiceName(Ljava/lang/String;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2138
    if-nez p1, :cond_0

    .line 2139
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2141
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;->hasServiceName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;->access$7502(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;Z)Z

    .line 2142
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;->serviceName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;->access$7602(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$ResetPassword;Ljava/lang/String;)Ljava/lang/String;

    .line 2143
    return-object p0
.end method
