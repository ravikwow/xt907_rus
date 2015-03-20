.class final Lcom/motorola/messaging/activity/ComposeMessageActivity$BackGroundQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BackGroundQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 5002
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$BackGroundQueryHandler;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    .line 5003
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 5004
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    .line 5068
    packed-switch p1, :pswitch_data_0

    .line 5081
    :cond_0
    :goto_0
    return-void

    .line 5070
    :pswitch_0
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$BackGroundQueryHandler;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->onContentDeleted()V
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$5000(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    .line 5072
    if-lez p3, :cond_0

    .line 5073
    new-instance v0, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;

    const/4 v1, 0x3

    const-string v2, "MSG_DELETED"

    invoke-direct {v0, v1, v2}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;-><init>(ILjava/lang/String;)V

    .line 5074
    .local v0, "event":Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;
    const-string v1, "numMsgs"

    invoke-virtual {v0, v1, p3}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->addField(Ljava/lang/String;I)V

    .line 5075
    const-string v1, "action"

    const-string v2, "delConv"

    invoke-virtual {v0, v1, v2}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 5076
    invoke-virtual {v0}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->log()V

    goto :goto_0

    .line 5068
    nop

    :pswitch_data_0
    .packed-switch 0x264c
        :pswitch_0
    .end packed-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 9
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const-wide/16 v7, -0x1

    .line 5008
    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1900()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5009
    const-string v4, "ComposeMsgActivity"

    const-string v5, "onQueryComplete"

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 5012
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 5064
    :goto_0
    return-void

    .line 5015
    :pswitch_0
    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1900()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5016
    const-string v4, "ComposeMsgActivity"

    const-string v5, "onQueryComplete"

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 5019
    :cond_1
    if-eqz p3, :cond_5

    .line 5020
    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1900()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5021
    const-string v4, "ComposeMsgActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cursor.count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 5029
    :cond_2
    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$BackGroundQueryHandler;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListAdapter:Lcom/motorola/messaging/adapter/MessageListAdapter;
    invoke-static {v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$4700(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/adapter/MessageListAdapter;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 5030
    const/4 v0, -0x1

    .line 5031
    .local v0, "newSelectionPos":I
    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$BackGroundQueryHandler;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "select_id"

    invoke-virtual {v4, v5, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 5033
    .local v1, "targetMsgId":J
    cmp-long v4, v1, v7

    if-eqz v4, :cond_3

    .line 5034
    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$BackGroundQueryHandler;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "select_type"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5035
    .local v3, "targetMsgType":Ljava/lang/String;
    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$BackGroundQueryHandler;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->moveCursorToMessage(Landroid/database/Cursor;JLjava/lang/String;)Z
    invoke-static {v4, p3, v1, v2, v3}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$4800(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/database/Cursor;JLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5036
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 5041
    .end local v3    # "targetMsgType":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$BackGroundQueryHandler;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListAdapter:Lcom/motorola/messaging/adapter/MessageListAdapter;
    invoke-static {v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$4700(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/adapter/MessageListAdapter;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 5043
    const/4 v4, -0x1

    if-eq v0, v4, :cond_4

    .line 5044
    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$BackGroundQueryHandler;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mComposerHandler:Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;
    invoke-static {v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2500(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ComposerHandler;->blockMessage(I)V

    .line 5045
    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$BackGroundQueryHandler;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mMsgListView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$4900(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/widget/ListView;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$BackGroundQueryHandler;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mRecipientBarManager:Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;
    invoke-static {v5}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$300(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/messaging/activity/ComposeMessageActivity$RecipientBarManager;->getHeight()I

    move-result v5

    invoke-virtual {v4, v0, v5}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 5057
    :cond_4
    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$BackGroundQueryHandler;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$600(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    .line 5024
    .end local v0    # "newSelectionPos":I
    .end local v1    # "targetMsgId":J
    :cond_5
    const-string v4, "ComposeMsgActivity"

    const-string v5, "Cannot init the cursor for the message list - abort."

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 5025
    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$BackGroundQueryHandler;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 5049
    :cond_6
    const-string v4, "ComposeMsgActivity"

    const-string v5, "Adapter is null after query - abort."

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 5050
    invoke-static {p3}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 5051
    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$BackGroundQueryHandler;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 5060
    :pswitch_1
    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$BackGroundQueryHandler;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;
    invoke-static {v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "delete_conv_has_protected"

    if-eqz p3, :cond_7

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_7

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5061
    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$BackGroundQueryHandler;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$BackGroundQueryHandler;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;
    invoke-static {v6}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    goto/16 :goto_0

    .line 5060
    :cond_7
    const/4 v4, 0x0

    goto :goto_1

    .line 5012
    :pswitch_data_0
    .packed-switch 0x25e4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
