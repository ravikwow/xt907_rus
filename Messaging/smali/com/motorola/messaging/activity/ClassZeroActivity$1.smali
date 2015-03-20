.class Lcom/motorola/messaging/activity/ClassZeroActivity$1;
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
    .line 231
    iput-object p1, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$1;->this$0:Lcom/motorola/messaging/activity/ClassZeroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 233
    iget-object v0, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$1;->this$0:Lcom/motorola/messaging/activity/ClassZeroActivity;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$1;->this$0:Lcom/motorola/messaging/activity/ClassZeroActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/motorola/messaging/activity/ClassZeroActivity;->cancelNotification(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/motorola/messaging/activity/ClassZeroActivity;->access$000(Lcom/motorola/messaging/activity/ClassZeroActivity;Landroid/content/Context;)V

    .line 234
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 235
    invoke-static {p1}, Lcom/motorola/messaging/activity/ClassZeroActivity;->removeDialog(Ljava/lang/Object;)V

    .line 236
    iget-object v0, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$1;->this$0:Lcom/motorola/messaging/activity/ClassZeroActivity;

    # invokes: Lcom/motorola/messaging/activity/ClassZeroActivity;->checkIfFinish()V
    invoke-static {v0}, Lcom/motorola/messaging/activity/ClassZeroActivity;->access$100(Lcom/motorola/messaging/activity/ClassZeroActivity;)V

    .line 237
    return-void
.end method
