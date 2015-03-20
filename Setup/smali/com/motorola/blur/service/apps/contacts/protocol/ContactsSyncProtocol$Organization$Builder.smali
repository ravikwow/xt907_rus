.class public final Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ContactsSyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6242
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$21700(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6237
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$21800()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;
    .locals 1

    .prologue
    .line 6237
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->create()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6288
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6289
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 6292
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->buildPartial()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;
    .locals 3

    .prologue
    .line 6245
    new-instance v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;-><init>()V

    .line 6246
    .local v0, "builder":Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;-><init>(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    .line 6247
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6237
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6237
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;
    .locals 1

    .prologue
    .line 6280
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6281
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 6283
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->buildPartial()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6237
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->buildPartial()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6237
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->buildPartial()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;
    .locals 3

    .prologue
    .line 6296
    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    if-nez v1, :cond_0

    .line 6297
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6300
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    .line 6301
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    .line 6302
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 6237
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->clear()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6237
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->clear()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6237
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->clear()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;
    .locals 2

    .prologue
    .line 6255
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    if-nez v0, :cond_0

    .line 6256
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6259
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;-><init>(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    .line 6260
    return-object p0
.end method

.method public clearCompany()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;
    .locals 2

    .prologue
    .line 6364
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->hasCompany:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->access$22402(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;Z)Z

    .line 6365
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->getCompany()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->company_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->access$22502(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;Ljava/lang/String;)Ljava/lang/String;

    .line 6366
    return-object p0
.end method

.method public clearIsPrimaryOrganization()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6403
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->hasIsPrimaryOrganization:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->access$22802(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;Z)Z

    .line 6404
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->isPrimaryOrganization_:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->access$22902(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;Z)Z

    .line 6405
    return-object p0
.end method

.method public clearLabel()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;
    .locals 2

    .prologue
    .line 6343
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->hasLabel:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->access$22202(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;Z)Z

    .line 6344
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->getLabel()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->label_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->access$22302(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;Ljava/lang/String;)Ljava/lang/String;

    .line 6345
    return-object p0
.end method

.method public clearTitle()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;
    .locals 2

    .prologue
    .line 6385
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->hasTitle:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->access$22602(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;Z)Z

    .line 6386
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->getTitle()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->title_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->access$22702(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;Ljava/lang/String;)Ljava/lang/String;

    .line 6387
    return-object p0
.end method

.method public clearType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;
    .locals 2

    .prologue
    .line 6322
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->hasType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->access$22002(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;Z)Z

    .line 6323
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    sget-object v1, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;->CUSTOM:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->type_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->access$22102(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    .line 6324
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 6237
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 6237
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 6237
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6237
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6237
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;
    .locals 2

    .prologue
    .line 6264
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->create()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;

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
    .line 6237
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCompany()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6353
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->getCompany()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6237
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6237
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;
    .locals 1

    .prologue
    .line 6273
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6269
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getIsPrimaryOrganization()Z
    .locals 1

    .prologue
    .line 6395
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->getIsPrimaryOrganization()Z

    move-result v0

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6332
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->getLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6374
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;
    .locals 1

    .prologue
    .line 6311
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->getType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    move-result-object v0

    return-object v0
.end method

.method public hasCompany()Z
    .locals 1

    .prologue
    .line 6350
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->hasCompany()Z

    move-result v0

    return v0
.end method

.method public hasIsPrimaryOrganization()Z
    .locals 1

    .prologue
    .line 6392
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->hasIsPrimaryOrganization()Z

    move-result v0

    return v0
.end method

.method public hasLabel()Z
    .locals 1

    .prologue
    .line 6329
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->hasLabel()Z

    move-result v0

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 6371
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->hasTitle()Z

    move-result v0

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 6308
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->hasType()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 6237
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;
    .locals 1

    .prologue
    .line 6251
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 6277
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setCompany(Ljava/lang/String;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6356
    if-nez p1, :cond_0

    .line 6357
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6359
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->hasCompany:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->access$22402(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;Z)Z

    .line 6360
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->company_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->access$22502(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;Ljava/lang/String;)Ljava/lang/String;

    .line 6361
    return-object p0
.end method

.method public setIsPrimaryOrganization(Z)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 6398
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->hasIsPrimaryOrganization:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->access$22802(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;Z)Z

    .line 6399
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->isPrimaryOrganization_:Z
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->access$22902(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;Z)Z

    .line 6400
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6335
    if-nez p1, :cond_0

    .line 6336
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6338
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->hasLabel:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->access$22202(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;Z)Z

    .line 6339
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->label_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->access$22302(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;Ljava/lang/String;)Ljava/lang/String;

    .line 6340
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6377
    if-nez p1, :cond_0

    .line 6378
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6380
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->hasTitle:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->access$22602(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;Z)Z

    .line 6381
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->title_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->access$22702(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;Ljava/lang/String;)Ljava/lang/String;

    .line 6382
    return-object p0
.end method

.method public setType(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    .prologue
    .line 6314
    if-nez p1, :cond_0

    .line 6315
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6317
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->hasType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->access$22002(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;Z)Z

    .line 6318
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->type_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->access$22102(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    .line 6319
    return-object p0
.end method
