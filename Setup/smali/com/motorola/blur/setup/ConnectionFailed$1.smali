.class Lcom/motorola/blur/setup/ConnectionFailed$1;
.super Landroid/os/Handler;
.source "ConnectionFailed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/ConnectionFailed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/ConnectionFailed;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/ConnectionFailed;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/motorola/blur/setup/ConnectionFailed$1;->this$0:Lcom/motorola/blur/setup/ConnectionFailed;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 165
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/motorola/blur/setup/ConnectionFailed$1;->this$0:Lcom/motorola/blur/setup/ConnectionFailed;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/ConnectionFailed;->isWifiOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/motorola/blur/setup/ConnectionFailed$1;->this$0:Lcom/motorola/blur/setup/ConnectionFailed;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/ConnectionFailed;->unregisterReceiver()V

    .line 168
    iget-object v0, p0, Lcom/motorola/blur/setup/ConnectionFailed$1;->this$0:Lcom/motorola/blur/setup/ConnectionFailed;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->finishActivity(I)V

    .line 169
    iget-object v0, p0, Lcom/motorola/blur/setup/ConnectionFailed$1;->this$0:Lcom/motorola/blur/setup/ConnectionFailed;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 170
    iget-object v0, p0, Lcom/motorola/blur/setup/ConnectionFailed$1;->this$0:Lcom/motorola/blur/setup/ConnectionFailed;

    invoke-virtual {v0}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->finish()V

    .line 173
    :cond_0
    return-void
.end method
