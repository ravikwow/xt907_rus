.class Lcom/android/mms/ui/SMSRetryActivity$CancelRetryMultipleMessageTask;
.super Ljava/lang/Object;
.source "SMSRetryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SMSRetryActivity;
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
    .line 366
    .local p1, "messageUriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 367
    iput-object p1, p0, Lcom/android/mms/ui/SMSRetryActivity$CancelRetryMultipleMessageTask;->mInternalMessageUriList:Ljava/util/List;

    .line 368
    iput-object p2, p0, Lcom/android/mms/ui/SMSRetryActivity$CancelRetryMultipleMessageTask;->mContext:Landroid/content/Context;

    .line 369
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 372
    new-instance v8, Lcom/android/mms/transaction/PendingData;

    invoke-direct {v8}, Lcom/android/mms/transaction/PendingData;-><init>()V

    .line 374
    .local v8, "data":Lcom/android/mms/transaction/PendingData;
    iget-object v0, p0, Lcom/android/mms/ui/SMSRetryActivity$CancelRetryMultipleMessageTask;->mInternalMessageUriList:Ljava/util/List;

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

    .line 375
    .local v2, "messageUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/SMSRetryActivity$CancelRetryMultipleMessageTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/SMSRetryActivity$CancelRetryMultipleMessageTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/transaction/MOSmsManager;->SMS_RETRY_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 377
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 379
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    invoke-static {v2, v8}, Lcom/android/mms/transaction/MOSmsManager;->retrievePendingData(Landroid/net/Uri;Lcom/android/mms/transaction/PendingData;)V

    .line 381
    sget-object v0, Lcom/android/mms/transaction/MOSmsManager;->MESSAGE_PENDING:Landroid/net/Uri;

    iget v1, v8, Lcom/android/mms/transaction/PendingData;->pendingId:I

    int-to-long v5, v1

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 383
    .local v10, "retryMsgUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/SMSRetryActivity$CancelRetryMultipleMessageTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/SMSRetryActivity$CancelRetryMultipleMessageTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v1, v10, v3, v5}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    .end local v10    # "retryMsgUri":Landroid/net/Uri;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 391
    .end local v2    # "messageUri":Landroid/net/Uri;
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_2
    return-void
.end method
