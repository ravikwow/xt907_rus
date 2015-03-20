.class Lcom/motorola/blur/startup/CpuIdleWaitActivity$1;
.super Landroid/os/AsyncTask;
.source "CpuIdleWaitActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/startup/CpuIdleWaitActivity;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/startup/CpuIdleWaitActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/startup/CpuIdleWaitActivity;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity$1;->this$0:Lcom/motorola/blur/startup/CpuIdleWaitActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 123
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/blur/startup/CpuIdleWaitActivity$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "param"    # [Ljava/lang/Void;

    .prologue
    const/4 v4, 0x0

    .line 126
    iget-object v0, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity$1;->this$0:Lcom/motorola/blur/startup/CpuIdleWaitActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    :goto_0
    return-object v4

    .line 131
    :cond_0
    const-string v0, "CpuIdleWaitActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disabling component: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity$1;->this$0:Lcom/motorola/blur/startup/CpuIdleWaitActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity$1;->this$0:Lcom/motorola/blur/startup/CpuIdleWaitActivity;

    iget-object v3, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity$1;->this$0:Lcom/motorola/blur/startup/CpuIdleWaitActivity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 139
    iget-object v0, p0, Lcom/motorola/blur/startup/CpuIdleWaitActivity$1;->this$0:Lcom/motorola/blur/startup/CpuIdleWaitActivity;

    # invokes: Landroid/app/Activity;->finish()V
    invoke-static {v0}, Lcom/motorola/blur/startup/CpuIdleWaitActivity;->access$001(Lcom/motorola/blur/startup/CpuIdleWaitActivity;)V

    goto :goto_0
.end method
