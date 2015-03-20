.class Lcom/android/providers/downloads/RealSystemFacade;
.super Ljava/lang/Object;
.source "RealSystemFacade.java"

# interfaces
.implements Lcom/android/providers/downloads/SystemFacade;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/providers/downloads/RealSystemFacade;->mContext:Landroid/content/Context;

    .line 22
    iget-object v0, p0, Lcom/android/providers/downloads/RealSystemFacade;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/providers/downloads/RealSystemFacade;->mNotificationManager:Landroid/app/NotificationManager;

    .line 24
    return-void
.end method


# virtual methods
.method public cancelAllNotifications()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/providers/downloads/RealSystemFacade;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 105
    return-void
.end method

.method public cancelNotification(J)V
    .locals 2
    .param p1, "id"    # J

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/providers/downloads/RealSystemFacade;->mNotificationManager:Landroid/app/NotificationManager;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 100
    return-void
.end method

.method public currentTimeMillis()J
    .locals 2

    .prologue
    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getActiveNetworkInfo(I)Landroid/net/NetworkInfo;
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 31
    iget-object v2, p0, Lcom/android/providers/downloads/RealSystemFacade;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 33
    .local v1, "connectivity":Landroid/net/ConnectivityManager;
    if-nez v1, :cond_1

    .line 34
    const-string v2, "DownloadManager"

    const-string v3, "couldn\'t get connectivity manager"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const/4 v0, 0x0

    .line 42
    :cond_0
    :goto_0
    return-object v0

    .line 38
    :cond_1
    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 39
    .local v0, "activeInfo":Landroid/net/NetworkInfo;
    if-nez v0, :cond_0

    sget-boolean v2, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v2, :cond_0

    .line 40
    const-string v2, "DownloadManager"

    const-string v3, "network is not available"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMaxBytesOverMobile()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/providers/downloads/RealSystemFacade;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/DownloadManager;->getMaxBytesOverMobile(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getRecommendedMaxBytesOverMobile()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/providers/downloads/RealSystemFacade;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/DownloadManager;->getRecommendedMaxBytesOverMobile(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public isActiveNetworkMetered()Z
    .locals 2

    .prologue
    .line 47
    iget-object v1, p0, Lcom/android/providers/downloads/RealSystemFacade;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 48
    .local v0, "conn":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v1

    return v1
.end method

.method public isNetworkRoaming()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 52
    iget-object v5, p0, Lcom/android/providers/downloads/RealSystemFacade;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 54
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 55
    const-string v5, "DownloadManager"

    const-string v6, "couldn\'t get connectivity manager"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :goto_0
    return v4

    .line 59
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 60
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-nez v5, :cond_2

    move v2, v3

    .line 61
    .local v2, "isMobile":Z
    :goto_1
    if-eqz v2, :cond_3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 62
    .local v3, "isRoaming":Z
    :goto_2
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    .line 63
    const-string v4, "DownloadManager"

    const-string v5, "network is roaming"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v4, v3

    .line 65
    goto :goto_0

    .end local v2    # "isMobile":Z
    .end local v3    # "isRoaming":Z
    :cond_2
    move v2, v4

    .line 60
    goto :goto_1

    .restart local v2    # "isMobile":Z
    :cond_3
    move v3, v4

    .line 61
    goto :goto_2
.end method

.method public postNotification(JLandroid/app/Notification;)V
    .locals 2
    .param p1, "id"    # J
    .param p3, "notification"    # Landroid/app/Notification;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/providers/downloads/RealSystemFacade;->mNotificationManager:Landroid/app/NotificationManager;

    long-to-int v1, p1

    invoke-virtual {v0, v1, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 95
    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/providers/downloads/RealSystemFacade;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 80
    return-void
.end method

.method public startThread(Ljava/lang/Thread;)V
    .locals 0
    .param p1, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 109
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 110
    return-void
.end method

.method public userOwnsPackage(ILjava/lang/String;)Z
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 84
    iget-object v1, p0, Lcom/android/providers/downloads/RealSystemFacade;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
