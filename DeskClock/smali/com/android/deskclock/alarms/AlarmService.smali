.class public Lcom/android/deskclock/alarms/AlarmService;
.super Landroid/app/Service;
.source "AlarmService.java"


# instance fields
.field private mCurrentAlarm:Lcom/android/deskclock/provider/AlarmInstance;

.field private mInitialCallState:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/deskclock/alarms/AlarmService;->mCurrentAlarm:Lcom/android/deskclock/provider/AlarmInstance;

    .line 82
    new-instance v0, Lcom/android/deskclock/alarms/AlarmService$1;

    invoke-direct {v0, p0}, Lcom/android/deskclock/alarms/AlarmService$1;-><init>(Lcom/android/deskclock/alarms/AlarmService;)V

    iput-object v0, p0, Lcom/android/deskclock/alarms/AlarmService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/alarms/AlarmService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/alarms/AlarmService;

    .prologue
    .line 34
    iget v0, p0, Lcom/android/deskclock/alarms/AlarmService;->mInitialCallState:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/deskclock/alarms/AlarmService;)Lcom/android/deskclock/provider/AlarmInstance;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/alarms/AlarmService;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmService;->mCurrentAlarm:Lcom/android/deskclock/provider/AlarmInstance;

    return-object v0
.end method

.method public static startAlarm(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 3

    .prologue
    .line 55
    const-class v0, Lcom/android/deskclock/alarms/AlarmService;

    iget-wide v1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-static {p0, v0, v1, v2}, Lcom/android/deskclock/provider/AlarmInstance;->createIntent(Landroid/content/Context;Ljava/lang/Class;J)Landroid/content/Intent;

    move-result-object v0

    .line 56
    const-string v1, "START_ALARM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    invoke-static {p0}, Lcom/android/deskclock/AlarmAlertWakeLock;->acquireCpuWakeLock(Landroid/content/Context;)V

    .line 60
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 61
    return-void
.end method

.method private startAlarm(Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 4
    .param p1, "instance"    # Lcom/android/deskclock/provider/AlarmInstance;

    .prologue
    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlarmService.start with instance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/android/deskclock/alarms/AlarmService;->mCurrentAlarm:Lcom/android/deskclock/provider/AlarmInstance;

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/android/deskclock/alarms/AlarmService;->mCurrentAlarm:Lcom/android/deskclock/provider/AlarmInstance;

    invoke-static {p0, v1}, Lcom/android/deskclock/alarms/AlarmStateManager;->setMissedState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 100
    invoke-direct {p0}, Lcom/android/deskclock/alarms/AlarmService;->stopCurrentAlarm()V

    .line 103
    :cond_0
    invoke-static {p0}, Lcom/android/deskclock/AlarmAlertWakeLock;->acquireCpuWakeLock(Landroid/content/Context;)V

    .line 104
    iput-object p1, p0, Lcom/android/deskclock/alarms/AlarmService;->mCurrentAlarm:Lcom/android/deskclock/provider/AlarmInstance;

    .line 105
    iget-object v1, p0, Lcom/android/deskclock/alarms/AlarmService;->mCurrentAlarm:Lcom/android/deskclock/provider/AlarmInstance;

    invoke-static {p0, v1}, Lcom/android/deskclock/alarms/AlarmNotifications;->showAlarmNotification(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 106
    iget-object v1, p0, Lcom/android/deskclock/alarms/AlarmService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    iput v1, p0, Lcom/android/deskclock/alarms/AlarmService;->mInitialCallState:I

    .line 107
    iget-object v1, p0, Lcom/android/deskclock/alarms/AlarmService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/deskclock/alarms/AlarmService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 108
    iget v1, p0, Lcom/android/deskclock/alarms/AlarmService;->mInitialCallState:I

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 109
    .local v0, "inCall":Z
    :goto_0
    iget-object v1, p0, Lcom/android/deskclock/alarms/AlarmService;->mCurrentAlarm:Lcom/android/deskclock/provider/AlarmInstance;

    invoke-static {p0, v1, v0}, Lcom/android/deskclock/alarms/AlarmKlaxon;->start(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;Z)V

    .line 110
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.deskclock.ALARM_ALERT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 111
    return-void

    .line 108
    .end local v0    # "inCall":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static stopAlarm(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 3

    .prologue
    .line 71
    const-class v0, Lcom/android/deskclock/alarms/AlarmService;

    iget-wide v1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-static {p0, v0, v1, v2}, Lcom/android/deskclock/provider/AlarmInstance;->createIntent(Landroid/content/Context;Ljava/lang/Class;J)Landroid/content/Intent;

    move-result-object v0

    .line 72
    const-string v1, "STOP_ALARM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 76
    return-void
.end method

.method private stopCurrentAlarm()V
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmService;->mCurrentAlarm:Lcom/android/deskclock/provider/AlarmInstance;

    if-nez v0, :cond_0

    .line 115
    const-string v0, "There is no current alarm to stop"

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 125
    :goto_0
    return-void

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlarmService.stop with instance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/alarms/AlarmService;->mCurrentAlarm:Lcom/android/deskclock/provider/AlarmInstance;

    iget-wide v1, v1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 120
    invoke-static {p0}, Lcom/android/deskclock/alarms/AlarmKlaxon;->stop(Landroid/content/Context;)V

    .line 121
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/deskclock/alarms/AlarmService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 122
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.deskclock.ALARM_DONE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/deskclock/alarms/AlarmService;->mCurrentAlarm:Lcom/android/deskclock/provider/AlarmInstance;

    .line 124
    invoke-static {}, Lcom/android/deskclock/AlarmAlertWakeLock;->releaseCpuLock()V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 174
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 130
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/deskclock/alarms/AlarmService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 131
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 167
    const-string v0, "AlarmService.onDestroy() called"

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 168
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 169
    invoke-direct {p0}, Lcom/android/deskclock/alarms/AlarmService;->stopCurrentAlarm()V

    .line 170
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v7, 0x2

    .line 135
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AlarmService.onStartCommand() with intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lcom/android/deskclock/provider/AlarmInstance;->getId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 138
    .local v2, "instanceId":J
    const-string v4, "START_ALARM"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 139
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 140
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {v0, v2, v3}, Lcom/android/deskclock/provider/AlarmInstance;->getInstance(Landroid/content/ContentResolver;J)Lcom/android/deskclock/provider/AlarmInstance;

    move-result-object v1

    .line 141
    .local v1, "instance":Lcom/android/deskclock/provider/AlarmInstance;
    if-nez v1, :cond_1

    .line 142
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No instance found to start alarm: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/deskclock/Log;->e(Ljava/lang/String;)V

    .line 143
    iget-object v4, p0, Lcom/android/deskclock/alarms/AlarmService;->mCurrentAlarm:Lcom/android/deskclock/provider/AlarmInstance;

    if-eqz v4, :cond_0

    .line 145
    invoke-static {}, Lcom/android/deskclock/AlarmAlertWakeLock;->releaseCpuLock()V

    .line 162
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "instance":Lcom/android/deskclock/provider/AlarmInstance;
    :cond_0
    :goto_0
    return v7

    .line 148
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v1    # "instance":Lcom/android/deskclock/provider/AlarmInstance;
    :cond_1
    iget-object v4, p0, Lcom/android/deskclock/alarms/AlarmService;->mCurrentAlarm:Lcom/android/deskclock/provider/AlarmInstance;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/deskclock/alarms/AlarmService;->mCurrentAlarm:Lcom/android/deskclock/provider/AlarmInstance;

    iget-wide v4, v4, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_2

    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Alarm already started for instance: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/deskclock/Log;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/deskclock/alarms/AlarmService;->startAlarm(Lcom/android/deskclock/provider/AlarmInstance;)V

    goto :goto_0

    .line 153
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "instance":Lcom/android/deskclock/provider/AlarmInstance;
    :cond_3
    const-string v4, "STOP_ALARM"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 154
    iget-object v4, p0, Lcom/android/deskclock/alarms/AlarmService;->mCurrentAlarm:Lcom/android/deskclock/provider/AlarmInstance;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/deskclock/alarms/AlarmService;->mCurrentAlarm:Lcom/android/deskclock/provider/AlarmInstance;

    iget-wide v4, v4, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_4

    .line 155
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t stop alarm for instance: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " because current alarm is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/deskclock/alarms/AlarmService;->mCurrentAlarm:Lcom/android/deskclock/provider/AlarmInstance;

    iget-wide v5, v5, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/deskclock/Log;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :cond_4
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_0
.end method
