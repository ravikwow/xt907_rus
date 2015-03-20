.class final Lcom/motorola/messaging/conversation/Conversation$8;
.super Ljava/lang/Object;
.source "Conversation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/conversation/Conversation;->cacheFromCursor(Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$copiedCursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Landroid/database/Cursor;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1155
    iput-object p1, p0, Lcom/motorola/messaging/conversation/Conversation$8;->val$copiedCursor:Landroid/database/Cursor;

    iput-object p2, p0, Lcom/motorola/messaging/conversation/Conversation$8;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1158
    :try_start_0
    iget-object v5, p0, Lcom/motorola/messaging/conversation/Conversation$8;->val$copiedCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1162
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1165
    .local v4, "threadsOnDisk":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_0
    iget-object v5, p0, Lcom/motorola/messaging/conversation/Conversation$8;->val$copiedCursor:Landroid/database/Cursor;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1166
    .local v2, "threadId":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1170
    invoke-static {}, Lcom/motorola/messaging/conversation/Conversation$Cache;->getInstance()Lcom/motorola/messaging/conversation/Conversation$Cache;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1171
    :try_start_1
    invoke-static {v2, v3}, Lcom/motorola/messaging/conversation/Conversation$Cache;->get(J)Lcom/motorola/messaging/conversation/Conversation;

    move-result-object v0

    .line 1172
    .local v0, "conv":Lcom/motorola/messaging/conversation/Conversation;
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1174
    if-nez v0, :cond_2

    .line 1177
    :try_start_2
    new-instance v0, Lcom/motorola/messaging/conversation/Conversation;

    .end local v0    # "conv":Lcom/motorola/messaging/conversation/Conversation;
    iget-object v5, p0, Lcom/motorola/messaging/conversation/Conversation$8;->val$context:Landroid/content/Context;

    iget-object v6, p0, Lcom/motorola/messaging/conversation/Conversation$8;->val$copiedCursor:Landroid/database/Cursor;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/motorola/messaging/conversation/Conversation;-><init>(Landroid/content/Context;Landroid/database/Cursor;ZLcom/motorola/messaging/conversation/Conversation$1;)V

    .line 1178
    .restart local v0    # "conv":Lcom/motorola/messaging/conversation/Conversation;
    invoke-static {}, Lcom/motorola/messaging/conversation/Conversation$Cache;->getInstance()Lcom/motorola/messaging/conversation/Conversation$Cache;

    move-result-object v6

    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1180
    :try_start_3
    invoke-static {v0}, Lcom/motorola/messaging/conversation/Conversation$Cache;->put(Lcom/motorola/messaging/conversation/Conversation;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1184
    :goto_0
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1190
    :goto_1
    :try_start_5
    iget-object v5, p0, Lcom/motorola/messaging/conversation/Conversation$8;->val$copiedCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1193
    invoke-static {v4}, Lcom/motorola/messaging/conversation/Conversation$Cache;->keepOnly(Ljava/util/Set;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1196
    .end local v0    # "conv":Lcom/motorola/messaging/conversation/Conversation;
    .end local v2    # "threadId":J
    .end local v4    # "threadsOnDisk":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_1
    iget-object v5, p0, Lcom/motorola/messaging/conversation/Conversation$8;->val$copiedCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1198
    return-void

    .line 1172
    .restart local v2    # "threadId":J
    .restart local v4    # "threadsOnDisk":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v5

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1196
    .end local v2    # "threadId":J
    .end local v4    # "threadsOnDisk":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :catchall_1
    move-exception v5

    iget-object v6, p0, Lcom/motorola/messaging/conversation/Conversation$8;->val$copiedCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v5

    .line 1181
    .restart local v0    # "conv":Lcom/motorola/messaging/conversation/Conversation;
    .restart local v2    # "threadId":J
    .restart local v4    # "threadsOnDisk":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :catch_0
    move-exception v1

    .line 1182
    .local v1, "e":Ljava/lang/IllegalStateException;
    :try_start_8
    const-string v5, "Conversation"

    const-string v7, "Tried to add duplicate Conversation to Cache"

    invoke-static {v5, v7}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1184
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catchall_2
    move-exception v5

    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v5

    .line 1188
    :cond_2
    iget-object v5, p0, Lcom/motorola/messaging/conversation/Conversation$8;->val$copiedCursor:Landroid/database/Cursor;

    # invokes: Lcom/motorola/messaging/conversation/Conversation;->fillFromCursor(Lcom/motorola/messaging/conversation/Conversation;Landroid/database/Cursor;)V
    invoke-static {v0, v5}, Lcom/motorola/messaging/conversation/Conversation;->access$1300(Lcom/motorola/messaging/conversation/Conversation;Landroid/database/Cursor;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_1
.end method
