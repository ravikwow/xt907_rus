.class Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageListener;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeleteMessageListener"
.end annotation


# instance fields
.field private mTask:Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;


# direct methods
.method public constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;)V
    .locals 0
    .param p1, "task"    # Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;

    .prologue
    .line 5275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5276
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageListener;->mTask:Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;

    .line 5277
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 5282
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageListener;->mTask:Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;

    if-eqz v0, :cond_0

    .line 5283
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageListener;->mTask:Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 5284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageListener;->mTask:Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;

    .line 5286
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 5287
    return-void
.end method
