.class Lcom/android/settings/wifi/WifiApEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiApEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiApEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApEnabler;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApEnabler$1;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 98
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 100
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApEnabler$1;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    const-string v6, "wifi_state"

    const/16 v7, 0xe

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    # invokes: Lcom/android/settings/wifi/WifiApEnabler;->handleWifiApStateChanged(I)V
    invoke-static {v5, v6}, Lcom/android/settings/wifi/WifiApEnabler;->access$000(Lcom/android/settings/wifi/WifiApEnabler;I)V

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 103
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApEnabler$1;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    # getter for: Lcom/android/settings/wifi/WifiApEnabler;->mWaitForWifiStateChange:Z
    invoke-static {v5}, Lcom/android/settings/wifi/WifiApEnabler;->access$100(Lcom/android/settings/wifi/WifiApEnabler;)Z

    move-result v5

    if-ne v5, v8, :cond_0

    .line 104
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApEnabler$1;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    const-string v6, "wifi_state"

    const/4 v7, 0x4

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    # invokes: Lcom/android/settings/wifi/WifiApEnabler;->handleWifiStateChanged(I)V
    invoke-static {v5, v6}, Lcom/android/settings/wifi/WifiApEnabler;->access$200(Lcom/android/settings/wifi/WifiApEnabler;I)V

    goto :goto_0

    .line 107
    :cond_2
    const-string v5, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 108
    const-string v5, "availableArray"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 110
    .local v2, "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "activeArray"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 112
    .local v1, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "erroredArray"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 114
    .local v3, "errored":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApEnabler$1;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v8

    # invokes: Lcom/android/settings/wifi/WifiApEnabler;->updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    invoke-static {v5, v6, v7, v8}, Lcom/android/settings/wifi/WifiApEnabler;->access$300(Lcom/android/settings/wifi/WifiApEnabler;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 115
    .end local v1    # "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "errored":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 116
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApEnabler$1;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    # getter for: Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;
    invoke-static {v5}, Lcom/android/settings/wifi/WifiApEnabler;->access$400(Lcom/android/settings/wifi/WifiApEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/wifi/WifiApEnabler$1;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    # getter for: Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;
    invoke-static {v5}, Lcom/android/settings/wifi/WifiApEnabler;->access$400(Lcom/android/settings/wifi/WifiApEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 117
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApEnabler$1;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    # invokes: Lcom/android/settings/wifi/WifiApEnabler;->checkDisplayRoamingWarning()V
    invoke-static {v5}, Lcom/android/settings/wifi/WifiApEnabler;->access$500(Lcom/android/settings/wifi/WifiApEnabler;)V

    goto :goto_0

    .line 120
    :cond_4
    const-string v5, "android.intent.action.SERVICE_STATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 122
    const-string v5, "mot.mhs.skipNetworkCheck"

    invoke-static {v5, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_6

    .line 123
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApEnabler$1;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    # getter for: Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;
    invoke-static {v5}, Lcom/android/settings/wifi/WifiApEnabler;->access$400(Lcom/android/settings/wifi/WifiApEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/wifi/WifiApEnabler$1;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    # getter for: Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;
    invoke-static {v5}, Lcom/android/settings/wifi/WifiApEnabler;->access$400(Lcom/android/settings/wifi/WifiApEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_0

    .line 124
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v4

    .line 127
    .local v4, "state":Landroid/telephony/ServiceState;
    const-string v5, "WifiApEnabler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Service State="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApEnabler$1;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    # setter for: Lcom/android/settings/wifi/WifiApEnabler;->isNetworkServiceAvailable:I
    invoke-static {v5, v6}, Lcom/android/settings/wifi/WifiApEnabler;->access$602(Lcom/android/settings/wifi/WifiApEnabler;I)I

    .line 129
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApEnabler$1;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    # getter for: Lcom/android/settings/wifi/WifiApEnabler;->isNetworkServiceAvailable:I
    invoke-static {v5}, Lcom/android/settings/wifi/WifiApEnabler;->access$600(Lcom/android/settings/wifi/WifiApEnabler;)I

    move-result v5

    if-eqz v5, :cond_5

    .line 130
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApEnabler$1;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    # getter for: Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;
    invoke-static {v5}, Lcom/android/settings/wifi/WifiApEnabler;->access$400(Lcom/android/settings/wifi/WifiApEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 131
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApEnabler$1;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    # getter for: Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;
    invoke-static {v5}, Lcom/android/settings/wifi/WifiApEnabler;->access$400(Lcom/android/settings/wifi/WifiApEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    const v6, 0x7f0b007a

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 133
    :cond_5
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApEnabler$1;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    # getter for: Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;
    invoke-static {v5}, Lcom/android/settings/wifi/WifiApEnabler;->access$400(Lcom/android/settings/wifi/WifiApEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 137
    .end local v4    # "state":Landroid/telephony/ServiceState;
    :cond_6
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApEnabler$1;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    # getter for: Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;
    invoke-static {v5}, Lcom/android/settings/wifi/WifiApEnabler;->access$400(Lcom/android/settings/wifi/WifiApEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/wifi/WifiApEnabler$1;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    # getter for: Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;
    invoke-static {v5}, Lcom/android/settings/wifi/WifiApEnabler;->access$400(Lcom/android/settings/wifi/WifiApEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_0

    .line 138
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApEnabler$1;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    # getter for: Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;
    invoke-static {v5}, Lcom/android/settings/wifi/WifiApEnabler;->access$400(Lcom/android/settings/wifi/WifiApEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 141
    :cond_7
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 142
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApEnabler$1;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    # invokes: Lcom/android/settings/wifi/WifiApEnabler;->enableWifiCheckBox()V
    invoke-static {v5}, Lcom/android/settings/wifi/WifiApEnabler;->access$700(Lcom/android/settings/wifi/WifiApEnabler;)V

    goto/16 :goto_0

    .line 143
    :cond_8
    const-string v5, "com.motorola.wirelessdisplay.service.WIRELESS_DISPLAY_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 144
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApEnabler$1;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    const-string v6, "wireless_display_state"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    # setter for: Lcom/android/settings/wifi/WifiApEnabler;->mWPState:I
    invoke-static {v5, v6}, Lcom/android/settings/wifi/WifiApEnabler;->access$802(Lcom/android/settings/wifi/WifiApEnabler;I)I

    goto/16 :goto_0
.end method
