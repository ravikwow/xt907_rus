.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1553
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$4900(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1548
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5000()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;
    .locals 1

    .prologue
    .line 1548
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1599
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1600
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1603
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;
    .locals 3

    .prologue
    .line 1556
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;-><init>()V

    .line 1557
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    .line 1558
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1548
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1548
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;
    .locals 1

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1592
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1594
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1548
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1548
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;
    .locals 3

    .prologue
    .line 1607
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    if-nez v1, :cond_0

    .line 1608
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1611
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    .line 1612
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    .line 1613
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1548
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1548
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1548
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;
    .locals 2

    .prologue
    .line 1566
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    if-nez v0, :cond_0

    .line 1567
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1570
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    .line 1571
    return-object p0
.end method

.method public clearAlternateEmail()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;
    .locals 2

    .prologue
    .line 1633
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;->hasAlternateEmail:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;->access$5202(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;Z)Z

    .line 1634
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;->getAlternateEmail()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;->alternateEmail_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;->access$5302(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 1635
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1548
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1548
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1548
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1548
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1548
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;
    .locals 2

    .prologue
    .line 1575
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;

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
    .line 1548
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAlternateEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1622
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;->getAlternateEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1548
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1548
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;
    .locals 1

    .prologue
    .line 1584
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1580
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public hasAlternateEmail()Z
    .locals 1

    .prologue
    .line 1619
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;->hasAlternateEmail()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 1548
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;
    .locals 1

    .prologue
    .line 1562
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1588
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setAlternateEmail(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1625
    if-nez p1, :cond_0

    .line 1626
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1628
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;->hasAlternateEmail:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;->access$5202(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;Z)Z

    .line 1629
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;->alternateEmail_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;->access$5302(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 1630
    return-object p0
.end method
