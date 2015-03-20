.class Lcom/motorola/blur/setup/ConnectionFailed$ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionFailed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/ConnectionFailed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/ConnectionFailed;


# direct methods
.method private constructor <init>(Lcom/motorola/blur/setup/ConnectionFailed;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/motorola/blur/setup/ConnectionFailed$ConnectivityReceiver;->this$0:Lcom/motorola/blur/setup/ConnectionFailed;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/setup/ConnectionFailed;Lcom/motorola/blur/setup/ConnectionFailed$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/setup/ConnectionFailed;
    .param p2, "x1"    # Lcom/motorola/blur/setup/ConnectionFailed$1;

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/motorola/blur/setup/ConnectionFailed$ConnectivityReceiver;-><init>(Lcom/motorola/blur/setup/ConnectionFailed;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 150
    if-nez p2, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    iget-object v2, p0, Lcom/motorola/blur/setup/ConnectionFailed$ConnectivityReceiver;->this$0:Lcom/motorola/blur/setup/ConnectionFailed;

    iget-object v2, v2, Lcom/motorola/blur/setup/ConnectionFailed;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 156
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/motorola/blur/setup/ConnectionFailed$ConnectivityReceiver;->this$0:Lcom/motorola/blur/setup/ConnectionFailed;

    iget-object v2, v2, Lcom/motorola/blur/setup/ConnectionFailed;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
