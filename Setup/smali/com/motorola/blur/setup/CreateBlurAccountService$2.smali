.class Lcom/motorola/blur/setup/CreateBlurAccountService$2;
.super Ljava/util/TimerTask;
.source "CreateBlurAccountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/CreateBlurAccountService;->startAutoTrackService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/CreateBlurAccountService;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/CreateBlurAccountService;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/motorola/blur/setup/CreateBlurAccountService$2;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountService$2;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountService;

    # getter for: Lcom/motorola/blur/setup/CreateBlurAccountService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/motorola/blur/setup/CreateBlurAccountService;->access$300(Lcom/motorola/blur/setup/CreateBlurAccountService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 198
    return-void
.end method
