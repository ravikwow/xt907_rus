.class final Lcom/motorola/messaging/activity/ConversationListActivity$InternalHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ConversationListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/ConversationListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InternalHandler"
.end annotation


# instance fields
.field private mFinished:Z

.field final synthetic this$0:Lcom/motorola/messaging/activity/ConversationListActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/messaging/activity/ConversationListActivity;Landroid/content/ContentResolver;)V
    .locals 1
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 527
    iput-object p1, p0, Lcom/motorola/messaging/activity/ConversationListActivity$InternalHandler;->this$0:Lcom/motorola/messaging/activity/ConversationListActivity;

    .line 528
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 531
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity$InternalHandler;->mFinished:Z

    .line 529
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 534
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/messaging/activity/ConversationListActivity$InternalHandler;->mFinished:Z

    .line 535
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 539
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 555
    invoke-super {p0, p1}, Landroid/content/AsyncQueryHandler;->handleMessage(Landroid/os/Message;)V

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 541
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/database/Cursor;

    .line 542
    .local v0, "cursor":Landroid/database/Cursor;
    iget-boolean v1, p0, Lcom/motorola/messaging/activity/ConversationListActivity$InternalHandler;->mFinished:Z

    if-nez v1, :cond_1

    .line 543
    iget-object v1, p0, Lcom/motorola/messaging/activity/ConversationListActivity$InternalHandler;->this$0:Lcom/motorola/messaging/activity/ConversationListActivity;

    invoke-virtual {v1, v0}, Lcom/motorola/messaging/activity/ConversationListActivity;->setContentInfo(Landroid/database/Cursor;)V

    goto :goto_0

    .line 544
    :cond_1
    if-eqz v0, :cond_0

    .line 545
    invoke-static {v0}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 549
    .end local v0    # "cursor":Landroid/database/Cursor;
    :pswitch_1
    iget-object v1, p0, Lcom/motorola/messaging/activity/ConversationListActivity$InternalHandler;->this$0:Lcom/motorola/messaging/activity/ConversationListActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/messaging/conversation/Conversation;->removeObsoleteConversations(Landroid/content/Context;)V

    .line 552
    :pswitch_2
    iget-object v1, p0, Lcom/motorola/messaging/activity/ConversationListActivity$InternalHandler;->this$0:Lcom/motorola/messaging/activity/ConversationListActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/messaging/conversation/Conversation;->markAllConversationsAsSeen(Landroid/content/Context;)V

    goto :goto_0

    .line 539
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 9
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 562
    packed-switch p1, :pswitch_data_0

    .line 595
    const-string v4, "ConversationListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onQueryComplete called with unknown token "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    .end local p2    # "cookie":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 565
    .restart local p2    # "cookie":Ljava/lang/Object;
    :pswitch_0
    const/4 v2, 0x0

    .line 566
    .local v2, "hasProtected":Z
    if-eqz p3, :cond_1

    .line 567
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_2

    move v2, v4

    .line 568
    :goto_1
    invoke-static {p3}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 570
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 571
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "thread_ids"

    check-cast p2, [J

    .end local p2    # "cookie":Ljava/lang/Object;
    check-cast p2, [J

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 572
    const-string v4, "show_protected"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 573
    iget-object v4, p0, Lcom/motorola/messaging/activity/ConversationListActivity$InternalHandler;->this$0:Lcom/motorola/messaging/activity/ConversationListActivity;

    invoke-virtual {v4, v5, v0}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .end local v0    # "bundle":Landroid/os/Bundle;
    .restart local p2    # "cookie":Ljava/lang/Object;
    :cond_2
    move v2, v5

    .line 567
    goto :goto_1

    .line 578
    .end local v2    # "hasProtected":Z
    :pswitch_1
    if-eqz p3, :cond_0

    .line 579
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 580
    .local v1, "count":I
    if-lez v1, :cond_3

    .line 581
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 582
    .local v3, "title":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/motorola/messaging/activity/ConversationListActivity$InternalHandler;->this$0:Lcom/motorola/messaging/activity/ConversationListActivity;

    iget-object v7, p0, Lcom/motorola/messaging/activity/ConversationListActivity$InternalHandler;->this$0:Lcom/motorola/messaging/activity/ConversationListActivity;

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/PackageItemInfo;->labelRes:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    iget-object v6, p0, Lcom/motorola/messaging/activity/ConversationListActivity$InternalHandler;->this$0:Lcom/motorola/messaging/activity/ConversationListActivity;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0b0008

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-virtual {v6, v7, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    iget-object v4, p0, Lcom/motorola/messaging/activity/ConversationListActivity$InternalHandler;->this$0:Lcom/motorola/messaging/activity/ConversationListActivity;

    # getter for: Lcom/motorola/messaging/activity/ConversationListActivity;->mActionBar:Landroid/app/ActionBar;
    invoke-static {v4}, Lcom/motorola/messaging/activity/ConversationListActivity;->access$700(Lcom/motorola/messaging/activity/ConversationListActivity;)Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 589
    .end local v3    # "title":Ljava/lang/StringBuilder;
    :goto_2
    invoke-static {p3}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 587
    :cond_3
    iget-object v4, p0, Lcom/motorola/messaging/activity/ConversationListActivity$InternalHandler;->this$0:Lcom/motorola/messaging/activity/ConversationListActivity;

    # getter for: Lcom/motorola/messaging/activity/ConversationListActivity;->mActionBar:Landroid/app/ActionBar;
    invoke-static {v4}, Lcom/motorola/messaging/activity/ConversationListActivity;->access$700(Lcom/motorola/messaging/activity/ConversationListActivity;)Landroid/app/ActionBar;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/messaging/activity/ConversationListActivity$InternalHandler;->this$0:Lcom/motorola/messaging/activity/ConversationListActivity;

    iget-object v6, p0, Lcom/motorola/messaging/activity/ConversationListActivity$InternalHandler;->this$0:Lcom/motorola/messaging/activity/ConversationListActivity;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/PackageItemInfo;->labelRes:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 562
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
