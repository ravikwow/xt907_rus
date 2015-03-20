.class final Lcom/motorola/messaging/util/MessagingNotification$4;
.super Landroid/os/AsyncTask;
.source "MessagingNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/util/MessagingNotification;->nonBlockingUpdateSendFailedNotification(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1546
    iput-object p1, p0, Lcom/motorola/messaging/util/MessagingNotification$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "none"    # [Ljava/lang/Void;

    .prologue
    .line 1548
    iget-object v0, p0, Lcom/motorola/messaging/util/MessagingNotification$4;->val$context:Landroid/content/Context;

    const/4 v1, 0x0

    # invokes: Lcom/motorola/messaging/util/MessagingNotification;->getUndeliveredMessageCount(Landroid/content/Context;[J)I
    invoke-static {v0, v1}, Lcom/motorola/messaging/util/MessagingNotification;->access$400(Landroid/content/Context;[J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1546
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/util/MessagingNotification$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 1552
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 1553
    iget-object v0, p0, Lcom/motorola/messaging/util/MessagingNotification$4;->val$context:Landroid/content/Context;

    const/16 v1, 0x67

    invoke-static {v0, v1}, Lcom/motorola/messaging/util/MessagingNotification;->clearNotification(Landroid/content/Context;I)V

    .line 1559
    :goto_0
    return-void

    .line 1557
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/util/MessagingNotification$4;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/motorola/messaging/util/MessagingNotification;->notifySendFailed(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1546
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/util/MessagingNotification$4;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
