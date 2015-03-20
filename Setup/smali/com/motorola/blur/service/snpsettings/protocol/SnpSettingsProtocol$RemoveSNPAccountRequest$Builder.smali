.class public final Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SnpSettingsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 489
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$1900(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 484
    invoke-direct {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;
    .locals 1

    .prologue
    .line 484
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->create()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 535
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 539
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->buildPartial()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;
    .locals 3

    .prologue
    .line 492
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;-><init>()V

    .line 493
    .local v0, "builder":Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;
    new-instance v1, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;-><init>(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;

    .line 494
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->build()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->build()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 530
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->buildPartial()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->buildPartial()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->buildPartial()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;
    .locals 3

    .prologue
    .line 543
    iget-object v1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;

    if-nez v1, :cond_0

    .line 544
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;

    .line 548
    .local v0, "returnMe":Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;

    .line 549
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->clear()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->clear()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->clear()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;

    if-nez v0, :cond_0

    .line 503
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 506
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;-><init>(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;

    .line 507
    return-object p0
.end method

.method public clearLogin()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;
    .locals 2

    .prologue
    .line 608
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;->hasLogin:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;->access$2602(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;Z)Z

    .line 609
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;

    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;->getDefaultInstance()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;->getLogin()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;->login_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;->access$2702(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 610
    return-object p0
.end method

.method public clearType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;
    .locals 2

    .prologue
    .line 587
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;->hasType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;->access$2402(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;Z)Z

    .line 588
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;

    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;->getDefaultInstance()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;->getType()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;->type_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;->access$2502(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 589
    return-object p0
.end method

.method public clearVersion()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 566
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;->access$2202(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;Z)Z

    .line 567
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;->version_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;->access$2302(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;I)I

    .line 568
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;
    .locals 2

    .prologue
    .line 511
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->create()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;

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
    .line 484
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;
    .locals 1

    .prologue
    .line 520
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;->getDefaultInstance()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 516
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getLogin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;->getLogin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasLogin()Z
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;->hasLogin()Z

    move-result v0

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;->hasType()Z

    move-result v0

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;->hasVersion()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->internalGetResult()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setLogin(Ljava/lang/String;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 600
    if-nez p1, :cond_0

    .line 601
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;->hasLogin:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;->access$2602(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;Z)Z

    .line 604
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;->login_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;->access$2702(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 605
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 579
    if-nez p1, :cond_0

    .line 580
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;->hasType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;->access$2402(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;Z)Z

    .line 583
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;->type_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;->access$2502(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 584
    return-object p0
.end method

.method public setVersion(I)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 561
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;->access$2202(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;Z)Z

    .line 562
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;->version_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;->access$2302(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;I)I

    .line 563
    return-object p0
.end method
