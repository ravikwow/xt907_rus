.class Lcom/motorola/blur/setup/CreateBlurAccountActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "CreateBlurAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/CreateBlurAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/CreateBlurAccountActivity;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$2;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 156
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$2;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    # getter for: Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->access$000(Lcom/motorola/blur/setup/CreateBlurAccountActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    monitor-enter v3

    .line 157
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "action":Ljava/lang/String;
    const-string v1, "SilentRegActionAccomplished"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    const-string v1, "SetupCBBAA"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "action is: SILENT_REG_ACTION_ACCOMPLISHED"

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 162
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$2;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    # getter for: Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->access$200(Lcom/motorola/blur/setup/CreateBlurAccountActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 174
    :cond_0
    :goto_0
    monitor-exit v3

    .line 175
    return-void

    .line 163
    :cond_1
    const-string v1, "SilentRegActionTemplyFailed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 164
    const-string v1, "SetupCBBAA"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "action is: SILENT_REG_ACTION_TEMP_FAILED"

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 165
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$2;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    # getter for: Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->access$200(Lcom/motorola/blur/setup/CreateBlurAccountActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 174
    .end local v0    # "action":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 166
    .restart local v0    # "action":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v1, "SilentRegActionRadioDown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 167
    const-string v1, "SetupCBBAA"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "action is: SILENT_REG_ACTION_RADIO_DOWN"

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 168
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$2;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    # getter for: Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->access$200(Lcom/motorola/blur/setup/CreateBlurAccountActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 169
    :cond_3
    const-string v1, "com.motorola.blur.setup.starttimer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    const-string v1, "SetupCBBAA"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Login start, timer start "

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 171
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$2;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    # getter for: Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->access$200(Lcom/motorola/blur/setup/CreateBlurAccountActivity;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x4

    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$2;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    # getter for: Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mQASilentLoginReqd:Z
    invoke-static {v1}, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->access$100(Lcom/motorola/blur/setup/CreateBlurAccountActivity;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-wide/32 v1, 0x2bf20

    :goto_1
    invoke-virtual {v4, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_4
    const-wide/32 v1, 0xea60

    goto :goto_1
.end method
