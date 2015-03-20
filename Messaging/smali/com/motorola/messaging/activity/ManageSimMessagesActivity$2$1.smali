.class Lcom/motorola/messaging/activity/ManageSimMessagesActivity$2$1;
.super Ljava/lang/Object;
.source "ManageSimMessagesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ManageSimMessagesActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/messaging/activity/ManageSimMessagesActivity$2;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ManageSimMessagesActivity$2;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$2$1;->this$1:Lcom/motorola/messaging/activity/ManageSimMessagesActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$2$1;->this$1:Lcom/motorola/messaging/activity/ManageSimMessagesActivity$2;

    iget-object v0, v0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$2;->this$0:Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$2$1;->this$1:Lcom/motorola/messaging/activity/ManageSimMessagesActivity$2;

    iget-object v1, v1, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$2;->this$0:Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    # getter for: Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mState:I
    invoke-static {v1}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->access$500(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;)I

    move-result v1

    # invokes: Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->updateState(I)V
    invoke-static {v0, v1}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->access$600(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;I)V

    .line 191
    return-void
.end method
