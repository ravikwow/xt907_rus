.class public Lcom/motorola/messaging/receiver/ClearNotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ClearNotificationReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v3, -0x80000000

    .line 31
    const-string v1, "com.motorola.blur.conversations.notification.ACTION_CLEAR_NOTIFICATION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    const-string v1, "com.motorola.blur.conversations.notification.EXTRA_NOTIFICATION_ID"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 33
    .local v0, "notificationId":I
    if-ne v0, v3, :cond_0

    .line 34
    const-string v1, "ClearNotifReceiver"

    const-string v2, "Notification id is not set in the intent"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .end local v0    # "notificationId":I
    :goto_0
    return-void

    .line 38
    .restart local v0    # "notificationId":I
    :cond_0
    const-string v1, "com.motorola.blur.conversations.notification.EXTRA_CANCEL_NOTIFICATION"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/motorola/messaging/util/MessagingNotification;->clearNotification(Landroid/content/Context;IZ)V

    goto :goto_0

    .line 42
    .end local v0    # "notificationId":I
    :cond_1
    const-string v1, "ClearNotifReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected intent action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
