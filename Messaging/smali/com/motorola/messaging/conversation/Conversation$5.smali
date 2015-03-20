.class final Lcom/motorola/messaging/conversation/Conversation$5;
.super Ljava/lang/Object;
.source "Conversation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/conversation/Conversation;->removeObsoleteConversations(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 649
    iput-object p1, p0, Lcom/motorola/messaging/conversation/Conversation$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 652
    iget-object v0, p0, Lcom/motorola/messaging/conversation/Conversation$5;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/messaging/conversation/Conversation$5;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/motorola/messaging/provider/Telephony$Threads;->OBSOLETE_THREADS_URI:Landroid/net/Uri;

    invoke-static {v0, v1, v2, v5, v5}, Lcom/motorola/messaging/provider/SqliteManager;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 657
    iget-object v0, p0, Lcom/motorola/messaging/conversation/Conversation$5;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/messaging/conversation/Conversation$5;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    # getter for: Lcom/motorola/messaging/conversation/Conversation;->sAllThreadsUri:Landroid/net/Uri;
    invoke-static {}, Lcom/motorola/messaging/conversation/Conversation;->access$400()Landroid/net/Uri;

    move-result-object v2

    # getter for: Lcom/motorola/messaging/conversation/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/motorola/messaging/conversation/Conversation;->access$500()[Ljava/lang/String;

    move-result-object v3

    const-string v4, "recipient_ids=\'\' or recipient_ids ISNULL"

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 660
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 662
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 666
    :cond_0
    sget-object v0, Lcom/motorola/messaging/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 668
    .local v8, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/motorola/messaging/conversation/Conversation$5;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/messaging/conversation/Conversation$5;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v8, v2, v3}, Lcom/motorola/messaging/provider/SqliteManager;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 671
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 674
    .end local v8    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 675
    const/4 v7, 0x0

    .line 678
    :cond_2
    return-void

    .line 674
    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 675
    const/4 v7, 0x0

    throw v0
.end method
