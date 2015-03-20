.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 707
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$2200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 702
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;
    .locals 1

    .prologue
    .line 702
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 753
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 757
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;
    .locals 3

    .prologue
    .line 710
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;-><init>()V

    .line 711
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    .line 712
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 748
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;
    .locals 3

    .prologue
    .line 761
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    if-nez v1, :cond_0

    .line 762
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    .line 766
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    .line 767
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;
    .locals 2

    .prologue
    .line 720
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    if-nez v0, :cond_0

    .line 721
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 724
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    .line 725
    return-object p0
.end method

.method public clearName()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;
    .locals 2

    .prologue
    .line 805
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->hasName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->access$2702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;Z)Z

    .line 806
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->getName()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->access$2802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 807
    return-object p0
.end method

.method public clearVersion()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 784
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->access$2502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;Z)Z

    .line 785
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->version_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->access$2602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;I)I

    .line 786
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;
    .locals 2

    .prologue
    .line 729
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;

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
    .line 702
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;
    .locals 1

    .prologue
    .line 738
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 734
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->hasVersion()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setName(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 797
    if-nez p1, :cond_0

    .line 798
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 800
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->hasName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->access$2702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;Z)Z

    .line 801
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->access$2802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 802
    return-object p0
.end method

.method public setVersion(I)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 779
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->access$2502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;Z)Z

    .line 780
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->version_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;->access$2602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;I)I

    .line 781
    return-object p0
.end method
