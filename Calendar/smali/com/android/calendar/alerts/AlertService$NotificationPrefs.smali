.class Lcom/android/calendar/alerts/AlertService$NotificationPrefs;
.super Ljava/lang/Object;
.source "AlertService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/alerts/AlertService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationPrefs"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private defaultVibrate:I

.field private doPopup:I

.field private prefs:Landroid/content/SharedPreferences;

.field quietUpdate:Z

.field private ringtone:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefs"    # Landroid/content/SharedPreferences;
    .param p3, "quietUpdate"    # Z

    .prologue
    const/4 v0, -0x1

    .line 781
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 775
    iput v0, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->doPopup:I

    .line 776
    iput v0, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->defaultVibrate:I

    .line 777
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->ringtone:Ljava/lang/String;

    .line 782
    iput-object p1, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->context:Landroid/content/Context;

    .line 783
    iput-object p2, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->prefs:Landroid/content/SharedPreferences;

    .line 784
    iput-boolean p3, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->quietUpdate:Z

    .line 785
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/alerts/AlertService$NotificationPrefs;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/alerts/AlertService$NotificationPrefs;

    .prologue
    .line 769
    invoke-direct {p0}, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->getDefaultVibrate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/calendar/alerts/AlertService$NotificationPrefs;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/alerts/AlertService$NotificationPrefs;

    .prologue
    .line 769
    invoke-direct {p0}, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->getRingtoneAndSilence()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/alerts/AlertService$NotificationPrefs;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/alerts/AlertService$NotificationPrefs;

    .prologue
    .line 769
    invoke-direct {p0}, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->getDoPopup()Z

    move-result v0

    return v0
.end method

.method private getDefaultVibrate()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 799
    iget v5, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->defaultVibrate:I

    if-gez v5, :cond_0

    .line 803
    iget-object v5, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->prefs:Landroid/content/SharedPreferences;

    const-string v6, "preferences_alerts_vibrateWhen"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 806
    iget-object v5, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->prefs:Landroid/content/SharedPreferences;

    const-string v6, "preferences_alerts_vibrateWhen"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 820
    .local v2, "vibrateWhen":Ljava/lang/String;
    :goto_0
    const-string v5, "always"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 821
    iput v3, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->defaultVibrate:I

    .line 835
    .end local v2    # "vibrateWhen":Ljava/lang/String;
    :cond_0
    :goto_1
    iget v5, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->defaultVibrate:I

    if-ne v5, v3, :cond_7

    :goto_2
    return v3

    .line 808
    :cond_1
    iget-object v5, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->prefs:Landroid/content/SharedPreferences;

    const-string v6, "preferences_alerts_vibrate"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 810
    iget-object v5, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->prefs:Landroid/content/SharedPreferences;

    const-string v6, "preferences_alerts_vibrate"

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 812
    .local v1, "vibrate":Z
    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->context:Landroid/content/Context;

    const v6, 0x7f0c008b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 815
    .restart local v2    # "vibrateWhen":Ljava/lang/String;
    :goto_3
    goto :goto_0

    .line 812
    .end local v2    # "vibrateWhen":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->context:Landroid/content/Context;

    const v6, 0x7f0c008c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 817
    .end local v1    # "vibrate":Z
    :cond_3
    iget-object v5, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->context:Landroid/content/Context;

    const v6, 0x7f0c008a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "vibrateWhen":Ljava/lang/String;
    goto :goto_0

    .line 822
    :cond_4
    const-string v5, "silent"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 823
    iput v4, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->defaultVibrate:I

    goto :goto_1

    .line 826
    :cond_5
    iget-object v5, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->context:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 828
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    if-ne v5, v3, :cond_6

    .line 829
    iput v3, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->defaultVibrate:I

    goto :goto_1

    .line 831
    :cond_6
    iput v4, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->defaultVibrate:I

    goto :goto_1

    .end local v0    # "audioManager":Landroid/media/AudioManager;
    .end local v2    # "vibrateWhen":Ljava/lang/String;
    :cond_7
    move v3, v4

    .line 835
    goto :goto_2
.end method

.method private getDoPopup()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 788
    iget v2, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->doPopup:I

    if-gez v2, :cond_0

    .line 789
    iget-object v2, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "preferences_alerts_popup"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 790
    iput v0, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->doPopup:I

    .line 795
    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->doPopup:I

    if-ne v2, v0, :cond_2

    :goto_1
    return v0

    .line 792
    :cond_1
    iput v1, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->doPopup:I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 795
    goto :goto_1
.end method

.method private getRingtoneAndSilence()Ljava/lang/String;
    .locals 4

    .prologue
    .line 839
    iget-object v1, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->ringtone:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 840
    iget-boolean v1, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->quietUpdate:Z

    if-eqz v1, :cond_1

    .line 841
    const-string v1, ""

    iput-object v1, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->ringtone:Ljava/lang/String;

    .line 846
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->ringtone:Ljava/lang/String;

    .line 847
    .local v0, "retVal":Ljava/lang/String;
    const-string v1, ""

    iput-object v1, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->ringtone:Ljava/lang/String;

    .line 848
    return-object v0

    .line 843
    .end local v0    # "retVal":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "preferences_alerts_ringtone"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->ringtone:Ljava/lang/String;

    goto :goto_0
.end method
