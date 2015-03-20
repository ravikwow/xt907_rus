.class Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog$1;
.super Landroid/os/Handler;
.source "ClassZeroActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog$1;->this$1:Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 452
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 453
    iget-object v0, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog$1;->this$1:Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;

    iget-object v0, v0, Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;->this$0:Lcom/motorola/messaging/activity/ClassZeroActivity;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog$1;->this$1:Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;

    # getter for: Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;->mSms:Lcom/motorola/messaging/activity/ClassZeroActivity$SmsMessageWithState;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;->access$500(Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;)Lcom/motorola/messaging/activity/ClassZeroActivity$SmsMessageWithState;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/motorola/messaging/activity/ClassZeroActivity;->saveMessage(Lcom/motorola/messaging/activity/ClassZeroActivity$SmsMessageWithState;Z)V

    .line 454
    iget-object v0, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog$1;->this$1:Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;

    invoke-virtual {v0}, Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;->dismiss()V

    .line 455
    iget-object v0, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog$1;->this$1:Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;

    invoke-static {v0}, Lcom/motorola/messaging/activity/ClassZeroActivity;->removeDialog(Ljava/lang/Object;)V

    .line 456
    iget-object v0, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog$1;->this$1:Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;

    iget-object v0, v0, Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;->this$0:Lcom/motorola/messaging/activity/ClassZeroActivity;

    # invokes: Lcom/motorola/messaging/activity/ClassZeroActivity;->checkIfFinish()V
    invoke-static {v0}, Lcom/motorola/messaging/activity/ClassZeroActivity;->access$100(Lcom/motorola/messaging/activity/ClassZeroActivity;)V

    .line 457
    # getter for: Lcom/motorola/messaging/activity/ClassZeroActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/ClassZeroActivity;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    const-string v0, "ClassZeroMessageDialog"

    const-string v1, "auto saved message"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    :cond_0
    return-void
.end method
