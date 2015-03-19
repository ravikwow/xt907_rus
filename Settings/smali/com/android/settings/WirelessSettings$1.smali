.class Lcom/android/settings/WirelessSettings$1;
.super Landroid/telephony/PhoneStateListener;
.source "WirelessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/WirelessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/WirelessSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/WirelessSettings;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings/WirelessSettings$1;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 6
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 81
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_8

    move v0, v2

    .line 82
    .local v0, "airplaneModeEnabled":Z
    :goto_0
    iget-object v4, p0, Lcom/android/settings/WirelessSettings$1;->this$0:Lcom/android/settings/WirelessSettings;

    # getter for: Lcom/android/settings/WirelessSettings;->mMobileNetworks:Landroid/preference/PreferenceScreen;
    invoke-static {v4}, Lcom/android/settings/WirelessSettings;->access$000(Lcom/android/settings/WirelessSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 83
    iget-object v4, p0, Lcom/android/settings/WirelessSettings$1;->this$0:Lcom/android/settings/WirelessSettings;

    # getter for: Lcom/android/settings/WirelessSettings;->mMobileNetworks:Landroid/preference/PreferenceScreen;
    invoke-static {v4}, Lcom/android/settings/WirelessSettings;->access$000(Lcom/android/settings/WirelessSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v5

    if-nez v0, :cond_9

    move v4, v2

    :goto_1
    invoke-virtual {v5, v4}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 84
    iget-object v4, p0, Lcom/android/settings/WirelessSettings$1;->this$0:Lcom/android/settings/WirelessSettings;

    # getter for: Lcom/android/settings/WirelessSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v4}, Lcom/android/settings/WirelessSettings;->access$100(Lcom/android/settings/WirelessSettings;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-eqz v4, :cond_0

    .line 85
    iget-object v4, p0, Lcom/android/settings/WirelessSettings$1;->this$0:Lcom/android/settings/WirelessSettings;

    # getter for: Lcom/android/settings/WirelessSettings;->mMobileNetworks:Landroid/preference/PreferenceScreen;
    invoke-static {v4}, Lcom/android/settings/WirelessSettings;->access$000(Lcom/android/settings/WirelessSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 88
    :cond_0
    iget-object v4, p0, Lcom/android/settings/WirelessSettings$1;->this$0:Lcom/android/settings/WirelessSettings;

    # getter for: Lcom/android/settings/WirelessSettings;->mCellBroadcastSetting:Landroid/preference/PreferenceScreen;
    invoke-static {v4}, Lcom/android/settings/WirelessSettings;->access$200(Lcom/android/settings/WirelessSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 89
    iget-object v4, p0, Lcom/android/settings/WirelessSettings$1;->this$0:Lcom/android/settings/WirelessSettings;

    # getter for: Lcom/android/settings/WirelessSettings;->mCellBroadcastSetting:Landroid/preference/PreferenceScreen;
    invoke-static {v4}, Lcom/android/settings/WirelessSettings;->access$200(Lcom/android/settings/WirelessSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v5

    if-nez v0, :cond_a

    move v4, v2

    :goto_2
    invoke-virtual {v5, v4}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 91
    :cond_1
    iget-object v4, p0, Lcom/android/settings/WirelessSettings$1;->this$0:Lcom/android/settings/WirelessSettings;

    const-string v5, "wimax_settings"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 92
    .local v1, "pf":Landroid/preference/Preference;
    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/settings/WirelessSettings$1;->this$0:Lcom/android/settings/WirelessSettings;

    # getter for: Lcom/android/settings/WirelessSettings;->mToggleable:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/WirelessSettings;->access$300(Lcom/android/settings/WirelessSettings;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/WirelessSettings$1;->this$0:Lcom/android/settings/WirelessSettings;

    # getter for: Lcom/android/settings/WirelessSettings;->mToggleable:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/WirelessSettings;->access$300(Lcom/android/settings/WirelessSettings;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "wimax"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 94
    :cond_2
    if-nez v0, :cond_b

    move v4, v2

    :goto_3
    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 95
    :cond_3
    iget-object v4, p0, Lcom/android/settings/WirelessSettings$1;->this$0:Lcom/android/settings/WirelessSettings;

    const-string v5, "toggle_nfc"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 96
    if-eqz v1, :cond_5

    iget-object v4, p0, Lcom/android/settings/WirelessSettings$1;->this$0:Lcom/android/settings/WirelessSettings;

    # getter for: Lcom/android/settings/WirelessSettings;->mToggleable:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/WirelessSettings;->access$300(Lcom/android/settings/WirelessSettings;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/WirelessSettings$1;->this$0:Lcom/android/settings/WirelessSettings;

    # getter for: Lcom/android/settings/WirelessSettings;->mToggleable:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/WirelessSettings;->access$300(Lcom/android/settings/WirelessSettings;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "nfc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 98
    :cond_4
    if-nez v0, :cond_c

    move v4, v2

    :goto_4
    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 99
    :cond_5
    iget-object v4, p0, Lcom/android/settings/WirelessSettings$1;->this$0:Lcom/android/settings/WirelessSettings;

    const-string v5, "android_beam_settings"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 100
    if-eqz v1, :cond_7

    iget-object v4, p0, Lcom/android/settings/WirelessSettings$1;->this$0:Lcom/android/settings/WirelessSettings;

    # getter for: Lcom/android/settings/WirelessSettings;->mToggleable:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/WirelessSettings;->access$300(Lcom/android/settings/WirelessSettings;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/settings/WirelessSettings$1;->this$0:Lcom/android/settings/WirelessSettings;

    # getter for: Lcom/android/settings/WirelessSettings;->mToggleable:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/WirelessSettings;->access$300(Lcom/android/settings/WirelessSettings;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "nfc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 102
    :cond_6
    if-nez v0, :cond_d

    :goto_5
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 103
    :cond_7
    return-void

    .end local v0    # "airplaneModeEnabled":Z
    .end local v1    # "pf":Landroid/preference/Preference;
    :cond_8
    move v0, v3

    .line 81
    goto/16 :goto_0

    .restart local v0    # "airplaneModeEnabled":Z
    :cond_9
    move v4, v3

    .line 83
    goto/16 :goto_1

    :cond_a
    move v4, v3

    .line 89
    goto :goto_2

    .restart local v1    # "pf":Landroid/preference/Preference;
    :cond_b
    move v4, v3

    .line 94
    goto :goto_3

    :cond_c
    move v4, v3

    .line 98
    goto :goto_4

    :cond_d
    move v2, v3

    .line 102
    goto :goto_5
.end method
