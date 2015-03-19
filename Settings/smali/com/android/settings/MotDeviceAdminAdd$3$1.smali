.class Lcom/android/settings/MotDeviceAdminAdd$3$1;
.super Landroid/os/RemoteCallback;
.source "MotDeviceAdminAdd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MotDeviceAdminAdd$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/MotDeviceAdminAdd$3;


# direct methods
.method constructor <init>(Lcom/android/settings/MotDeviceAdminAdd$3;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/settings/MotDeviceAdminAdd$3$1;->this$1:Lcom/android/settings/MotDeviceAdminAdd$3;

    invoke-direct {p0, p2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onResult(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 266
    if-eqz p1, :cond_0

    const-string v2, "android.app.extra.DISABLE_WARNING"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 270
    .local v1, "msg":Ljava/lang/CharSequence;
    :goto_0
    if-nez v1, :cond_1

    .line 272
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_1
    iget-object v2, p0, Lcom/android/settings/MotDeviceAdminAdd$3$1;->this$1:Lcom/android/settings/MotDeviceAdminAdd$3;

    iget-object v2, v2, Lcom/android/settings/MotDeviceAdminAdd$3;->this$0:Lcom/android/settings/MotDeviceAdminAdd;

    iget-object v2, v2, Lcom/android/settings/MotDeviceAdminAdd;->mMotDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings/MotDeviceAdminAdd$3$1;->this$1:Lcom/android/settings/MotDeviceAdminAdd$3;

    iget-object v3, v3, Lcom/android/settings/MotDeviceAdminAdd$3;->this$0:Lcom/android/settings/MotDeviceAdminAdd;

    iget-object v3, v3, Lcom/android/settings/MotDeviceAdminAdd;->mDeviceAdmin:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v3}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/motepm/MotDevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 276
    iget-object v2, p0, Lcom/android/settings/MotDeviceAdminAdd$3$1;->this$1:Lcom/android/settings/MotDeviceAdminAdd$3;

    iget-object v2, v2, Lcom/android/settings/MotDeviceAdminAdd$3;->this$0:Lcom/android/settings/MotDeviceAdminAdd;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 283
    :goto_2
    return-void

    .line 266
    .end local v1    # "msg":Ljava/lang/CharSequence;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 278
    .restart local v1    # "msg":Ljava/lang/CharSequence;
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 279
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "android.app.extra.DISABLE_WARNING"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 281
    iget-object v2, p0, Lcom/android/settings/MotDeviceAdminAdd$3$1;->this$1:Lcom/android/settings/MotDeviceAdminAdd$3;

    iget-object v2, v2, Lcom/android/settings/MotDeviceAdminAdd$3;->this$0:Lcom/android/settings/MotDeviceAdminAdd;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_2

    .line 273
    .end local v0    # "args":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    goto :goto_1
.end method
