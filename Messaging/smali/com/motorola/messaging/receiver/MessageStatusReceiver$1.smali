.class Lcom/motorola/messaging/receiver/MessageStatusReceiver$1;
.super Ljava/lang/Object;
.source "MessageStatusReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/receiver/MessageStatusReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/receiver/MessageStatusReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/receiver/MessageStatusReceiver;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/motorola/messaging/receiver/MessageStatusReceiver$1;->this$0:Lcom/motorola/messaging/receiver/MessageStatusReceiver;

    iput-object p2, p0, Lcom/motorola/messaging/receiver/MessageStatusReceiver$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/motorola/messaging/receiver/MessageStatusReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 60
    const-string v0, "com.motorola.contracts.messaging.intent.SMS_DELIVERED"

    iget-object v1, p0, Lcom/motorola/messaging/receiver/MessageStatusReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/motorola/messaging/receiver/MessageStatusReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 63
    .local v2, "messageUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/motorola/messaging/receiver/MessageStatusReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v1, "pdu"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    .line 64
    .local v3, "pdu":[B
    iget-object v0, p0, Lcom/motorola/messaging/receiver/MessageStatusReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v1, "format"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, "format":Ljava/lang/String;
    iget-object v0, p0, Lcom/motorola/messaging/receiver/MessageStatusReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v1, "stack_type"

    sget v8, Lcom/motorola/messaging/frameworkadapter/motorola/SmsManagerExtension;->SMS_STACK_TYPE_GSM:I

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 66
    .local v5, "stackType":I
    if-eqz v3, :cond_0

    .line 67
    iget-object v0, p0, Lcom/motorola/messaging/receiver/MessageStatusReceiver$1;->this$0:Lcom/motorola/messaging/receiver/MessageStatusReceiver;

    iget-object v1, p0, Lcom/motorola/messaging/receiver/MessageStatusReceiver$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/motorola/messaging/receiver/MessageStatusReceiver;->updateMessageStatus(Landroid/content/Context;Landroid/net/Uri;[BLjava/lang/String;I)V
    invoke-static/range {v0 .. v5}, Lcom/motorola/messaging/receiver/MessageStatusReceiver;->access$000(Lcom/motorola/messaging/receiver/MessageStatusReceiver;Landroid/content/Context;Landroid/net/Uri;[BLjava/lang/String;I)V

    .line 68
    iget-object v0, p0, Lcom/motorola/messaging/receiver/MessageStatusReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/motorola/messaging/util/MessagingNotification;->updateNewMessageIndicator(Landroid/content/Context;)V

    .line 78
    .end local v2    # "messageUri":Landroid/net/Uri;
    .end local v3    # "pdu":[B
    .end local v4    # "format":Ljava/lang/String;
    .end local v5    # "stackType":I
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    const-string v0, "com.motorola.intent.WAP_PUSH_NOTIFICATION_UPDATE"

    iget-object v1, p0, Lcom/motorola/messaging/receiver/MessageStatusReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/motorola/messaging/receiver/MessageStatusReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v1, "isNew"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 73
    .local v6, "isNew":Z
    iget-object v0, p0, Lcom/motorola/messaging/receiver/MessageStatusReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v1, "isVisualAlertOnly"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 74
    .local v7, "isVisualAlertOnly":Z
    const-string v0, "MsgStatusReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MMS-STATUS - Wap Push (MMS notification) received, isNew:"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " isVisualAlertOnly:"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/motorola/messaging/receiver/MessageStatusReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v6, v7}, Lcom/motorola/messaging/util/MessagingNotification;->updateNewMessageIndicator(Landroid/content/Context;ZZ)V

    goto :goto_0
.end method
