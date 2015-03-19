.class Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiApManageDevices.java"


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
    .line 704
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog$1;->this$1:Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 707
    if-eqz p2, :cond_0

    const-string v0, "motorola.net.wifi.PBC_STOP_ALERT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog$1;->this$1:Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 710
    :cond_0
    return-void
.end method
