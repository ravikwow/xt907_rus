.class public Lcom/motorola/blur/setup/ConnectionSetupActivity;
.super Lcom/motorola/blur/fsm/SetupActivityGroupFSM;
.source "ConnectionSetupActivity.java"


# static fields
.field protected static final INST_STATE_CHECK_CONN_OUTSTANDING:Ljava/lang/String; = "check_conn_outstanding"

.field protected static final PROGRESS_DIALOG_CONNECTION_WAITING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ConnSetupActivity"


# instance fields
.field protected mCheckConnOutstanding:Z

.field private volatile mConnectionChangeReceiver:Landroid/content/BroadcastReceiver;

.field private final mHandler:Landroid/os/Handler;

.field protected mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

.field protected mTimerDelayCnt:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;-><init>()V

    .line 40
    iput v0, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mTimerDelayCnt:I

    .line 41
    iput-object v1, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    .line 45
    iput-boolean v0, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mCheckConnOutstanding:Z

    .line 116
    iput-object v1, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mConnectionChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    new-instance v0, Lcom/motorola/blur/setup/ConnectionSetupActivity$1;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/ConnectionSetupActivity$1;-><init>(Lcom/motorola/blur/setup/ConnectionSetupActivity;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/blur/setup/ConnectionSetupActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/setup/ConnectionSetupActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/blur/setup/ConnectionSetupActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/setup/ConnectionSetupActivity;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/motorola/blur/setup/ConnectionSetupActivity;->unregisterTimer()V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/blur/setup/ConnectionSetupActivity;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/setup/ConnectionSetupActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mConnectionChangeReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$202(Lcom/motorola/blur/setup/ConnectionSetupActivity;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/setup/ConnectionSetupActivity;
    .param p1, "x1"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mConnectionChangeReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$300(Lcom/motorola/blur/setup/ConnectionSetupActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/setup/ConnectionSetupActivity;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/motorola/blur/setup/ConnectionSetupActivity;->dismissDialog()V

    return-void
.end method

.method private dismissDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 77
    iget-object v0, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0, v1}, Landroid/app/Activity;->dismissDialog(I)V

    .line 79
    invoke-virtual {p0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 81
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    .line 83
    return-void
.end method

.method private final registerConnectionChangeReceiver(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Ljava/lang/Runnable;

    .prologue
    .line 151
    new-instance v0, Lcom/motorola/blur/setup/ConnectionSetupActivity$2;

    invoke-direct {v0, p0, p2}, Lcom/motorola/blur/setup/ConnectionSetupActivity$2;-><init>(Lcom/motorola/blur/setup/ConnectionSetupActivity;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mConnectionChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 177
    iget-object v0, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mConnectionChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 178
    return-void
.end method

.method private final registerTimer(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Ljava/lang/Runnable;

    .prologue
    const/4 v2, 0x1

    .line 182
    iget-object v1, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 183
    .local v0, "msg":Landroid/os/Message;
    const-string v1, "ConnSetupActivity"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "register timer"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 184
    iget-object v1, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 185
    return-void
.end method

.method private final unregisterTimer()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 194
    return-void
.end method


# virtual methods
.method protected final checkConnection(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "onConnection"    # Ljava/lang/Runnable;
    .param p2, "onTimer"    # Ljava/lang/Runnable;

    .prologue
    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/motorola/blur/setup/ConnectionSetupActivity;->checkConnectionOrWait(Ljava/lang/Runnable;Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    if-eqz p1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 92
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 95
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method protected final checkConnectionOrWait(Ljava/lang/Runnable;Ljava/lang/Runnable;)Z
    .locals 4
    .param p1, "onConnection"    # Ljava/lang/Runnable;
    .param p2, "onTimer"    # Ljava/lang/Runnable;

    .prologue
    const/4 v2, 0x1

    .line 103
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 104
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 105
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    :goto_0
    return v2

    .line 109
    :cond_0
    invoke-virtual {p0, v2}, Landroid/app/Activity;->showDialog(I)V

    .line 110
    invoke-direct {p0, p0, p1}, Lcom/motorola/blur/setup/ConnectionSetupActivity;->registerConnectionChangeReceiver(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 111
    invoke-direct {p0, p0, p2}, Lcom/motorola/blur/setup/ConnectionSetupActivity;->registerTimer(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 112
    iput-boolean v2, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mCheckConnOutstanding:Z

    .line 113
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 50
    packed-switch p1, :pswitch_data_0

    .line 62
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 52
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0a0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mTimerDelayCnt:I

    .line 53
    new-instance v0, Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/SetupProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    .line 54
    iget-object v0, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    const v1, 0x7f080072

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/SetupProgressDialog;->setProgressText(I)V

    .line 55
    iget-object v0, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 56
    iget-object v0, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    iget v1, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mTimerDelayCnt:I

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/SetupProgressDialog;->setMax(I)V

    .line 57
    iget-object v0, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v0, v2}, Lcom/motorola/blur/setup/SetupProgressDialog;->setProgress(I)V

    .line 58
    iget-object v0, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/motorola/blur/setup/ConnectionSetupActivity;->dismissDialog()V

    .line 68
    iget-object v0, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mConnectionChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mConnectionChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 71
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mConnectionChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 73
    invoke-super {p0}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->onStop()V

    .line 74
    return-void
.end method
