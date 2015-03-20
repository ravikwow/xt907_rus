.class Lcom/motorola/messaging/activity/ComposeMessageActivity$19;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;
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
    .line 2256
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$19;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2258
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_1

    .line 2269
    :cond_0
    :goto_0
    return v0

    .line 2263
    :cond_1
    const/16 v2, 0x43

    if-ne p2, v2, :cond_0

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$19;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$3100(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 2264
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$19;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->showSubjectEditor(Z)V
    invoke-static {v2, v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$3200(Lcom/motorola/messaging/activity/ComposeMessageActivity;Z)V

    .line 2265
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$19;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mWorkingMessage:Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/motorola/messaging/composer/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    move v0, v1

    .line 2266
    goto :goto_0
.end method
