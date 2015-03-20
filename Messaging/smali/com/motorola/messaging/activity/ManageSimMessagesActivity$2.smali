.class Lcom/motorola/messaging/activity/ManageSimMessagesActivity$2;
.super Ljava/lang/Object;
.source "ManageSimMessagesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->fetchSimCapacity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/ManageSimMessagesActivity;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$2;->this$0:Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 167
    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$2;->this$0:Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$2;->this$0:Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    # getter for: Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->access$100(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;)Landroid/content/ContentResolver;

    move-result-object v1

    # getter for: Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->SIM_CAPACITY_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->access$200()Landroid/net/Uri;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 168
    .local v7, "cursorCapacity":Landroid/database/Cursor;
    # getter for: Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    const-string v0, "ManageSimMessagesActivity"

    const-string v1, "fetchSimCapacity()"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_0
    if-eqz v7, :cond_1

    .line 173
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$2;->this$0:Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    # setter for: Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mSimCapacity:I
    invoke-static {v0, v1}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->access$402(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :goto_0
    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$2;->this$0:Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    new-instance v1, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$2$1;

    invoke-direct {v1, p0}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$2$1;-><init>(Lcom/motorola/messaging/activity/ManageSimMessagesActivity$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 193
    return-void

    .line 177
    :cond_2
    :try_start_1
    # getter for: Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->access$300()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 178
    const-string v0, "ManageSimMessagesActivity"

    const-string v1, "query icc capacity returns no result!"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_3
    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$2;->this$0:Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mSimCapacity:I
    invoke-static {v0, v1}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->access$402(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 184
    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v0
.end method
