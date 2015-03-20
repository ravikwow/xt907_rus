.class public final Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ContactsSyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3012
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$7500(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3007
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7600()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 1

    .prologue
    .line 3007
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->create()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3058
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3059
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3062
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->buildPartial()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 3

    .prologue
    .line 3015
    new-instance v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;-><init>()V

    .line 3016
    .local v0, "builder":Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;-><init>(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    .line 3017
    return-object v0
.end method


# virtual methods
.method public addAllContactMethods(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;",
            ">;)",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;"
        }
    .end annotation

    .prologue
    .line 3392
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->contactMethods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$7900(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3393
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->contactMethods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$7902(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/util/List;)Ljava/util/List;

    .line 3395
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->contactMethods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$7900(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3396
    return-object p0
.end method

.method public addAllGroupMemberships(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupMembership;",
            ">;)",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;"
        }
    .end annotation

    .prologue
    .line 3494
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupMembership;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->groupMemberships_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8100(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3495
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->groupMemberships_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8102(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/util/List;)Ljava/util/List;

    .line 3497
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->groupMemberships_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8100(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3498
    return-object p0
.end method

.method public addAllOrganizations(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;",
            ">;)",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;"
        }
    .end annotation

    .prologue
    .line 3443
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->organizations_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8000(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3444
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->organizations_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8002(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/util/List;)Ljava/util/List;

    .line 3446
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->organizations_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8000(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3447
    return-object p0
.end method

.method public addAllPhones(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Phone;",
            ">;)",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;"
        }
    .end annotation

    .prologue
    .line 3341
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Phone;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->phones_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$7800(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3342
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->phones_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$7802(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/util/List;)Ljava/util/List;

    .line 3344
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->phones_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$7800(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3345
    return-object p0
.end method

.method public addAllPhoto(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;",
            ">;)",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;"
        }
    .end annotation

    .prologue
    .line 3545
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->photo_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8200(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3546
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->photo_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8202(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/util/List;)Ljava/util/List;

    .line 3548
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->photo_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8200(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3549
    return-object p0
.end method

.method public addAllTags(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;"
        }
    .end annotation

    .prologue
    .line 3783
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->tags_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8300(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3784
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->tags_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8302(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/util/List;)Ljava/util/List;

    .line 3786
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->tags_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8300(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3787
    return-object p0
.end method

.method public addContactMethods(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;

    .prologue
    .line 3384
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->contactMethods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$7900(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3385
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->contactMethods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$7902(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/util/List;)Ljava/util/List;

    .line 3387
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->contactMethods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$7900(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3388
    return-object p0
.end method

.method public addContactMethods(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;

    .prologue
    .line 3374
    if-nez p1, :cond_0

    .line 3375
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3377
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->contactMethods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$7900(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3378
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->contactMethods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$7902(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/util/List;)Ljava/util/List;

    .line 3380
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->contactMethods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$7900(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3381
    return-object p0
.end method

.method public addGroupMemberships(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupMembership$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupMembership$Builder;

    .prologue
    .line 3486
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->groupMemberships_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8100(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3487
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->groupMemberships_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8102(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/util/List;)Ljava/util/List;

    .line 3489
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->groupMemberships_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8100(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupMembership$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupMembership;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3490
    return-object p0
.end method

.method public addGroupMemberships(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupMembership;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupMembership;

    .prologue
    .line 3476
    if-nez p1, :cond_0

    .line 3477
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3479
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->groupMemberships_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8100(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3480
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->groupMemberships_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8102(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/util/List;)Ljava/util/List;

    .line 3482
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->groupMemberships_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8100(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3483
    return-object p0
.end method

.method public addOrganizations(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;

    .prologue
    .line 3435
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->organizations_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8000(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3436
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->organizations_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8002(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/util/List;)Ljava/util/List;

    .line 3438
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->organizations_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8000(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3439
    return-object p0
.end method

.method public addOrganizations(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    .prologue
    .line 3425
    if-nez p1, :cond_0

    .line 3426
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3428
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->organizations_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8000(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3429
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->organizations_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8002(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/util/List;)Ljava/util/List;

    .line 3431
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->organizations_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8000(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3432
    return-object p0
.end method

.method public addPhones(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Phone$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Phone$Builder;

    .prologue
    .line 3333
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->phones_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$7800(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3334
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->phones_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$7802(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/util/List;)Ljava/util/List;

    .line 3336
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->phones_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$7800(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Phone$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Phone;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3337
    return-object p0
.end method

.method public addPhones(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Phone;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Phone;

    .prologue
    .line 3323
    if-nez p1, :cond_0

    .line 3324
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3326
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->phones_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$7800(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3327
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->phones_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$7802(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/util/List;)Ljava/util/List;

    .line 3329
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->phones_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$7800(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3330
    return-object p0
.end method

.method public addPhoto(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;

    .prologue
    .line 3537
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->photo_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8200(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3538
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->photo_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8202(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/util/List;)Ljava/util/List;

    .line 3540
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->photo_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8200(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3541
    return-object p0
.end method

.method public addPhoto(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;

    .prologue
    .line 3527
    if-nez p1, :cond_0

    .line 3528
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3530
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->photo_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8200(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3531
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->photo_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8202(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/util/List;)Ljava/util/List;

    .line 3533
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->photo_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8200(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3534
    return-object p0
.end method

.method public addTags(Ljava/lang/String;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3772
    if-nez p1, :cond_0

    .line 3773
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3775
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->tags_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8300(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3776
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->tags_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8302(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/util/List;)Ljava/util/List;

    .line 3778
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->tags_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8300(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3779
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3007
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3007
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .locals 1

    .prologue
    .line 3050
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3051
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 3053
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->buildPartial()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3007
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->buildPartial()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3007
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->buildPartial()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .locals 3

    .prologue
    .line 3066
    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    if-nez v1, :cond_0

    .line 3067
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3070
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->phones_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$7800(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 3071
    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->phones_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$7800(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->phones_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$7802(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/util/List;)Ljava/util/List;

    .line 3074
    :cond_1
    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->contactMethods_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$7900(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_2

    .line 3075
    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->contactMethods_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$7900(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->contactMethods_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$7902(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/util/List;)Ljava/util/List;

    .line 3078
    :cond_2
    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->organizations_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8000(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_3

    .line 3079
    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->organizations_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8000(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->organizations_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8002(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/util/List;)Ljava/util/List;

    .line 3082
    :cond_3
    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->groupMemberships_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8100(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_4

    .line 3083
    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->groupMemberships_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8100(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->groupMemberships_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8102(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/util/List;)Ljava/util/List;

    .line 3086
    :cond_4
    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->photo_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8200(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_5

    .line 3087
    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->photo_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8200(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->photo_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8202(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/util/List;)Ljava/util/List;

    .line 3090
    :cond_5
    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->tags_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8300(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_6

    .line 3091
    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->tags_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8300(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->tags_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8302(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/util/List;)Ljava/util/List;

    .line 3094
    :cond_6
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    .line 3095
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    .line 3096
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3007
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->clear()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3007
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->clear()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3007
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->clear()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2

    .prologue
    .line 3025
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    if-nez v0, :cond_0

    .line 3026
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3029
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;-><init>(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    .line 3030
    return-object p0
.end method

.method public clearAnniversary()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2

    .prologue
    .line 3810
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasAnniversary:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$12402(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z

    .line 3811
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getAnniversary()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->anniversary_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$12502(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/lang/String;)Ljava/lang/String;

    .line 3812
    return-object p0
.end method

.method public clearBirthday()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2

    .prologue
    .line 3692
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasBirthday:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$11602(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z

    .line 3693
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getBirthday()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->birthday_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$11702(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/lang/String;)Ljava/lang/String;

    .line 3694
    return-object p0
.end method

.method public clearContactMethods()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2

    .prologue
    .line 3399
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->contactMethods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$7902(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/util/List;)Ljava/util/List;

    .line 3400
    return-object p0
.end method

.method public clearDayOfBirth()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3710
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasDayOfBirth:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$11802(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z

    .line 3711
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->dayOfBirth_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$11902(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;I)I

    .line 3712
    return-object p0
.end method

.method public clearExtraPersonData()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2

    .prologue
    .line 3296
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasExtraPersonData:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$10202(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z

    .line 3297
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getExtraPersonData()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->extraPersonData_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$10302(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/lang/String;)Ljava/lang/String;

    .line 3298
    return-object p0
.end method

.method public clearFriendId()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2

    .prologue
    .line 3629
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasFriendId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$11002(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z

    .line 3630
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getFriendId()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->friendId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$11102(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/lang/String;)Ljava/lang/String;

    .line 3631
    return-object p0
.end method

.method public clearFriendOf()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2

    .prologue
    .line 3650
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasFriendOf:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$11202(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z

    .line 3651
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getFriendOf()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->friendOf_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$11302(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/lang/String;)Ljava/lang/String;

    .line 3652
    return-object p0
.end method

.method public clearGender()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2

    .prologue
    .line 3671
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasGender:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$11402(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z

    .line 3672
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    sget-object v1, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Gender;->FEMALE:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Gender;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->gender_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Gender;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$11502(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Gender;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Gender;

    .line 3673
    return-object p0
.end method

.method public clearGroupMemberships()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2

    .prologue
    .line 3501
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->groupMemberships_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8102(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/util/List;)Ljava/util/List;

    .line 3502
    return-object p0
.end method

.method public clearIsMe()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3569
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasIsMe:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$10402(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z

    .line 3570
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->isMe_:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$10502(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z

    .line 3571
    return-object p0
.end method

.method public clearLastTimeContacted()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 3

    .prologue
    .line 3215
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasLastTimeContacted:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$9402(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z

    .line 3216
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    const-wide/16 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->lastTimeContacted_:J
    invoke-static {v0, v1, v2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$9502(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;J)J

    .line 3217
    return-object p0
.end method

.method public clearModifySetFieldsOnly()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3608
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasModifySetFieldsOnly:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$10802(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z

    .line 3609
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->modifySetFieldsOnly_:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$10902(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z

    .line 3610
    return-object p0
.end method

.method public clearMonthOfBirth()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2

    .prologue
    .line 3731
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasMonthOfBirth:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$12002(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z

    .line 3732
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    sget-object v1, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->January:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->monthOfBirth_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$12102(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    .line 3733
    return-object p0
.end method

.method public clearName()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2

    .prologue
    .line 3158
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8802(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z

    .line 3159
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getName()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8902(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/lang/String;)Ljava/lang/String;

    .line 3160
    return-object p0
.end method

.method public clearNotes()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2

    .prologue
    .line 3179
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasNotes:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$9002(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z

    .line 3180
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getNotes()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->notes_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$9102(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/lang/String;)Ljava/lang/String;

    .line 3181
    return-object p0
.end method

.method public clearOrganizations()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2

    .prologue
    .line 3450
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->organizations_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8002(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/util/List;)Ljava/util/List;

    .line 3451
    return-object p0
.end method

.method public clearPhones()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2

    .prologue
    .line 3348
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->phones_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$7802(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/util/List;)Ljava/util/List;

    .line 3349
    return-object p0
.end method

.method public clearPhoto()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2

    .prologue
    .line 3552
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->photo_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8202(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/util/List;)Ljava/util/List;

    .line 3553
    return-object p0
.end method

.method public clearProfileUri()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2

    .prologue
    .line 3590
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasProfileUri:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$10602(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z

    .line 3591
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getProfileUri()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->profileUri_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$10702(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/lang/String;)Ljava/lang/String;

    .line 3592
    return-object p0
.end method

.method public clearSourceExternalId()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2

    .prologue
    .line 3275
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasSourceExternalId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$10002(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z

    .line 3276
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getSourceExternalId()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->sourceExternalId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$10102(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/lang/String;)Ljava/lang/String;

    .line 3277
    return-object p0
.end method

.method public clearSourceName()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2

    .prologue
    .line 3254
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasSourceName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$9802(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z

    .line 3255
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getSourceName()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->sourceName_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$9902(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/lang/String;)Ljava/lang/String;

    .line 3256
    return-object p0
.end method

.method public clearStarred()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3233
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasStarred:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$9602(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z

    .line 3234
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->starred_:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$9702(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z

    .line 3235
    return-object p0
.end method

.method public clearSyncAnchor()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2

    .prologue
    .line 3137
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasSyncAnchor:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8602(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z

    .line 3138
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getSyncAnchor()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->syncAnchor_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8702(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/lang/String;)Ljava/lang/String;

    .line 3139
    return-object p0
.end method

.method public clearSyncId()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2

    .prologue
    .line 3116
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasSyncId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8402(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z

    .line 3117
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getSyncId()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->syncId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8502(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/lang/String;)Ljava/lang/String;

    .line 3118
    return-object p0
.end method

.method public clearTags()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2

    .prologue
    .line 3790
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->tags_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8302(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/util/List;)Ljava/util/List;

    .line 3791
    return-object p0
.end method

.method public clearTimesContacted()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3197
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasTimesContacted:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$9202(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z

    .line 3198
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->timesContacted_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$9302(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;I)I

    .line 3199
    return-object p0
.end method

.method public clearYearOfBirth()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3749
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasYearOfBirth:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$12202(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z

    .line 3750
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->yearOfBirth_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$12302(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;I)I

    .line 3751
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3007
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3007
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 3007
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3007
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3007
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2

    .prologue
    .line 3034
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->create()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;

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
    .line 3007
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAnniversary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3799
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getAnniversary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3681
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getBirthday()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContactMethods(I)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 3360
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getContactMethods(I)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;

    move-result-object v0

    return-object v0
.end method

.method public getContactMethodsCount()I
    .locals 1

    .prologue
    .line 3357
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getContactMethodsCount()I

    move-result v0

    return v0
.end method

.method public getContactMethodsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3354
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->contactMethods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$7900(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfBirth()I
    .locals 1

    .prologue
    .line 3702
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getDayOfBirth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3007
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3007
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .locals 1

    .prologue
    .line 3043
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3039
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getExtraPersonData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3285
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getExtraPersonData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFriendId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3618
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getFriendId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFriendOf()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3639
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getFriendOf()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGender()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Gender;
    .locals 1

    .prologue
    .line 3660
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getGender()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Gender;

    move-result-object v0

    return-object v0
.end method

.method public getGroupMemberships(I)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupMembership;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 3462
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getGroupMemberships(I)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupMembership;

    move-result-object v0

    return-object v0
.end method

.method public getGroupMembershipsCount()I
    .locals 1

    .prologue
    .line 3459
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getGroupMembershipsCount()I

    move-result v0

    return v0
.end method

.method public getGroupMembershipsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupMembership;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3456
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->groupMemberships_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8100(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIsMe()Z
    .locals 1

    .prologue
    .line 3561
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getIsMe()Z

    move-result v0

    return v0
.end method

.method public getLastTimeContacted()J
    .locals 2

    .prologue
    .line 3207
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getLastTimeContacted()J

    move-result-wide v0

    return-wide v0
.end method

.method public getModifySetFieldsOnly()Z
    .locals 1

    .prologue
    .line 3600
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getModifySetFieldsOnly()Z

    move-result v0

    return v0
.end method

.method public getMonthOfBirth()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;
    .locals 1

    .prologue
    .line 3720
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getMonthOfBirth()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3147
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3168
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getNotes()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrganizations(I)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 3411
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getOrganizations(I)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    move-result-object v0

    return-object v0
.end method

.method public getOrganizationsCount()I
    .locals 1

    .prologue
    .line 3408
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getOrganizationsCount()I

    move-result v0

    return v0
.end method

.method public getOrganizationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3405
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->organizations_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8000(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPhones(I)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Phone;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 3309
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getPhones(I)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Phone;

    move-result-object v0

    return-object v0
.end method

.method public getPhonesCount()I
    .locals 1

    .prologue
    .line 3306
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getPhonesCount()I

    move-result v0

    return v0
.end method

.method public getPhonesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Phone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3303
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->phones_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$7800(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPhoto(I)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 3513
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getPhoto(I)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoCount()I
    .locals 1

    .prologue
    .line 3510
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getPhotoCount()I

    move-result v0

    return v0
.end method

.method public getPhotoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3507
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->photo_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8200(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProfileUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3579
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getProfileUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSourceExternalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3264
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getSourceExternalId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3243
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getSourceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStarred()Z
    .locals 1

    .prologue
    .line 3225
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getStarred()Z

    move-result v0

    return v0
.end method

.method public getSyncAnchor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3126
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getSyncAnchor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSyncId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3105
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getSyncId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTags(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 3762
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getTags(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTagsCount()I
    .locals 1

    .prologue
    .line 3759
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getTagsCount()I

    move-result v0

    return v0
.end method

.method public getTagsList()Ljava/util/List;
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
    .line 3756
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->tags_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8300(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTimesContacted()I
    .locals 1

    .prologue
    .line 3189
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getTimesContacted()I

    move-result v0

    return v0
.end method

.method public getYearOfBirth()I
    .locals 1

    .prologue
    .line 3741
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getYearOfBirth()I

    move-result v0

    return v0
.end method

.method public hasAnniversary()Z
    .locals 1

    .prologue
    .line 3796
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasAnniversary()Z

    move-result v0

    return v0
.end method

.method public hasBirthday()Z
    .locals 1

    .prologue
    .line 3678
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasBirthday()Z

    move-result v0

    return v0
.end method

.method public hasDayOfBirth()Z
    .locals 1

    .prologue
    .line 3699
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasDayOfBirth()Z

    move-result v0

    return v0
.end method

.method public hasExtraPersonData()Z
    .locals 1

    .prologue
    .line 3282
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasExtraPersonData()Z

    move-result v0

    return v0
.end method

.method public hasFriendId()Z
    .locals 1

    .prologue
    .line 3615
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasFriendId()Z

    move-result v0

    return v0
.end method

.method public hasFriendOf()Z
    .locals 1

    .prologue
    .line 3636
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasFriendOf()Z

    move-result v0

    return v0
.end method

.method public hasGender()Z
    .locals 1

    .prologue
    .line 3657
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasGender()Z

    move-result v0

    return v0
.end method

.method public hasIsMe()Z
    .locals 1

    .prologue
    .line 3558
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasIsMe()Z

    move-result v0

    return v0
.end method

.method public hasLastTimeContacted()Z
    .locals 1

    .prologue
    .line 3204
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasLastTimeContacted()Z

    move-result v0

    return v0
.end method

.method public hasModifySetFieldsOnly()Z
    .locals 1

    .prologue
    .line 3597
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasModifySetFieldsOnly()Z

    move-result v0

    return v0
.end method

.method public hasMonthOfBirth()Z
    .locals 1

    .prologue
    .line 3717
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasMonthOfBirth()Z

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 3144
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasNotes()Z
    .locals 1

    .prologue
    .line 3165
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasNotes()Z

    move-result v0

    return v0
.end method

.method public hasProfileUri()Z
    .locals 1

    .prologue
    .line 3576
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasProfileUri()Z

    move-result v0

    return v0
.end method

.method public hasSourceExternalId()Z
    .locals 1

    .prologue
    .line 3261
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasSourceExternalId()Z

    move-result v0

    return v0
.end method

.method public hasSourceName()Z
    .locals 1

    .prologue
    .line 3240
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasSourceName()Z

    move-result v0

    return v0
.end method

.method public hasStarred()Z
    .locals 1

    .prologue
    .line 3222
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasStarred()Z

    move-result v0

    return v0
.end method

.method public hasSyncAnchor()Z
    .locals 1

    .prologue
    .line 3123
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasSyncAnchor()Z

    move-result v0

    return v0
.end method

.method public hasSyncId()Z
    .locals 1

    .prologue
    .line 3102
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasSyncId()Z

    move-result v0

    return v0
.end method

.method public hasTimesContacted()Z
    .locals 1

    .prologue
    .line 3186
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasTimesContacted()Z

    move-result v0

    return v0
.end method

.method public hasYearOfBirth()Z
    .locals 1

    .prologue
    .line 3738
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasYearOfBirth()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 3007
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .locals 1

    .prologue
    .line 3021
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 3047
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setAnniversary(Ljava/lang/String;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3802
    if-nez p1, :cond_0

    .line 3803
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3805
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasAnniversary:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$12402(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z

    .line 3806
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->anniversary_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$12502(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/lang/String;)Ljava/lang/String;

    .line 3807
    return-object p0
.end method

.method public setBirthday(Ljava/lang/String;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3684
    if-nez p1, :cond_0

    .line 3685
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3687
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasBirthday:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$11602(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z

    .line 3688
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->birthday_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$11702(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/lang/String;)Ljava/lang/String;

    .line 3689
    return-object p0
.end method

.method public setContactMethods(ILcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;

    .prologue
    .line 3370
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->contactMethods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$7900(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3371
    return-object p0
.end method

.method public setContactMethods(ILcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;

    .prologue
    .line 3363
    if-nez p2, :cond_0

    .line 3364
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3366
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->contactMethods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$7900(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3367
    return-object p0
.end method

.method public setDayOfBirth(I)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 3705
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasDayOfBirth:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$11802(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z

    .line 3706
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->dayOfBirth_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$11902(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;I)I

    .line 3707
    return-object p0
.end method

.method public setExtraPersonData(Ljava/lang/String;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3288
    if-nez p1, :cond_0

    .line 3289
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3291
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasExtraPersonData:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$10202(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z

    .line 3292
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->extraPersonData_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$10302(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/lang/String;)Ljava/lang/String;

    .line 3293
    return-object p0
.end method

.method public setFriendId(Ljava/lang/String;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3621
    if-nez p1, :cond_0

    .line 3622
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3624
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasFriendId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$11002(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z

    .line 3625
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->friendId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$11102(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/lang/String;)Ljava/lang/String;

    .line 3626
    return-object p0
.end method

.method public setFriendOf(Ljava/lang/String;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3642
    if-nez p1, :cond_0

    .line 3643
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3645
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasFriendOf:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$11202(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z

    .line 3646
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->friendOf_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$11302(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/lang/String;)Ljava/lang/String;

    .line 3647
    return-object p0
.end method

.method public setGender(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Gender;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Gender;

    .prologue
    .line 3663
    if-nez p1, :cond_0

    .line 3664
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3666
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasGender:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$11402(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z

    .line 3667
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->gender_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Gender;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$11502(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Gender;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Gender;

    .line 3668
    return-object p0
.end method

.method public setGroupMemberships(ILcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupMembership$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupMembership$Builder;

    .prologue
    .line 3472
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->groupMemberships_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8100(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupMembership$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupMembership;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3473
    return-object p0
.end method

.method public setGroupMemberships(ILcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupMembership;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupMembership;

    .prologue
    .line 3465
    if-nez p2, :cond_0

    .line 3466
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3468
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->groupMemberships_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8100(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3469
    return-object p0
.end method

.method public setIsMe(Z)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 3564
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasIsMe:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$10402(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z

    .line 3565
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->isMe_:Z
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$10502(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z

    .line 3566
    return-object p0
.end method

.method public setLastTimeContacted(J)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 3210
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasLastTimeContacted:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$9402(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z

    .line 3211
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->lastTimeContacted_:J
    invoke-static {v0, p1, p2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$9502(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;J)J

    .line 3212
    return-object p0
.end method

.method public setModifySetFieldsOnly(Z)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 3603
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasModifySetFieldsOnly:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$10802(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z

    .line 3604
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->modifySetFieldsOnly_:Z
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$10902(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z

    .line 3605
    return-object p0
.end method

.method public setMonthOfBirth(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    .prologue
    .line 3723
    if-nez p1, :cond_0

    .line 3724
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3726
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasMonthOfBirth:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$12002(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z

    .line 3727
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->monthOfBirth_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$12102(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    .line 3728
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3150
    if-nez p1, :cond_0

    .line 3151
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3153
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8802(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z

    .line 3154
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8902(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/lang/String;)Ljava/lang/String;

    .line 3155
    return-object p0
.end method

.method public setNotes(Ljava/lang/String;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3171
    if-nez p1, :cond_0

    .line 3172
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3174
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasNotes:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$9002(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z

    .line 3175
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->notes_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$9102(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/lang/String;)Ljava/lang/String;

    .line 3176
    return-object p0
.end method

.method public setOrganizations(ILcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;

    .prologue
    .line 3421
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->organizations_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8000(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3422
    return-object p0
.end method

.method public setOrganizations(ILcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;

    .prologue
    .line 3414
    if-nez p2, :cond_0

    .line 3415
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3417
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->organizations_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8000(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3418
    return-object p0
.end method

.method public setPhones(ILcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Phone$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Phone$Builder;

    .prologue
    .line 3319
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->phones_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$7800(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Phone$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Phone;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3320
    return-object p0
.end method

.method public setPhones(ILcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Phone;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Phone;

    .prologue
    .line 3312
    if-nez p2, :cond_0

    .line 3313
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3315
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->phones_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$7800(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3316
    return-object p0
.end method

.method public setPhoto(ILcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;

    .prologue
    .line 3523
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->photo_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8200(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3524
    return-object p0
.end method

.method public setPhoto(ILcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;

    .prologue
    .line 3516
    if-nez p2, :cond_0

    .line 3517
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3519
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->photo_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8200(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3520
    return-object p0
.end method

.method public setProfileUri(Ljava/lang/String;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3582
    if-nez p1, :cond_0

    .line 3583
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3585
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasProfileUri:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$10602(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z

    .line 3586
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->profileUri_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$10702(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/lang/String;)Ljava/lang/String;

    .line 3587
    return-object p0
.end method

.method public setSourceExternalId(Ljava/lang/String;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3267
    if-nez p1, :cond_0

    .line 3268
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3270
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasSourceExternalId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$10002(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z

    .line 3271
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->sourceExternalId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$10102(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/lang/String;)Ljava/lang/String;

    .line 3272
    return-object p0
.end method

.method public setSourceName(Ljava/lang/String;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3246
    if-nez p1, :cond_0

    .line 3247
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3249
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasSourceName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$9802(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z

    .line 3250
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->sourceName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$9902(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/lang/String;)Ljava/lang/String;

    .line 3251
    return-object p0
.end method

.method public setStarred(Z)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 3228
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasStarred:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$9602(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z

    .line 3229
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->starred_:Z
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$9702(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z

    .line 3230
    return-object p0
.end method

.method public setSyncAnchor(Ljava/lang/String;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3129
    if-nez p1, :cond_0

    .line 3130
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3132
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasSyncAnchor:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8602(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z

    .line 3133
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->syncAnchor_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8702(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/lang/String;)Ljava/lang/String;

    .line 3134
    return-object p0
.end method

.method public setSyncId(Ljava/lang/String;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3108
    if-nez p1, :cond_0

    .line 3109
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3111
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasSyncId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8402(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z

    .line 3112
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->syncId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8502(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Ljava/lang/String;)Ljava/lang/String;

    .line 3113
    return-object p0
.end method

.method public setTags(ILjava/lang/String;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 3765
    if-nez p2, :cond_0

    .line 3766
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3768
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->tags_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$8300(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3769
    return-object p0
.end method

.method public setTimesContacted(I)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 3192
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasTimesContacted:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$9202(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z

    .line 3193
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->timesContacted_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$9302(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;I)I

    .line 3194
    return-object p0
.end method

.method public setYearOfBirth(I)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 3744
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->hasYearOfBirth:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$12202(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;Z)Z

    .line 3745
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->yearOfBirth_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->access$12302(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;I)I

    .line 3746
    return-object p0
.end method
