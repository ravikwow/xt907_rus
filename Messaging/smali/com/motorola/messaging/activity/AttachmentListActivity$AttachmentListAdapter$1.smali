.class Lcom/motorola/messaging/activity/AttachmentListActivity$AttachmentListAdapter$1;
.super Ljava/lang/Object;
.source "AttachmentListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/AttachmentListActivity$AttachmentListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/messaging/activity/AttachmentListActivity$AttachmentListAdapter;

.field final synthetic val$realPosition:I


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/AttachmentListActivity$AttachmentListAdapter;I)V
    .locals 0

    .prologue
    .line 435
    iput-object p1, p0, Lcom/motorola/messaging/activity/AttachmentListActivity$AttachmentListAdapter$1;->this$1:Lcom/motorola/messaging/activity/AttachmentListActivity$AttachmentListAdapter;

    iput p2, p0, Lcom/motorola/messaging/activity/AttachmentListActivity$AttachmentListAdapter$1;->val$realPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 438
    iget-object v0, p0, Lcom/motorola/messaging/activity/AttachmentListActivity$AttachmentListAdapter$1;->this$1:Lcom/motorola/messaging/activity/AttachmentListActivity$AttachmentListAdapter;

    iget-object v0, v0, Lcom/motorola/messaging/activity/AttachmentListActivity$AttachmentListAdapter;->this$0:Lcom/motorola/messaging/activity/AttachmentListActivity;

    # getter for: Lcom/motorola/messaging/activity/AttachmentListActivity;->mPositionStatus:[Z
    invoke-static {v0}, Lcom/motorola/messaging/activity/AttachmentListActivity;->access$300(Lcom/motorola/messaging/activity/AttachmentListActivity;)[Z

    move-result-object v0

    iget v1, p0, Lcom/motorola/messaging/activity/AttachmentListActivity$AttachmentListAdapter$1;->val$realPosition:I

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 439
    iget-object v0, p0, Lcom/motorola/messaging/activity/AttachmentListActivity$AttachmentListAdapter$1;->this$1:Lcom/motorola/messaging/activity/AttachmentListActivity$AttachmentListAdapter;

    iget-object v0, v0, Lcom/motorola/messaging/activity/AttachmentListActivity$AttachmentListAdapter;->this$0:Lcom/motorola/messaging/activity/AttachmentListActivity;

    # getter for: Lcom/motorola/messaging/activity/AttachmentListActivity;->mAdapter:Lcom/motorola/messaging/activity/AttachmentListActivity$AttachmentListAdapter;
    invoke-static {v0}, Lcom/motorola/messaging/activity/AttachmentListActivity;->access$700(Lcom/motorola/messaging/activity/AttachmentListActivity;)Lcom/motorola/messaging/activity/AttachmentListActivity$AttachmentListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 440
    return-void
.end method
