.class public final Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "CommonProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 636
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$1500(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 631
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->buildParsed()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;
    .locals 1

    .prologue
    .line 631
    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->create()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 682
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 686
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->buildPartial()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;
    .locals 3

    .prologue
    .line 639
    new-instance v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;-><init>()V

    .line 640
    .local v0, "builder":Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;-><init>(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    .line 641
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->build()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->build()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 677
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->buildPartial()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->buildPartial()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->buildPartial()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;
    .locals 3

    .prologue
    .line 690
    iget-object v1, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    if-nez v1, :cond_0

    .line 691
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    .line 695
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    .line 696
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->clear()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->clear()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->clear()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;
    .locals 2

    .prologue
    .line 649
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    if-nez v0, :cond_0

    .line 650
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 653
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;-><init>(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    .line 654
    return-object p0
.end method

.method public clearId()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;
    .locals 2

    .prologue
    .line 737
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->hasId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->access$2002(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;Z)Z

    .line 738
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->getDefaultInstance()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->getId()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->id_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->access$2102(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;Ljava/lang/String;)Ljava/lang/String;

    .line 739
    return-object p0
.end method

.method public clearType()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;
    .locals 2

    .prologue
    .line 716
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->hasType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->access$1802(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;Z)Z

    .line 717
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    sget-object v1, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Type;->PARENT:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Type;

    # setter for: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->type_:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Type;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->access$1902(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Type;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Type;

    .line 718
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->clone()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->clone()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->clone()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->clone()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->clone()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;
    .locals 2

    .prologue
    .line 658
    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->create()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;

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
    .line 631
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->clone()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;
    .locals 1

    .prologue
    .line 667
    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->getDefaultInstance()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 663
    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Type;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->getType()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Type;

    move-result-object v0

    return-object v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->hasType()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setId(Ljava/lang/String;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 729
    if-nez p1, :cond_0

    .line 730
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->hasId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->access$2002(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;Z)Z

    .line 733
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    # setter for: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->id_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->access$2102(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;Ljava/lang/String;)Ljava/lang/String;

    .line 734
    return-object p0
.end method

.method public setType(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Type;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Type;

    .prologue
    .line 708
    if-nez p1, :cond_0

    .line 709
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->hasType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->access$1802(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;Z)Z

    .line 712
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    # setter for: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->type_:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Type;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;->access$1902(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Type;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Type;

    .line 713
    return-object p0
.end method
