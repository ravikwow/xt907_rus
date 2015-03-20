.class Lcom/motorola/blur/setup/ConnectionSetupActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionSetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/ConnectionSetupActivity;->registerConnectionChangeReceiver(Landroid/content/Context;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/ConnectionSetupActivity;

.field final synthetic val$callBack:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/ConnectionSetupActivity;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity$2;->this$0:Lcom/motorola/blur/setup/ConnectionSetupActivity;

    iput-object p2, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity$2;->val$callBack:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 155
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 156
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 158
    .local v2, "networkType":I
    if-eqz v2, :cond_0

    if-eq v2, v7, :cond_0

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 162
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 163
    const-string v3, "ConnSetupActivity"

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "connected connectivity_action: "

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 164
    iget-object v3, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity$2;->this$0:Lcom/motorola/blur/setup/ConnectionSetupActivity;

    # getter for: Lcom/motorola/blur/setup/ConnectionSetupActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/motorola/blur/setup/ConnectionSetupActivity;->access$000(Lcom/motorola/blur/setup/ConnectionSetupActivity;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity$2;->val$callBack:Ljava/lang/Runnable;

    invoke-static {v3, v6, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 165
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity$2;->this$0:Lcom/motorola/blur/setup/ConnectionSetupActivity;

    # getter for: Lcom/motorola/blur/setup/ConnectionSetupActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/motorola/blur/setup/ConnectionSetupActivity;->access$000(Lcom/motorola/blur/setup/ConnectionSetupActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 174
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "networkType":I
    :cond_1
    :goto_0
    return-void

    .line 167
    .restart local v2    # "networkType":I
    :cond_2
    const-string v3, "ConnSetupActivity"

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "disconnected connectivity_action: "

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 170
    :cond_3
    const-string v3, "ConnSetupActivity"

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "ignoring connectivity_action: since I don\'t like the type: "

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
