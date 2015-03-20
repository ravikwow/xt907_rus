.class Lcom/motorola/messaging/activity/ComposeMessageActivity$53;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$from_list:Ljava/util/ArrayList;

.field final synthetic val$msgId_list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 3226
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$53;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    iput-object p2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$53;->val$msgId_list:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$53;->val$from_list:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 3228
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$53$1;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$53$1;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity$53;)V

    .line 3242
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v1

    const-string v2, "send_read_report"

    invoke-virtual {v1, v0, v2}, Lcom/motorola/messaging/concurrent/TaskManager;->runLowPriorityTask(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 3244
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3245
    return-void
.end method
