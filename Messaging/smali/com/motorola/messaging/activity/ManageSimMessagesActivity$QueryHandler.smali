.class Lcom/motorola/messaging/activity/ManageSimMessagesActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ManageSimMessagesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/ManageSimMessagesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field private final mParent:Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

.field final synthetic this$0:Lcom/motorola/messaging/activity/ManageSimMessagesActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;Landroid/content/ContentResolver;Lcom/motorola/messaging/activity/ManageSimMessagesActivity;)V
    .locals 2
    .param p2, "contentResolver"    # Landroid/content/ContentResolver;
    .param p3, "parent"    # Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$QueryHandler;->this$0:Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    .line 203
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 204
    iput-object p3, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$QueryHandler;->mParent:Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    .line 205
    # getter for: Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    const-string v0, "ManageSimMessagesActivity"

    const-string v1, "QueryHandler()"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_0
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 213
    # getter for: Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    const-string v0, "ManageSimMessagesActivity"

    const-string v1, "onQueryComplete()"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$QueryHandler;->this$0:Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    # setter for: Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0, p3}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->access$702(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 217
    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$QueryHandler;->this$0:Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    # getter for: Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->access$700(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 218
    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$QueryHandler;->this$0:Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    # getter for: Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->access$700(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$QueryHandler;->this$0:Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    # invokes: Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->updateState(I)V
    invoke-static {v0, v2}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->access$600(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;I)V

    .line 231
    :goto_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$QueryHandler;->this$0:Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$QueryHandler;->this$0:Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    # getter for: Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->access$700(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 239
    :goto_1
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$QueryHandler;->this$0:Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    # getter for: Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mListAdapter:Lcom/motorola/messaging/activity/ManageSimMessagesActivity$SimMsgAdapter;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->access$800(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;)Lcom/motorola/messaging/activity/ManageSimMessagesActivity$SimMsgAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 222
    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$QueryHandler;->this$0:Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    new-instance v1, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$SimMsgAdapter;

    iget-object v2, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$QueryHandler;->this$0:Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    iget-object v3, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$QueryHandler;->this$0:Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    # getter for: Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->access$700(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$SimMsgAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    # setter for: Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mListAdapter:Lcom/motorola/messaging/activity/ManageSimMessagesActivity$SimMsgAdapter;
    invoke-static {v0, v1}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->access$802(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;Lcom/motorola/messaging/activity/ManageSimMessagesActivity$SimMsgAdapter;)Lcom/motorola/messaging/activity/ManageSimMessagesActivity$SimMsgAdapter;

    .line 224
    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$QueryHandler;->this$0:Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    # getter for: Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mSimList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->access$900(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$QueryHandler;->this$0:Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    # getter for: Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mListAdapter:Lcom/motorola/messaging/activity/ManageSimMessagesActivity$SimMsgAdapter;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->access$800(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;)Lcom/motorola/messaging/activity/ManageSimMessagesActivity$SimMsgAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 225
    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$QueryHandler;->this$0:Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    # getter for: Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mSimList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->access$900(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$QueryHandler;->mParent:Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 226
    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$QueryHandler;->this$0:Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    # invokes: Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->updateState(I)V
    invoke-static {v0, v4}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->access$600(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;I)V

    goto :goto_0

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$QueryHandler;->this$0:Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    # getter for: Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mListAdapter:Lcom/motorola/messaging/activity/ManageSimMessagesActivity$SimMsgAdapter;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->access$800(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;)Lcom/motorola/messaging/activity/ManageSimMessagesActivity$SimMsgAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$QueryHandler;->this$0:Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    # getter for: Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->access$700(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 229
    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$QueryHandler;->this$0:Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    # invokes: Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->updateState(I)V
    invoke-static {v0, v4}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->access$600(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;I)V

    goto :goto_0

    .line 233
    :cond_3
    # getter for: Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->access$300()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 234
    const-string v0, "ManageSimMessagesActivity"

    const-string v1, "onQueryComplete() - Failed: mCursor is null!!!"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_4
    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$QueryHandler;->this$0:Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    # invokes: Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->updateState(I)V
    invoke-static {v0, v2}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->access$600(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;I)V

    goto :goto_1
.end method
