.class Lcom/motorola/blur/setup/CreateBlurAccountActivity$3;
.super Ljava/lang/Object;
.source "CreateBlurAccountActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/CreateBlurAccountActivity;->checkConnectionAndStartSevice()V
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
    .line 208
    iput-object p1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$3;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$3;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    # getter for: Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v0}, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->access$000(Lcom/motorola/blur/setup/CreateBlurAccountActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    monitor-enter v1

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$3;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    invoke-static {}, Lcom/motorola/blur/setup/SilentBlurUtility;->silentSetupSDFileExists()Z

    move-result v2

    # setter for: Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mQASilentLoginReqd:Z
    invoke-static {v0, v2}, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->access$102(Lcom/motorola/blur/setup/CreateBlurAccountActivity;Z)Z

    .line 214
    new-instance v0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$3$1;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/CreateBlurAccountActivity$3$1;-><init>(Lcom/motorola/blur/setup/CreateBlurAccountActivity$3;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 244
    monitor-exit v1

    .line 245
    return-void

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
