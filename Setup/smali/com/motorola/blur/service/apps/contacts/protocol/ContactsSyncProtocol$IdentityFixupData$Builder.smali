.class public final Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ContactsSyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2351
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$6000(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2346
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6100()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;
    .locals 1

    .prologue
    .line 2346
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->create()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2397
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2398
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2401
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->buildPartial()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;
    .locals 3

    .prologue
    .line 2354
    new-instance v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;-><init>()V

    .line 2355
    .local v0, "builder":Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;-><init>(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    .line 2356
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2346
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2346
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;
    .locals 1

    .prologue
    .line 2389
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2390
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2392
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->buildPartial()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2346
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->buildPartial()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2346
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->buildPartial()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;
    .locals 3

    .prologue
    .line 2405
    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    if-nez v1, :cond_0

    .line 2406
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2409
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    .line 2410
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    .line 2411
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2346
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->clear()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2346
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->clear()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2346
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->clear()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;
    .locals 2

    .prologue
    .line 2364
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    if-nez v0, :cond_0

    .line 2365
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2368
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;-><init>(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    .line 2369
    return-object p0
.end method

.method public clearMerge()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2512
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->hasMerge:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->access$7102(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;Z)Z

    .line 2513
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->merge_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->access$7202(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;I)I

    .line 2514
    return-object p0
.end method

.method public clearServiceId1()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;
    .locals 2

    .prologue
    .line 2452
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->hasServiceId1:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->access$6502(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;Z)Z

    .line 2453
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->getServiceId1()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->serviceId1_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->access$6602(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;Ljava/lang/String;)Ljava/lang/String;

    .line 2454
    return-object p0
.end method

.method public clearServiceId2()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;
    .locals 2

    .prologue
    .line 2494
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->hasServiceId2:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->access$6902(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;Z)Z

    .line 2495
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->getServiceId2()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->serviceId2_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->access$7002(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;Ljava/lang/String;)Ljava/lang/String;

    .line 2496
    return-object p0
.end method

.method public clearServiceName1()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;
    .locals 2

    .prologue
    .line 2431
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->hasServiceName1:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->access$6302(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;Z)Z

    .line 2432
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->getServiceName1()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->serviceName1_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->access$6402(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;Ljava/lang/String;)Ljava/lang/String;

    .line 2433
    return-object p0
.end method

.method public clearServiceName2()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;
    .locals 2

    .prologue
    .line 2473
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->hasServiceName2:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->access$6702(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;Z)Z

    .line 2474
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->getServiceName2()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->serviceName2_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->access$6802(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;Ljava/lang/String;)Ljava/lang/String;

    .line 2475
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2346
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2346
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2346
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2346
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2346
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;
    .locals 2

    .prologue
    .line 2373
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->create()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;

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
    .line 2346
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2346
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2346
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;
    .locals 1

    .prologue
    .line 2382
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2378
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMerge()I
    .locals 1

    .prologue
    .line 2504
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->getMerge()I

    move-result v0

    return v0
.end method

.method public getServiceId1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2441
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->getServiceId1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceId2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2483
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->getServiceId2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceName1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2420
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->getServiceName1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceName2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2462
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->getServiceName2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasMerge()Z
    .locals 1

    .prologue
    .line 2501
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->hasMerge()Z

    move-result v0

    return v0
.end method

.method public hasServiceId1()Z
    .locals 1

    .prologue
    .line 2438
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->hasServiceId1()Z

    move-result v0

    return v0
.end method

.method public hasServiceId2()Z
    .locals 1

    .prologue
    .line 2480
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->hasServiceId2()Z

    move-result v0

    return v0
.end method

.method public hasServiceName1()Z
    .locals 1

    .prologue
    .line 2417
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->hasServiceName1()Z

    move-result v0

    return v0
.end method

.method public hasServiceName2()Z
    .locals 1

    .prologue
    .line 2459
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->hasServiceName2()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 2346
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;
    .locals 1

    .prologue
    .line 2360
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2386
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setMerge(I)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 2507
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->hasMerge:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->access$7102(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;Z)Z

    .line 2508
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->merge_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->access$7202(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;I)I

    .line 2509
    return-object p0
.end method

.method public setServiceId1(Ljava/lang/String;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2444
    if-nez p1, :cond_0

    .line 2445
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2447
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->hasServiceId1:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->access$6502(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;Z)Z

    .line 2448
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->serviceId1_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->access$6602(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;Ljava/lang/String;)Ljava/lang/String;

    .line 2449
    return-object p0
.end method

.method public setServiceId2(Ljava/lang/String;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2486
    if-nez p1, :cond_0

    .line 2487
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2489
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->hasServiceId2:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->access$6902(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;Z)Z

    .line 2490
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->serviceId2_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->access$7002(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;Ljava/lang/String;)Ljava/lang/String;

    .line 2491
    return-object p0
.end method

.method public setServiceName1(Ljava/lang/String;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2423
    if-nez p1, :cond_0

    .line 2424
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2426
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->hasServiceName1:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->access$6302(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;Z)Z

    .line 2427
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->serviceName1_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->access$6402(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;Ljava/lang/String;)Ljava/lang/String;

    .line 2428
    return-object p0
.end method

.method public setServiceName2(Ljava/lang/String;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2465
    if-nez p1, :cond_0

    .line 2466
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2468
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->hasServiceName2:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->access$6702(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;Z)Z

    .line 2469
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->serviceName2_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;->access$6802(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupData;Ljava/lang/String;)Ljava/lang/String;

    .line 2470
    return-object p0
.end method
