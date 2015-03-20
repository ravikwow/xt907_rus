.class Lcom/motorola/messaging/view/MessageEditorLayout$1;
.super Ljava/lang/Object;
.source "MessageEditorLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/view/MessageEditorLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/view/MessageEditorLayout;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/view/MessageEditorLayout;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/motorola/messaging/view/MessageEditorLayout$1;->this$0:Lcom/motorola/messaging/view/MessageEditorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageEditorLayout$1;->this$0:Lcom/motorola/messaging/view/MessageEditorLayout;

    # getter for: Lcom/motorola/messaging/view/MessageEditorLayout;->mEditor:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/motorola/messaging/view/MessageEditorLayout;->access$000(Lcom/motorola/messaging/view/MessageEditorLayout;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageEditorLayout$1;->this$0:Lcom/motorola/messaging/view/MessageEditorLayout;

    # getter for: Lcom/motorola/messaging/view/MessageEditorLayout;->mEditor:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/motorola/messaging/view/MessageEditorLayout;->access$000(Lcom/motorola/messaging/view/MessageEditorLayout;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageEditorLayout$1;->this$0:Lcom/motorola/messaging/view/MessageEditorLayout;

    # getter for: Lcom/motorola/messaging/view/MessageEditorLayout;->mEditor:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/motorola/messaging/view/MessageEditorLayout;->access$000(Lcom/motorola/messaging/view/MessageEditorLayout;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
