.class Lcom/motorola/messaging/activity/ConfirmRateLimitActivity$3;
.super Ljava/lang/Object;
.source "ConfirmRateLimitActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ConfirmRateLimitActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/ConfirmRateLimitActivity;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ConfirmRateLimitActivity;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/motorola/messaging/activity/ConfirmRateLimitActivity$3;->this$0:Lcom/motorola/messaging/activity/ConfirmRateLimitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 69
    # getter for: Lcom/motorola/messaging/activity/ConfirmRateLimitActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/ConfirmRateLimitActivity;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const-string v0, "ConfirmRtLmtActvy"

    const-string v1, "Runnable executed."

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConfirmRateLimitActivity$3;->this$0:Lcom/motorola/messaging/activity/ConfirmRateLimitActivity;

    const/4 v1, 0x0

    # invokes: Lcom/motorola/messaging/activity/ConfirmRateLimitActivity;->doAnswer(Z)V
    invoke-static {v0, v1}, Lcom/motorola/messaging/activity/ConfirmRateLimitActivity;->access$000(Lcom/motorola/messaging/activity/ConfirmRateLimitActivity;Z)V

    .line 73
    return-void
.end method
