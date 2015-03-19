.class Lcom/android/settings/wifi/WifiApSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "WifiApSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiApSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiApSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    .line 394
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApSettings$SettingsObserver;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    .line 395
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 396
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 399
    const-string v0, "WifiApSettings"

    const-string v1, "onChange for AP_ENABLE - Calling WifiApEnabler resume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$SettingsObserver;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$500(Lcom/android/settings/wifi/WifiApSettings;)Lcom/android/settings/wifi/WifiApEnabler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->onChange()V

    .line 401
    return-void
.end method
