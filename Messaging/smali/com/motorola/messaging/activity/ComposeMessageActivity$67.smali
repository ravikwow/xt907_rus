.class Lcom/motorola/messaging/activity/ComposeMessageActivity$67;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;->showReadReportDialogIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

.field final synthetic val$threadId:J


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;J)V
    .locals 0

    .prologue
    .line 6174
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$67;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    iput-wide p2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$67;->val$threadId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 6177
    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$67;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6206
    :cond_0
    :goto_0
    return-void

    .line 6180
    :cond_1
    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$67;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    iget-wide v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$67;->val$threadId:J

    invoke-static {v4, v5, v6}, Lcom/motorola/messaging/util/MessageUtils;->queryReadReport(Landroid/content/Context;J)Landroid/database/Cursor;

    move-result-object v0

    .line 6182
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 6184
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6185
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6186
    .local v2, "msgIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6188
    .local v1, "fromList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    sget-object v4, Lcom/motorola/messaging/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 6189
    .local v3, "uri":Landroid/net/Uri;
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6190
    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$67;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-static {v4, v3}, Lcom/motorola/messaging/util/MessageUtils;->getMmsFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6191
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 6192
    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$67;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;
    invoke-static {v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "msgId_list"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 6193
    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$67;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;
    invoke-static {v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "from_list"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 6194
    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$67;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    new-instance v5, Lcom/motorola/messaging/activity/ComposeMessageActivity$67$1;

    invoke-direct {v5, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$67$1;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity$67;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6203
    .end local v1    # "fromList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "msgIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_3
    invoke-static {v0}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v0}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v4
.end method
