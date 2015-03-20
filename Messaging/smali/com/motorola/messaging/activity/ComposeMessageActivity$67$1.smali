.class Lcom/motorola/messaging/activity/ComposeMessageActivity$67$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity$67;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$67;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity$67;)V
    .locals 0

    .prologue
    .line 6194
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$67$1;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$67;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 6197
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$67$1;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$67;

    iget-object v0, v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$67;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6198
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$67$1;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$67;

    iget-object v0, v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$67;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/16 v1, 0x16

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$67$1;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$67;

    iget-object v2, v2, Lcom/motorola/messaging/activity/ComposeMessageActivity$67;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    .line 6200
    :cond_0
    return-void
.end method
