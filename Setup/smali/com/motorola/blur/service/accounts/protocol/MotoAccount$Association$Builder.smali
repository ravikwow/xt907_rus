.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12335
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$43800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12330
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$43900()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;
    .locals 1

    .prologue
    .line 12330
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12381
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12382
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 12385
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;
    .locals 3

    .prologue
    .line 12338
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;-><init>()V

    .line 12339
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    .line 12340
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 12330
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12330
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
    .locals 1

    .prologue
    .line 12373
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12374
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 12376
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 12330
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12330
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
    .locals 3

    .prologue
    .line 12389
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    if-nez v1, :cond_0

    .line 12390
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12393
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    .line 12394
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    .line 12395
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 12330
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 12330
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 12330
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;
    .locals 2

    .prologue
    .line 12348
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    if-nez v0, :cond_0

    .line 12349
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12352
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    .line 12353
    return-object p0
.end method

.method public clearAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;
    .locals 2

    .prologue
    .line 12431
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->access$44102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;Z)Z

    .line 12432
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->access$44202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 12433
    return-object p0
.end method

.method public clearDeviceInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;
    .locals 2

    .prologue
    .line 12468
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->access$44302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;Z)Z

    .line 12469
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->access$44402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .line 12470
    return-object p0
.end method

.method public clearUserId()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;
    .locals 2

    .prologue
    .line 12489
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->hasUserId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->access$44502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;Z)Z

    .line 12490
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->getUserId()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->userId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->access$44602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;Ljava/lang/String;)Ljava/lang/String;

    .line 12491
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 12330
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 12330
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 12330
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 12330
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 12330
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;
    .locals 2

    .prologue
    .line 12357
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;

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
    .line 12330
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1

    .prologue
    .line 12404
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 12330
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12330
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
    .locals 1

    .prologue
    .line 12366
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 12362
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .locals 1

    .prologue
    .line 12441
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->getDeviceInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12478
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAppInfo()Z
    .locals 1

    .prologue
    .line 12401
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->hasAppInfo()Z

    move-result v0

    return v0
.end method

.method public hasDeviceInfo()Z
    .locals 1

    .prologue
    .line 12438
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->hasDeviceInfo()Z

    move-result v0

    return v0
.end method

.method public hasUserId()Z
    .locals 1

    .prologue
    .line 12475
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->hasUserId()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 12330
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
    .locals 1

    .prologue
    .line 12344
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 12370
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 12420
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->hasAppInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->access$44200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 12422
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->access$44200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->access$44202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 12427
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->access$44102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;Z)Z

    .line 12428
    return-object p0

    .line 12425
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->access$44202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    goto :goto_0
.end method

.method public mergeDeviceInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .prologue
    .line 12457
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->hasDeviceInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->access$44400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 12459
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->access$44400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->access$44402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .line 12464
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->access$44302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;Z)Z

    .line 12465
    return-object p0

    .line 12462
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->access$44402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    goto :goto_0
.end method

.method public setAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    .prologue
    .line 12415
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->access$44102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;Z)Z

    .line 12416
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->access$44202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 12417
    return-object p0
.end method

.method public setAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 12407
    if-nez p1, :cond_0

    .line 12408
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12410
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->access$44102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;Z)Z

    .line 12411
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->access$44202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 12412
    return-object p0
.end method

.method public setDeviceInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    .prologue
    .line 12452
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->access$44302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;Z)Z

    .line 12453
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->access$44402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .line 12454
    return-object p0
.end method

.method public setDeviceInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .prologue
    .line 12444
    if-nez p1, :cond_0

    .line 12445
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12447
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->access$44302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;Z)Z

    .line 12448
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->access$44402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .line 12449
    return-object p0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 12481
    if-nez p1, :cond_0

    .line 12482
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12484
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->hasUserId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->access$44502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;Z)Z

    .line 12485
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->userId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->access$44602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;Ljava/lang/String;)Ljava/lang/String;

    .line 12486
    return-object p0
.end method
