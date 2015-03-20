.class Lcom/motorola/messaging/activity/ComposeMessageActivity$36;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

.field final synthetic val$finalDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 2829
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$36;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    iput-object p2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$36;->val$finalDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 2831
    if-eqz p2, :cond_0

    .line 2832
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$36;->val$finalDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 2834
    :cond_0
    return-void
.end method
