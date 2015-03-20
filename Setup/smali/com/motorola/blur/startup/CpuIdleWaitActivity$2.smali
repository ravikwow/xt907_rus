.class Lcom/motorola/blur/startup/CpuIdleWaitActivity$2;
.super Ljava/lang/Object;
.source "CpuIdleWaitActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/startup/CpuIdleWaitActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/startup/CpuIdleWaitActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/startup/CpuIdleWaitActivity;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity$2;->this$0:Lcom/motorola/blur/startup/CpuIdleWaitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 161
    iget-object v3, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity$2;->this$0:Lcom/motorola/blur/startup/CpuIdleWaitActivity;

    # invokes: Lcom/motorola/blur/startup/CpuIdleWaitActivity;->getCpuLoad()F
    invoke-static {v3}, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->access$100(Lcom/motorola/blur/startup/CpuIdleWaitActivity;)F

    move-result v1

    .line 162
    .local v1, "cpuLoad":F
    const-string v3, "CpuIdleWaitActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CPU load = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v3, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity$2;->this$0:Lcom/motorola/blur/startup/CpuIdleWaitActivity;

    # invokes: Lcom/motorola/blur/startup/CpuIdleWaitActivity;->getCpuStat()I
    invoke-static {v3}, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->access$200(Lcom/motorola/blur/startup/CpuIdleWaitActivity;)I

    move-result v2

    .line 166
    .local v2, "cpuStat":I
    const-string v3, "CpuIdleWaitActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Curr CPU load = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v3, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity$2;->this$0:Lcom/motorola/blur/startup/CpuIdleWaitActivity;

    # invokes: Lcom/motorola/blur/startup/CpuIdleWaitActivity;->getCpuAverage(I)I
    invoke-static {v3, v2}, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->access$300(Lcom/motorola/blur/startup/CpuIdleWaitActivity;I)I

    move-result v0

    .line 170
    .local v0, "cpuAve":I
    const-string v3, "CpuIdleWaitActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ave CPU = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    if-ltz v0, :cond_0

    iget-object v3, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity$2;->this$0:Lcom/motorola/blur/startup/CpuIdleWaitActivity;

    # getter for: Lcom/motorola/blur/startup/CpuIdleWaitActivity;->S_IDLE_THRESHOLD_CPU:I
    invoke-static {v3}, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->access$400(Lcom/motorola/blur/startup/CpuIdleWaitActivity;)I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 173
    const-string v3, "CpuIdleWaitActivity"

    const-string v4, "CPU idle threshold level reached."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v3, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity$2;->this$0:Lcom/motorola/blur/startup/CpuIdleWaitActivity;

    invoke-virtual {v3}, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->finish()V

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v3, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity$2;->this$0:Lcom/motorola/blur/startup/CpuIdleWaitActivity;

    # getter for: Lcom/motorola/blur/startup/CpuIdleWaitActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->access$600(Lcom/motorola/blur/startup/CpuIdleWaitActivity;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity$2;->this$0:Lcom/motorola/blur/startup/CpuIdleWaitActivity;

    # getter for: Lcom/motorola/blur/startup/CpuIdleWaitActivity;->S_PROFILE_INTERVAL:J
    invoke-static {v4}, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->access$500(Lcom/motorola/blur/startup/CpuIdleWaitActivity;)J

    move-result-wide v4

    invoke-virtual {v3, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
