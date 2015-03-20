.class Lcom/motorola/messaging/activity/ManageSimMessagesActivity$3;
.super Ljava/lang/Object;
.source "ManageSimMessagesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->copyToPhoneMemory(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

.field final synthetic val$address:Ljava/lang/String;

.field final synthetic val$body:Ljava/lang/String;

.field final synthetic val$date:Ljava/lang/Long;

.field final synthetic val$isIncoming:Z


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$3;->this$0:Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    iput-boolean p2, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$3;->val$isIncoming:Z

    iput-object p3, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$3;->val$address:Ljava/lang/String;

    iput-object p4, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$3;->val$body:Ljava/lang/String;

    iput-object p5, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$3;->val$date:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 363
    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$3;->val$isIncoming:Z

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$3;->this$0:Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    # getter for: Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->access$1000(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$3;->this$0:Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    # getter for: Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->access$100(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$3;->val$address:Ljava/lang/String;

    iget-object v3, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$3;->val$body:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$3;->val$date:Ljava/lang/Long;

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/Telephony$Sms$Inbox;->addMessage(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)Landroid/net/Uri;

    move-result-object v9

    .line 368
    .local v9, "smsUri":Landroid/net/Uri;
    :goto_0
    if-eqz v9, :cond_2

    const v8, 0x7f0b0021

    .line 370
    .local v8, "resId":I
    :goto_1
    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$3;->this$0:Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    new-instance v1, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$3$1;

    invoke-direct {v1, p0, v8}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$3$1;-><init>(Lcom/motorola/messaging/activity/ManageSimMessagesActivity$3;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 382
    .end local v8    # "resId":I
    .end local v9    # "smsUri":Landroid/net/Uri;
    :cond_0
    :goto_2
    return-void

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$3;->this$0:Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    # getter for: Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->access$1000(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$3;->this$0:Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    # getter for: Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->access$100(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$3;->val$address:Ljava/lang/String;

    iget-object v3, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$3;->val$body:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$3;->val$date:Ljava/lang/Long;

    invoke-static/range {v0 .. v5}, Lcom/motorola/messaging/provider/Telephony$Sms$Sent;->addMessage(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .restart local v9    # "smsUri":Landroid/net/Uri;
    goto :goto_0

    .line 368
    :cond_2
    const v8, 0x7f0b0022

    goto :goto_1

    .line 375
    .end local v9    # "smsUri":Landroid/net/Uri;
    :catch_0
    move-exception v7

    .line 376
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$3;->this$0:Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    invoke-static {v0, v7}, Lcom/motorola/messaging/provider/SqliteManager;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_2

    .line 377
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v7

    .line 378
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    # getter for: Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    const-string v0, "ManageSimMessagesActivity"

    const-string v1, "IllegalArgumentException throwed"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
