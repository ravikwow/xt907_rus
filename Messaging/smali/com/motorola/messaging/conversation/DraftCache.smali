.class public Lcom/motorola/messaging/conversation/DraftCache;
.super Ljava/lang/Object;
.source "DraftCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/conversation/DraftCache$OnDraftChangedListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static final DRAFT_PROJECTION:[Ljava/lang/String;

.field private static final LOCAL_LOG:Z

.field private static sInstance:Lcom/motorola/messaging/conversation/DraftCache;


# instance fields
.field private final mChangeListeners:Lcom/motorola/messaging/util/WeakHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/messaging/util/WeakHashSet",
            "<",
            "Lcom/motorola/messaging/conversation/DraftCache$OnDraftChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDraftSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 37
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEBUG_ALL:Z

    sput-boolean v0, Lcom/motorola/messaging/conversation/DraftCache;->DEBUG:Z

    .line 38
    sget-boolean v0, Lcom/motorola/messaging/conversation/DraftCache;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/conversation/DraftCache;->LOCAL_LOG:Z

    .line 62
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/motorola/messaging/conversation/DraftCache;->DRAFT_PROJECTION:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 38
    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/messaging/conversation/DraftCache;->mDraftSet:Ljava/util/HashSet;

    .line 46
    new-instance v0, Lcom/motorola/messaging/util/WeakHashSet;

    invoke-direct {v0}, Lcom/motorola/messaging/util/WeakHashSet;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/conversation/DraftCache;->mChangeListeners:Lcom/motorola/messaging/util/WeakHashSet;

    .line 54
    sget-boolean v0, Lcom/motorola/messaging/conversation/DraftCache;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 55
    const-string v0, "DraftCache"

    const-string v1, "DraftCache.constructor"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_0
    iput-object p1, p0, Lcom/motorola/messaging/conversation/DraftCache;->mContext:Landroid/content/Context;

    .line 59
    invoke-virtual {p0}, Lcom/motorola/messaging/conversation/DraftCache;->refresh()V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/messaging/conversation/DraftCache;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/conversation/DraftCache;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/motorola/messaging/conversation/DraftCache;->rebuildCache()V

    return-void
.end method

.method public static getInstance()Lcom/motorola/messaging/conversation/DraftCache;
    .locals 1

    .prologue
    .line 204
    sget-object v0, Lcom/motorola/messaging/conversation/DraftCache;->sInstance:Lcom/motorola/messaging/conversation/DraftCache;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 197
    new-instance v0, Lcom/motorola/messaging/conversation/DraftCache;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/conversation/DraftCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/motorola/messaging/conversation/DraftCache;->sInstance:Lcom/motorola/messaging/conversation/DraftCache;

    .line 198
    return-void
.end method

.method private rebuildCache()V
    .locals 19

    .prologue
    .line 87
    sget-boolean v2, Lcom/motorola/messaging/conversation/DraftCache;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 88
    const-string v2, "DraftCache"

    const-string v3, "rebuildCache"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_0
    const/4 v15, 0x0

    .line 92
    .local v15, "oldDraftSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    monitor-enter p0

    .line 93
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/messaging/conversation/DraftCache;->mDraftSet:Ljava/util/HashSet;

    .line 94
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    new-instance v14, Ljava/util/HashSet;

    invoke-virtual {v15}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-direct {v14, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 98
    .local v14, "newDraftSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/conversation/DraftCache;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/messaging/conversation/DraftCache;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/motorola/messaging/provider/Telephony$MmsSms;->CONTENT_DRAFT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/motorola/messaging/conversation/DraftCache;->DRAFT_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 104
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_4

    .line 107
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 109
    :cond_1
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 110
    .local v17, "threadId":J
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 111
    sget-boolean v2, Lcom/motorola/messaging/conversation/DraftCache;->LOCAL_LOG:Z

    if-eqz v2, :cond_2

    .line 112
    const-string v2, "DraftCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rebuildCache: add tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-nez v2, :cond_1

    .line 117
    .end local v17    # "threadId":J
    :cond_3
    invoke-static {v10}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 121
    :cond_4
    monitor-enter p0

    .line 122
    :try_start_2
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/motorola/messaging/conversation/DraftCache;->mDraftSet:Ljava/util/HashSet;

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/messaging/conversation/DraftCache;->dump()V

    .line 128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/conversation/DraftCache;->mChangeListeners:Lcom/motorola/messaging/util/WeakHashSet;

    invoke-virtual {v2}, Lcom/motorola/messaging/util/WeakHashSet;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_5

    .line 129
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 148
    :goto_0
    return-void

    .line 94
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v14    # "newDraftSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 117
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v14    # "newDraftSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :catchall_1
    move-exception v2

    invoke-static {v10}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v2

    .line 134
    :cond_5
    :try_start_4
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9, v14}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 135
    .local v9, "added":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v9, v15}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 136
    new-instance v16, Ljava/util/HashSet;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 137
    .local v16, "removed":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/conversation/DraftCache;->mChangeListeners:Lcom/motorola/messaging/util/WeakHashSet;

    invoke-virtual {v2}, Lcom/motorola/messaging/util/WeakHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/motorola/messaging/conversation/DraftCache$OnDraftChangedListener;

    .line 140
    .local v13, "l":Lcom/motorola/messaging/conversation/DraftCache$OnDraftChangedListener;
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 141
    .restart local v17    # "threadId":J
    const/4 v2, 0x1

    move-wide/from16 v0, v17

    invoke-interface {v13, v0, v1, v2}, Lcom/motorola/messaging/conversation/DraftCache$OnDraftChangedListener;->onDraftChanged(JZ)V

    goto :goto_1

    .line 147
    .end local v9    # "added":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "l":Lcom/motorola/messaging/conversation/DraftCache$OnDraftChangedListener;
    .end local v16    # "removed":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v17    # "threadId":J
    :catchall_2
    move-exception v2

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v2

    .line 143
    .restart local v9    # "added":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v13    # "l":Lcom/motorola/messaging/conversation/DraftCache$OnDraftChangedListener;
    .restart local v16    # "removed":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_7
    :try_start_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 144
    .restart local v17    # "threadId":J
    const/4 v2, 0x0

    move-wide/from16 v0, v17

    invoke-interface {v13, v0, v1, v2}, Lcom/motorola/messaging/conversation/DraftCache$OnDraftChangedListener;->onDraftChanged(JZ)V

    goto :goto_2

    .line 147
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "l":Lcom/motorola/messaging/conversation/DraftCache$OnDraftChangedListener;
    .end local v17    # "threadId":J
    :cond_8
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addOnDraftChangedListener(Lcom/motorola/messaging/conversation/DraftCache$OnDraftChangedListener;)V
    .locals 3
    .param p1, "l"    # Lcom/motorola/messaging/conversation/DraftCache$OnDraftChangedListener;

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/motorola/messaging/conversation/DraftCache;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 188
    const-string v0, "DraftCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addOnDraftChangedListener - added "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/conversation/DraftCache;->mChangeListeners:Lcom/motorola/messaging/util/WeakHashSet;

    invoke-virtual {v2}, Lcom/motorola/messaging/util/WeakHashSet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/conversation/DraftCache;->mChangeListeners:Lcom/motorola/messaging/util/WeakHashSet;

    invoke-virtual {v0, p1}, Lcom/motorola/messaging/util/WeakHashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    monitor-exit p0

    return-void

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dump()V
    .locals 0

    .prologue
    .line 214
    return-void
.end method

.method public declared-synchronized hasDraft(J)Z
    .locals 2
    .param p1, "threadId"    # J

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/messaging/conversation/DraftCache;->mDraftSet:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 72
    sget-boolean v1, Lcom/motorola/messaging/conversation/DraftCache;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 73
    const-string v1, "DraftCache"

    const-string v2, "refresh"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    new-instance v0, Lcom/motorola/messaging/conversation/DraftCache$1;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/conversation/DraftCache$1;-><init>(Lcom/motorola/messaging/conversation/DraftCache;)V

    .line 81
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v1

    const-string v2, "refresh"

    invoke-virtual {v1, v0, v2}, Lcom/motorola/messaging/concurrent/TaskManager;->runLowPriorityTask(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public declared-synchronized setDraftState(JZ)V
    .locals 6
    .param p1, "threadId"    # J
    .param p3, "hasDraft"    # Z

    .prologue
    .line 155
    monitor-enter p0

    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-gtz v3, :cond_1

    .line 177
    :cond_0
    monitor-exit p0

    return-void

    .line 160
    :cond_1
    if-eqz p3, :cond_2

    .line 161
    :try_start_0
    iget-object v3, p0, Lcom/motorola/messaging/conversation/DraftCache;->mDraftSet:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 166
    .local v0, "changed":Z
    :goto_0
    sget-boolean v3, Lcom/motorola/messaging/conversation/DraftCache;->LOCAL_LOG:Z

    if-nez v3, :cond_3

    .line 172
    :goto_1
    if-eqz v0, :cond_0

    .line 173
    iget-object v3, p0, Lcom/motorola/messaging/conversation/DraftCache;->mChangeListeners:Lcom/motorola/messaging/util/WeakHashSet;

    invoke-virtual {v3}, Lcom/motorola/messaging/util/WeakHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/messaging/conversation/DraftCache$OnDraftChangedListener;

    .line 174
    .local v2, "l":Lcom/motorola/messaging/conversation/DraftCache$OnDraftChangedListener;
    invoke-interface {v2, p1, p2, p3}, Lcom/motorola/messaging/conversation/DraftCache$OnDraftChangedListener;->onDraftChanged(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 155
    .end local v0    # "changed":Z
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "l":Lcom/motorola/messaging/conversation/DraftCache$OnDraftChangedListener;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 163
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/motorola/messaging/conversation/DraftCache;->mDraftSet:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .restart local v0    # "changed":Z
    goto :goto_0

    .line 167
    :cond_3
    const-string v3, "DraftCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDraftState: tid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", changed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/motorola/messaging/conversation/DraftCache;->dump()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
