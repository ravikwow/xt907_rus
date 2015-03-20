.class Lcom/motorola/blur/startup/CpuIdleWaitActivity$3;
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
    .line 184
    iput-object p1, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity$3;->this$0:Lcom/motorola/blur/startup/CpuIdleWaitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 186
    const-string v0, "CpuIdleWaitActivity"

    const-string v1, "CPU idle max wait duration elasped."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity$3;->this$0:Lcom/motorola/blur/startup/CpuIdleWaitActivity;

    invoke-virtual {v0}, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->finish()V

    .line 190
    return-void
.end method
