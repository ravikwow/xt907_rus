.class Lcom/android/settings/MotDeviceAdminAdd$3;
.super Ljava/lang/Object;
.source "MotDeviceAdminAdd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MotDeviceAdminAdd;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MotDeviceAdminAdd;


# direct methods
.method constructor <init>(Lcom/android/settings/MotDeviceAdminAdd;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/settings/MotDeviceAdminAdd$3;->this$0:Lcom/android/settings/MotDeviceAdminAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, -0x1

    .line 240
    iget-object v2, p0, Lcom/android/settings/MotDeviceAdminAdd$3;->this$0:Lcom/android/settings/MotDeviceAdminAdd;

    iget-boolean v2, v2, Lcom/android/settings/MotDeviceAdminAdd;->mAdding:Z

    if-eqz v2, :cond_1

    .line 242
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/MotDeviceAdminAdd$3;->this$0:Lcom/android/settings/MotDeviceAdminAdd;

    iget-object v2, v2, Lcom/android/settings/MotDeviceAdminAdd;->mDeviceAdmin:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v2}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 243
    .local v0, "componentName":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/settings/MotDeviceAdminAdd$3;->this$0:Lcom/android/settings/MotDeviceAdminAdd;

    iget-object v2, v2, Lcom/android/settings/MotDeviceAdminAdd;->mMotDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings/MotDeviceAdminAdd$3;->this$0:Lcom/android/settings/MotDeviceAdminAdd;

    iget-boolean v3, v3, Lcom/android/settings/MotDeviceAdminAdd;->mRefreshing:Z

    invoke-virtual {v2, v0, v3}, Lcom/motorola/motepm/MotDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V

    .line 244
    iget-object v2, p0, Lcom/android/settings/MotDeviceAdminAdd$3;->this$0:Lcom/android/settings/MotDeviceAdminAdd;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setResult(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    .end local v0    # "componentName":Landroid/content/ComponentName;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/settings/MotDeviceAdminAdd$3;->this$0:Lcom/android/settings/MotDeviceAdminAdd;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 286
    :goto_1
    return-void

    .line 245
    :catch_0
    move-exception v1

    .line 248
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "MotDeviceAdminAdd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception trying to activate admin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/MotDeviceAdminAdd$3;->this$0:Lcom/android/settings/MotDeviceAdminAdd;

    iget-object v4, v4, Lcom/android/settings/MotDeviceAdminAdd;->mDeviceAdmin:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v4}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    iget-object v2, p0, Lcom/android/settings/MotDeviceAdminAdd$3;->this$0:Lcom/android/settings/MotDeviceAdminAdd;

    iget-object v2, v2, Lcom/android/settings/MotDeviceAdminAdd;->mMotDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings/MotDeviceAdminAdd$3;->this$0:Lcom/android/settings/MotDeviceAdminAdd;

    iget-object v3, v3, Lcom/android/settings/MotDeviceAdminAdd;->mDeviceAdmin:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v3}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/motepm/MotDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 251
    iget-object v2, p0, Lcom/android/settings/MotDeviceAdminAdd$3;->this$0:Lcom/android/settings/MotDeviceAdminAdd;

    invoke-virtual {v2, v5}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0

    .line 259
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 262
    :goto_2
    iget-object v2, p0, Lcom/android/settings/MotDeviceAdminAdd$3;->this$0:Lcom/android/settings/MotDeviceAdminAdd;

    iget-object v2, v2, Lcom/android/settings/MotDeviceAdminAdd;->mMotDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings/MotDeviceAdminAdd$3;->this$0:Lcom/android/settings/MotDeviceAdminAdd;

    iget-object v3, v3, Lcom/android/settings/MotDeviceAdminAdd;->mDeviceAdmin:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v3}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    new-instance v4, Lcom/android/settings/MotDeviceAdminAdd$3$1;

    iget-object v5, p0, Lcom/android/settings/MotDeviceAdminAdd$3;->this$0:Lcom/android/settings/MotDeviceAdminAdd;

    iget-object v5, v5, Lcom/android/settings/MotDeviceAdminAdd;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/android/settings/MotDeviceAdminAdd$3$1;-><init>(Lcom/android/settings/MotDeviceAdminAdd$3;Landroid/os/Handler;)V

    invoke-virtual {v2, v3, v4}, Lcom/motorola/motepm/MotDevicePolicyManager;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V

    goto :goto_1

    .line 260
    :catch_1
    move-exception v2

    goto :goto_2
.end method
