.class Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/view/MessageListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MmsViewCreateContextMenuListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener$MmsViewContextMenuClickListener;
    }
.end annotation


# instance fields
.field private mClickListener:Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener$MmsViewContextMenuClickListener;

.field private mCurrentMenu:Landroid/view/ContextMenu;

.field private mMsgItem:Lcom/motorola/messaging/composer/MessageItem;

.field final synthetic this$0:Lcom/motorola/messaging/view/MessageListItem;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/view/MessageListItem;)V
    .locals 1

    .prologue
    .line 653
    iput-object p1, p0, Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;->this$0:Lcom/motorola/messaging/view/MessageListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 654
    new-instance v0, Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener$MmsViewContextMenuClickListener;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener$MmsViewContextMenuClickListener;-><init>(Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;)V

    iput-object v0, p0, Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;->mClickListener:Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener$MmsViewContextMenuClickListener;

    .line 655
    return-void
.end method

.method static synthetic access$1900(Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;)Lcom/motorola/messaging/composer/MessageItem;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;

    .prologue
    .line 647
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;->mMsgItem:Lcom/motorola/messaging/composer/MessageItem;

    return-object v0
.end method

.method private addMenuItemsForMedia(Landroid/view/ContextMenu;IIIZZ)V
    .locals 5
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "mediaPlayResId"    # I
    .param p3, "mediaSaveResId"    # I
    .param p4, "mediaShareResId"    # I
    .param p5, "isSaveable"    # Z
    .param p6, "isShareable"    # Z

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 721
    invoke-interface {p1, v2, v2, v2, p2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;->mClickListener:Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener$MmsViewContextMenuClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 723
    if-eqz p5, :cond_0

    .line 724
    invoke-interface {p1, v2, v3, v3, p3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;->mClickListener:Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener$MmsViewContextMenuClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 726
    :cond_0
    if-eqz p6, :cond_1

    .line 727
    invoke-interface {p1, v2, v4, v4, p4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;->mClickListener:Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener$MmsViewContextMenuClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 729
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 669
    iput-object p1, p0, Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;->mCurrentMenu:Landroid/view/ContextMenu;

    .line 670
    const v1, 0x7f0b0031

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 671
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;->mMsgItem:Lcom/motorola/messaging/composer/MessageItem;

    invoke-virtual {v1}, Lcom/motorola/messaging/composer/MessageItem;->getSmilModel()Lcom/motorola/messaging/model/SmilModel;

    move-result-object v7

    .line 673
    .local v7, "smilModel":Lcom/motorola/messaging/model/SmilModel;
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;->mMsgItem:Lcom/motorola/messaging/composer/MessageItem;

    invoke-virtual {v1}, Lcom/motorola/messaging/composer/MessageItem;->getMmsMediaType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 717
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 677
    :pswitch_1
    const v2, 0x7f0b000a

    const v3, 0x7f0b0028

    const v4, 0x7f0b002c

    invoke-virtual {v7}, Lcom/motorola/messaging/model/SmilModel;->isSaveable()Z

    move-result v5

    invoke-virtual {v7}, Lcom/motorola/messaging/model/SmilModel;->isSaveable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v7}, Lcom/motorola/messaging/model/SmilModel;->isForwardable()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;->addMenuItemsForMedia(Landroid/view/ContextMenu;IIIZZ)V

    goto :goto_0

    :cond_1
    move v6, v0

    goto :goto_1

    .line 682
    :pswitch_2
    const v2, 0x7f0b000b

    const v3, 0x7f0b0029

    const v4, 0x7f0b002d

    invoke-virtual {v7}, Lcom/motorola/messaging/model/SmilModel;->isSaveable()Z

    move-result v5

    invoke-virtual {v7}, Lcom/motorola/messaging/model/SmilModel;->isSaveable()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v7}, Lcom/motorola/messaging/model/SmilModel;->isForwardable()Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_2
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;->addMenuItemsForMedia(Landroid/view/ContextMenu;IIIZZ)V

    goto :goto_0

    :cond_2
    move v6, v0

    goto :goto_2

    .line 687
    :pswitch_3
    const v2, 0x7f0b000c

    const v3, 0x7f0b002a

    const v4, 0x7f0b002e

    invoke-virtual {v7}, Lcom/motorola/messaging/model/SmilModel;->isSaveable()Z

    move-result v5

    invoke-virtual {v7}, Lcom/motorola/messaging/model/SmilModel;->isSaveable()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v7}, Lcom/motorola/messaging/model/SmilModel;->isForwardable()Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_3
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;->addMenuItemsForMedia(Landroid/view/ContextMenu;IIIZZ)V

    goto :goto_0

    :cond_3
    move v6, v0

    goto :goto_3

    .line 692
    :pswitch_4
    const v1, 0x7f0b000d

    invoke-interface {p1, v0, v0, v0, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;->mClickListener:Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener$MmsViewContextMenuClickListener;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 693
    invoke-virtual {v7}, Lcom/motorola/messaging/model/SmilModel;->isSaveable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 694
    const v1, 0x7f0b002b

    invoke-interface {p1, v0, v3, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;->mClickListener:Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener$MmsViewContextMenuClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 698
    :pswitch_5
    const v1, 0x7f0b016e

    invoke-interface {p1, v0, v6, v6, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;->mClickListener:Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener$MmsViewContextMenuClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 702
    :pswitch_6
    const v1, 0x7f0b016d

    invoke-interface {p1, v0, v6, v6, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;->mClickListener:Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener$MmsViewContextMenuClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 706
    :pswitch_7
    const v1, 0x7f0b0169

    invoke-interface {p1, v0, v6, v6, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;->mClickListener:Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener$MmsViewContextMenuClickListener;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 707
    const v1, 0x7f0b016b

    invoke-interface {p1, v0, v4, v4, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;->mClickListener:Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener$MmsViewContextMenuClickListener;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 708
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isLocationAppAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 709
    const/4 v1, 0x6

    const/4 v2, 0x6

    const v3, 0x7f0b016c

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;->mClickListener:Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener$MmsViewContextMenuClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 713
    :pswitch_8
    const v1, 0x7f0b0175

    invoke-interface {p1, v0, v2, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;->mClickListener:Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener$MmsViewContextMenuClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 673
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public setMessageItem(Lcom/motorola/messaging/composer/MessageItem;)V
    .locals 1
    .param p1, "item"    # Lcom/motorola/messaging/composer/MessageItem;

    .prologue
    .line 658
    iput-object p1, p0, Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;->mMsgItem:Lcom/motorola/messaging/composer/MessageItem;

    .line 662
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;->mCurrentMenu:Landroid/view/ContextMenu;

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;->mCurrentMenu:Landroid/view/ContextMenu;

    invoke-interface {v0}, Landroid/view/ContextMenu;->close()V

    .line 665
    :cond_0
    return-void
.end method
