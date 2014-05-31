.class Lcom/android/settings/wifi/WifiApInfoService$2;
.super Ljava/lang/Object;
.source "WifiApInfoService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiApInfoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApInfoService;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApInfoService;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApInfoService$2;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService$2;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->isAttFeatureEnabled:Z
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApInfoService;->access$500(Lcom/android/settings/wifi/WifiApInfoService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService$2;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # invokes: Lcom/android/settings/wifi/WifiApInfoService;->updateDisconnNotification()Z
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApInfoService;->access$800(Lcom/android/settings/wifi/WifiApInfoService;)Z

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService$2;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApInfoService;->access$000(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 178
    const-string v0, "WifiApInfoService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disconnecting Hotspot due to device inactivity for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService$2;->this$0:Lcom/android/settings/wifi/WifiApInfoService;

    # getter for: Lcom/android/settings/wifi/WifiApInfoService;->mBatteryTimeoutValue:J
    invoke-static {v2}, Lcom/android/settings/wifi/WifiApInfoService;->access$900(Lcom/android/settings/wifi/WifiApInfoService;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void
.end method
