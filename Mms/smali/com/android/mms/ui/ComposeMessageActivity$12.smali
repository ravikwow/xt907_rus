.class Lcom/android/mms/ui/ComposeMessageActivity$12;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0

    .prologue
    .line 1155
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 12
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 1158
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->isCursorValid()Z
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2800(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1265
    :cond_0
    :goto_0
    return-void

    .line 1161
    :cond_1
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v6, v6, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1162
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1163
    .local v5, "type":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1165
    .local v2, "msgId":J
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->addPositionBasedMenuItems(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    invoke-static {v6, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2900(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1167
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v6, v6, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v6, v5, v2, v3, v0}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    .line 1168
    .local v4, "msgItem":Lcom/android/mms/ui/MessageItem;
    if-nez v4, :cond_2

    .line 1169
    const-string v6, "Mms/compose"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot load message item for type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", msgId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1174
    :cond_2
    const v6, 0x7f0a0024

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 1176
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v1, v6, v4}, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V

    .line 1180
    .local v1, "l":Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;
    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1182
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3000(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/ContactList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/data/ContactList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    iget v6, v4, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_3

    iget v6, v4, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_4

    .line 1185
    :cond_3
    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    const v9, 0x7f0a00bd

    invoke-interface {p1, v6, v7, v8, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1189
    :cond_4
    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    const v9, 0x7f0a0023

    invoke-interface {p1, v6, v7, v8, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1193
    :cond_5
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->addCallAndContactMenuItems(Landroid/view/ContextMenu;Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;Lcom/android/mms/ui/MessageItem;)V
    invoke-static {v6, p1, v1, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3100(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/view/ContextMenu;Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;Lcom/android/mms/ui/MessageItem;)V

    .line 1196
    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->isForwardable(J)Z
    invoke-static {v6, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3200(Lcom/android/mms/ui/ComposeMessageActivity;J)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsSmsEnabled:Z
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3300(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1198
    const/4 v6, 0x0

    const/16 v7, 0x15

    const/4 v8, 0x0

    const v9, 0x7f0a001d

    invoke-interface {p1, v6, v7, v8, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1202
    :cond_7
    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1203
    iget v6, v4, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    packed-switch v6, :pswitch_data_0

    .line 1216
    :cond_8
    :goto_1
    :pswitch_0
    iget v6, v4, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    packed-switch v6, :pswitch_data_1

    .line 1230
    :pswitch_1
    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    const v9, 0x7f0a0013

    invoke-interface {p1, v6, v7, v8, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1232
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-wide v7, v4, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->haveSomethingToCopyToSDCard(J)Z
    invoke-static {v6, v7, v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3400(Lcom/android/mms/ui/ComposeMessageActivity;J)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1233
    const/4 v6, 0x0

    const/16 v7, 0x19

    const/4 v8, 0x0

    const v9, 0x7f0a00f8

    invoke-interface {p1, v6, v7, v8, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1236
    :cond_9
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-wide v7, v4, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->isDrmRingtoneWithRights(J)Z
    invoke-static {v6, v7, v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3500(Lcom/android/mms/ui/ComposeMessageActivity;J)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1237
    const/4 v6, 0x0

    const/16 v7, 0x1e

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-wide v10, v4, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->getDrmMimeMenuStringRsrc(J)I
    invoke-static {v9, v10, v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3600(Lcom/android/mms/ui/ComposeMessageActivity;J)I

    move-result v9

    invoke-interface {p1, v6, v7, v8, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1245
    :cond_a
    :goto_2
    :pswitch_2
    iget-boolean v6, v4, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsSmsEnabled:Z
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3300(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1246
    const/4 v6, 0x0

    const/16 v7, 0x1d

    const/4 v8, 0x0

    const v9, 0x7f0a00c0

    invoke-interface {p1, v6, v7, v8, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1253
    :cond_b
    :goto_3
    const/4 v6, 0x0

    const/16 v7, 0x11

    const/4 v8, 0x0

    const v9, 0x7f0a0014

    invoke-interface {p1, v6, v7, v8, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1256
    iget-object v6, v4, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    sget-object v7, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    if-ne v6, v7, :cond_c

    iget-boolean v6, v4, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    if-eqz v6, :cond_d

    .line 1257
    :cond_c
    const/4 v6, 0x0

    const/16 v7, 0x14

    const/4 v8, 0x0

    const v9, 0x7f0a0015

    invoke-interface {p1, v6, v7, v8, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1261
    :cond_d
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsSmsEnabled:Z
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3300(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1262
    const/4 v6, 0x0

    const/16 v7, 0x12

    const/4 v8, 0x0

    const v9, 0x7f0a0016

    invoke-interface {p1, v6, v7, v8, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1210
    :pswitch_3
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3000(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/ContactList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/data/ContactList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_8

    .line 1211
    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    const v9, 0x7f0a00bd

    invoke-interface {p1, v6, v7, v8, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 1223
    :pswitch_4
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-wide v7, v4, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->haveSomethingToCopyToSDCard(J)Z
    invoke-static {v6, v7, v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3400(Lcom/android/mms/ui/ComposeMessageActivity;J)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1224
    const/4 v6, 0x0

    const/16 v7, 0x19

    const/4 v8, 0x0

    const v9, 0x7f0a00f8

    invoke-interface {p1, v6, v7, v8, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 1248
    :cond_e
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsSmsEnabled:Z
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3300(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1249
    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    const v9, 0x7f0a00bf

    invoke-interface {p1, v6, v7, v8, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 1203
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1216
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
