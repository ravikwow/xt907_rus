.class Lcom/motorola/blur/setup/FinishSetupFlowReceiver$FinishSetupTask;
.super Landroid/os/AsyncTask;
.source "FinishSetupFlowReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/FinishSetupFlowReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FinishSetupTask"
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
.field private mContext:Landroid/content/Context;

.field private mFinishFromSetup:Z

.field final synthetic this$0:Lcom/motorola/blur/setup/FinishSetupFlowReceiver;


# direct methods
.method public constructor <init>(Lcom/motorola/blur/setup/FinishSetupFlowReceiver;Landroid/content/Context;Z)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "finishFromSetup"    # Z

    .prologue
    .line 32
    iput-object p1, p0, Lcom/motorola/blur/setup/FinishSetupFlowReceiver$FinishSetupTask;->this$0:Lcom/motorola/blur/setup/FinishSetupFlowReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/setup/FinishSetupFlowReceiver$FinishSetupTask;->mContext:Landroid/content/Context;

    .line 33
    iput-boolean p3, p0, Lcom/motorola/blur/setup/FinishSetupFlowReceiver$FinishSetupTask;->mFinishFromSetup:Z

    .line 34
    iput-object p2, p0, Lcom/motorola/blur/setup/FinishSetupFlowReceiver$FinishSetupTask;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 29
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/blur/setup/FinishSetupFlowReceiver$FinishSetupTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v2, 0x0

    .line 38
    iget-object v0, p0, Lcom/motorola/blur/setup/FinishSetupFlowReceiver$FinishSetupTask;->this$0:Lcom/motorola/blur/setup/FinishSetupFlowReceiver;

    iget-object v1, p0, Lcom/motorola/blur/setup/FinishSetupFlowReceiver$FinishSetupTask;->mContext:Landroid/content/Context;

    # invokes: Lcom/motorola/blur/setup/FinishSetupFlowReceiver;->disableThisReceiver(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/motorola/blur/setup/FinishSetupFlowReceiver;->access$000(Lcom/motorola/blur/setup/FinishSetupFlowReceiver;Landroid/content/Context;)V

    .line 39
    iget-boolean v0, p0, Lcom/motorola/blur/setup/FinishSetupFlowReceiver$FinishSetupTask;->mFinishFromSetup:Z

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/motorola/blur/setup/FinishSetupFlowReceiver$FinishSetupTask;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v2}, Lcom/motorola/blur/setup/SetupUtility;->finishSetup(ZLandroid/content/Context;Z)V

    .line 43
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/blur/setup/FinishSetupFlowReceiver$FinishSetupTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 47
    iget-boolean v1, p0, Lcom/motorola/blur/setup/FinishSetupFlowReceiver$FinishSetupTask;->mFinishFromSetup:Z

    if-nez v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/motorola/blur/setup/FinishSetupFlowReceiver$FinishSetupTask;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 50
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v1, p0, Lcom/motorola/blur/setup/FinishSetupFlowReceiver$FinishSetupTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 51
    const-string v1, "FinishSetupReceiver"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "setup wasn\'t killed"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 53
    .end local v0    # "am":Landroid/app/ActivityManager;
    :cond_0
    return-void
.end method
