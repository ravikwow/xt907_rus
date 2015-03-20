.class Lcom/motorola/messaging/activity/ComposeMessageActivity$60;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;->updateSendFailedNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

.field final synthetic val$threadId:J


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;J)V
    .locals 0

    .prologue
    .line 5345
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$60;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    iput-wide p2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$60;->val$threadId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5347
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$60;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    iget-wide v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$60;->val$threadId:J

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/util/MessagingNotification;->updateSendFailedNotificationForThread(Landroid/content/Context;J)V

    .line 5349
    return-void
.end method
