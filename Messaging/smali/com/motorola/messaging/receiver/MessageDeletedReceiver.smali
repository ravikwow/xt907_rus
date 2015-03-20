.class public Lcom/motorola/messaging/receiver/MessageDeletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MessageDeletedReceiver.java"


# instance fields
.field listIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 23
    const-string v2, "com.motorola.android.intent.action.SMS_DELETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 24
    sget-boolean v2, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v2, :cond_0

    .line 25
    const-string v2, "MessageDeletedReceiver"

    const-string v3, "SMS_DELETED_ACTION"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_0
    const-string v2, "deleted_sms_list"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/messaging/receiver/MessageDeletedReceiver;->listIds:Ljava/util/ArrayList;

    .line 28
    iget-object v2, p0, Lcom/motorola/messaging/receiver/MessageDeletedReceiver;->listIds:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 29
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/motorola/messaging/receiver/MessageDeletedReceiver;->listIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 30
    iget-object v2, p0, Lcom/motorola/messaging/receiver/MessageDeletedReceiver;->listIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 31
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "sms"

    invoke-static {v2, v3, v4}, Lcom/motorola/messaging/composer/MessageItem;->clearCache(JLjava/lang/String;)V

    .line 29
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "i":I
    :cond_1
    const-string v2, "com.motorola.android.intent.action.MMS_DELETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 37
    sget-boolean v2, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v2, :cond_2

    .line 38
    const-string v2, "MessageDeletedReceiver"

    const-string v3, "MMS_DELETED_ACTION"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_2
    const-string v2, "deleted_mms_list"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/messaging/receiver/MessageDeletedReceiver;->listIds:Ljava/util/ArrayList;

    .line 41
    iget-object v2, p0, Lcom/motorola/messaging/receiver/MessageDeletedReceiver;->listIds:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 42
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/motorola/messaging/receiver/MessageDeletedReceiver;->listIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 43
    iget-object v2, p0, Lcom/motorola/messaging/receiver/MessageDeletedReceiver;->listIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 44
    .restart local v0    # "b":Landroid/os/Bundle;
    const-string v2, "_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "mms"

    invoke-static {v2, v3, v4}, Lcom/motorola/messaging/composer/MessageItem;->clearCache(JLjava/lang/String;)V

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 48
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "i":I
    :cond_3
    return-void
.end method
