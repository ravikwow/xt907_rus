.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7671
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$27000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7666
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$27100()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;
    .locals 1

    .prologue
    .line 7666
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7717
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7718
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 7721
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;
    .locals 3

    .prologue
    .line 7674
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;-><init>()V

    .line 7675
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    .line 7676
    return-object v0
.end method


# virtual methods
.method public addAllEmails(Ljava/lang/Iterable;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 7879
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->emails_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$27300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7880
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->emails_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$27302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;Ljava/util/List;)Ljava/util/List;

    .line 7882
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->emails_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$27300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 7883
    return-object p0
.end method

.method public addEmails(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7868
    if-nez p1, :cond_0

    .line 7869
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7871
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->emails_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$27300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7872
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->emails_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$27302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;Ljava/util/List;)Ljava/util/List;

    .line 7874
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->emails_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$27300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7875
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 7666
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7666
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;
    .locals 1

    .prologue
    .line 7709
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7710
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 7712
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 7666
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7666
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;
    .locals 3

    .prologue
    .line 7725
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    if-nez v1, :cond_0

    .line 7726
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7729
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->emails_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$27300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 7730
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    iget-object v2, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->emails_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$27300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->emails_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$27302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;Ljava/util/List;)Ljava/util/List;

    .line 7733
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    .line 7734
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    .line 7735
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 7666
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7666
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7666
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;
    .locals 2

    .prologue
    .line 7684
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    if-nez v0, :cond_0

    .line 7685
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7688
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    .line 7689
    return-object p0
.end method

.method public clearAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;
    .locals 2

    .prologue
    .line 7808
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$27602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;Z)Z

    .line 7809
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$27702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 7810
    return-object p0
.end method

.method public clearDeviceInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;
    .locals 2

    .prologue
    .line 7922
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$28002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;Z)Z

    .line 7923
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$28102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .line 7924
    return-object p0
.end method

.method public clearEmails()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;
    .locals 2

    .prologue
    .line 7886
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->emails_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$27302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;Ljava/util/List;)Ljava/util/List;

    .line 7887
    return-object p0
.end method

.method public clearMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;
    .locals 2

    .prologue
    .line 7845
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$27802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;Z)Z

    .line 7846
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$27902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 7847
    return-object p0
.end method

.method public clearUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;
    .locals 2

    .prologue
    .line 7771
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$27402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;Z)Z

    .line 7772
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$27502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 7773
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 7666
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 7666
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 7666
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7666
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7666
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;
    .locals 2

    .prologue
    .line 7693
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;

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
    .line 7666
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1

    .prologue
    .line 7781
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 7666
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7666
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;
    .locals 1

    .prologue
    .line 7702
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 7698
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .locals 1

    .prologue
    .line 7895
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->getDeviceInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getEmails(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 7858
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->getEmails(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailsCount()I
    .locals 1

    .prologue
    .line 7855
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->getEmailsCount()I

    move-result v0

    return v0
.end method

.method public getEmailsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7852
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->emails_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$27300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 7818
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1

    .prologue
    .line 7744
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->getUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasAppInfo()Z
    .locals 1

    .prologue
    .line 7778
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->hasAppInfo()Z

    move-result v0

    return v0
.end method

.method public hasDeviceInfo()Z
    .locals 1

    .prologue
    .line 7892
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->hasDeviceInfo()Z

    move-result v0

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 7815
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->hasMessageInfo()Z

    move-result v0

    return v0
.end method

.method public hasUserInfo()Z
    .locals 1

    .prologue
    .line 7741
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->hasUserInfo()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 7666
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;
    .locals 1

    .prologue
    .line 7680
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 7706
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 7797
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->hasAppInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$27700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 7799
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$27700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$27702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 7804
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$27602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;Z)Z

    .line 7805
    return-object p0

    .line 7802
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$27702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    goto :goto_0
.end method

.method public mergeDeviceInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .prologue
    .line 7911
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->hasDeviceInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$28100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 7913
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$28100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$28102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .line 7918
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$28002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;Z)Z

    .line 7919
    return-object p0

    .line 7916
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$28102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    goto :goto_0
.end method

.method public mergeMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 7834
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->hasMessageInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$27900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 7836
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$27900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$27902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 7841
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$27802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;Z)Z

    .line 7842
    return-object p0

    .line 7839
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$27902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    goto :goto_0
.end method

.method public mergeUserInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .prologue
    .line 7760
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->hasUserInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$27500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 7762
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$27500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$27502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 7767
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$27402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;Z)Z

    .line 7768
    return-object p0

    .line 7765
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$27502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    goto :goto_0
.end method

.method public setAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    .prologue
    .line 7792
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$27602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;Z)Z

    .line 7793
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$27702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 7794
    return-object p0
.end method

.method public setAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 7784
    if-nez p1, :cond_0

    .line 7785
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7787
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$27602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;Z)Z

    .line 7788
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$27702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 7789
    return-object p0
.end method

.method public setDeviceInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    .prologue
    .line 7906
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$28002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;Z)Z

    .line 7907
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$28102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .line 7908
    return-object p0
.end method

.method public setDeviceInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .prologue
    .line 7898
    if-nez p1, :cond_0

    .line 7899
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7901
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$28002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;Z)Z

    .line 7902
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$28102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .line 7903
    return-object p0
.end method

.method public setEmails(ILjava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 7861
    if-nez p2, :cond_0

    .line 7862
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7864
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->emails_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$27300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7865
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    .prologue
    .line 7829
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$27802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;Z)Z

    .line 7830
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$27902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 7831
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 7821
    if-nez p1, :cond_0

    .line 7822
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7824
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$27802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;Z)Z

    .line 7825
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$27902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 7826
    return-object p0
.end method

.method public setUserInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    .prologue
    .line 7755
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$27402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;Z)Z

    .line 7756
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$27502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 7757
    return-object p0
.end method

.method public setUserInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .prologue
    .line 7747
    if-nez p1, :cond_0

    .line 7748
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7750
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$27402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;Z)Z

    .line 7751
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->access$27502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 7752
    return-object p0
.end method
