.class public final Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "PhotosProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 836
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$2200(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 831
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->buildParsed()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;
    .locals 1

    .prologue
    .line 831
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->create()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 882
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 883
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 886
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->buildPartial()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;
    .locals 3

    .prologue
    .line 839
    new-instance v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;-><init>()V

    .line 840
    .local v0, "builder":Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;-><init>(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    .line 841
    return-object v0
.end method


# virtual methods
.method public addAllStatus(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;",
            ">;)",
            "Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 999
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    # getter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->status_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->access$2500(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->status_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->access$2502(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;Ljava/util/List;)Ljava/util/List;

    .line 1002
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    # getter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->status_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->access$2500(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1003
    return-object p0
.end method

.method public addStatus(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;

    .prologue
    .line 991
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    # getter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->status_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->access$2500(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 992
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->status_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->access$2502(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;Ljava/util/List;)Ljava/util/List;

    .line 994
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    # getter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->status_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->access$2500(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->build()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 995
    return-object p0
.end method

.method public addStatus(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    .prologue
    .line 981
    if-nez p1, :cond_0

    .line 982
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 984
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    # getter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->status_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->access$2500(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 985
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->status_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->access$2502(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;Ljava/util/List;)Ljava/util/List;

    .line 987
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    # getter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->status_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->access$2500(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 988
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 831
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->build()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 831
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->build()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 877
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->buildPartial()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 831
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->buildPartial()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 831
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->buildPartial()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;
    .locals 3

    .prologue
    .line 890
    iget-object v1, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    if-nez v1, :cond_0

    .line 891
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 894
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    # getter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->status_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->access$2500(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 895
    iget-object v1, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    # getter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->status_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->access$2500(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->status_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->access$2502(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;Ljava/util/List;)Ljava/util/List;

    .line 898
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    .line 899
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    .line 900
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 831
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->clear()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 831
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->clear()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 831
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->clear()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;
    .locals 2

    .prologue
    .line 849
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    if-nez v0, :cond_0

    .line 850
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 853
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;-><init>(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    .line 854
    return-object p0
.end method

.method public clearError()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;
    .locals 2

    .prologue
    .line 954
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->access$2802(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;Z)Z

    .line 955
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;->getDefaultInstance()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->error_:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->access$2902(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    .line 956
    return-object p0
.end method

.method public clearStatus()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;
    .locals 2

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->status_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->access$2502(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;Ljava/util/List;)Ljava/util/List;

    .line 1007
    return-object p0
.end method

.method public clearVersion()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 917
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    # setter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->access$2602(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;Z)Z

    .line 918
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    # setter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->version_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->access$2702(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;I)I

    .line 919
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 831
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->clone()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 831
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->clone()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 831
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->clone()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 831
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->clone()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 831
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->clone()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;
    .locals 2

    .prologue
    .line 858
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->create()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;

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
    .line 831
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->clone()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 831
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 831
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;
    .locals 1

    .prologue
    .line 867
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->getDefaultInstance()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 863
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->getError()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public getStatus(I)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 967
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->getStatus(I)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    move-result-object v0

    return-object v0
.end method

.method public getStatusCount()I
    .locals 1

    .prologue
    .line 964
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->getStatusCount()I

    move-result v0

    return v0
.end method

.method public getStatusList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 961
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    # getter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->status_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->access$2500(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->hasVersion()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 831
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeError(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    .prologue
    .line 943
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    # getter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->error_:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->access$2900(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;->getDefaultInstance()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 945
    iget-object v1, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    # getter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->error_:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->access$2900(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;->newBuilder(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->buildPartial()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->error_:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->access$2902(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    .line 950
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->access$2802(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;Z)Z

    .line 951
    return-object p0

    .line 948
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    # setter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->error_:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->access$2902(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    goto :goto_0
.end method

.method public setError(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;

    .prologue
    .line 938
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->access$2802(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;Z)Z

    .line 939
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Builder;->build()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->error_:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->access$2902(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    .line 940
    return-object p0
.end method

.method public setError(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    .prologue
    .line 930
    if-nez p1, :cond_0

    .line 931
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 933
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->access$2802(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;Z)Z

    .line 934
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    # setter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->error_:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->access$2902(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;

    .line 935
    return-object p0
.end method

.method public setStatus(ILcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;

    .prologue
    .line 977
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    # getter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->status_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->access$2500(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->build()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 978
    return-object p0
.end method

.method public setStatus(ILcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    .prologue
    .line 970
    if-nez p2, :cond_0

    .line 971
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 973
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    # getter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->status_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->access$2500(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 974
    return-object p0
.end method

.method public setVersion(I)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 912
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->access$2602(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;Z)Z

    .line 913
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;

    # setter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->version_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;->access$2702(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;I)I

    .line 914
    return-object p0
.end method
