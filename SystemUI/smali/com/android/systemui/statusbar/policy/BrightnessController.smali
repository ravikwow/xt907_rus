.class public Lcom/android/systemui/statusbar/policy/BrightnessController;
.super Ljava/lang/Object;
.source "BrightnessController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

.field private mPower:Landroid/os/IPowerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ToggleSlider;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "control"    # Lcom/android/systemui/statusbar/policy/ToggleSlider;

    .prologue
    const/4 v5, 0x0

    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1110011

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 47
    .local v1, "automaticAvailable":Z
    const-string v6, "power"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mPower:Landroid/os/IPowerManager;

    .line 49
    if-eqz v1, :cond_1

    .line 52
    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_brightness_mode"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 57
    .local v0, "automatic":I
    :goto_0
    if-eqz v0, :cond_0

    const/4 v5, 0x1

    :cond_0
    invoke-virtual {p2, v5}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setChecked(Z)V

    .line 65
    .end local v0    # "automatic":I
    :goto_1
    :try_start_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 71
    .local v4, "value":I
    :goto_2
    const/16 v5, 0xeb

    invoke-virtual {p2, v5}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setMax(I)V

    .line 72
    add-int/lit8 v5, v4, -0x14

    invoke-virtual {p2, v5}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setValue(I)V

    .line 74
    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setOnChangedListener(Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;)V

    .line 75
    return-void

    .line 54
    .end local v4    # "value":I
    :catch_0
    move-exception v3

    .line 55
    .local v3, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v0, 0x0

    .restart local v0    # "automatic":I
    goto :goto_0

    .line 59
    .end local v0    # "automatic":I
    .end local v3    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    invoke-virtual {p2, v5}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setChecked(Z)V

    goto :goto_1

    .line 67
    :catch_1
    move-exception v2

    .line 68
    .local v2, "ex":Landroid/provider/Settings$SettingNotFoundException;
    const/16 v4, 0xff

    .restart local v4    # "value":I
    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/BrightnessController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/BrightnessController;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private setBrightness(I)V
    .locals 1
    .param p1, "brightness"    # I

    .prologue
    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 97
    return-void
.end method


# virtual methods
.method public onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V
    .locals 2
    .param p1, "view"    # Lcom/android/systemui/statusbar/policy/ToggleSlider;
    .param p2, "tracking"    # Z
    .param p3, "automatic"    # Z
    .param p4, "value"    # I

    .prologue
    .line 78
    if-eqz p3, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/BrightnessController;->setMode(I)V

    .line 80
    if-nez p3, :cond_0

    .line 81
    add-int/lit8 v0, p4, 0x14

    .line 82
    .local v0, "val":I
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/BrightnessController;->setBrightness(I)V

    .line 83
    if-nez p2, :cond_0

    .line 84
    new-instance v1, Lcom/android/systemui/statusbar/policy/BrightnessController$1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/policy/BrightnessController$1;-><init>(Lcom/android/systemui/statusbar/policy/BrightnessController;I)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 92
    .end local v0    # "val":I
    :cond_0
    return-void

    .line 78
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
