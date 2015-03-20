.class Lcom/motorola/messaging/activity/ComposeMessageActivity$50;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

.field final synthetic val$deleteTask:Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;)V
    .locals 0

    .prologue
    .line 3141
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$50;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    iput-object p2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$50;->val$deleteTask:Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 3144
    if-eqz p2, :cond_0

    .line 3145
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$50;->val$deleteTask:Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->setDeleteProtectedMessage(Z)V

    .line 3149
    :goto_0
    return-void

    .line 3147
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$50;->val$deleteTask:Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->setDeleteProtectedMessage(Z)V

    goto :goto_0
.end method
