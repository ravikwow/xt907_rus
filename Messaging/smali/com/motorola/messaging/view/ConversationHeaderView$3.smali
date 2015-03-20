.class Lcom/motorola/messaging/view/ConversationHeaderView$3;
.super Ljava/lang/Object;
.source "ConversationHeaderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/view/ConversationHeaderView;->onContactUpdated(Lcom/motorola/messaging/contact/Contact;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/view/ConversationHeaderView;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/view/ConversationHeaderView;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/motorola/messaging/view/ConversationHeaderView$3;->this$0:Lcom/motorola/messaging/view/ConversationHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/motorola/messaging/view/ConversationHeaderView$3;->this$0:Lcom/motorola/messaging/view/ConversationHeaderView;

    # invokes: Lcom/motorola/messaging/view/ConversationHeaderView;->updateFromView()V
    invoke-static {v0}, Lcom/motorola/messaging/view/ConversationHeaderView;->access$000(Lcom/motorola/messaging/view/ConversationHeaderView;)V

    .line 165
    return-void
.end method
