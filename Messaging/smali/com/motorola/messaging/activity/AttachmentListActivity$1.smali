.class Lcom/motorola/messaging/activity/AttachmentListActivity$1;
.super Ljava/lang/Object;
.source "AttachmentListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/AttachmentListActivity;->initButtons()V
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
    .line 205
    iput-object p1, p0, Lcom/motorola/messaging/activity/AttachmentListActivity$1;->this$0:Lcom/motorola/messaging/activity/AttachmentListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 208
    iget-object v2, p0, Lcom/motorola/messaging/activity/AttachmentListActivity$1;->this$0:Lcom/motorola/messaging/activity/AttachmentListActivity;

    # invokes: Lcom/motorola/messaging/activity/AttachmentListActivity;->updateSmil()V
    invoke-static {v2}, Lcom/motorola/messaging/activity/AttachmentListActivity;->access$000(Lcom/motorola/messaging/activity/AttachmentListActivity;)V

    .line 210
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 211
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/motorola/messaging/activity/AttachmentListActivity$1;->this$0:Lcom/motorola/messaging/activity/AttachmentListActivity;

    # getter for: Lcom/motorola/messaging/activity/AttachmentListActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;
    invoke-static {v2}, Lcom/motorola/messaging/activity/AttachmentListActivity;->access$100(Lcom/motorola/messaging/activity/AttachmentListActivity;)Lcom/motorola/messaging/model/SmilModel;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/motorola/messaging/model/SmilModel;->writeStateToBundle(Landroid/os/Bundle;)V

    .line 212
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 213
    .local v1, "resultIntent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 214
    iget-object v2, p0, Lcom/motorola/messaging/activity/AttachmentListActivity$1;->this$0:Lcom/motorola/messaging/activity/AttachmentListActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 215
    iget-object v2, p0, Lcom/motorola/messaging/activity/AttachmentListActivity$1;->this$0:Lcom/motorola/messaging/activity/AttachmentListActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 216
    return-void
.end method
