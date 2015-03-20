.class public Lcom/motorola/messaging/util/MessagingNotification$OnDeletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MessagingNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/util/MessagingNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnDeletedReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 158
    # getter for: Lcom/motorola/messaging/util/MessagingNotification;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/util/MessagingNotification;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    const-string v0, "MsgngNotification"

    const-string v1, "[MessagingNotification] clear notification: mark all msgs seen"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_0
    invoke-static {p1}, Lcom/motorola/messaging/conversation/Conversation;->markAllConversationsAsSeen(Landroid/content/Context;)V

    .line 163
    return-void
.end method
