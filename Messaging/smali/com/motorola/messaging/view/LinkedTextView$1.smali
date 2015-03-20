.class Lcom/motorola/messaging/view/LinkedTextView$1;
.super Ljava/lang/Object;
.source "LinkedTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/view/LinkedTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/view/LinkedTextView;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/view/LinkedTextView;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/motorola/messaging/view/LinkedTextView$1;->this$0:Lcom/motorola/messaging/view/LinkedTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/motorola/messaging/view/LinkedTextView$1;->this$0:Lcom/motorola/messaging/view/LinkedTextView;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/messaging/view/LinkedTextView;->mTouchState:I
    invoke-static {v0, v1}, Lcom/motorola/messaging/view/LinkedTextView;->access$002(Lcom/motorola/messaging/view/LinkedTextView;I)I

    .line 233
    iget-object v0, p0, Lcom/motorola/messaging/view/LinkedTextView$1;->this$0:Lcom/motorola/messaging/view/LinkedTextView;

    invoke-virtual {v0}, Lcom/motorola/messaging/view/LinkedTextView;->performLongClick()Z

    .line 234
    return-void
.end method
