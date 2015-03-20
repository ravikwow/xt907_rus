.class Lcom/motorola/messaging/activity/ComposeMessageActivity$ResizeVideoButtonListener;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResizeVideoButtonListener"
.end annotation


# instance fields
.field private final mResizeVideoIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/content/Intent;)V
    .locals 0
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 999
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ResizeVideoButtonListener;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1000
    iput-object p2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ResizeVideoButtonListener;->mResizeVideoIntent:Landroid/content/Intent;

    .line 1001
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1004
    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1900()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1005
    const-string v0, "ComposeMsgActivity/ResizeVideoButtonListener"

    const-string v1, "onClick ()"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ResizeVideoButtonListener;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ResizeVideoButtonListener;->mResizeVideoIntent:Landroid/content/Intent;

    const-string v2, "outputPath"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mResizedVideoFileName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2402(Lcom/motorola/messaging/activity/ComposeMessageActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1013
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ResizeVideoButtonListener;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ResizeVideoButtonListener;->mResizeVideoIntent:Landroid/content/Intent;

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Lcom/motorola/messaging/activity/MessagingListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1015
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1016
    return-void
.end method
