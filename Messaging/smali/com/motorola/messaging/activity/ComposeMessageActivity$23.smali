.class Lcom/motorola/messaging/activity/ComposeMessageActivity$23;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;->onCreateAlertDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V
    .locals 0

    .prologue
    .line 2462
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$23;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2465
    const/16 v0, 0x54

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$23;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mExitOnSent:Z
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$3300(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2467
    const/4 v0, 0x1

    .line 2469
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
