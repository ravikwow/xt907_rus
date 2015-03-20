.class Lcom/motorola/messaging/activity/ComposeMessageActivity$56;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;->showRestrictionWarningAndExit(Ljava/lang/String;)V
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
    .line 3914
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$56;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3919
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$56;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$56;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mConversation:Lcom/motorola/messaging/conversation/Conversation;
    invoke-static {v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2800(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/conversation/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/messaging/conversation/Conversation;->getThreadId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/conversation/Conversation;->asyncDeleteEmpty(Landroid/content/Context;J)V

    .line 3920
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$56;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 3921
    return-void
.end method
