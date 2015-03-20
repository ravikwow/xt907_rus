.class Lcom/motorola/messaging/activity/ComposeMessageActivity$52;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

.field final synthetic val$groupTypeListView:Landroid/widget/ListView;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/widget/ListView;I)V
    .locals 0

    .prologue
    .line 3180
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$52;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    iput-object p2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$52;->val$groupTypeListView:Landroid/widget/ListView;

    iput p3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$52;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3182
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$52;->val$groupTypeListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$52;->val$pos:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 3183
    return-void
.end method
