.class Lcom/android/settings/TetherSettings$WifiTetheringObserver;
.super Landroid/database/ContentObserver;
.source "TetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiTetheringObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/TetherSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    .line 761
    iput-object p1, p0, Lcom/android/settings/TetherSettings$WifiTetheringObserver;->this$0:Lcom/android/settings/TetherSettings;

    .line 762
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 763
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 766
    const-string v0, "TetherSettings"

    const-string v1, "Wifi tether pending changed - onChange()."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iget-object v0, p0, Lcom/android/settings/TetherSettings$WifiTetheringObserver;->this$0:Lcom/android/settings/TetherSettings;

    # getter for: Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;
    invoke-static {v0}, Lcom/android/settings/TetherSettings;->access$900(Lcom/android/settings/TetherSettings;)Lcom/android/settings/wifi/WifiApEnabler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->onChange()V

    .line 768
    return-void
.end method
