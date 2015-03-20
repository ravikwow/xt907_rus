.class public final Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "AdminFeedProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3718
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$12300(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3713
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12400()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;
    .locals 1

    .prologue
    .line 3713
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->create()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3764
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3765
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3768
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->buildPartial()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;
    .locals 3

    .prologue
    .line 3721
    new-instance v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;-><init>()V

    .line 3722
    .local v0, "builder":Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;-><init>(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    .line 3723
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3713
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->build()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3713
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->build()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;
    .locals 1

    .prologue
    .line 3756
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3757
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 3759
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->buildPartial()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3713
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->buildPartial()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3713
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->buildPartial()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;
    .locals 3

    .prologue
    .line 3772
    iget-object v1, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    if-nez v1, :cond_0

    .line 3773
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3776
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    .line 3777
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    .line 3778
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3713
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->clear()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3713
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->clear()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3713
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->clear()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;
    .locals 2

    .prologue
    .line 3731
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    if-nez v0, :cond_0

    .line 3732
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3735
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;-><init>(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    .line 3736
    return-object p0
.end method

.method public clearAppId()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;
    .locals 2

    .prologue
    .line 3856
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->hasAppId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->access$13002(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;Z)Z

    .line 3857
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    sget-object v1, Lcom/motorola/blur/service/apps/emailverification/appID/protocol/EmailverificationAppIDProtocol$AppID;->MESSENGER:Lcom/motorola/blur/service/apps/emailverification/appID/protocol/EmailverificationAppIDProtocol$AppID;

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->appId_:Lcom/motorola/blur/service/apps/emailverification/appID/protocol/EmailverificationAppIDProtocol$AppID;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->access$13102(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;Lcom/motorola/blur/service/apps/emailverification/appID/protocol/EmailverificationAppIDProtocol$AppID;)Lcom/motorola/blur/service/apps/emailverification/appID/protocol/EmailverificationAppIDProtocol$AppID;

    .line 3858
    return-object p0
.end method

.method public clearEmail()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;
    .locals 2

    .prologue
    .line 3877
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->hasEmail:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->access$13202(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;Z)Z

    .line 3878
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->getDefaultInstance()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->getEmail()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->email_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->access$13302(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;Ljava/lang/String;)Ljava/lang/String;

    .line 3879
    return-object p0
.end method

.method public clearNotificationMessage()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;
    .locals 2

    .prologue
    .line 3814
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->hasNotificationMessage:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->access$12602(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;Z)Z

    .line 3815
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;->getDefaultInstance()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->notificationMessage_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->access$12702(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    .line 3816
    return-object p0
.end method

.method public clearStatusCode()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;
    .locals 2

    .prologue
    .line 3835
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->hasStatusCode:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->access$12802(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;Z)Z

    .line 3836
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    sget-object v1, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;->VALID:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->statusCode_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->access$12902(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;

    .line 3837
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3713
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->clone()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3713
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->clone()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 3713
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->clone()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3713
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->clone()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3713
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->clone()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;
    .locals 2

    .prologue
    .line 3740
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->create()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;

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
    .line 3713
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->clone()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppId()Lcom/motorola/blur/service/apps/emailverification/appID/protocol/EmailverificationAppIDProtocol$AppID;
    .locals 1

    .prologue
    .line 3845
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->getAppId()Lcom/motorola/blur/service/apps/emailverification/appID/protocol/EmailverificationAppIDProtocol$AppID;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3713
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3713
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;
    .locals 1

    .prologue
    .line 3749
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->getDefaultInstance()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3745
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3866
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->getEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationMessage()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;
    .locals 1

    .prologue
    .line 3787
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->getNotificationMessage()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    move-result-object v0

    return-object v0
.end method

.method public getStatusCode()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;
    .locals 1

    .prologue
    .line 3824
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->getStatusCode()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;

    move-result-object v0

    return-object v0
.end method

.method public hasAppId()Z
    .locals 1

    .prologue
    .line 3842
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->hasAppId()Z

    move-result v0

    return v0
.end method

.method public hasEmail()Z
    .locals 1

    .prologue
    .line 3863
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->hasEmail()Z

    move-result v0

    return v0
.end method

.method public hasNotificationMessage()Z
    .locals 1

    .prologue
    .line 3784
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->hasNotificationMessage()Z

    move-result v0

    return v0
.end method

.method public hasStatusCode()Z
    .locals 1

    .prologue
    .line 3821
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->hasStatusCode()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 3713
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;
    .locals 1

    .prologue
    .line 3727
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 3753
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeNotificationMessage(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    .prologue
    .line 3803
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->hasNotificationMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    # getter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->notificationMessage_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->access$12700(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;->getDefaultInstance()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3805
    iget-object v1, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    # getter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->notificationMessage_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->access$12700(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;->newBuilder(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage$Builder;->buildPartial()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->notificationMessage_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->access$12702(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    .line 3810
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->hasNotificationMessage:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->access$12602(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;Z)Z

    .line 3811
    return-object p0

    .line 3808
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->notificationMessage_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->access$12702(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    goto :goto_0
.end method

.method public setAppId(Lcom/motorola/blur/service/apps/emailverification/appID/protocol/EmailverificationAppIDProtocol$AppID;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/emailverification/appID/protocol/EmailverificationAppIDProtocol$AppID;

    .prologue
    .line 3848
    if-nez p1, :cond_0

    .line 3849
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3851
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->hasAppId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->access$13002(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;Z)Z

    .line 3852
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->appId_:Lcom/motorola/blur/service/apps/emailverification/appID/protocol/EmailverificationAppIDProtocol$AppID;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->access$13102(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;Lcom/motorola/blur/service/apps/emailverification/appID/protocol/EmailverificationAppIDProtocol$AppID;)Lcom/motorola/blur/service/apps/emailverification/appID/protocol/EmailverificationAppIDProtocol$AppID;

    .line 3853
    return-object p0
.end method

.method public setEmail(Ljava/lang/String;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3869
    if-nez p1, :cond_0

    .line 3870
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3872
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->hasEmail:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->access$13202(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;Z)Z

    .line 3873
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->email_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->access$13302(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;Ljava/lang/String;)Ljava/lang/String;

    .line 3874
    return-object p0
.end method

.method public setNotificationMessage(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage$Builder;

    .prologue
    .line 3798
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->hasNotificationMessage:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->access$12602(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;Z)Z

    .line 3799
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage$Builder;->build()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->notificationMessage_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->access$12702(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    .line 3800
    return-object p0
.end method

.method public setNotificationMessage(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    .prologue
    .line 3790
    if-nez p1, :cond_0

    .line 3791
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3793
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->hasNotificationMessage:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->access$12602(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;Z)Z

    .line 3794
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->notificationMessage_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->access$12702(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    .line 3795
    return-object p0
.end method

.method public setStatusCode(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;

    .prologue
    .line 3827
    if-nez p1, :cond_0

    .line 3828
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3830
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->hasStatusCode:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->access$12802(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;Z)Z

    .line 3831
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->statusCode_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->access$12902(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;

    .line 3832
    return-object p0
.end method
