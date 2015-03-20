.class Lcom/motorola/messaging/activity/ClassZeroActivity$2;
.super Ljava/lang/Object;
.source "ClassZeroActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/ClassZeroActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/ClassZeroActivity;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ClassZeroActivity;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$2;->this$0:Lcom/motorola/messaging/activity/ClassZeroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 242
    iget-object v0, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$2;->this$0:Lcom/motorola/messaging/activity/ClassZeroActivity;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$2;->this$0:Lcom/motorola/messaging/activity/ClassZeroActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/motorola/messaging/activity/ClassZeroActivity;->cancelNotification(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/motorola/messaging/activity/ClassZeroActivity;->access$000(Lcom/motorola/messaging/activity/ClassZeroActivity;Landroid/content/Context;)V

    .line 243
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 244
    iget-object v1, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$2;->this$0:Lcom/motorola/messaging/activity/ClassZeroActivity;

    move-object v0, p1

    check-cast v0, Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;

    invoke-virtual {v0}, Lcom/motorola/messaging/activity/ClassZeroActivity$ClassZeroMessageDialog;->getSmsMessage()Lcom/motorola/messaging/activity/ClassZeroActivity$SmsMessageWithState;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/motorola/messaging/activity/ClassZeroActivity;->saveMessage(Lcom/motorola/messaging/activity/ClassZeroActivity$SmsMessageWithState;Z)V

    .line 245
    invoke-static {p1}, Lcom/motorola/messaging/activity/ClassZeroActivity;->removeDialog(Ljava/lang/Object;)V

    .line 246
    iget-object v0, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$2;->this$0:Lcom/motorola/messaging/activity/ClassZeroActivity;

    # invokes: Lcom/motorola/messaging/activity/ClassZeroActivity;->checkIfFinish()V
    invoke-static {v0}, Lcom/motorola/messaging/activity/ClassZeroActivity;->access$100(Lcom/motorola/messaging/activity/ClassZeroActivity;)V

    .line 247
    return-void
.end method
