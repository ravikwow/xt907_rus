.class public Lcom/motorola/blur/setup/CreateBlurAccountReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CreateBlurAccountReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CreateBlurAccountReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-static {p1}, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->hasBlurAccount(Landroid/content/Context;)Z

    move-result v1

    .line 34
    .local v1, "isBlurAcctCreated":Z
    if-eqz v1, :cond_0

    .line 36
    const-string v5, "CreateBlurAccountReceiver"

    const-string v6, "Blur account was already created.  No need to recreate it again."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const-string v5, "CreateBlurAccountReceiver"

    const-string v6, "Disabling CreateBlurAccount components."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    new-instance v5, Lcom/motorola/blur/setup/CreateBlurAccountReceiver$1;

    invoke-direct {v5, p0, p1}, Lcom/motorola/blur/setup/CreateBlurAccountReceiver$1;-><init>(Lcom/motorola/blur/setup/CreateBlurAccountReceiver;Landroid/content/Context;)V

    new-array v6, v2, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 91
    :goto_0
    return-void

    .line 54
    :cond_0
    const-string v5, "connectivity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 55
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_2

    const/4 v4, 0x0

    .line 56
    .local v4, "networkInfo":Landroid/net/NetworkInfo;
    :goto_1
    if-nez v4, :cond_3

    .line 58
    .local v2, "isDataConnected":Z
    :cond_1
    :goto_2
    if-nez v2, :cond_4

    .line 60
    const-string v5, "CreateBlurAccountReceiver"

    const-string v6, "No network connection.  Wait for next trigger."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 55
    .end local v2    # "isDataConnected":Z
    .end local v4    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    goto :goto_1

    .line 56
    .restart local v4    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_3
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v6, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    .line 65
    .restart local v2    # "isDataConnected":Z
    :cond_4
    invoke-static {p1}, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->isTosAccepted(Landroid/content/Context;)Z

    move-result v3

    .line 66
    .local v3, "isTosAccepted":Z
    if-nez v3, :cond_5

    .line 68
    const-string v5, "CreateBlurAccountReceiver"

    const-string v6, "TOS not accepted yet.  Wait for next trigger."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 74
    :cond_5
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/motorola/blur/setup/CreateBlurAccountReceiver$2;

    invoke-direct {v6, p0, p1}, Lcom/motorola/blur/setup/CreateBlurAccountReceiver$2;-><init>(Lcom/motorola/blur/setup/CreateBlurAccountReceiver;Landroid/content/Context;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
