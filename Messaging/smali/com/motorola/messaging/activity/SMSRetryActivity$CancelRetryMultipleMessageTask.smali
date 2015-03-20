.class Lcom/motorola/messaging/activity/SMSRetryActivity$CancelRetryMultipleMessageTask;
.super Ljava/lang/Object;
.source "SMSRetryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/SMSRetryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CancelRetryMultipleMessageTask"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInternalMessageUriList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 364
    .local p1, "messageUriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iput-object p1, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$CancelRetryMultipleMessageTask;->mInternalMessageUriList:Ljava/util/List;

    .line 366
    iput-object p2, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$CancelRetryMultipleMessageTask;->mContext:Landroid/content/Context;

    .line 367
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 370
    new-instance v8, Lcom/motorola/messaging/transaction/PendingData;

    invoke-direct {v8}, Lcom/motorola/messaging/transaction/PendingData;-><init>()V

    .line 372
    .local v8, "data":Lcom/motorola/messaging/transaction/PendingData;
    iget-object v0, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$CancelRetryMultipleMessageTask;->mInternalMessageUriList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 373
    .local v2, "messageUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$CancelRetryMultipleMessageTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$CancelRetryMultipleMessageTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/motorola/messaging/transaction/MOSmsManager;->SMS_RETRY_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 375
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 377
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    invoke-static {v2, v8}, Lcom/motorola/messaging/transaction/MOSmsManager;->retrievePendingData(Landroid/net/Uri;Lcom/motorola/messaging/transaction/PendingData;)V

    .line 379
    sget-object v0, Lcom/motorola/messaging/transaction/MOSmsManager;->MESSAGE_PENDING:Landroid/net/Uri;

    iget v1, v8, Lcom/motorola/messaging/transaction/PendingData;->pendingId:I

    int-to-long v5, v1

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 381
    .local v10, "retryMsgUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$CancelRetryMultipleMessageTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/messaging/activity/SMSRetryActivity$CancelRetryMultipleMessageTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v1, v10, v3, v5}, Lcom/motorola/messaging/provider/SqliteManager;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    .end local v10    # "retryMsgUri":Landroid/net/Uri;
    :cond_1
    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v0

    .line 389
    .end local v2    # "messageUri":Landroid/net/Uri;
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_2
    return-void
.end method
