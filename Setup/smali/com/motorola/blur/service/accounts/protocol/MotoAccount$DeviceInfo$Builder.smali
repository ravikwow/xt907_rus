.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14247
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$50300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14242
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$50400()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;
    .locals 1

    .prologue
    .line 14242
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14293
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14294
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 14297
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;
    .locals 3

    .prologue
    .line 14250
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;-><init>()V

    .line 14251
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .line 14252
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 14242
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14242
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .locals 1

    .prologue
    .line 14285
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14286
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 14288
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 14242
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14242
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .locals 3

    .prologue
    .line 14301
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    if-nez v1, :cond_0

    .line 14302
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 14305
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .line 14306
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .line 14307
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 14242
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14242
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14242
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;
    .locals 2

    .prologue
    .line 14260
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    if-nez v0, :cond_0

    .line 14261
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14264
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .line 14265
    return-object p0
.end method

.method public clearDeviceAccountId()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;
    .locals 2

    .prologue
    .line 14411
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->hasDeviceAccountId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->access$51402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;Z)Z

    .line 14412
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->getDeviceAccountId()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->deviceAccountId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->access$51502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 14413
    return-object p0
.end method

.method public clearDeviceCloud()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;
    .locals 2

    .prologue
    .line 14390
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->hasDeviceCloud:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->access$51202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;Z)Z

    .line 14391
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->getDeviceCloud()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->deviceCloud_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->access$51302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 14392
    return-object p0
.end method

.method public clearDeviceEmail()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;
    .locals 2

    .prologue
    .line 14474
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->hasDeviceEmail:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->access$52002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;Z)Z

    .line 14475
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->getDeviceEmail()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->deviceEmail_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->access$52102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 14476
    return-object p0
.end method

.method public clearDeviceId()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;
    .locals 2

    .prologue
    .line 14327
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->hasDeviceId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->access$50602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;Z)Z

    .line 14328
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->deviceId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->access$50702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 14329
    return-object p0
.end method

.method public clearDeviceSecret()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;
    .locals 2

    .prologue
    .line 14453
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->hasDeviceSecret:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->access$51802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;Z)Z

    .line 14454
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->getDeviceSecret()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->deviceSecret_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->access$51902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 14455
    return-object p0
.end method

.method public clearDeviceToken()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;
    .locals 2

    .prologue
    .line 14432
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->hasDeviceToken:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->access$51602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;Z)Z

    .line 14433
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->getDeviceToken()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->deviceToken_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->access$51702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 14434
    return-object p0
.end method

.method public clearDeviceType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;
    .locals 2

    .prologue
    .line 14348
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->hasDeviceType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->access$50802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;Z)Z

    .line 14349
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->deviceType_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->access$50902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 14350
    return-object p0
.end method

.method public clearDeviceVersion()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;
    .locals 2

    .prologue
    .line 14369
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->hasDeviceVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->access$51002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;Z)Z

    .line 14370
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->getDeviceVersion()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->deviceVersion_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->access$51102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 14371
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 14242
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 14242
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 14242
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14242
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14242
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;
    .locals 2

    .prologue
    .line 14269
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

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
    .line 14242
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 14242
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14242
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .locals 1

    .prologue
    .line 14278
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 14274
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14400
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->getDeviceAccountId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceCloud()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14379
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->getDeviceCloud()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14463
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->getDeviceEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14316
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14442
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->getDeviceSecret()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14421
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->getDeviceToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14337
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14358
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->getDeviceVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasDeviceAccountId()Z
    .locals 1

    .prologue
    .line 14397
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->hasDeviceAccountId()Z

    move-result v0

    return v0
.end method

.method public hasDeviceCloud()Z
    .locals 1

    .prologue
    .line 14376
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->hasDeviceCloud()Z

    move-result v0

    return v0
.end method

.method public hasDeviceEmail()Z
    .locals 1

    .prologue
    .line 14460
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->hasDeviceEmail()Z

    move-result v0

    return v0
.end method

.method public hasDeviceId()Z
    .locals 1

    .prologue
    .line 14313
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->hasDeviceId()Z

    move-result v0

    return v0
.end method

.method public hasDeviceSecret()Z
    .locals 1

    .prologue
    .line 14439
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->hasDeviceSecret()Z

    move-result v0

    return v0
.end method

.method public hasDeviceToken()Z
    .locals 1

    .prologue
    .line 14418
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->hasDeviceToken()Z

    move-result v0

    return v0
.end method

.method public hasDeviceType()Z
    .locals 1

    .prologue
    .line 14334
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->hasDeviceType()Z

    move-result v0

    return v0
.end method

.method public hasDeviceVersion()Z
    .locals 1

    .prologue
    .line 14355
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->hasDeviceVersion()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 14242
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .locals 1

    .prologue
    .line 14256
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 14282
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setDeviceAccountId(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 14403
    if-nez p1, :cond_0

    .line 14404
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14406
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->hasDeviceAccountId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->access$51402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;Z)Z

    .line 14407
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->deviceAccountId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->access$51502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 14408
    return-object p0
.end method

.method public setDeviceCloud(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 14382
    if-nez p1, :cond_0

    .line 14383
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14385
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->hasDeviceCloud:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->access$51202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;Z)Z

    .line 14386
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->deviceCloud_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->access$51302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 14387
    return-object p0
.end method

.method public setDeviceEmail(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 14466
    if-nez p1, :cond_0

    .line 14467
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14469
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->hasDeviceEmail:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->access$52002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;Z)Z

    .line 14470
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->deviceEmail_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->access$52102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 14471
    return-object p0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 14319
    if-nez p1, :cond_0

    .line 14320
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14322
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->hasDeviceId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->access$50602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;Z)Z

    .line 14323
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->deviceId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->access$50702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 14324
    return-object p0
.end method

.method public setDeviceSecret(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 14445
    if-nez p1, :cond_0

    .line 14446
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14448
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->hasDeviceSecret:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->access$51802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;Z)Z

    .line 14449
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->deviceSecret_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->access$51902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 14450
    return-object p0
.end method

.method public setDeviceToken(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 14424
    if-nez p1, :cond_0

    .line 14425
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14427
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->hasDeviceToken:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->access$51602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;Z)Z

    .line 14428
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->deviceToken_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->access$51702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 14429
    return-object p0
.end method

.method public setDeviceType(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 14340
    if-nez p1, :cond_0

    .line 14341
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14343
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->hasDeviceType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->access$50802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;Z)Z

    .line 14344
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->deviceType_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->access$50902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 14345
    return-object p0
.end method

.method public setDeviceVersion(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 14361
    if-nez p1, :cond_0

    .line 14362
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14364
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->hasDeviceVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->access$51002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;Z)Z

    .line 14365
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->deviceVersion_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->access$51102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 14366
    return-object p0
.end method
