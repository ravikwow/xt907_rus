.class public Lcom/android/phone/MobileNetworkSettings;
.super Landroid/preference/PreferenceActivity;
.source "MobileNetworkSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MobileNetworkSettings$MyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final selectNWSummary:[I

.field private static final selectNWSummary_34387:[I


# instance fields
.field isLteOnCdma:Z

.field private mButtonCarrierSelKey:Landroid/preference/PreferenceScreen;

.field private mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

.field private mButtonDataRoam:Landroid/preference/CheckBoxPreference;

.field private mButtonDataUsage:Landroid/preference/Preference;

.field private mButtonPreferredNetworkMode:Lcom/android/phone/NetworkModeListPreference;

.field private mButtonSelectNetwork:Landroid/preference/ListPreference;

.field mCdmaOptions:Lcom/android/phone/CdmaOptions;

.field private mClickedPreference:Landroid/preference/Preference;

.field private mDataUsageListener:Lcom/android/phone/DataUsageListener;

.field private mFtr35989Enabled:Z

.field private mFtr37619Enabled:Z

.field private mFtr39325Enabled:Z

.field mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

.field private mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

.field private mLteDataServicePref:Landroid/preference/Preference;

.field private mMotWorldPhoneFeatureIsOn:Z

.field private mOkClicked:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectedNetwork:I

.field private mSetPrefModeInProgress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 78
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    sput-boolean v0, Lcom/android/phone/MobileNetworkSettings;->DBG:Z

    .line 143
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/MobileNetworkSettings;->selectNWSummary:[I

    .line 154
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/phone/MobileNetworkSettings;->selectNWSummary_34387:[I

    return-void

    .line 143
    :array_0
    .array-data 4
        0x7f0c0369
        0x7f0c036a
        0x7f0c036b
    .end array-data

    .line 154
    :array_1
    .array-data 4
        0x7f0c036c
        0x7f0c036d
        0x7f0c036e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 114
    iput-boolean v1, p0, Lcom/android/phone/MobileNetworkSettings;->mSetPrefModeInProgress:Z

    .line 122
    new-instance v0, Lcom/android/phone/MobileNetworkSettings$1;

    invoke-direct {v0, p0}, Lcom/android/phone/MobileNetworkSettings$1;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 137
    iput-boolean v1, p0, Lcom/android/phone/MobileNetworkSettings;->mMotWorldPhoneFeatureIsOn:Z

    .line 148
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/MobileNetworkSettings;->mSelectedNetwork:I

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 162
    iput-boolean v1, p0, Lcom/android/phone/MobileNetworkSettings;->isLteOnCdma:Z

    .line 163
    iput-boolean v1, p0, Lcom/android/phone/MobileNetworkSettings;->mFtr35989Enabled:Z

    .line 165
    iput-boolean v1, p0, Lcom/android/phone/MobileNetworkSettings;->mFtr39325Enabled:Z

    .line 166
    iput-boolean v1, p0, Lcom/android/phone/MobileNetworkSettings;->mFtr37619Enabled:Z

    .line 601
    return-void
.end method

.method private UpdatePreferredNetworkModeSummary(I)V
    .locals 3
    .param p1, "NetworkMode"    # I

    .prologue
    const v2, 0x7f0c0198

    const v1, 0x7f0c0192

    .line 859
    packed-switch p1, :pswitch_data_0

    .line 932
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/phone/MobileNetworkSettings;->mFtr35989Enabled:Z

    if-eqz v0, :cond_3

    .line 933
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Lcom/android/phone/NetworkModeListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 941
    :goto_0
    return-void

    .line 861
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/phone/MobileNetworkSettings;->mMotWorldPhoneFeatureIsOn:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/MobileNetworkSettings;->mFtr35989Enabled:Z

    if-eqz v0, :cond_1

    .line 862
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Lcom/android/phone/NetworkModeListPreference;

    const v1, 0x7f0c036f

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 865
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Lcom/android/phone/NetworkModeListPreference;

    const v1, 0x7f0c018c

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 870
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Lcom/android/phone/NetworkModeListPreference;

    const v1, 0x7f0c018d

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 874
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Lcom/android/phone/NetworkModeListPreference;

    const v1, 0x7f0c018e

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 878
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Lcom/android/phone/NetworkModeListPreference;

    const v1, 0x7f0c018f

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 883
    :pswitch_5
    iget-boolean v0, p0, Lcom/android/phone/MobileNetworkSettings;->mFtr35989Enabled:Z

    if-eqz v0, :cond_2

    .line 884
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Lcom/android/phone/NetworkModeListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 888
    :cond_2
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 895
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Lcom/android/phone/NetworkModeListPreference;

    const v1, 0x7f0c0191

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 890
    :pswitch_6
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Lcom/android/phone/NetworkModeListPreference;

    const v1, 0x7f0c0190

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 902
    :pswitch_7
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Lcom/android/phone/NetworkModeListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 906
    :pswitch_8
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Lcom/android/phone/NetworkModeListPreference;

    const v1, 0x7f0c0193

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 911
    :pswitch_9
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Lcom/android/phone/NetworkModeListPreference;

    const v1, 0x7f0c0435

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 915
    :pswitch_a
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Lcom/android/phone/NetworkModeListPreference;

    const v1, 0x7f0c0434

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 919
    :pswitch_b
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Lcom/android/phone/NetworkModeListPreference;

    const v1, 0x7f0c019a

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 923
    :pswitch_c
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Lcom/android/phone/NetworkModeListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 927
    :pswitch_d
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Lcom/android/phone/NetworkModeListPreference;

    const v1, 0x7f0c0199

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 936
    :cond_3
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Lcom/android/phone/NetworkModeListPreference;

    const v1, 0x7f0c0433

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 859
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_d
    .end packed-switch

    .line 888
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/phone/MobileNetworkSettings;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/MobileNetworkSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;
    .param p1, "x1"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->UpdatePreferredNetworkModeSummary(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/MobileNetworkSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;
    .param p1, "x1"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->setPreferredNetworkUI(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/MobileNetworkSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;
    .param p1, "x1"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->displaySettingsPerNetworkMode(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/MobileNetworkSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;
    .param p1, "x1"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->displayCdmaSystemSelectionSettings(I)V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/phone/MobileNetworkSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/phone/MobileNetworkSettings;->mSetPrefModeInProgress:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/phone/MobileNetworkSettings;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;
    .param p1, "x1"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->checkModeCategory(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonSelectNetwork:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/phone/MobileNetworkSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/phone/MobileNetworkSettings;->mFtr37619Enabled:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/phone/MobileNetworkSettings;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/MobileNetworkSettings;)Lcom/android/phone/NetworkModeListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Lcom/android/phone/NetworkModeListPreference;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 69
    sget-boolean v0, Lcom/android/phone/MobileNetworkSettings;->DBG:Z

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-static {p0}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/MobileNetworkSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/phone/MobileNetworkSettings;->mMotWorldPhoneFeatureIsOn:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/MobileNetworkSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/phone/MobileNetworkSettings;->mFtr35989Enabled:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/MobileNetworkSettings;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;
    .param p1, "x1"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->map2g3gNetworkMode(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/phone/MobileNetworkSettings;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;
    .param p1, "x1"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->map2g3gValue(I)I

    move-result v0

    return v0
.end method

.method private checkModeCategory(I)I
    .locals 3
    .param p1, "settingsNetworkMode"    # I

    .prologue
    .line 1001
    const/4 v0, 0x0

    .line 1002
    .local v0, "rtn":I
    sget-boolean v1, Lcom/android/phone/MobileNetworkSettings;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkModeCategory input: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 1004
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1024
    :pswitch_0
    const/16 v0, 0x12c

    .line 1027
    :goto_0
    sget-boolean v1, Lcom/android/phone/MobileNetworkSettings;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkModeCategory output: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 1028
    :cond_1
    return v0

    .line 1009
    :pswitch_1
    const/16 v0, 0x64

    .line 1010
    goto :goto_0

    .line 1016
    :pswitch_2
    const/16 v0, 0xc8

    .line 1017
    goto :goto_0

    .line 1019
    :pswitch_3
    const/16 v0, 0x190

    .line 1020
    goto :goto_0

    .line 1004
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private constructDialog(I)Landroid/app/ProgressDialog;
    .locals 4
    .param p1, "NW_MODE"    # I

    .prologue
    const/4 v3, 0x1

    .line 1032
    sget-boolean v1, Lcom/android/phone/MobileNetworkSettings;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "constructDialog() with mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 1033
    :cond_0
    const/16 v1, 0x12c

    if-ne v1, p1, :cond_1

    const/4 v0, 0x0

    .line 1053
    :goto_0
    return-object v0

    .line 1035
    :cond_1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1036
    .local v0, "pd":Landroid/app/ProgressDialog;
    const/16 v1, 0x64

    if-ne v1, p1, :cond_4

    const v1, 0x7f0c0371

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1041
    :cond_2
    :goto_1
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1042
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1043
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1045
    sget-boolean v1, Lcom/android/phone/PhoneApp;->BLUR_BEHIND_DIALOG:Z

    if-eqz v1, :cond_3

    .line 1046
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1051
    :cond_3
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 1038
    :cond_4
    const/16 v1, 0x190

    if-ne v1, p1, :cond_5

    const v1, 0x7f0c0372

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1040
    :cond_5
    const/16 v1, 0xc8

    if-ne v1, p1, :cond_2

    const v1, 0x7f0c0370

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private displayCdmaSystemSelectionSettings(I)V
    .locals 2
    .param p1, "settingsNetworkMode"    # I

    .prologue
    .line 979
    sget-boolean v0, Lcom/android/phone/MobileNetworkSettings;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayCdmaSystemSelectionSettings as: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 981
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    if-nez v0, :cond_1

    .line 997
    :goto_0
    return-void

    .line 985
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 994
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaOptions;->setSystemSelectButtonEnabled(Z)V

    goto :goto_0

    .line 990
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaOptions;->setSystemSelectButtonEnabled(Z)V

    goto :goto_0

    .line 985
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private displaySettingsPerNetworkMode(I)V
    .locals 4
    .param p1, "settingsNetworkMode"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 944
    sget-boolean v0, Lcom/android/phone/MobileNetworkSettings;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displaySettingsPerNetworkMode as: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 946
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 970
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonCarrierSelKey:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonCarrierSelKey:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 971
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonSelectNetwork:Landroid/preference/ListPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonSelectNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 972
    :cond_2
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    invoke-virtual {v0, v2}, Lcom/android/phone/CdmaOptions;->setSystemSelectButtonEnabled(Z)V

    .line 975
    :cond_3
    :goto_0
    return-void

    .line 951
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonCarrierSelKey:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonCarrierSelKey:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 952
    :cond_4
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonSelectNetwork:Landroid/preference/ListPreference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonSelectNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 953
    :cond_5
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    invoke-virtual {v0, v3}, Lcom/android/phone/CdmaOptions;->setSystemSelectButtonEnabled(Z)V

    goto :goto_0

    .line 960
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonCarrierSelKey:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonCarrierSelKey:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 961
    :cond_6
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonSelectNetwork:Landroid/preference/ListPreference;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonSelectNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 962
    :cond_7
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    invoke-virtual {v0, v2}, Lcom/android/phone/CdmaOptions;->setSystemSelectButtonEnabled(Z)V

    goto :goto_0

    .line 946
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleNetworkPreferenceChange(I)V
    .locals 4
    .param p1, "newValue"    # I

    .prologue
    const/4 v3, 0x1

    .line 781
    sget-boolean v1, Lcom/android/phone/MobileNetworkSettings;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNetworkPreferenceChange to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 782
    :cond_0
    iget v1, p0, Lcom/android/phone/MobileNetworkSettings;->mSelectedNetwork:I

    if-ne p1, v1, :cond_2

    .line 783
    sget-boolean v1, Lcom/android/phone/MobileNetworkSettings;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "No Change in preferred network"

    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 815
    :cond_1
    :goto_0
    return-void

    .line 786
    :cond_2
    const/4 v0, 0x0

    .line 787
    .local v0, "networkType":I
    packed-switch p1, :pswitch_data_0

    .line 807
    sget-boolean v1, Lcom/android/phone/MobileNetworkSettings;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: handleNetworkPreferenceChange : unknown item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 789
    :pswitch_0
    sget-boolean v1, Lcom/android/phone/MobileNetworkSettings;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "2G_ONLY/GSM"

    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 790
    :cond_3
    const/4 v0, 0x1

    .line 811
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 813
    iput-boolean v3, p0, Lcom/android/phone/MobileNetworkSettings;->mSetPrefModeInProgress:Z

    .line 814
    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->setPreferredNetworkUI(I)V

    goto :goto_0

    .line 793
    :pswitch_1
    sget-boolean v1, Lcom/android/phone/MobileNetworkSettings;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "3G_ONLY/UMTS"

    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 794
    :cond_5
    const/4 v0, 0x2

    .line 795
    goto :goto_1

    .line 798
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/phone/MobileNetworkSettings;->mFtr37619Enabled:Z

    if-eqz v1, :cond_6

    .line 799
    const/16 v0, 0x9

    goto :goto_1

    .line 801
    :cond_6
    const/4 v0, 0x0

    .line 802
    sget-boolean v1, Lcom/android/phone/MobileNetworkSettings;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "AUTOMATIC/GSM&UMTS"

    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 787
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1182
    const-string v0, "NetworkSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    return-void
.end method

.method private map2g3gNetworkMode(I)I
    .locals 3

    .prologue
    const/16 v0, 0x8

    .line 1105
    .line 1106
    sget-boolean v1, Lcom/android/phone/MobileNetworkSettings;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "map2g3gNetworkMode input: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 1108
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1142
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/phone/MobileNetworkSettings;->mFtr35989Enabled:Z

    if-nez v0, :cond_4

    .line 1143
    const/4 v0, 0x7

    .line 1151
    :cond_1
    :goto_0
    :pswitch_1
    sget-boolean v1, Lcom/android/phone/MobileNetworkSettings;->DBG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "map2g3gNetworkMode output: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 1152
    :cond_2
    return v0

    .line 1114
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/phone/MobileNetworkSettings;->mFtr39325Enabled:Z

    if-nez v1, :cond_1

    .line 1117
    const/4 v0, 0x4

    .line 1120
    goto :goto_0

    .line 1127
    :pswitch_3
    iget-boolean v0, p0, Lcom/android/phone/MobileNetworkSettings;->mFtr37619Enabled:Z

    if-eqz v0, :cond_3

    .line 1128
    const/16 v0, 0x9

    goto :goto_0

    .line 1130
    :cond_3
    const/4 v0, 0x0

    .line 1133
    goto :goto_0

    .line 1146
    :cond_4
    const/16 v0, 0xa

    goto :goto_0

    .line 1108
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private map2g3gValue(I)I
    .locals 1

    .prologue
    .line 1085
    .line 1086
    packed-switch p1, :pswitch_data_0

    .line 1097
    sget-boolean v0, Lcom/android/phone/MobileNetworkSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "AUTOMATIC"

    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 1098
    :cond_0
    const/4 v0, 0x2

    .line 1101
    :goto_0
    return v0

    .line 1088
    :pswitch_0
    sget-boolean v0, Lcom/android/phone/MobileNetworkSettings;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "2G_ONLY"

    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 1089
    :cond_1
    const/4 v0, 0x0

    .line 1090
    goto :goto_0

    .line 1092
    :pswitch_1
    sget-boolean v0, Lcom/android/phone/MobileNetworkSettings;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "3G_ONLY"

    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 1093
    :cond_2
    const/4 v0, 0x1

    .line 1094
    goto :goto_0

    .line 1086
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private networkSelectFlexNUserSetting()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 828
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonSelectNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 829
    .local v0, "allEntries":[Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonSelectNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 831
    .local v1, "allEntryValues":[Ljava/lang/CharSequence;
    move-object v3, v0

    .line 832
    .local v3, "visibleEntries":[Ljava/lang/CharSequence;
    move-object v4, v1

    .line 835
    .local v4, "visibleEntryValues":[Ljava/lang/CharSequence;
    invoke-virtual {p0, v9}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "network.type.hide.usersettingui"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 837
    .local v2, "networkSelectUI":Ljava/lang/String;
    const-string v5, "2g_3g"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 838
    new-array v3, v10, [Ljava/lang/CharSequence;

    .end local v3    # "visibleEntries":[Ljava/lang/CharSequence;
    aget-object v5, v0, v8

    aput-object v5, v3, v9

    .line 839
    .restart local v3    # "visibleEntries":[Ljava/lang/CharSequence;
    new-array v4, v10, [Ljava/lang/CharSequence;

    .end local v4    # "visibleEntryValues":[Ljava/lang/CharSequence;
    aget-object v5, v1, v8

    aput-object v5, v4, v9

    .line 840
    .restart local v4    # "visibleEntryValues":[Ljava/lang/CharSequence;
    sget-boolean v5, Lcom/android/phone/MobileNetworkSettings;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "hide:2g_3g"

    invoke-static {v5}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 853
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonSelectNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v5, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 854
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonSelectNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v5, v4}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 856
    return-void

    .line 841
    :cond_1
    const-string v5, "2g"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 842
    new-array v3, v8, [Ljava/lang/CharSequence;

    .end local v3    # "visibleEntries":[Ljava/lang/CharSequence;
    aget-object v5, v0, v10

    aput-object v5, v3, v9

    aget-object v5, v0, v8

    aput-object v5, v3, v10

    .line 843
    .restart local v3    # "visibleEntries":[Ljava/lang/CharSequence;
    new-array v4, v8, [Ljava/lang/CharSequence;

    .end local v4    # "visibleEntryValues":[Ljava/lang/CharSequence;
    aget-object v5, v1, v10

    aput-object v5, v4, v9

    aget-object v5, v1, v8

    aput-object v5, v4, v10

    .line 844
    .restart local v4    # "visibleEntryValues":[Ljava/lang/CharSequence;
    sget-boolean v5, Lcom/android/phone/MobileNetworkSettings;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "hide:2g"

    invoke-static {v5}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 845
    :cond_2
    const-string v5, "3g"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 846
    new-array v3, v8, [Ljava/lang/CharSequence;

    .end local v3    # "visibleEntries":[Ljava/lang/CharSequence;
    aget-object v5, v0, v9

    aput-object v5, v3, v9

    aget-object v5, v0, v8

    aput-object v5, v3, v10

    .line 847
    .restart local v3    # "visibleEntries":[Ljava/lang/CharSequence;
    new-array v4, v8, [Ljava/lang/CharSequence;

    .end local v4    # "visibleEntryValues":[Ljava/lang/CharSequence;
    aget-object v5, v1, v9

    aput-object v5, v4, v9

    aget-object v5, v1, v8

    aput-object v5, v4, v10

    .line 848
    .restart local v4    # "visibleEntryValues":[Ljava/lang/CharSequence;
    sget-boolean v5, Lcom/android/phone/MobileNetworkSettings;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "hide:3g"

    invoke-static {v5}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 851
    :cond_3
    const-string v5, "NetworkSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hide: skipping unknown/empty value \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setPreferredNetworkUI(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonSelectNetwork:Landroid/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 819
    iget-boolean v0, p0, Lcom/android/phone/MobileNetworkSettings;->mMotWorldPhoneFeatureIsOn:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/MobileNetworkSettings;->mFtr35989Enabled:Z

    if-eqz v0, :cond_1

    .line 820
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonSelectNetwork:Landroid/preference/ListPreference;

    sget-object v1, Lcom/android/phone/MobileNetworkSettings;->selectNWSummary_34387:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 824
    :goto_0
    iput p1, p0, Lcom/android/phone/MobileNetworkSettings;->mSelectedNetwork:I

    .line 825
    return-void

    .line 822
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonSelectNetwork:Landroid/preference/ListPreference;

    sget-object v1, Lcom/android/phone/MobileNetworkSettings;->selectNWSummary:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method private showNoSIMDialog()V
    .locals 3

    .prologue
    .line 1057
    sget-boolean v0, Lcom/android/phone/MobileNetworkSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "showNoSIMDialog()...."

    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 1059
    :cond_0
    new-instance v0, Lcom/android/phone/MobileNetworkSettings$2;

    invoke-direct {v0, p0}, Lcom/android/phone/MobileNetworkSettings$2;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    .line 1065
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0367

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c010e

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0366

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1072
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1074
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1075
    iget-boolean v1, p0, Lcom/android/phone/MobileNetworkSettings;->isLteOnCdma:Z

    if-eqz v1, :cond_1

    .line 1076
    new-instance v1, Lcom/android/phone/MobileNetworkSettings$3;

    invoke-direct {v1, p0}, Lcom/android/phone/MobileNetworkSettings$3;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1082
    :cond_1
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 1158
    packed-switch p1, :pswitch_data_0

    .line 1179
    :cond_0
    :goto_0
    return-void

    .line 1160
    :pswitch_0
    const-string v0, "exit_ecm_result"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1162
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1165
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mClickedPreference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Lcom/android/phone/NetworkModeListPreference;

    if-ne v0, v1, :cond_1

    .line 1166
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Lcom/android/phone/NetworkModeListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/NetworkModeListPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1169
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mClickedPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaOptions;->showDialog(Landroid/preference/Preference;)V

    goto :goto_0

    .line 1158
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    .line 170
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 172
    iput-boolean v1, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 287
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 289
    const v6, 0x7f06000d

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 291
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 292
    new-instance v6, Lcom/android/phone/MobileNetworkSettings$MyHandler;

    const/4 v9, 0x0

    invoke-direct {v6, p0, v9}, Lcom/android/phone/MobileNetworkSettings$MyHandler;-><init>(Lcom/android/phone/MobileNetworkSettings;Lcom/android/phone/MobileNetworkSettings$1;)V

    iput-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

    .line 295
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 297
    .local v3, "prefSet":Landroid/preference/PreferenceScreen;
    const-string v6, "button_data_enabled_key"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    .line 298
    const-string v6, "button_roaming_key"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    .line 299
    const-string v6, "preferred_network_mode_key"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/phone/NetworkModeListPreference;

    iput-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Lcom/android/phone/NetworkModeListPreference;

    .line 301
    const-string v6, "button_data_usage_key"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataUsage:Landroid/preference/Preference;

    .line 302
    const-string v6, "cdma_lte_data_service_key"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mLteDataServicePref:Landroid/preference/Preference;

    .line 306
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v6

    if-ne v6, v7, :cond_7

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/android/phone/MobileNetworkSettings;->isLteOnCdma:Z

    .line 307
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0a0016

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/phone/MobileNetworkSettings;->mFtr35989Enabled:Z

    .line 309
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0a001a

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/phone/MobileNetworkSettings;->mFtr39325Enabled:Z

    .line 310
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0a0021

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/phone/MobileNetworkSettings;->mFtr37619Enabled:Z

    .line 312
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0a0014

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/phone/MobileNetworkSettings;->mMotWorldPhoneFeatureIsOn:Z

    .line 313
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0a0002

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eq v6, v7, :cond_0

    iget-boolean v6, p0, Lcom/android/phone/MobileNetworkSettings;->mMotWorldPhoneFeatureIsOn:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/phone/MobileNetworkSettings;->mFtr35989Enabled:Z

    if-eqz v6, :cond_c

    .line 318
    :cond_0
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Lcom/android/phone/NetworkModeListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 320
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "preferred_network_mode"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 324
    .local v4, "settingsNetworkMode":I
    iget-boolean v6, p0, Lcom/android/phone/MobileNetworkSettings;->mFtr35989Enabled:Z

    if-eqz v6, :cond_9

    .line 326
    iget-boolean v6, p0, Lcom/android/phone/MobileNetworkSettings;->mFtr39325Enabled:Z

    if-eqz v6, :cond_8

    .line 327
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Lcom/android/phone/NetworkModeListPreference;

    const v8, 0x7f070037

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 329
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Lcom/android/phone/NetworkModeListPreference;

    const v8, 0x7f070038

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 339
    :goto_1
    iget-boolean v6, p0, Lcom/android/phone/MobileNetworkSettings;->mFtr37619Enabled:Z

    if-eqz v6, :cond_1

    .line 340
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Lcom/android/phone/NetworkModeListPreference;

    const v8, 0x7f070039

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 342
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Lcom/android/phone/NetworkModeListPreference;

    const v8, 0x7f07003a

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 346
    :cond_1
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Lcom/android/phone/NetworkModeListPreference;

    invoke-direct {p0, v4}, Lcom/android/phone/MobileNetworkSettings;->map2g3gNetworkMode(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 358
    :goto_2
    iget-boolean v6, p0, Lcom/android/phone/MobileNetworkSettings;->mFtr39325Enabled:Z

    if-nez v6, :cond_b

    .line 359
    new-instance v6, Lcom/android/phone/CdmaOptions;

    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v6, p0, v3, v8}, Lcom/android/phone/CdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    iput-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    .line 364
    :goto_3
    new-instance v6, Lcom/android/phone/GsmUmtsOptions;

    invoke-direct {v6, p0, v3}, Lcom/android/phone/GsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    iput-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    .line 366
    const-string v6, "button_carrier_sel_key"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonCarrierSelKey:Landroid/preference/PreferenceScreen;

    .line 367
    const-string v6, "button_select_network_key"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonSelectNetwork:Landroid/preference/ListPreference;

    .line 368
    iget-boolean v6, p0, Lcom/android/phone/MobileNetworkSettings;->mMotWorldPhoneFeatureIsOn:Z

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcom/android/phone/MobileNetworkSettings;->mFtr35989Enabled:Z

    if-eqz v6, :cond_3

    .line 369
    :cond_2
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonSelectNetwork:Landroid/preference/ListPreference;

    const v8, 0x7f07002a

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 371
    :cond_3
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonSelectNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 372
    invoke-direct {p0, v4}, Lcom/android/phone/MobileNetworkSettings;->displaySettingsPerNetworkMode(I)V

    .line 433
    .end local v4    # "settingsNetworkMode":I
    :cond_4
    :goto_4
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "setup_prepaid_data_service_url"

    invoke-static {v6, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 436
    .local v1, "missingDataServiceUrl":Z
    iget-boolean v6, p0, Lcom/android/phone/MobileNetworkSettings;->isLteOnCdma:Z

    if-eqz v6, :cond_5

    if-eqz v1, :cond_14

    .line 437
    :cond_5
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mLteDataServicePref:Landroid/preference/Preference;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 442
    :goto_5
    const-string v6, "throttle"

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ThrottleManager;

    .line 443
    .local v5, "tm":Landroid/net/ThrottleManager;
    new-instance v6, Lcom/android/phone/DataUsageListener;

    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataUsage:Landroid/preference/Preference;

    invoke-direct {v6, p0, v8, v3}, Lcom/android/phone/DataUsageListener;-><init>(Landroid/content/Context;Landroid/preference/Preference;Landroid/preference/PreferenceScreen;)V

    iput-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    .line 445
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 446
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_6

    .line 448
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 453
    :cond_6
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.motorola.extensions.phone.DYNAMIC_MOBILE_NETWORK_SETTINGS_PREFERENCES"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v6}, Lcom/motorola/extensions/DynamicPreferences;->addOrOverridePreferences(Landroid/preference/PreferenceScreen;Landroid/content/Intent;)V

    .line 456
    return-void

    .end local v0    # "actionBar":Landroid/app/ActionBar;
    .end local v1    # "missingDataServiceUrl":Z
    .end local v5    # "tm":Landroid/net/ThrottleManager;
    :cond_7
    move v6, v8

    .line 306
    goto/16 :goto_0

    .line 332
    .restart local v4    # "settingsNetworkMode":I
    :cond_8
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Lcom/android/phone/NetworkModeListPreference;

    const v8, 0x7f07002d

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 334
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Lcom/android/phone/NetworkModeListPreference;

    const v8, 0x7f07002e

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_1

    .line 348
    :cond_9
    iget-boolean v6, p0, Lcom/android/phone/MobileNetworkSettings;->mMotWorldPhoneFeatureIsOn:Z

    if-eqz v6, :cond_a

    .line 349
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Lcom/android/phone/NetworkModeListPreference;

    const v8, 0x7f070028

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 351
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Lcom/android/phone/NetworkModeListPreference;

    const v8, 0x7f070029

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 353
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Lcom/android/phone/NetworkModeListPreference;

    invoke-direct {p0, v4}, Lcom/android/phone/MobileNetworkSettings;->map2g3gNetworkMode(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 355
    :cond_a
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Lcom/android/phone/NetworkModeListPreference;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 361
    :cond_b
    const-string v6, "NetworkSettings"

    const-string v8, "mCdmaOptions Instance is not created"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 375
    .end local v4    # "settingsNetworkMode":I
    :cond_c
    iget-boolean v6, p0, Lcom/android/phone/MobileNetworkSettings;->isLteOnCdma:Z

    if-nez v6, :cond_d

    .line 376
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Lcom/android/phone/NetworkModeListPreference;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 378
    :cond_d
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 379
    .local v2, "phoneType":I
    if-ne v2, v10, :cond_10

    .line 381
    iget-boolean v6, p0, Lcom/android/phone/MobileNetworkSettings;->mFtr39325Enabled:Z

    if-eqz v6, :cond_e

    iget-boolean v6, p0, Lcom/android/phone/MobileNetworkSettings;->isLteOnCdma:Z

    if-eqz v6, :cond_e

    .line 382
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Lcom/android/phone/NetworkModeListPreference;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Lcom/android/phone/NetworkModeListPreference;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_4

    .line 384
    :cond_e
    new-instance v6, Lcom/android/phone/CdmaOptions;

    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v6, p0, v3, v9}, Lcom/android/phone/CdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    iput-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    .line 385
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Lcom/android/phone/NetworkModeListPreference;

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/android/phone/MobileNetworkSettings;->isLteOnCdma:Z

    if-eqz v6, :cond_4

    .line 386
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Lcom/android/phone/NetworkModeListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 387
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Lcom/android/phone/NetworkModeListPreference;

    const v9, 0x7f070016

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 389
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Lcom/android/phone/NetworkModeListPreference;

    const v9, 0x7f070017

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 391
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "preferred_network_mode"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 398
    .restart local v4    # "settingsNetworkMode":I
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Lcom/android/phone/NetworkModeListPreference;

    invoke-direct {p0, v4}, Lcom/android/phone/MobileNetworkSettings;->map2g3gNetworkMode(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 400
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/IccCard;->getIccCardState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v6

    sget-object v8, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v6, v8, :cond_f

    .line 401
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->showNoSIMDialog()V

    goto/16 :goto_4

    .line 403
    :cond_f
    invoke-direct {p0, v4}, Lcom/android/phone/MobileNetworkSettings;->displayCdmaSystemSelectionSettings(I)V

    goto/16 :goto_4

    .line 409
    .end local v4    # "settingsNetworkMode":I
    :cond_10
    if-ne v2, v7, :cond_13

    .line 410
    new-instance v6, Lcom/android/phone/GsmUmtsOptions;

    invoke-direct {v6, p0, v3}, Lcom/android/phone/GsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    iput-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    .line 412
    const-string v6, "button_select_network_key"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonSelectNetwork:Landroid/preference/ListPreference;

    .line 413
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonSelectNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 415
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->networkSelectFlexNUserSetting()V

    .line 416
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "preferred_network_mode"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 419
    .restart local v4    # "settingsNetworkMode":I
    if-ne v4, v7, :cond_11

    .line 420
    invoke-direct {p0, v8}, Lcom/android/phone/MobileNetworkSettings;->setPreferredNetworkUI(I)V

    .line 426
    :goto_6
    const-string v6, "button_carrier_sel_key"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonCarrierSelKey:Landroid/preference/PreferenceScreen;

    goto/16 :goto_4

    .line 421
    :cond_11
    if-ne v4, v10, :cond_12

    .line 422
    invoke-direct {p0, v7}, Lcom/android/phone/MobileNetworkSettings;->setPreferredNetworkUI(I)V

    goto :goto_6

    .line 424
    :cond_12
    invoke-direct {p0, v10}, Lcom/android/phone/MobileNetworkSettings;->setPreferredNetworkUI(I)V

    goto :goto_6

    .line 429
    .end local v4    # "settingsNetworkMode":I
    :cond_13
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected phone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 439
    .end local v2    # "phoneType":I
    .restart local v1    # "missingDataServiceUrl":Z
    :cond_14
    const-string v6, "NetworkSettings"

    const-string v8, "keep ltePref"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 184
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 1187
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1188
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 1200
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1201
    const/4 v0, 0x1

    .line 1203
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 521
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 522
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    invoke-virtual {v0}, Lcom/android/phone/DataUsageListener;->pause()V

    .line 523
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    .line 534
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Lcom/android/phone/NetworkModeListPreference;

    if-ne p1, v3, :cond_b

    .line 537
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Lcom/android/phone/NetworkModeListPreference;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 539
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 540
    .local v0, "buttonNetworkMode":I
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 543
    .local v2, "settingsNetworkMode":I
    if-eq v0, v2, :cond_1

    .line 544
    move v1, v0

    .line 546
    .local v1, "modemNetworkMode":I
    if-ltz v1, :cond_0

    const/16 v3, 0xc

    if-le v1, v3, :cond_2

    .line 548
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Network Mode ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") Chosen. Ignore mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 598
    .end local v0    # "buttonNetworkMode":I
    .end local v1    # "modemNetworkMode":I
    .end local v2    # "settingsNetworkMode":I
    :cond_1
    :goto_0
    return v6

    .line 552
    .restart local v0    # "buttonNetworkMode":I
    .restart local v1    # "modemNetworkMode":I
    .restart local v2    # "settingsNetworkMode":I
    :cond_2
    iget-boolean v3, p0, Lcom/android/phone/MobileNetworkSettings;->mMotWorldPhoneFeatureIsOn:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/phone/MobileNetworkSettings;->mFtr35989Enabled:Z

    if-eqz v3, :cond_7

    .line 554
    :cond_3
    sget-boolean v3, Lcom/android/phone/MobileNetworkSettings;->DBG:Z

    if-eqz v3, :cond_4

    .line 555
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM getIccCardState status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/IccCard;->getIccCardState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 556
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM getState status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 558
    :cond_4
    const/16 v3, 0xc8

    invoke-direct {p0, v1}, Lcom/android/phone/MobileNetworkSettings;->checkModeCategory(I)I

    move-result v4

    if-eq v3, v4, :cond_5

    const/16 v3, 0x12c

    invoke-direct {p0, v1}, Lcom/android/phone/MobileNetworkSettings;->checkModeCategory(I)I

    move-result v4

    if-ne v3, v4, :cond_6

    :cond_5
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/IccCard;->getIccCardState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v3, v4, :cond_6

    .line 560
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->showNoSIMDialog()V

    goto :goto_0

    .line 563
    :cond_6
    invoke-direct {p0, v1}, Lcom/android/phone/MobileNetworkSettings;->checkModeCategory(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/phone/MobileNetworkSettings;->constructDialog(I)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 564
    invoke-direct {p0, v1}, Lcom/android/phone/MobileNetworkSettings;->displaySettingsPerNetworkMode(I)V

    .line 566
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "preferred_network_mode_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 567
    invoke-direct {p0, v1}, Lcom/android/phone/MobileNetworkSettings;->map2g3gValue(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/phone/MobileNetworkSettings;->setPreferredNetworkUI(I)V

    .line 570
    :cond_7
    iget-boolean v3, p0, Lcom/android/phone/MobileNetworkSettings;->mMotWorldPhoneFeatureIsOn:Z

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lcom/android/phone/MobileNetworkSettings;->mFtr35989Enabled:Z

    if-eqz v3, :cond_9

    .line 571
    :cond_8
    invoke-direct {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->map2g3gNetworkMode(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/phone/MobileNetworkSettings;->UpdatePreferredNetworkModeSummary(I)V

    .line 582
    :goto_1
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 586
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 588
    iput-boolean v6, p0, Lcom/android/phone/MobileNetworkSettings;->mSetPrefModeInProgress:Z

    goto/16 :goto_0

    .line 574
    :cond_9
    iget-boolean v3, p0, Lcom/android/phone/MobileNetworkSettings;->isLteOnCdma:Z

    if-eqz v3, :cond_a

    .line 575
    invoke-direct {p0, v1}, Lcom/android/phone/MobileNetworkSettings;->displayCdmaSystemSelectionSettings(I)V

    .line 576
    invoke-direct {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->map2g3gNetworkMode(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/phone/MobileNetworkSettings;->UpdatePreferredNetworkModeSummary(I)V

    goto :goto_1

    .line 579
    :cond_a
    invoke-direct {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->UpdatePreferredNetworkModeSummary(I)V

    goto :goto_1

    .line 592
    .end local v0    # "buttonNetworkMode":I
    .end local v1    # "modemNetworkMode":I
    .end local v2    # "settingsNetworkMode":I
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_b
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonSelectNetwork:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_1

    .line 593
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/phone/MobileNetworkSettings;->handleNetworkPreferenceChange(I)V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 12
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/16 v11, 0x11

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 194
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v9, p2}, Lcom/android/phone/GsmUmtsOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v9

    if-ne v9, v7, :cond_1

    .line 281
    :cond_0
    :goto_0
    return v7

    .line 197
    :cond_1
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    invoke-virtual {v9, p2}, Lcom/android/phone/CdmaOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v9

    if-ne v9, v7, :cond_2

    .line 199
    const-string v8, "ril.cdma.inecmmode"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 202
    iput-object p2, p0, Lcom/android/phone/MobileNetworkSettings;->mClickedPreference:Landroid/preference/Preference;

    .line 205
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-direct {v8, v9, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v8, v11}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 210
    :cond_2
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Lcom/android/phone/NetworkModeListPreference;

    if-ne p2, v9, :cond_6

    .line 212
    const-string v9, "ril.cdma.inecmmode"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 214
    iput-object p2, p0, Lcom/android/phone/MobileNetworkSettings;->mClickedPreference:Landroid/preference/Preference;

    .line 217
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-direct {v9, v10, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v9, v11}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 223
    :cond_3
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "preferred_network_mode"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 226
    .local v3, "settingsNetworkMode":I
    iget-boolean v8, p0, Lcom/android/phone/MobileNetworkSettings;->mMotWorldPhoneFeatureIsOn:Z

    if-nez v8, :cond_4

    iget-boolean v8, p0, Lcom/android/phone/MobileNetworkSettings;->mFtr35989Enabled:Z

    if-nez v8, :cond_4

    iget-boolean v8, p0, Lcom/android/phone/MobileNetworkSettings;->isLteOnCdma:Z

    if-eqz v8, :cond_5

    .line 227
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/phone/MobileNetworkSettings;->map2g3gNetworkMode(I)I

    move-result v3

    .line 229
    :cond_5
    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Lcom/android/phone/NetworkModeListPreference;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 231
    .end local v3    # "settingsNetworkMode":I
    :cond_6
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    if-ne p2, v9, :cond_9

    .line 232
    sget-boolean v9, Lcom/android/phone/MobileNetworkSettings;->DBG:Z

    if-eqz v9, :cond_7

    const-string v9, "onPreferenceTreeClick: preference == mButtonDataRoam."

    invoke-static {v9}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 235
    :cond_7
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 237
    iput-boolean v8, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    .line 238
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c01a1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x1040014

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x1010355

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x1040013

    invoke-virtual {v8, v9, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x1040009

    invoke-virtual {v8, v9, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 247
    :cond_8
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9, v8}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto/16 :goto_0

    .line 250
    :cond_9
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v9, :cond_b

    .line 251
    sget-boolean v8, Lcom/android/phone/MobileNetworkSettings;->DBG:Z

    if-eqz v8, :cond_a

    const-string v8, "onPreferenceTreeClick: preference == mButtonDataEnabled."

    invoke-static {v8}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 252
    :cond_a
    const-string v8, "connectivity"

    invoke-virtual {p0, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 255
    .local v0, "cm":Landroid/net/ConnectivityManager;
    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v8

    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto/16 :goto_0

    .line 257
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_b
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mLteDataServicePref:Landroid/preference/Preference;

    if-ne p2, v9, :cond_f

    .line 258
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "setup_prepaid_data_service_url"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 260
    .local v5, "tmpl":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_e

    .line 261
    const-string v9, "phone"

    invoke-virtual {p0, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 263
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, "imsi":Ljava/lang/String;
    if-nez v1, :cond_c

    .line 265
    const-string v1, ""

    .line 267
    :cond_c
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 269
    .local v6, "url":Ljava/lang/String;
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v2, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 270
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 267
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v6    # "url":Ljava/lang/String;
    :cond_d
    new-array v9, v7, [Ljava/lang/CharSequence;

    aput-object v1, v9, v8

    invoke-static {v5, v9}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 272
    .end local v1    # "imsi":Ljava/lang/String;
    .end local v4    # "tm":Landroid/telephony/TelephonyManager;
    :cond_e
    const-string v8, "NetworkSettings"

    const-string v9, "Missing SETUP_PREPAID_DATA_SERVICE_URL"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 279
    .end local v5    # "tmpl":Ljava/lang/String;
    :cond_f
    invoke-virtual {p1, v8}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    move v7, v8

    .line 281
    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 472
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 474
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.phone.MobileNetworkSettings.actionChangeNetworkMode"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 478
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 480
    iget-boolean v1, p0, Lcom/android/phone/MobileNetworkSettings;->mFtr39325Enabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/phone/MobileNetworkSettings;->isLteOnCdma:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/phone/MobileNetworkSettings;->mFtr35989Enabled:Z

    if-nez v1, :cond_0

    .line 481
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Lcom/android/phone/NetworkModeListPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Lcom/android/phone/NetworkModeListPreference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 484
    :cond_0
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    .line 485
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 487
    .local v0, "cm":Landroid/net/ConnectivityManager;
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 490
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_1
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    .line 495
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 499
    :cond_2
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonCarrierSelKey:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_3

    .line 500
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getReadPlmnModeFlag()Z

    move-result v1

    if-nez v1, :cond_6

    .line 501
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonCarrierSelKey:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 506
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonSelectNetwork:Landroid/preference/ListPreference;

    if-eqz v1, :cond_4

    .line 507
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonSelectNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 511
    :cond_4
    iget-boolean v1, p0, Lcom/android/phone/MobileNetworkSettings;->mSetPrefModeInProgress:Z

    if-nez v1, :cond_5

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "preferred_network_mode_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 512
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 515
    :cond_5
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    invoke-virtual {v1}, Lcom/android/phone/DataUsageListener;->resume()V

    .line 516
    return-void

    .line 503
    :cond_6
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonCarrierSelKey:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z

    .prologue
    .line 461
    sget-boolean v1, Lcom/android/phone/MobileNetworkSettings;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 462
    :cond_0
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 463
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 465
    .local v0, "cm":Landroid/net/ConnectivityManager;
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 467
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_1
    return-void
.end method
