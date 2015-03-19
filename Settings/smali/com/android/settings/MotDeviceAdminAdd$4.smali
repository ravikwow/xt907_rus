.class Lcom/android/settings/MotDeviceAdminAdd$4;
.super Ljava/lang/Object;
.source "MotDeviceAdminAdd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MotDeviceAdminAdd;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
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
    .line 305
    iput-object p1, p0, Lcom/android/settings/MotDeviceAdminAdd$4;->this$0:Lcom/android/settings/MotDeviceAdminAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/settings/MotDeviceAdminAdd$4;->this$0:Lcom/android/settings/MotDeviceAdminAdd;

    iget-object v0, v0, Lcom/android/settings/MotDeviceAdminAdd;->mMotDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/MotDeviceAdminAdd$4;->this$0:Lcom/android/settings/MotDeviceAdminAdd;

    iget-object v1, v1, Lcom/android/settings/MotDeviceAdminAdd;->mDeviceAdmin:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v1}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/motepm/MotDevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 308
    iget-object v0, p0, Lcom/android/settings/MotDeviceAdminAdd$4;->this$0:Lcom/android/settings/MotDeviceAdminAdd;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 309
    return-void
.end method
