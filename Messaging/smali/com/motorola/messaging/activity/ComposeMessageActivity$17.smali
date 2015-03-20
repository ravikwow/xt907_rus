.class Lcom/motorola/messaging/activity/ComposeMessageActivity$17;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;->showSubjectEditor(Z)V
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
    .line 2213
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$17;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 2216
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$17;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$3100(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 2217
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$17;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/4 v1, 0x0

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->showSubjectEditor(Z)V
    invoke-static {v0, v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$3200(Lcom/motorola/messaging/activity/ComposeMessageActivity;Z)V

    .line 2219
    :cond_0
    return-void
.end method
