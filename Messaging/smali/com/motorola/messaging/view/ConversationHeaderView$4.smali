.class Lcom/motorola/messaging/view/ConversationHeaderView$4;
.super Ljava/lang/Object;
.source "ConversationHeaderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/view/ConversationHeaderView;->onDraftChanged(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/view/ConversationHeaderView;

.field final synthetic val$hasDraft:Z


# direct methods
.method constructor <init>(Lcom/motorola/messaging/view/ConversationHeaderView;Z)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/motorola/messaging/view/ConversationHeaderView$4;->this$0:Lcom/motorola/messaging/view/ConversationHeaderView;

    iput-boolean p2, p0, Lcom/motorola/messaging/view/ConversationHeaderView$4;->val$hasDraft:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/motorola/messaging/view/ConversationHeaderView$4;->this$0:Lcom/motorola/messaging/view/ConversationHeaderView;

    # getter for: Lcom/motorola/messaging/view/ConversationHeaderView;->mDraftView:Landroid/view/View;
    invoke-static {v0}, Lcom/motorola/messaging/view/ConversationHeaderView;->access$100(Lcom/motorola/messaging/view/ConversationHeaderView;)Landroid/view/View;

    move-result-object v1

    iget-boolean v0, p0, Lcom/motorola/messaging/view/ConversationHeaderView$4;->val$hasDraft:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 276
    return-void

    .line 275
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
