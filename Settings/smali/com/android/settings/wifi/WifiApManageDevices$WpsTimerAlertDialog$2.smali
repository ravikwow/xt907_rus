.class Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog$2;
.super Ljava/lang/Object;
.source "WifiApManageDevices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;)V
    .locals 0

    .prologue
    .line 713
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog$2;->this$1:Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog$2;->this$1:Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;

    # operator-- for: Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;->mDuration:I
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;->access$810(Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;)I

    move-result v0

    if-lez v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog$2;->this$1:Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;

    # invokes: Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;->updateFields()V
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;->access$900(Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;)V

    .line 717
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog$2;->this$1:Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApManageDevices;->access$1000(Lcom/android/settings/wifi/WifiApManageDevices;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 721
    :goto_0
    return-void

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog$2;->this$1:Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method
