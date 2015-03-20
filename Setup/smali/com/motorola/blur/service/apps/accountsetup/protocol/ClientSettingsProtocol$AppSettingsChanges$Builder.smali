.class public final Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ClientSettingsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4096
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$16300(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4091
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$16400()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;
    .locals 1

    .prologue
    .line 4091
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->create()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4142
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4143
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 4146
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;
    .locals 3

    .prologue
    .line 4099
    new-instance v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;-><init>()V

    .line 4100
    .local v0, "builder":Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;-><init>(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    .line 4101
    return-object v0
.end method


# virtual methods
.method public addAdds(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;

    .prologue
    .line 4204
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->access$16600(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4205
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->adds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->access$16602(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;Ljava/util/List;)Ljava/util/List;

    .line 4207
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->access$16600(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->build()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4208
    return-object p0
.end method

.method public addAdds(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    .prologue
    .line 4194
    if-nez p1, :cond_0

    .line 4195
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4197
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->access$16600(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4198
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->adds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->access$16602(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;Ljava/util/List;)Ljava/util/List;

    .line 4200
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->access$16600(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4201
    return-object p0
.end method

.method public addAllAdds(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;",
            ">;)",
            "Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;"
        }
    .end annotation

    .prologue
    .line 4212
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->access$16600(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4213
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->adds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->access$16602(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;Ljava/util/List;)Ljava/util/List;

    .line 4215
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->access$16600(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4216
    return-object p0
.end method

.method public addAllDeletions(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;",
            ">;)",
            "Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;"
        }
    .end annotation

    .prologue
    .line 4314
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->access$16800(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4315
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->deletions_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->access$16802(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;Ljava/util/List;)Ljava/util/List;

    .line 4317
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->access$16800(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4318
    return-object p0
.end method

.method public addAllMods(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;",
            ">;)",
            "Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;"
        }
    .end annotation

    .prologue
    .line 4263
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->access$16700(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4264
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->mods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->access$16702(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;Ljava/util/List;)Ljava/util/List;

    .line 4266
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->access$16700(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4267
    return-object p0
.end method

.method public addDeletions(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;

    .prologue
    .line 4306
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->access$16800(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4307
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->deletions_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->access$16802(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;Ljava/util/List;)Ljava/util/List;

    .line 4309
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->access$16800(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->build()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4310
    return-object p0
.end method

.method public addDeletions(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    .prologue
    .line 4296
    if-nez p1, :cond_0

    .line 4297
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4299
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->access$16800(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4300
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->deletions_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->access$16802(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;Ljava/util/List;)Ljava/util/List;

    .line 4302
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->access$16800(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4303
    return-object p0
.end method

.method public addMods(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;

    .prologue
    .line 4255
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->access$16700(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4256
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->mods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->access$16702(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;Ljava/util/List;)Ljava/util/List;

    .line 4258
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->access$16700(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->build()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4259
    return-object p0
.end method

.method public addMods(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    .prologue
    .line 4245
    if-nez p1, :cond_0

    .line 4246
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4248
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->access$16700(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4249
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->mods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->access$16702(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;Ljava/util/List;)Ljava/util/List;

    .line 4251
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->access$16700(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4252
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4091
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->build()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4091
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->build()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;
    .locals 1

    .prologue
    .line 4134
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4135
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 4137
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4091
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4091
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;
    .locals 3

    .prologue
    .line 4150
    iget-object v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    if-nez v1, :cond_0

    .line 4151
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4154
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->adds_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->access$16600(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 4155
    iget-object v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->adds_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->access$16600(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->adds_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->access$16602(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;Ljava/util/List;)Ljava/util/List;

    .line 4158
    :cond_1
    iget-object v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->mods_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->access$16700(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_2

    .line 4159
    iget-object v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->mods_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->access$16700(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->mods_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->access$16702(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;Ljava/util/List;)Ljava/util/List;

    .line 4162
    :cond_2
    iget-object v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->deletions_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->access$16800(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_3

    .line 4163
    iget-object v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->deletions_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->access$16800(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->deletions_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->access$16802(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;Ljava/util/List;)Ljava/util/List;

    .line 4166
    :cond_3
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    .line 4167
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    .line 4168
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 4091
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->clear()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4091
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->clear()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4091
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->clear()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;
    .locals 2

    .prologue
    .line 4109
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    if-nez v0, :cond_0

    .line 4110
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4113
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;-><init>(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    .line 4114
    return-object p0
.end method

.method public clearAdds()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;
    .locals 2

    .prologue
    .line 4219
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->adds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->access$16602(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;Ljava/util/List;)Ljava/util/List;

    .line 4220
    return-object p0
.end method

.method public clearDeletions()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;
    .locals 2

    .prologue
    .line 4321
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->deletions_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->access$16802(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;Ljava/util/List;)Ljava/util/List;

    .line 4322
    return-object p0
.end method

.method public clearMods()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;
    .locals 2

    .prologue
    .line 4270
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->mods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->access$16702(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;Ljava/util/List;)Ljava/util/List;

    .line 4271
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 4091
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 4091
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 4091
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4091
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4091
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;
    .locals 2

    .prologue
    .line 4118
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->create()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;

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
    .line 4091
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAdds(I)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 4180
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->getAdds(I)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    move-result-object v0

    return-object v0
.end method

.method public getAddsCount()I
    .locals 1

    .prologue
    .line 4177
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->getAddsCount()I

    move-result v0

    return v0
.end method

.method public getAddsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4174
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->access$16600(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4091
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4091
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;
    .locals 1

    .prologue
    .line 4127
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->getDefaultInstance()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    move-result-object v0

    return-object v0
.end method

.method public getDeletions(I)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 4282
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->getDeletions(I)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    move-result-object v0

    return-object v0
.end method

.method public getDeletionsCount()I
    .locals 1

    .prologue
    .line 4279
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->getDeletionsCount()I

    move-result v0

    return v0
.end method

.method public getDeletionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4276
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->access$16800(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4123
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMods(I)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 4231
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->getMods(I)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    move-result-object v0

    return-object v0
.end method

.method public getModsCount()I
    .locals 1

    .prologue
    .line 4228
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->getModsCount()I

    move-result v0

    return v0
.end method

.method public getModsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4225
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->access$16700(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 4091
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;
    .locals 1

    .prologue
    .line 4105
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 4131
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setAdds(ILcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;

    .prologue
    .line 4190
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->access$16600(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->build()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4191
    return-object p0
.end method

.method public setAdds(ILcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    .prologue
    .line 4183
    if-nez p2, :cond_0

    .line 4184
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4186
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->access$16600(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4187
    return-object p0
.end method

.method public setDeletions(ILcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;

    .prologue
    .line 4292
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->access$16800(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->build()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4293
    return-object p0
.end method

.method public setDeletions(ILcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    .prologue
    .line 4285
    if-nez p2, :cond_0

    .line 4286
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4288
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->access$16800(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4289
    return-object p0
.end method

.method public setMods(ILcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;

    .prologue
    .line 4241
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->access$16700(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;->build()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4242
    return-object p0
.end method

.method public setMods(ILcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    .prologue
    .line 4234
    if-nez p2, :cond_0

    .line 4235
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4237
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->access$16700(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4238
    return-object p0
.end method
