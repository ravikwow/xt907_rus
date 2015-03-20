.class public Lcom/android/phone/BluetoothAccBatteryMeter;
.super Landroid/preference/PreferenceActivity;
.source "BluetoothAccBatteryMeter.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private level:I

.field private mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field private mHandler:Landroid/os/Handler;

.field private mPreference:Lcom/android/phone/BluetoothBatteryUsePreference;

.field private name:Ljava/lang/String;

.field private percent:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    sput-boolean v0, Lcom/android/phone/BluetoothAccBatteryMeter;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 44
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/BluetoothAccBatteryMeter;->name:Ljava/lang/String;

    .line 53
    iput v1, p0, Lcom/android/phone/BluetoothAccBatteryMeter;->level:I

    .line 54
    iput v1, p0, Lcom/android/phone/BluetoothAccBatteryMeter;->percent:I

    .line 100
    new-instance v0, Lcom/android/phone/BluetoothAccBatteryMeter$1;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothAccBatteryMeter$1;-><init>(Lcom/android/phone/BluetoothAccBatteryMeter;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothAccBatteryMeter;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/BluetoothAccBatteryMeter;)Lcom/android/phone/BluetoothBatteryUsePreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BluetoothAccBatteryMeter;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/BluetoothAccBatteryMeter;->mPreference:Lcom/android/phone/BluetoothBatteryUsePreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/BluetoothAccBatteryMeter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BluetoothAccBatteryMeter;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/BluetoothAccBatteryMeter;->name:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 62
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 65
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 66
    .local v0, "app":Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/BluetoothAccBatteryMeter;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 67
    sget-boolean v4, Lcom/android/phone/BluetoothAccBatteryMeter;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "AccessoryBatteryMeter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- mBluetoothHandsfree: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/BluetoothAccBatteryMeter;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    iget-object v4, p0, Lcom/android/phone/BluetoothAccBatteryMeter;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v4, :cond_1

    .line 70
    iget-object v4, p0, Lcom/android/phone/BluetoothAccBatteryMeter;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v4}, Lcom/android/phone/BluetoothHandsfree;->getCurrBtHfBatteryStatus()I

    move-result v4

    iput v4, p0, Lcom/android/phone/BluetoothAccBatteryMeter;->level:I

    .line 71
    iget-object v4, p0, Lcom/android/phone/BluetoothAccBatteryMeter;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v4}, Lcom/android/phone/BluetoothHandsfree;->getCurrDeviceName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/BluetoothAccBatteryMeter;->name:Ljava/lang/String;

    .line 72
    iget-object v4, p0, Lcom/android/phone/BluetoothAccBatteryMeter;->name:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 73
    const-string v4, "Unknown Headset"

    iput-object v4, p0, Lcom/android/phone/BluetoothAccBatteryMeter;->name:Ljava/lang/String;

    .line 76
    :cond_1
    sget-boolean v4, Lcom/android/phone/BluetoothAccBatteryMeter;->DBG:Z

    if-eqz v4, :cond_2

    const-string v4, "AccessoryBatteryMeter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "level = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/phone/BluetoothAccBatteryMeter;->level:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/BluetoothAccBatteryMeter;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_2
    iget v4, p0, Lcom/android/phone/BluetoothAccBatteryMeter;->level:I

    if-nez v4, :cond_4

    .line 80
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/phone/BluetoothAccBatteryMeter;->percent:I

    .line 89
    :cond_3
    :goto_0
    const/high16 v4, 0x7f060000

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 90
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    const-string v5, "bthfbatteryuse"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/BluetoothBatteryUsePreference;

    iput-object v4, p0, Lcom/android/phone/BluetoothAccBatteryMeter;->mPreference:Lcom/android/phone/BluetoothBatteryUsePreference;

    .line 93
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 94
    iget-object v4, p0, Lcom/android/phone/BluetoothAccBatteryMeter;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/phone/BluetoothAccBatteryMeter;->percent:I

    iget-object v7, p0, Lcom/android/phone/BluetoothAccBatteryMeter;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v9, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 95
    .local v2, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/phone/BluetoothAccBatteryMeter;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x64

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 96
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 97
    .local v3, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v3, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 98
    return-void

    .line 81
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "nm":Landroid/app/NotificationManager;
    :cond_4
    iget v4, p0, Lcom/android/phone/BluetoothAccBatteryMeter;->level:I

    if-ne v4, v8, :cond_5

    .line 82
    const/16 v4, 0x18

    iput v4, p0, Lcom/android/phone/BluetoothAccBatteryMeter;->percent:I

    goto :goto_0

    .line 83
    :cond_5
    iget v4, p0, Lcom/android/phone/BluetoothAccBatteryMeter;->level:I

    if-ne v4, v9, :cond_6

    .line 84
    const/16 v4, 0x32

    iput v4, p0, Lcom/android/phone/BluetoothAccBatteryMeter;->percent:I

    goto :goto_0

    .line 85
    :cond_6
    iget v4, p0, Lcom/android/phone/BluetoothAccBatteryMeter;->level:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 86
    const/16 v4, 0x4b

    iput v4, p0, Lcom/android/phone/BluetoothAccBatteryMeter;->percent:I

    goto :goto_0
.end method
