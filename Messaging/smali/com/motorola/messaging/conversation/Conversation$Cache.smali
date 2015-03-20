.class Lcom/motorola/messaging/conversation/Conversation$Cache;
.super Ljava/lang/Object;
.source "Conversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/conversation/Conversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation


# static fields
.field private static sInstance:Lcom/motorola/messaging/conversation/Conversation$Cache;


# instance fields
.field private final mCache:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/motorola/messaging/conversation/Conversation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 954
    new-instance v0, Lcom/motorola/messaging/conversation/Conversation$Cache;

    invoke-direct {v0}, Lcom/motorola/messaging/conversation/Conversation$Cache;-><init>()V

    sput-object v0, Lcom/motorola/messaging/conversation/Conversation$Cache;->sInstance:Lcom/motorola/messaging/conversation/Conversation$Cache;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 957
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 958
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/messaging/conversation/Conversation$Cache;->mCache:Ljava/util/HashSet;

    .line 959
    return-void
.end method

.method static synthetic access$1000()Lcom/motorola/messaging/conversation/Conversation$Cache;
    .locals 1

    .prologue
    .line 953
    sget-object v0, Lcom/motorola/messaging/conversation/Conversation$Cache;->sInstance:Lcom/motorola/messaging/conversation/Conversation$Cache;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/motorola/messaging/conversation/Conversation$Cache;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/conversation/Conversation$Cache;

    .prologue
    .line 953
    iget-object v0, p0, Lcom/motorola/messaging/conversation/Conversation$Cache;->mCache:Ljava/util/HashSet;

    return-object v0
.end method

.method static changeRecipients(Lcom/motorola/messaging/conversation/Conversation;Lcom/motorola/messaging/contact/ContactList;)V
    .locals 5
    .param p0, "conv"    # Lcom/motorola/messaging/conversation/Conversation;
    .param p1, "recipients"    # Lcom/motorola/messaging/contact/ContactList;

    .prologue
    .line 989
    # getter for: Lcom/motorola/messaging/conversation/Conversation;->mRecipients:Lcom/motorola/messaging/contact/ContactList;
    invoke-static {p0}, Lcom/motorola/messaging/conversation/Conversation;->access$900(Lcom/motorola/messaging/conversation/Conversation;)Lcom/motorola/messaging/contact/ContactList;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 990
    invoke-static {}, Lcom/motorola/messaging/conversation/Conversation$Cache;->dumpCache()V

    .line 991
    sget-object v2, Lcom/motorola/messaging/conversation/Conversation$Cache;->sInstance:Lcom/motorola/messaging/conversation/Conversation$Cache;

    monitor-enter v2

    .line 992
    :try_start_0
    # getter for: Lcom/motorola/messaging/conversation/Conversation;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/conversation/Conversation;->access$700()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 993
    const-string v1, "Conversation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Changing recipients of conversation with hashcode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/motorola/messaging/conversation/Conversation;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    const-string v1, "Conversation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Contains before: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/motorola/messaging/conversation/Conversation$Cache;->sInstance:Lcom/motorola/messaging/conversation/Conversation$Cache;

    iget-object v4, v4, Lcom/motorola/messaging/conversation/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v4, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    :cond_0
    sget-object v1, Lcom/motorola/messaging/conversation/Conversation$Cache;->sInstance:Lcom/motorola/messaging/conversation/Conversation$Cache;

    iget-object v1, v1, Lcom/motorola/messaging/conversation/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 997
    .local v0, "wasCached":Z
    # setter for: Lcom/motorola/messaging/conversation/Conversation;->mRecipients:Lcom/motorola/messaging/contact/ContactList;
    invoke-static {p0, p1}, Lcom/motorola/messaging/conversation/Conversation;->access$902(Lcom/motorola/messaging/conversation/Conversation;Lcom/motorola/messaging/contact/ContactList;)Lcom/motorola/messaging/contact/ContactList;

    .line 998
    if-eqz v0, :cond_1

    .line 999
    sget-object v1, Lcom/motorola/messaging/conversation/Conversation$Cache;->sInstance:Lcom/motorola/messaging/conversation/Conversation$Cache;

    iget-object v1, v1, Lcom/motorola/messaging/conversation/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1001
    :cond_1
    # getter for: Lcom/motorola/messaging/conversation/Conversation;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/conversation/Conversation;->access$700()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1002
    const-string v1, "Conversation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Changed recipients of conversation new hashcode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/motorola/messaging/conversation/Conversation;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    const-string v1, "Conversation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Contains after: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/motorola/messaging/conversation/Conversation$Cache;->sInstance:Lcom/motorola/messaging/conversation/Conversation$Cache;

    iget-object v4, v4, Lcom/motorola/messaging/conversation/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v4, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1006
    invoke-static {}, Lcom/motorola/messaging/conversation/Conversation$Cache;->dumpCache()V

    .line 1010
    .end local v0    # "wasCached":Z
    :goto_0
    return-void

    .line 1005
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1008
    :cond_3
    # setter for: Lcom/motorola/messaging/conversation/Conversation;->mRecipients:Lcom/motorola/messaging/contact/ContactList;
    invoke-static {p0, p1}, Lcom/motorola/messaging/conversation/Conversation;->access$902(Lcom/motorola/messaging/conversation/Conversation;Lcom/motorola/messaging/contact/ContactList;)Lcom/motorola/messaging/contact/ContactList;

    goto :goto_0
.end method

.method static dumpCache()V
    .locals 0

    .prologue
    .line 1096
    return-void
.end method

.method static get(J)Lcom/motorola/messaging/conversation/Conversation;
    .locals 6
    .param p0, "threadId"    # J

    .prologue
    .line 966
    sget-object v3, Lcom/motorola/messaging/conversation/Conversation$Cache;->sInstance:Lcom/motorola/messaging/conversation/Conversation$Cache;

    monitor-enter v3

    .line 967
    :try_start_0
    # getter for: Lcom/motorola/messaging/conversation/Conversation;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/conversation/Conversation;->access$700()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 968
    const-string v2, "Conversation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Conversation get with threadId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    :cond_0
    invoke-static {}, Lcom/motorola/messaging/conversation/Conversation$Cache;->dumpCache()V

    .line 971
    sget-object v2, Lcom/motorola/messaging/conversation/Conversation$Cache;->sInstance:Lcom/motorola/messaging/conversation/Conversation$Cache;

    iget-object v2, v2, Lcom/motorola/messaging/conversation/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/conversation/Conversation;

    .line 972
    .local v0, "c":Lcom/motorola/messaging/conversation/Conversation;
    # getter for: Lcom/motorola/messaging/conversation/Conversation;->mThreadId:J
    invoke-static {v0}, Lcom/motorola/messaging/conversation/Conversation;->access$800(Lcom/motorola/messaging/conversation/Conversation;)J

    move-result-wide v4

    cmp-long v2, v4, p0

    if-nez v2, :cond_1

    .line 973
    monitor-exit v3

    .line 977
    .end local v0    # "c":Lcom/motorola/messaging/conversation/Conversation;
    :goto_0
    return-object v0

    .line 976
    :cond_2
    monitor-exit v3

    .line 977
    const/4 v0, 0x0

    goto :goto_0

    .line 976
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static get(Lcom/motorola/messaging/contact/ContactList;)Lcom/motorola/messaging/conversation/Conversation;
    .locals 6
    .param p0, "list"    # Lcom/motorola/messaging/contact/ContactList;

    .prologue
    .line 1017
    sget-object v3, Lcom/motorola/messaging/conversation/Conversation$Cache;->sInstance:Lcom/motorola/messaging/conversation/Conversation$Cache;

    monitor-enter v3

    .line 1018
    :try_start_0
    # getter for: Lcom/motorola/messaging/conversation/Conversation;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/conversation/Conversation;->access$700()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1019
    const-string v2, "Conversation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Conversation get with ContactList: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    :cond_0
    invoke-static {}, Lcom/motorola/messaging/conversation/Conversation$Cache;->dumpCache()V

    .line 1022
    sget-object v2, Lcom/motorola/messaging/conversation/Conversation$Cache;->sInstance:Lcom/motorola/messaging/conversation/Conversation$Cache;

    iget-object v2, v2, Lcom/motorola/messaging/conversation/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/conversation/Conversation;

    .line 1023
    .local v0, "c":Lcom/motorola/messaging/conversation/Conversation;
    # getter for: Lcom/motorola/messaging/conversation/Conversation;->mRecipients:Lcom/motorola/messaging/contact/ContactList;
    invoke-static {v0}, Lcom/motorola/messaging/conversation/Conversation;->access$900(Lcom/motorola/messaging/conversation/Conversation;)Lcom/motorola/messaging/contact/ContactList;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/motorola/messaging/contact/ContactList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1024
    monitor-exit v3

    .line 1028
    .end local v0    # "c":Lcom/motorola/messaging/conversation/Conversation;
    :goto_0
    return-object v0

    .line 1027
    :cond_2
    monitor-exit v3

    .line 1028
    const/4 v0, 0x0

    goto :goto_0

    .line 1027
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static get([Ljava/lang/String;)Lcom/motorola/messaging/conversation/Conversation;
    .locals 5
    .param p0, "recipients"    # [Ljava/lang/String;

    .prologue
    .line 1032
    sget-object v3, Lcom/motorola/messaging/conversation/Conversation$Cache;->sInstance:Lcom/motorola/messaging/conversation/Conversation$Cache;

    monitor-enter v3

    .line 1033
    :try_start_0
    # getter for: Lcom/motorola/messaging/conversation/Conversation;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/conversation/Conversation;->access$700()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1034
    const-string v2, "Conversation"

    const-string v4, "Conversation get with recipients string[]"

    invoke-static {v2, v4}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    :cond_0
    invoke-static {}, Lcom/motorola/messaging/conversation/Conversation$Cache;->dumpCache()V

    .line 1037
    sget-object v2, Lcom/motorola/messaging/conversation/Conversation$Cache;->sInstance:Lcom/motorola/messaging/conversation/Conversation$Cache;

    iget-object v2, v2, Lcom/motorola/messaging/conversation/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/conversation/Conversation;

    .line 1038
    .local v0, "c":Lcom/motorola/messaging/conversation/Conversation;
    # getter for: Lcom/motorola/messaging/conversation/Conversation;->mRecipients:Lcom/motorola/messaging/contact/ContactList;
    invoke-static {v0}, Lcom/motorola/messaging/conversation/Conversation;->access$900(Lcom/motorola/messaging/conversation/Conversation;)Lcom/motorola/messaging/contact/ContactList;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/motorola/messaging/contact/ContactList;->matches([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1039
    monitor-exit v3

    .line 1043
    .end local v0    # "c":Lcom/motorola/messaging/conversation/Conversation;
    :goto_0
    return-object v0

    .line 1042
    :cond_2
    monitor-exit v3

    .line 1043
    const/4 v0, 0x0

    goto :goto_0

    .line 1042
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static getInstance()Lcom/motorola/messaging/conversation/Conversation$Cache;
    .locals 1

    .prologue
    .line 955
    sget-object v0, Lcom/motorola/messaging/conversation/Conversation$Cache;->sInstance:Lcom/motorola/messaging/conversation/Conversation$Cache;

    return-object v0
.end method

.method static keepOnly(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1103
    .local p0, "threads":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    sget-object v3, Lcom/motorola/messaging/conversation/Conversation$Cache;->sInstance:Lcom/motorola/messaging/conversation/Conversation$Cache;

    monitor-enter v3

    .line 1104
    :try_start_0
    sget-object v2, Lcom/motorola/messaging/conversation/Conversation$Cache;->sInstance:Lcom/motorola/messaging/conversation/Conversation$Cache;

    iget-object v2, v2, Lcom/motorola/messaging/conversation/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1105
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/motorola/messaging/conversation/Conversation;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1106
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/conversation/Conversation;

    .line 1107
    .local v0, "c":Lcom/motorola/messaging/conversation/Conversation;
    # getter for: Lcom/motorola/messaging/conversation/Conversation;->mThreadId:J
    invoke-static {v0}, Lcom/motorola/messaging/conversation/Conversation;->access$800(Lcom/motorola/messaging/conversation/Conversation;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1108
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1111
    .end local v0    # "c":Lcom/motorola/messaging/conversation/Conversation;
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/motorola/messaging/conversation/Conversation;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/motorola/messaging/conversation/Conversation;>;"
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1112
    return-void
.end method

.method static put(Lcom/motorola/messaging/conversation/Conversation;)V
    .locals 5
    .param p0, "c"    # Lcom/motorola/messaging/conversation/Conversation;

    .prologue
    .line 1052
    sget-object v1, Lcom/motorola/messaging/conversation/Conversation$Cache;->sInstance:Lcom/motorola/messaging/conversation/Conversation$Cache;

    monitor-enter v1

    .line 1055
    :try_start_0
    # getter for: Lcom/motorola/messaging/conversation/Conversation;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/conversation/Conversation;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1056
    const-string v0, "Conversation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Conversation c: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " put with threadid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/motorola/messaging/conversation/Conversation;->mThreadId:J
    invoke-static {p0}, Lcom/motorola/messaging/conversation/Conversation;->access$800(Lcom/motorola/messaging/conversation/Conversation;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " c.hash: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/motorola/messaging/conversation/Conversation;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    :cond_0
    invoke-static {}, Lcom/motorola/messaging/conversation/Conversation$Cache;->dumpCache()V

    .line 1061
    sget-object v0, Lcom/motorola/messaging/conversation/Conversation$Cache;->sInstance:Lcom/motorola/messaging/conversation/Conversation$Cache;

    iget-object v0, v0, Lcom/motorola/messaging/conversation/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1062
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cache already contains "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " threadId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/motorola/messaging/conversation/Conversation;->mThreadId:J
    invoke-static {p0}, Lcom/motorola/messaging/conversation/Conversation;->access$800(Lcom/motorola/messaging/conversation/Conversation;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1066
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1065
    :cond_1
    :try_start_1
    sget-object v0, Lcom/motorola/messaging/conversation/Conversation$Cache;->sInstance:Lcom/motorola/messaging/conversation/Conversation$Cache;

    iget-object v0, v0, Lcom/motorola/messaging/conversation/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1066
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1067
    return-void
.end method

.method static remove(J)Lcom/motorola/messaging/conversation/Conversation;
    .locals 6
    .param p0, "threadId"    # J

    .prologue
    .line 1070
    # getter for: Lcom/motorola/messaging/conversation/Conversation;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/conversation/Conversation;->access$700()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1071
    const-string v2, "Conversation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove threadid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    :cond_0
    invoke-static {}, Lcom/motorola/messaging/conversation/Conversation$Cache;->dumpCache()V

    .line 1074
    sget-object v3, Lcom/motorola/messaging/conversation/Conversation$Cache;->sInstance:Lcom/motorola/messaging/conversation/Conversation$Cache;

    monitor-enter v3

    .line 1075
    :try_start_0
    sget-object v2, Lcom/motorola/messaging/conversation/Conversation$Cache;->sInstance:Lcom/motorola/messaging/conversation/Conversation$Cache;

    iget-object v2, v2, Lcom/motorola/messaging/conversation/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/conversation/Conversation;

    .line 1076
    .local v0, "c":Lcom/motorola/messaging/conversation/Conversation;
    # getter for: Lcom/motorola/messaging/conversation/Conversation;->mThreadId:J
    invoke-static {v0}, Lcom/motorola/messaging/conversation/Conversation;->access$800(Lcom/motorola/messaging/conversation/Conversation;)J

    move-result-wide v4

    cmp-long v2, v4, p0

    if-nez v2, :cond_1

    .line 1077
    sget-object v2, Lcom/motorola/messaging/conversation/Conversation$Cache;->sInstance:Lcom/motorola/messaging/conversation/Conversation$Cache;

    iget-object v2, v2, Lcom/motorola/messaging/conversation/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1078
    monitor-exit v3

    .line 1083
    .end local v0    # "c":Lcom/motorola/messaging/conversation/Conversation;
    :goto_0
    return-object v0

    .line 1081
    :cond_2
    monitor-exit v3

    .line 1083
    const/4 v0, 0x0

    goto :goto_0

    .line 1081
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static removeAll(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1119
    .local p0, "threads":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    sget-object v3, Lcom/motorola/messaging/conversation/Conversation$Cache;->sInstance:Lcom/motorola/messaging/conversation/Conversation$Cache;

    monitor-enter v3

    .line 1120
    if-nez p0, :cond_1

    .line 1121
    :try_start_0
    sget-object v2, Lcom/motorola/messaging/conversation/Conversation$Cache;->sInstance:Lcom/motorola/messaging/conversation/Conversation$Cache;

    iget-object v2, v2, Lcom/motorola/messaging/conversation/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 1131
    :cond_0
    monitor-exit v3

    .line 1132
    return-void

    .line 1122
    :cond_1
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1123
    sget-object v2, Lcom/motorola/messaging/conversation/Conversation$Cache;->sInstance:Lcom/motorola/messaging/conversation/Conversation$Cache;

    iget-object v2, v2, Lcom/motorola/messaging/conversation/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1124
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/motorola/messaging/conversation/Conversation;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1125
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/conversation/Conversation;

    .line 1126
    .local v0, "c":Lcom/motorola/messaging/conversation/Conversation;
    # getter for: Lcom/motorola/messaging/conversation/Conversation;->mThreadId:J
    invoke-static {v0}, Lcom/motorola/messaging/conversation/Conversation;->access$800(Lcom/motorola/messaging/conversation/Conversation;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1127
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1131
    .end local v0    # "c":Lcom/motorola/messaging/conversation/Conversation;
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/motorola/messaging/conversation/Conversation;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
