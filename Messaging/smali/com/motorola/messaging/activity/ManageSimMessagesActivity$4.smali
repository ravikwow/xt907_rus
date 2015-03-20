.class Lcom/motorola/messaging/activity/ManageSimMessagesActivity$4;
.super Ljava/lang/Object;
.source "ManageSimMessagesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/ManageSimMessagesActivity;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;)V
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$4;->this$0:Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 486
    iget-object v1, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$4;->this$0:Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    const/4 v2, 0x2

    # invokes: Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->updateState(I)V
    invoke-static {v1, v2}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->access$600(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;I)V

    .line 487
    new-instance v0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$4$1;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$4$1;-><init>(Lcom/motorola/messaging/activity/ManageSimMessagesActivity$4;)V

    .line 492
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v1

    const-string v2, "delete_all_from_sim"

    invoke-virtual {v1, v0, v2}, Lcom/motorola/messaging/concurrent/TaskManager;->runLowPriorityTask(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 493
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 494
    return-void
.end method
