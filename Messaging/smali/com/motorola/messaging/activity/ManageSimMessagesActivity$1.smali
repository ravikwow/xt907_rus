.class Lcom/motorola/messaging/activity/ManageSimMessagesActivity$1;
.super Landroid/database/ContentObserver;
.source "ManageSimMessagesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/ManageSimMessagesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/ManageSimMessagesActivity;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$1;->this$0:Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfUpdate"    # Z

    .prologue
    .line 105
    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$1;->this$0:Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    # invokes: Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->refreshMessageList()V
    invoke-static {v0}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->access$000(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;)V

    .line 106
    return-void
.end method
