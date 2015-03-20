.class public final Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "AdminFeedProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3377
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$11400(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3372
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11500()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;
    .locals 1

    .prologue
    .line 3372
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->create()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3423
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3424
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3427
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->buildPartial()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;
    .locals 3

    .prologue
    .line 3380
    new-instance v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;-><init>()V

    .line 3381
    .local v0, "builder":Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;-><init>(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;

    .line 3382
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3372
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->build()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3372
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->build()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;
    .locals 1

    .prologue
    .line 3415
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3416
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 3418
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->buildPartial()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3372
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->buildPartial()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3372
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->buildPartial()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;
    .locals 3

    .prologue
    .line 3431
    iget-object v1, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;

    if-nez v1, :cond_0

    .line 3432
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3435
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;

    .line 3436
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;

    .line 3437
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3372
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->clear()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3372
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->clear()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3372
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->clear()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;
    .locals 2

    .prologue
    .line 3390
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;

    if-nez v0, :cond_0

    .line 3391
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3394
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;-><init>(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;

    .line 3395
    return-object p0
.end method

.method public clearNag()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3491
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;->hasNag:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;->access$11902(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;Z)Z

    .line 3492
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;->nag_:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;->access$12002(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;Z)Z

    .line 3493
    return-object p0
.end method

.method public clearNotificationMessage()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;
    .locals 2

    .prologue
    .line 3473
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;->hasNotificationMessage:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;->access$11702(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;Z)Z

    .line 3474
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;

    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;->getDefaultInstance()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;->notificationMessage_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;->access$11802(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    .line 3475
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3372
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->clone()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3372
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->clone()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 3372
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->clone()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3372
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->clone()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3372
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->clone()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;
    .locals 2

    .prologue
    .line 3399
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->create()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;

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
    .line 3372
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->clone()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3372
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3372
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;
    .locals 1

    .prologue
    .line 3408
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;->getDefaultInstance()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3404
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getNag()Z
    .locals 1

    .prologue
    .line 3483
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;->getNag()Z

    move-result v0

    return v0
.end method

.method public getNotificationMessage()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;
    .locals 1

    .prologue
    .line 3446
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;->getNotificationMessage()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    move-result-object v0

    return-object v0
.end method

.method public hasNag()Z
    .locals 1

    .prologue
    .line 3480
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;->hasNag()Z

    move-result v0

    return v0
.end method

.method public hasNotificationMessage()Z
    .locals 1

    .prologue
    .line 3443
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;->hasNotificationMessage()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 3372
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;
    .locals 1

    .prologue
    .line 3386
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 3412
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeNotificationMessage(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    .prologue
    .line 3462
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;->hasNotificationMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;

    # getter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;->notificationMessage_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;->access$11800(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;->getDefaultInstance()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3464
    iget-object v1, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;

    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;

    # getter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;->notificationMessage_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;->access$11800(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;->newBuilder(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage$Builder;->buildPartial()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;->notificationMessage_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;->access$11802(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    .line 3469
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;->hasNotificationMessage:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;->access$11702(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;Z)Z

    .line 3470
    return-object p0

    .line 3467
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;->notificationMessage_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;->access$11802(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    goto :goto_0
.end method

.method public setNag(Z)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 3486
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;->hasNag:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;->access$11902(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;Z)Z

    .line 3487
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;->nag_:Z
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;->access$12002(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;Z)Z

    .line 3488
    return-object p0
.end method

.method public setNotificationMessage(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage$Builder;

    .prologue
    .line 3457
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;->hasNotificationMessage:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;->access$11702(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;Z)Z

    .line 3458
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage$Builder;->build()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;->notificationMessage_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;->access$11802(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    .line 3459
    return-object p0
.end method

.method public setNotificationMessage(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    .prologue
    .line 3449
    if-nez p1, :cond_0

    .line 3450
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3452
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;->hasNotificationMessage:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;->access$11702(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;Z)Z

    .line 3453
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;->notificationMessage_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;->access$11802(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$BlurAccountVerifyNag;Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    .line 3454
    return-object p0
.end method
