.class Lcom/motorola/messaging/activity/AttachmentListActivity$3;
.super Ljava/lang/Object;
.source "AttachmentListActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/AttachmentListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/AttachmentListActivity;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/AttachmentListActivity;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/motorola/messaging/activity/AttachmentListActivity$3;->this$0:Lcom/motorola/messaging/activity/AttachmentListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v2, 0x0

    .line 264
    const v0, 0x7f0b0170

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 266
    iget-object v0, p0, Lcom/motorola/messaging/activity/AttachmentListActivity$3;->this$0:Lcom/motorola/messaging/activity/AttachmentListActivity;

    # getter for: Lcom/motorola/messaging/activity/AttachmentListActivity;->mListMode:I
    invoke-static {v0}, Lcom/motorola/messaging/activity/AttachmentListActivity;->access$200(Lcom/motorola/messaging/activity/AttachmentListActivity;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    const/4 v0, 0x1

    const v1, 0x7f0b0171

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 269
    :cond_0
    return-void
.end method
