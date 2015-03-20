.class Lcom/motorola/messaging/conversation/Conversation$3;
.super Ljava/lang/Object;
.source "Conversation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/conversation/Conversation;->markAsRead(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/conversation/Conversation;

.field final synthetic val$dontMarkIfHasReadReports:Z

.field final synthetic val$threadId:J

.field final synthetic val$threadUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/conversation/Conversation;Landroid/net/Uri;ZJ)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/motorola/messaging/conversation/Conversation$3;->this$0:Lcom/motorola/messaging/conversation/Conversation;

    iput-object p2, p0, Lcom/motorola/messaging/conversation/Conversation$3;->val$threadUri:Landroid/net/Uri;

    iput-boolean p3, p0, Lcom/motorola/messaging/conversation/Conversation$3;->val$dontMarkIfHasReadReports:Z

    iput-wide p4, p0, Lcom/motorola/messaging/conversation/Conversation$3;->val$threadId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 281
    iget-object v0, p0, Lcom/motorola/messaging/conversation/Conversation$3;->val$threadUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 283
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 284
    .local v3, "values":Landroid/content/ContentValues;
    const-string v0, "seen"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 286
    iget-boolean v0, p0, Lcom/motorola/messaging/conversation/Conversation$3;->val$dontMarkIfHasReadReports:Z

    if-eqz v0, :cond_3

    .line 287
    iget-object v0, p0, Lcom/motorola/messaging/conversation/Conversation$3;->this$0:Lcom/motorola/messaging/conversation/Conversation;

    # getter for: Lcom/motorola/messaging/conversation/Conversation;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/motorola/messaging/conversation/Conversation;->access$000(Lcom/motorola/messaging/conversation/Conversation;)Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/motorola/messaging/conversation/Conversation$3;->val$threadId:J

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/util/MessageUtils;->queryReadReport(Landroid/content/Context;J)Landroid/database/Cursor;

    move-result-object v6

    .line 289
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 316
    .end local v3    # "values":Landroid/content/ContentValues;
    .end local v6    # "c":Landroid/database/Cursor;
    :goto_0
    return-void

    .line 294
    .restart local v3    # "values":Landroid/content/ContentValues;
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_1

    .line 301
    invoke-static {v6}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 298
    :cond_1
    :try_start_1
    const-string v0, "read"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    invoke-static {v6}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 307
    .end local v6    # "c":Landroid/database/Cursor;
    :goto_1
    iget-object v0, p0, Lcom/motorola/messaging/conversation/Conversation$3;->this$0:Lcom/motorola/messaging/conversation/Conversation;

    # getter for: Lcom/motorola/messaging/conversation/Conversation;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/motorola/messaging/conversation/Conversation;->access$000(Lcom/motorola/messaging/conversation/Conversation;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/conversation/Conversation$3;->this$0:Lcom/motorola/messaging/conversation/Conversation;

    # getter for: Lcom/motorola/messaging/conversation/Conversation;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/motorola/messaging/conversation/Conversation;->access$000(Lcom/motorola/messaging/conversation/Conversation;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/conversation/Conversation$3;->val$threadUri:Landroid/net/Uri;

    const-string v4, "(read=0 OR seen=0)"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/motorola/messaging/provider/SqliteManager;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/motorola/messaging/conversation/Conversation$3;->this$0:Lcom/motorola/messaging/conversation/Conversation;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/messaging/conversation/Conversation;->mHasUnreadMessages:Z
    invoke-static {v0, v1}, Lcom/motorola/messaging/conversation/Conversation;->access$102(Lcom/motorola/messaging/conversation/Conversation;Z)Z

    .line 312
    iget-object v0, p0, Lcom/motorola/messaging/conversation/Conversation$3;->this$0:Lcom/motorola/messaging/conversation/Conversation;

    # getter for: Lcom/motorola/messaging/conversation/Conversation;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/motorola/messaging/conversation/Conversation;->access$000(Lcom/motorola/messaging/conversation/Conversation;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.motorola.blur.conversations.THREAD_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 315
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_2
    iget-object v0, p0, Lcom/motorola/messaging/conversation/Conversation$3;->this$0:Lcom/motorola/messaging/conversation/Conversation;

    # getter for: Lcom/motorola/messaging/conversation/Conversation;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/motorola/messaging/conversation/Conversation;->access$000(Lcom/motorola/messaging/conversation/Conversation;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/messaging/util/MessagingNotification;->updateAllNotifications(Landroid/content/Context;)V

    goto :goto_0

    .line 301
    .restart local v3    # "values":Landroid/content/ContentValues;
    .restart local v6    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v0

    .line 304
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_3
    const-string v0, "read"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1
.end method
