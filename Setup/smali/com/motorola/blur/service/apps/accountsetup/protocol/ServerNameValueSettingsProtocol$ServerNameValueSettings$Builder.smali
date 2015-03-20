.class public final Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ServerNameValueSettingsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 761
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$1700(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 756
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;
    .locals 1

    .prologue
    .line 756
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->create()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 807
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 811
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->buildPartial()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;
    .locals 3

    .prologue
    .line 764
    new-instance v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;-><init>()V

    .line 765
    .local v0, "builder":Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;-><init>(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    .line 766
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->build()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->build()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 800
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 802
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->buildPartial()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->buildPartial()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->buildPartial()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;
    .locals 3

    .prologue
    .line 815
    iget-object v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    if-nez v1, :cond_0

    .line 816
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    .line 820
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    .line 821
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->clear()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->clear()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->clear()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;
    .locals 2

    .prologue
    .line 774
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    if-nez v0, :cond_0

    .line 775
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 778
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;-><init>(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    .line 779
    return-object p0
.end method

.method public clearName()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;
    .locals 2

    .prologue
    .line 883
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->hasName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->access$2402(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;Z)Z

    .line 884
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->getDefaultInstance()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->getName()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->access$2502(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 885
    return-object p0
.end method

.method public clearSyncAnchor()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;
    .locals 2

    .prologue
    .line 862
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->hasSyncAnchor:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->access$2202(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;Z)Z

    .line 863
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->getDefaultInstance()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->getSyncAnchor()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->syncAnchor_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->access$2302(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 864
    return-object p0
.end method

.method public clearSyncId()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;
    .locals 2

    .prologue
    .line 841
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->hasSyncId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->access$2002(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;Z)Z

    .line 842
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->getDefaultInstance()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->getSyncId()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->syncId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->access$2102(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 843
    return-object p0
.end method

.method public clearValue()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;
    .locals 2

    .prologue
    .line 904
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->hasValue:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->access$2602(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;Z)Z

    .line 905
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->getDefaultInstance()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->getValue()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->value_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->access$2702(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 906
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;
    .locals 2

    .prologue
    .line 783
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->create()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;

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
    .line 756
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;
    .locals 1

    .prologue
    .line 792
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->getDefaultInstance()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 788
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSyncAnchor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->getSyncAnchor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSyncId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->getSyncId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 869
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasSyncAnchor()Z
    .locals 1

    .prologue
    .line 848
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->hasSyncAnchor()Z

    move-result v0

    return v0
.end method

.method public hasSyncId()Z
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->hasSyncId()Z

    move-result v0

    return v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->hasValue()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setName(Ljava/lang/String;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 875
    if-nez p1, :cond_0

    .line 876
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 878
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->hasName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->access$2402(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;Z)Z

    .line 879
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->access$2502(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 880
    return-object p0
.end method

.method public setSyncAnchor(Ljava/lang/String;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 854
    if-nez p1, :cond_0

    .line 855
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 857
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->hasSyncAnchor:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->access$2202(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;Z)Z

    .line 858
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->syncAnchor_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->access$2302(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 859
    return-object p0
.end method

.method public setSyncId(Ljava/lang/String;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 833
    if-nez p1, :cond_0

    .line 834
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->hasSyncId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->access$2002(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;Z)Z

    .line 837
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->syncId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->access$2102(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 838
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 896
    if-nez p1, :cond_0

    .line 897
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 899
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->hasValue:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->access$2602(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;Z)Z

    .line 900
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->value_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->access$2702(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 901
    return-object p0
.end method
