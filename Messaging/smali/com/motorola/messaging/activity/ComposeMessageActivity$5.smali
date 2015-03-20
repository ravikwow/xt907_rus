.class Lcom/motorola/messaging/activity/ComposeMessageActivity$5;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 534
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$5;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 537
    if-eqz p2, :cond_0

    .line 538
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$5;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->setTextEditorCursorAtEnd()V
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1100(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    .line 540
    :cond_0
    return-void
.end method
