.class public Lcom/android/settings/bluetooth/BluetoothEnabler;
.super Ljava/lang/Object;
.source "BluetoothEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAlertDlg:Landroid/app/AlertDialog;

.field private final mContext:Landroid/content/Context;

.field private mDlgBtnClicked:Z

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mValidListener:Z

.field private mWPState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mWPState:I

    .line 52
    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mAlertDlg:Landroid/app/AlertDialog;

    .line 53
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mDlgBtnClicked:Z

    .line 56
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BluetoothEnabler$1;-><init>(Lcom/android/settings/bluetooth/BluetoothEnabler;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 73
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    .line 75
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mValidListener:Z

    .line 77
    invoke-static {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 78
    .local v0, "manager":Lcom/android/settings/bluetooth/LocalBluetoothManager;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isBluetoothRestricted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    :cond_0
    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 81
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 85
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 87
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "com.motorola.wirelessdisplay.service.WIRELESS_DISPLAY_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    return-void

    .line 83
    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/android/settings/bluetooth/BluetoothEnabler;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/bluetooth/BluetoothEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mWPState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/BluetoothEnabler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/BluetoothEnabler;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mDlgBtnClicked:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/bluetooth/BluetoothEnabler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/bluetooth/BluetoothEnabler;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mDlgBtnClicked:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/BluetoothEnabler;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/BluetoothEnabler;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/bluetooth/BluetoothEnabler;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/BluetoothEnabler;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method private setChecked(Z)V
    .locals 2
    .param p1, "isChecked"    # Z

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 243
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 247
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mValidListener:Z

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 251
    :cond_1
    return-void
.end method

.method private showBTTurnOffDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 171
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mDlgBtnClicked:Z

    .line 172
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0919

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b091a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0917

    new-instance v2, Lcom/android/settings/bluetooth/BluetoothEnabler$3;

    invoke-direct {v2, p0}, Lcom/android/settings/bluetooth/BluetoothEnabler$3;-><init>(Lcom/android/settings/bluetooth/BluetoothEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0918

    new-instance v2, Lcom/android/settings/bluetooth/BluetoothEnabler$2;

    invoke-direct {v2, p0}, Lcom/android/settings/bluetooth/BluetoothEnabler$2;-><init>(Lcom/android/settings/bluetooth/BluetoothEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mAlertDlg:Landroid/app/AlertDialog;

    .line 195
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 196
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mAlertDlg:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothEnabler$4;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BluetoothEnabler$4;-><init>(Lcom/android/settings/bluetooth/BluetoothEnabler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 205
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 206
    return-void
.end method


# virtual methods
.method protected handleStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 210
    packed-switch p1, :pswitch_data_0

    .line 226
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 227
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 230
    :goto_0
    invoke-static {}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isBluetoothRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)V

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 235
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 237
    :cond_2
    return-void

    .line 212
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 215
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 216
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 219
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 222
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 223
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 142
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth"

    invoke-static {v1, v2}, Lcom/android/settings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0b033b

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 146
    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 150
    :cond_0
    const/16 v0, 0xa

    .line 151
    .local v0, "bluetoothState":I
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v1, :cond_2

    .line 152
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    .line 154
    if-eqz p2, :cond_2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mWPState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mWPState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 157
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->showBTTurnOffDialog()V

    .line 167
    :goto_0
    return-void

    .line 163
    :cond_2
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v1, :cond_3

    .line 164
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, p2}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)V

    .line 166
    :cond_3
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 106
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isBluetoothRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mValidListener:Z

    .line 114
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mAlertDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 116
    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mAlertDlg:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isBluetoothRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 103
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    .line 100
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mValidListener:Z

    goto :goto_0
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 8
    .param p1, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 122
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v6, p1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 124
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    .line 125
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    iget-boolean v7, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mValidListener:Z

    if-eqz v7, :cond_2

    move-object v3, p0

    :cond_2
    invoke-virtual {v6, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 127
    const/16 v0, 0xa

    .line 128
    .local v0, "bluetoothState":I
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    .line 129
    :cond_3
    const/16 v3, 0xc

    if-ne v0, v3, :cond_5

    move v2, v4

    .line 130
    .local v2, "isOn":Z
    :goto_1
    const/16 v3, 0xa

    if-ne v0, v3, :cond_6

    move v1, v4

    .line 131
    .local v1, "isOff":Z
    :goto_2
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 132
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez v2, :cond_4

    if-eqz v1, :cond_7

    :cond_4
    :goto_3
    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 134
    invoke-static {}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isBluetoothRestricted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 136
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .end local v1    # "isOff":Z
    .end local v2    # "isOn":Z
    :cond_5
    move v2, v5

    .line 129
    goto :goto_1

    .restart local v2    # "isOn":Z
    :cond_6
    move v1, v5

    .line 130
    goto :goto_2

    .restart local v1    # "isOff":Z
    :cond_7
    move v4, v5

    .line 132
    goto :goto_3
.end method
