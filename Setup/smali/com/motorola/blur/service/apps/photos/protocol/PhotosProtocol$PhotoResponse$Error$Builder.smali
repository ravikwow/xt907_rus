.class public final Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "PhotosProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 631
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$1700(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 626
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->buildParsed()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;
    .locals 1

    .prologue
    .line 626
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->create()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 677
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 681
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->buildPartial()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;
    .locals 3

    .prologue
    .line 634
    new-instance v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;-><init>()V

    .line 635
    .local v0, "builder":Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;-><init>(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    .line 636
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->build()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->build()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 672
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->buildPartial()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->buildPartial()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->buildPartial()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;
    .locals 3

    .prologue
    .line 685
    iget-object v1, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    if-nez v1, :cond_0

    .line 686
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    .line 690
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    .line 691
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->clear()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->clear()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->clear()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;
    .locals 2

    .prologue
    .line 644
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    if-nez v0, :cond_0

    .line 645
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 648
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;-><init>(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    .line 649
    return-object p0
.end method

.method public clearType()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;
    .locals 2

    .prologue
    .line 711
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;->hasType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;->access$2002(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;Z)Z

    .line 712
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    sget-object v1, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    # setter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;->type_:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;->access$2102(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    .line 713
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->clone()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->clone()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->clone()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->clone()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->clone()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;
    .locals 2

    .prologue
    .line 653
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->create()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;

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
    .line 626
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->clone()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;
    .locals 1

    .prologue
    .line 662
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;->getDefaultInstance()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 658
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;->getType()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    move-result-object v0

    return-object v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;->hasType()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setType(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    .prologue
    .line 703
    if-nez p1, :cond_0

    .line 704
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 706
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;->hasType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;->access$2002(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;Z)Z

    .line 707
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    # setter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;->type_:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;->access$2102(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    .line 708
    return-object p0
.end method
