.class Lcom/motorola/messaging/activity/ManageSimMessagesActivity$4$1;
.super Ljava/lang/Object;
.source "ManageSimMessagesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ManageSimMessagesActivity$4;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/messaging/activity/ManageSimMessagesActivity$4;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ManageSimMessagesActivity$4;)V
    .locals 0

    .prologue
    .line 487
    iput-object p1, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$4$1;->this$1:Lcom/motorola/messaging/activity/ManageSimMessagesActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$4$1;->this$1:Lcom/motorola/messaging/activity/ManageSimMessagesActivity$4;

    iget-object v0, v0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$4;->this$0:Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    # invokes: Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->deleteAllFromSim()V
    invoke-static {v0}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->access$1100(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;)V

    .line 490
    return-void
.end method
