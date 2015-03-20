.class Lcom/motorola/messaging/activity/ClassZeroActivity$3;
.super Ljava/lang/Object;
.source "ClassZeroActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ClassZeroActivity;->saveMessage(Lcom/motorola/messaging/activity/ClassZeroActivity$SmsMessageWithState;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/ClassZeroActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$read:Z

.field final synthetic val$sms:Lcom/motorola/messaging/activity/ClassZeroActivity$SmsMessageWithState;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ClassZeroActivity;Lcom/motorola/messaging/activity/ClassZeroActivity$SmsMessageWithState;ZLandroid/content/Context;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$3;->this$0:Lcom/motorola/messaging/activity/ClassZeroActivity;

    iput-object p2, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$3;->val$sms:Lcom/motorola/messaging/activity/ClassZeroActivity$SmsMessageWithState;

    iput-boolean p3, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$3;->val$read:Z

    iput-object p4, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 322
    iget-object v0, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$3;->val$sms:Lcom/motorola/messaging/activity/ClassZeroActivity$SmsMessageWithState;

    iget-object v0, v0, Lcom/motorola/messaging/activity/ClassZeroActivity$SmsMessageWithState;->mSms:Landroid/telephony/SmsMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->isReplace()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$3;->this$0:Lcom/motorola/messaging/activity/ClassZeroActivity;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$3;->val$sms:Lcom/motorola/messaging/activity/ClassZeroActivity$SmsMessageWithState;

    iget-object v1, v1, Lcom/motorola/messaging/activity/ClassZeroActivity$SmsMessageWithState;->mSms:Landroid/telephony/SmsMessage;

    iget-boolean v2, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$3;->val$read:Z

    # invokes: Lcom/motorola/messaging/activity/ClassZeroActivity;->replaceMessage(Landroid/telephony/SmsMessage;Z)Landroid/net/Uri;
    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/activity/ClassZeroActivity;->access$200(Lcom/motorola/messaging/activity/ClassZeroActivity;Landroid/telephony/SmsMessage;Z)Landroid/net/Uri;

    .line 328
    :goto_0
    iget-boolean v0, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$3;->val$read:Z

    if-nez v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$3;->val$context:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/util/MessagingNotification;->updateNewMessageIndicator(Landroid/content/Context;ZZ)V

    .line 331
    :cond_0
    return-void

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$3;->this$0:Lcom/motorola/messaging/activity/ClassZeroActivity;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$3;->val$sms:Lcom/motorola/messaging/activity/ClassZeroActivity$SmsMessageWithState;

    iget-object v1, v1, Lcom/motorola/messaging/activity/ClassZeroActivity$SmsMessageWithState;->mSms:Landroid/telephony/SmsMessage;

    iget-boolean v2, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$3;->val$read:Z

    # invokes: Lcom/motorola/messaging/activity/ClassZeroActivity;->storeMessage(Landroid/telephony/SmsMessage;Z)Landroid/net/Uri;
    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/activity/ClassZeroActivity;->access$300(Lcom/motorola/messaging/activity/ClassZeroActivity;Landroid/telephony/SmsMessage;Z)Landroid/net/Uri;

    goto :goto_0
.end method
