.class Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog$1;
.super Ljava/lang/Object;
.source "WifiApManageDevices.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;)V
    .locals 0

    .prologue
    .line 609
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog$1;->this$1:Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog$1;->this$1:Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 613
    return-void
.end method
