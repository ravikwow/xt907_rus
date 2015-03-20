.class public final Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ClientSettingsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4473
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$17100(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4468
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$17200()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;
    .locals 1

    .prologue
    .line 4468
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->create()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4519
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4520
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 4523
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->buildPartial()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;
    .locals 3

    .prologue
    .line 4476
    new-instance v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;-><init>()V

    .line 4477
    .local v0, "builder":Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;-><init>(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    .line 4478
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4468
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->build()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4468
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->build()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;
    .locals 1

    .prologue
    .line 4511
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4512
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 4514
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->buildPartial()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4468
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->buildPartial()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4468
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->buildPartial()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;
    .locals 3

    .prologue
    .line 4527
    iget-object v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    if-nez v1, :cond_0

    .line 4528
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4531
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    .line 4532
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    .line 4533
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 4468
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->clear()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4468
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->clear()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4468
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->clear()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;
    .locals 2

    .prologue
    .line 4486
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    if-nez v0, :cond_0

    .line 4487
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4490
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;-><init>(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    .line 4491
    return-object p0
.end method

.method public clearName()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;
    .locals 2

    .prologue
    .line 4595
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->hasName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->access$17802(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;Z)Z

    .line 4596
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->getDefaultInstance()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->getName()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->access$17902(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 4597
    return-object p0
.end method

.method public clearSyncAnchor()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;
    .locals 2

    .prologue
    .line 4574
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->hasSyncAnchor:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->access$17602(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;Z)Z

    .line 4575
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->getDefaultInstance()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->getSyncAnchor()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->syncAnchor_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->access$17702(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 4576
    return-object p0
.end method

.method public clearSyncId()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;
    .locals 2

    .prologue
    .line 4553
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->hasSyncId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->access$17402(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;Z)Z

    .line 4554
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->getDefaultInstance()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->getSyncId()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->syncId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->access$17502(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 4555
    return-object p0
.end method

.method public clearValue()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;
    .locals 2

    .prologue
    .line 4616
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->hasValue:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->access$18002(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;Z)Z

    .line 4617
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->getDefaultInstance()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->getValue()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->value_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->access$18102(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 4618
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 4468
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 4468
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 4468
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4468
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4468
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;
    .locals 2

    .prologue
    .line 4495
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->create()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;

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
    .line 4468
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4468
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4468
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;
    .locals 1

    .prologue
    .line 4504
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->getDefaultInstance()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4500
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4584
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSyncAnchor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4563
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->getSyncAnchor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSyncId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4542
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->getSyncId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4605
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 4581
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasSyncAnchor()Z
    .locals 1

    .prologue
    .line 4560
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->hasSyncAnchor()Z

    move-result v0

    return v0
.end method

.method public hasSyncId()Z
    .locals 1

    .prologue
    .line 4539
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->hasSyncId()Z

    move-result v0

    return v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 4602
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->hasValue()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 4468
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;
    .locals 1

    .prologue
    .line 4482
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 4508
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setName(Ljava/lang/String;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4587
    if-nez p1, :cond_0

    .line 4588
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4590
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->hasName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->access$17802(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;Z)Z

    .line 4591
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->access$17902(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 4592
    return-object p0
.end method

.method public setSyncAnchor(Ljava/lang/String;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4566
    if-nez p1, :cond_0

    .line 4567
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4569
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->hasSyncAnchor:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->access$17602(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;Z)Z

    .line 4570
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->syncAnchor_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->access$17702(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 4571
    return-object p0
.end method

.method public setSyncId(Ljava/lang/String;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4545
    if-nez p1, :cond_0

    .line 4546
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4548
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->hasSyncId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->access$17402(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;Z)Z

    .line 4549
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->syncId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->access$17502(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 4550
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4608
    if-nez p1, :cond_0

    .line 4609
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4611
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->hasValue:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->access$18002(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;Z)Z

    .line 4612
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->value_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;->access$18102(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 4613
    return-object p0
.end method
