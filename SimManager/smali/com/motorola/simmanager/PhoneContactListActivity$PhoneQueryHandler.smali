.class final Lcom/motorola/simmanager/PhoneContactListActivity$PhoneQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "PhoneContactListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/simmanager/PhoneContactListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhoneQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/simmanager/PhoneContactListActivity;


# direct methods
.method constructor <init>(Lcom/motorola/simmanager/PhoneContactListActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/motorola/simmanager/PhoneContactListActivity$PhoneQueryHandler;->this$0:Lcom/motorola/simmanager/PhoneContactListActivity;

    .line 148
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 149
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 6
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 153
    iget-object v2, p0, Lcom/motorola/simmanager/PhoneContactListActivity$PhoneQueryHandler;->this$0:Lcom/motorola/simmanager/PhoneContactListActivity;

    # getter for: Lcom/motorola/simmanager/PhoneContactListActivity;->mCursorAdapter:Landroid/widget/CursorAdapter;
    invoke-static {v2}, Lcom/motorola/simmanager/PhoneContactListActivity;->access$700(Lcom/motorola/simmanager/PhoneContactListActivity;)Landroid/widget/CursorAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/simmanager/PhoneContactListActivity$PhoneQueryHandler;->this$0:Lcom/motorola/simmanager/PhoneContactListActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 154
    :cond_0
    if-eqz p3, :cond_1

    .line 155
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 204
    :cond_1
    :goto_0
    return-void

    .line 160
    :cond_2
    const/16 v2, 0x22d

    if-ne p1, v2, :cond_5

    .line 161
    iget-object v2, p0, Lcom/motorola/simmanager/PhoneContactListActivity$PhoneQueryHandler;->this$0:Lcom/motorola/simmanager/PhoneContactListActivity;

    invoke-virtual {v2}, Lcom/motorola/simmanager/SimManagerListActivity;->dismissQueryProgressDialog()V

    .line 162
    if-eqz p3, :cond_4

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_4

    .line 163
    iget-object v2, p0, Lcom/motorola/simmanager/PhoneContactListActivity$PhoneQueryHandler;->this$0:Lcom/motorola/simmanager/PhoneContactListActivity;

    # getter for: Lcom/motorola/simmanager/PhoneContactListActivity;->mClonedCursorAll:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/motorola/simmanager/PhoneContactListActivity;->access$500(Lcom/motorola/simmanager/PhoneContactListActivity;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 164
    iget-object v2, p0, Lcom/motorola/simmanager/PhoneContactListActivity$PhoneQueryHandler;->this$0:Lcom/motorola/simmanager/PhoneContactListActivity;

    # getter for: Lcom/motorola/simmanager/PhoneContactListActivity;->mClonedCursorAll:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/motorola/simmanager/PhoneContactListActivity;->access$500(Lcom/motorola/simmanager/PhoneContactListActivity;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 165
    iget-object v2, p0, Lcom/motorola/simmanager/PhoneContactListActivity$PhoneQueryHandler;->this$0:Lcom/motorola/simmanager/PhoneContactListActivity;

    const/4 v3, 0x0

    # setter for: Lcom/motorola/simmanager/PhoneContactListActivity;->mClonedCursorAll:Landroid/database/Cursor;
    invoke-static {v2, v3}, Lcom/motorola/simmanager/PhoneContactListActivity;->access$502(Lcom/motorola/simmanager/PhoneContactListActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 167
    :cond_3
    iget-object v2, p0, Lcom/motorola/simmanager/PhoneContactListActivity$PhoneQueryHandler;->this$0:Lcom/motorola/simmanager/PhoneContactListActivity;

    iget-object v3, p0, Lcom/motorola/simmanager/PhoneContactListActivity$PhoneQueryHandler;->this$0:Lcom/motorola/simmanager/PhoneContactListActivity;

    # invokes: Lcom/motorola/simmanager/PhoneContactListActivity;->clonePhoneContactsCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    invoke-static {v3, p3}, Lcom/motorola/simmanager/PhoneContactListActivity;->access$600(Lcom/motorola/simmanager/PhoneContactListActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v3

    # setter for: Lcom/motorola/simmanager/PhoneContactListActivity;->mClonedCursorAll:Landroid/database/Cursor;
    invoke-static {v2, v3}, Lcom/motorola/simmanager/PhoneContactListActivity;->access$502(Lcom/motorola/simmanager/PhoneContactListActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 168
    iget-object v2, p0, Lcom/motorola/simmanager/PhoneContactListActivity$PhoneQueryHandler;->this$0:Lcom/motorola/simmanager/PhoneContactListActivity;

    # getter for: Lcom/motorola/simmanager/PhoneContactListActivity;->mCursorAdapter:Landroid/widget/CursorAdapter;
    invoke-static {v2}, Lcom/motorola/simmanager/PhoneContactListActivity;->access$700(Lcom/motorola/simmanager/PhoneContactListActivity;)Landroid/widget/CursorAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 170
    :cond_4
    iget-object v2, p0, Lcom/motorola/simmanager/PhoneContactListActivity$PhoneQueryHandler;->this$0:Lcom/motorola/simmanager/PhoneContactListActivity;

    iget-object v3, p0, Lcom/motorola/simmanager/PhoneContactListActivity$PhoneQueryHandler;->this$0:Lcom/motorola/simmanager/PhoneContactListActivity;

    const v4, 0x7f070044

    invoke-static {v4}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/simmanager/PhoneContactListActivity$PhoneQueryHandler;->this$0:Lcom/motorola/simmanager/PhoneContactListActivity;

    const v5, 0x7f070042

    invoke-static {v5}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/motorola/simmanager/SimManagerListActivity;->showNoRecordsAlertDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    .line 173
    if-eqz p3, :cond_1

    .line 174
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 177
    :cond_5
    const/16 v2, 0x22e

    if-ne p1, v2, :cond_7

    .line 178
    move-object v0, p3

    .line 179
    .local v0, "groupCursor":Landroid/database/Cursor;
    iget-object v2, p0, Lcom/motorola/simmanager/PhoneContactListActivity$PhoneQueryHandler;->this$0:Lcom/motorola/simmanager/PhoneContactListActivity;

    iget-object v3, p0, Lcom/motorola/simmanager/PhoneContactListActivity$PhoneQueryHandler;->this$0:Lcom/motorola/simmanager/PhoneContactListActivity;

    # invokes: Lcom/motorola/simmanager/PhoneContactListActivity;->getGroupNames(Landroid/database/Cursor;)[Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/motorola/simmanager/PhoneContactListActivity;->access$1000(Lcom/motorola/simmanager/PhoneContactListActivity;Landroid/database/Cursor;)[Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/motorola/simmanager/PhoneContactListActivity;->mGroupNames:[Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/motorola/simmanager/PhoneContactListActivity;->access$402(Lcom/motorola/simmanager/PhoneContactListActivity;[Ljava/lang/String;)[Ljava/lang/String;

    .line 180
    iget-object v2, p0, Lcom/motorola/simmanager/PhoneContactListActivity$PhoneQueryHandler;->this$0:Lcom/motorola/simmanager/PhoneContactListActivity;

    # getter for: Lcom/motorola/simmanager/PhoneContactListActivity;->mGroupsAdapter:Lcom/motorola/simmanager/GroupsSpinnerAdapter;
    invoke-static {v2}, Lcom/motorola/simmanager/PhoneContactListActivity;->access$1100(Lcom/motorola/simmanager/PhoneContactListActivity;)Lcom/motorola/simmanager/GroupsSpinnerAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/simmanager/PhoneContactListActivity$PhoneQueryHandler;->this$0:Lcom/motorola/simmanager/PhoneContactListActivity;

    # getter for: Lcom/motorola/simmanager/PhoneContactListActivity;->mGroupNames:[Ljava/lang/String;
    invoke-static {v3}, Lcom/motorola/simmanager/PhoneContactListActivity;->access$400(Lcom/motorola/simmanager/PhoneContactListActivity;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/simmanager/GroupsSpinnerAdapter;->setGroupsInfo([Ljava/lang/String;)V

    .line 181
    iget-object v2, p0, Lcom/motorola/simmanager/PhoneContactListActivity$PhoneQueryHandler;->this$0:Lcom/motorola/simmanager/PhoneContactListActivity;

    iget-object v3, p0, Lcom/motorola/simmanager/PhoneContactListActivity$PhoneQueryHandler;->this$0:Lcom/motorola/simmanager/PhoneContactListActivity;

    # getter for: Lcom/motorola/simmanager/PhoneContactListActivity;->mCurrentGroupName:Ljava/lang/String;
    invoke-static {v3}, Lcom/motorola/simmanager/PhoneContactListActivity;->access$200(Lcom/motorola/simmanager/PhoneContactListActivity;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/motorola/simmanager/PhoneContactListActivity;->getGroupPosition(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/motorola/simmanager/PhoneContactListActivity;->access$300(Lcom/motorola/simmanager/PhoneContactListActivity;Ljava/lang/String;)I

    move-result v1

    .line 182
    .local v1, "groupPos":I
    iget-object v2, p0, Lcom/motorola/simmanager/PhoneContactListActivity$PhoneQueryHandler;->this$0:Lcom/motorola/simmanager/PhoneContactListActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 183
    iget-object v2, p0, Lcom/motorola/simmanager/PhoneContactListActivity$PhoneQueryHandler;->this$0:Lcom/motorola/simmanager/PhoneContactListActivity;

    # getter for: Lcom/motorola/simmanager/PhoneContactListActivity;->adnInit:Z
    invoke-static {v2}, Lcom/motorola/simmanager/PhoneContactListActivity;->access$1200(Lcom/motorola/simmanager/PhoneContactListActivity;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 184
    iget-object v2, p0, Lcom/motorola/simmanager/PhoneContactListActivity$PhoneQueryHandler;->this$0:Lcom/motorola/simmanager/PhoneContactListActivity;

    # invokes: Lcom/motorola/simmanager/PhoneContactListActivity;->startAdnInit()V
    invoke-static {v2}, Lcom/motorola/simmanager/PhoneContactListActivity;->access$1300(Lcom/motorola/simmanager/PhoneContactListActivity;)V

    .line 185
    iget-object v2, p0, Lcom/motorola/simmanager/PhoneContactListActivity$PhoneQueryHandler;->this$0:Lcom/motorola/simmanager/PhoneContactListActivity;

    const/4 v3, 0x1

    # setter for: Lcom/motorola/simmanager/PhoneContactListActivity;->adnInit:Z
    invoke-static {v2, v3}, Lcom/motorola/simmanager/PhoneContactListActivity;->access$1202(Lcom/motorola/simmanager/PhoneContactListActivity;Z)Z

    .line 189
    :goto_1
    if-eqz p3, :cond_1

    .line 190
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 187
    :cond_6
    iget-object v2, p0, Lcom/motorola/simmanager/PhoneContactListActivity$PhoneQueryHandler;->this$0:Lcom/motorola/simmanager/PhoneContactListActivity;

    # invokes: Lcom/motorola/simmanager/PhoneContactListActivity;->startMembersQuery()V
    invoke-static {v2}, Lcom/motorola/simmanager/PhoneContactListActivity;->access$1400(Lcom/motorola/simmanager/PhoneContactListActivity;)V

    goto :goto_1

    .line 192
    .end local v0    # "groupCursor":Landroid/database/Cursor;
    .end local v1    # "groupPos":I
    :cond_7
    const/16 v2, 0x22f

    if-ne p1, v2, :cond_8

    .line 193
    iget-object v2, p0, Lcom/motorola/simmanager/PhoneContactListActivity$PhoneQueryHandler;->this$0:Lcom/motorola/simmanager/PhoneContactListActivity;

    invoke-virtual {v2}, Lcom/motorola/simmanager/SimManagerListActivity;->dismissQueryProgressDialog()V

    .line 194
    iget-object v2, p0, Lcom/motorola/simmanager/PhoneContactListActivity$PhoneQueryHandler;->this$0:Lcom/motorola/simmanager/PhoneContactListActivity;

    # getter for: Lcom/motorola/simmanager/PhoneContactListActivity;->mCursorAdapter:Landroid/widget/CursorAdapter;
    invoke-static {v2}, Lcom/motorola/simmanager/PhoneContactListActivity;->access$700(Lcom/motorola/simmanager/PhoneContactListActivity;)Landroid/widget/CursorAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 195
    :cond_8
    const/16 v2, 0x230

    if-ne p1, v2, :cond_1

    .line 196
    if-eqz p3, :cond_9

    .line 197
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 199
    :cond_9
    sget-boolean v2, Lcom/motorola/simmanager/SMUtils;->FTR_35420_USIM_IMPORT_EXPORT:Z

    if-eqz v2, :cond_a

    .line 200
    iget-object v2, p0, Lcom/motorola/simmanager/PhoneContactListActivity$PhoneQueryHandler;->this$0:Lcom/motorola/simmanager/PhoneContactListActivity;

    invoke-static {v2}, Lcom/motorola/simmanager/SIMCommunication;->initialize(Landroid/content/Context;)V

    .line 202
    :cond_a
    iget-object v2, p0, Lcom/motorola/simmanager/PhoneContactListActivity$PhoneQueryHandler;->this$0:Lcom/motorola/simmanager/PhoneContactListActivity;

    # invokes: Lcom/motorola/simmanager/PhoneContactListActivity;->startMembersQuery()V
    invoke-static {v2}, Lcom/motorola/simmanager/PhoneContactListActivity;->access$1400(Lcom/motorola/simmanager/PhoneContactListActivity;)V

    goto/16 :goto_0
.end method
