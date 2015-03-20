.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13704
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$48300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13699
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$48400()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;
    .locals 1

    .prologue
    .line 13699
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13750
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 13751
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 13754
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;
    .locals 3

    .prologue
    .line 13707
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;-><init>()V

    .line 13708
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    .line 13709
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 13699
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13699
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;
    .locals 1

    .prologue
    .line 13742
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 13743
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 13745
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 13699
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13699
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;
    .locals 3

    .prologue
    .line 13758
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    if-nez v1, :cond_0

    .line 13759
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 13762
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    .line 13763
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    .line 13764
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 13699
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13699
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13699
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;
    .locals 2

    .prologue
    .line 13717
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    if-nez v0, :cond_0

    .line 13718
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13721
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    .line 13722
    return-object p0
.end method

.method public clearAction()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;
    .locals 2

    .prologue
    .line 13826
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->hasAction:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->access$49002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;Z)Z

    .line 13827
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;->CREATE:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->action_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->access$49102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;

    .line 13828
    return-object p0
.end method

.method public clearLogin()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;
    .locals 2

    .prologue
    .line 13784
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->hasLogin:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->access$48602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;Z)Z

    .line 13785
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->getLogin()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->login_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->access$48702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 13786
    return-object p0
.end method

.method public clearPassword()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;
    .locals 2

    .prologue
    .line 13805
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->hasPassword:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->access$48802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;Z)Z

    .line 13806
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->getPassword()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->password_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->access$48902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 13807
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 13699
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 13699
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 13699
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13699
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13699
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;
    .locals 2

    .prologue
    .line 13726
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;

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
    .line 13699
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAction()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;
    .locals 1

    .prologue
    .line 13815
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->getAction()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 13699
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13699
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;
    .locals 1

    .prologue
    .line 13735
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 13731
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getLogin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13773
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->getLogin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13794
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->getPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAction()Z
    .locals 1

    .prologue
    .line 13812
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->hasAction()Z

    move-result v0

    return v0
.end method

.method public hasLogin()Z
    .locals 1

    .prologue
    .line 13770
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->hasLogin()Z

    move-result v0

    return v0
.end method

.method public hasPassword()Z
    .locals 1

    .prologue
    .line 13791
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->hasPassword()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 13699
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;
    .locals 1

    .prologue
    .line 13713
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 13739
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setAction(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;

    .prologue
    .line 13818
    if-nez p1, :cond_0

    .line 13819
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13821
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->hasAction:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->access$49002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;Z)Z

    .line 13822
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->action_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->access$49102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;

    .line 13823
    return-object p0
.end method

.method public setLogin(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 13776
    if-nez p1, :cond_0

    .line 13777
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13779
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->hasLogin:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->access$48602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;Z)Z

    .line 13780
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->login_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->access$48702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 13781
    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 13797
    if-nez p1, :cond_0

    .line 13798
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13800
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->hasPassword:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->access$48802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;Z)Z

    .line 13801
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->password_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->access$48902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 13802
    return-object p0
.end method
