.class Lcom/motorola/blur/setup/ConnectionSetupActivity$1;
.super Landroid/os/Handler;
.source "ConnectionSetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/ConnectionSetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/ConnectionSetupActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/ConnectionSetupActivity;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity$1;->this$0:Lcom/motorola/blur/setup/ConnectionSetupActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 122
    iget-object v4, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity$1;->this$0:Lcom/motorola/blur/setup/ConnectionSetupActivity;

    iget-object v4, v4, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    if-eqz v4, :cond_1

    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v4, v7, :cond_1

    .line 123
    const/16 v0, 0x64

    .line 124
    .local v0, "PROGRESS_DELAY":I
    const/4 v1, 0x1

    .line 125
    .local v1, "PROGRESS_STEP":I
    iget-object v4, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity$1;->this$0:Lcom/motorola/blur/setup/ConnectionSetupActivity;

    iget-object v4, v4, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v4, v7}, Lcom/motorola/blur/setup/SetupProgressDialog;->incrementProgressBy(I)V

    .line 126
    iget-object v4, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity$1;->this$0:Lcom/motorola/blur/setup/ConnectionSetupActivity;

    iget-object v4, v4, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v4}, Lcom/motorola/blur/setup/SetupProgressDialog;->getProgress()I

    move-result v4

    iget-object v5, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity$1;->this$0:Lcom/motorola/blur/setup/ConnectionSetupActivity;

    iget v5, v5, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mTimerDelayCnt:I

    if-ge v4, v5, :cond_1

    .line 127
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v3

    .line 128
    .local v3, "msg1":Landroid/os/Message;
    iget-object v4, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity$1;->this$0:Lcom/motorola/blur/setup/ConnectionSetupActivity;

    # getter for: Lcom/motorola/blur/setup/ConnectionSetupActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/motorola/blur/setup/ConnectionSetupActivity;->access$000(Lcom/motorola/blur/setup/ConnectionSetupActivity;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v5, 0x64

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 146
    .end local v0    # "PROGRESS_DELAY":I
    .end local v1    # "PROGRESS_STEP":I
    .end local v3    # "msg1":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v4, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity$1;->this$0:Lcom/motorola/blur/setup/ConnectionSetupActivity;

    # invokes: Lcom/motorola/blur/setup/ConnectionSetupActivity;->unregisterTimer()V
    invoke-static {v4}, Lcom/motorola/blur/setup/ConnectionSetupActivity;->access$100(Lcom/motorola/blur/setup/ConnectionSetupActivity;)V

    .line 135
    iget-object v4, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity$1;->this$0:Lcom/motorola/blur/setup/ConnectionSetupActivity;

    # getter for: Lcom/motorola/blur/setup/ConnectionSetupActivity;->mConnectionChangeReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v4}, Lcom/motorola/blur/setup/ConnectionSetupActivity;->access$200(Lcom/motorola/blur/setup/ConnectionSetupActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 136
    iget-object v4, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity$1;->this$0:Lcom/motorola/blur/setup/ConnectionSetupActivity;

    iget-object v5, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity$1;->this$0:Lcom/motorola/blur/setup/ConnectionSetupActivity;

    # getter for: Lcom/motorola/blur/setup/ConnectionSetupActivity;->mConnectionChangeReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v5}, Lcom/motorola/blur/setup/ConnectionSetupActivity;->access$200(Lcom/motorola/blur/setup/ConnectionSetupActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 137
    iget-object v4, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity$1;->this$0:Lcom/motorola/blur/setup/ConnectionSetupActivity;

    const/4 v5, 0x0

    # setter for: Lcom/motorola/blur/setup/ConnectionSetupActivity;->mConnectionChangeReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v4, v5}, Lcom/motorola/blur/setup/ConnectionSetupActivity;->access$202(Lcom/motorola/blur/setup/ConnectionSetupActivity;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 139
    :cond_2
    const-string v4, "ConnSetupActivity"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "stop timer with msg = "

    aput-object v6, v5, v8

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 140
    iget-object v4, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity$1;->this$0:Lcom/motorola/blur/setup/ConnectionSetupActivity;

    iput-boolean v8, v4, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mCheckConnOutstanding:Z

    .line 141
    iget-object v4, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity$1;->this$0:Lcom/motorola/blur/setup/ConnectionSetupActivity;

    # invokes: Lcom/motorola/blur/setup/ConnectionSetupActivity;->dismissDialog()V
    invoke-static {v4}, Lcom/motorola/blur/setup/ConnectionSetupActivity;->access$300(Lcom/motorola/blur/setup/ConnectionSetupActivity;)V

    .line 143
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Runnable;

    .line 144
    .local v2, "callBack":Ljava/lang/Runnable;
    if-eqz v2, :cond_0

    .line 145
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
