.class public Lcom/android/calendar/alerts/AlertService;
.super Landroid/app/Service;
.source "AlertService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/alerts/AlertService$ServiceHandler;,
        Lcom/android/calendar/alerts/AlertService$NotificationPrefs;,
        Lcom/android/calendar/alerts/AlertService$NotificationInfo;,
        Lcom/android/calendar/alerts/AlertService$NotificationMgrWrapper;,
        Lcom/android/calendar/alerts/AlertService$NotificationWrapper;
    }
.end annotation


# static fields
.field private static final ACTIVE_ALERTS_SELECTION_ARGS:[Ljava/lang/String;

.field static final ALERT_PROJECTION:[Ljava/lang/String;


# instance fields
.field private volatile mServiceHandler:Lcom/android/calendar/alerts/AlertService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "event_id"

    aput-object v1, v0, v4

    const-string v1, "state"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "selfAttendeeStatus"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "alarmTime"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "minutes"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "end"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "description"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/alerts/AlertService;->ALERT_PROJECTION:[Ljava/lang/String;

    .line 97
    new-array v0, v5, [Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/calendar/alerts/AlertService;->ACTIVE_ALERTS_SELECTION_ARGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 928
    return-void
.end method

.method private static addNotificationOptions(Lcom/android/calendar/alerts/AlertService$NotificationWrapper;ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .param p0, "nw"    # Lcom/android/calendar/alerts/AlertService$NotificationWrapper;
    .param p1, "quietUpdate"    # Z
    .param p2, "tickerText"    # Ljava/lang/String;
    .param p3, "defaultVibrate"    # Z
    .param p4, "reminderRingtone"    # Ljava/lang/String;

    .prologue
    .line 744
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;->mNotification:Landroid/app/Notification;

    .line 745
    .local v0, "notification":Landroid/app/Notification;
    iget v1, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 748
    if-nez p1, :cond_2

    .line 750
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 751
    iput-object p2, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 758
    :cond_0
    if-eqz p3, :cond_1

    .line 759
    iget v1, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 764
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 767
    :cond_2
    return-void

    .line 764
    :cond_3
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method static dismissOldAlerts(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x0

    .line 206
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 207
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 208
    .local v1, "currentTime":J
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 209
    .local v3, "vals":Landroid/content/ContentValues;
    const-string v4, "state"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 210
    sget-object v4, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "end<? AND state=?"

    new-array v6, v6, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    const/4 v7, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 213
    return-void
.end method

.method private doTimeChanged()V
    .locals 4

    .prologue
    .line 853
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 854
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "service":Ljava/lang/Object;
    move-object v1, v2

    .line 855
    check-cast v1, Landroid/app/AlarmManager;

    .line 857
    .local v1, "manager":Landroid/app/AlarmManager;
    invoke-static {v0, p0, v1}, Lcom/android/calendar/alerts/AlertService;->rescheduleMissedAlarms(Landroid/content/ContentResolver;Landroid/content/Context;Landroid/app/AlarmManager;)V

    .line 858
    invoke-static {p0}, Lcom/android/calendar/alerts/AlertService;->updateAlertNotification(Landroid/content/Context;)Z

    .line 859
    return-void
.end method

.method public static generateAlerts(Landroid/content/Context;Lcom/android/calendar/alerts/NotificationMgr;Landroid/content/SharedPreferences;Landroid/database/Cursor;JI)Z
    .locals 46
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nm"    # Lcom/android/calendar/alerts/NotificationMgr;
    .param p2, "prefs"    # Landroid/content/SharedPreferences;
    .param p3, "alertCursor"    # Landroid/database/Cursor;
    .param p4, "currentTime"    # J
    .param p6, "maxNotifications"    # I

    .prologue
    .line 258
    const-string v3, "AlertService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "alertCursor count:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v7, "highPriorityEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/calendar/alerts/AlertService$NotificationInfo;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v8, "mediumPriorityEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/calendar/alerts/AlertService$NotificationInfo;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .local v9, "lowPriorityEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/calendar/alerts/AlertService$NotificationInfo;>;"
    move-object/from16 v3, p3

    move-object/from16 v4, p0

    move-wide/from16 v5, p4

    .line 265
    invoke-static/range {v3 .. v9}, Lcom/android/calendar/alerts/AlertService;->processQuery(Landroid/database/Cursor;Landroid/content/Context;JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v43

    .line 268
    .local v43, "numFired":I
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    if-nez v3, :cond_0

    .line 270
    invoke-interface/range {p1 .. p1}, Lcom/android/calendar/alerts/NotificationMgr;->cancelAll()V

    .line 271
    const/4 v3, 0x1

    .line 382
    :goto_0
    return v3

    .line 274
    :cond_0
    const-wide v40, 0x7fffffffffffffffL

    .line 275
    .local v40, "nextRefreshTime":J
    const/16 v16, 0x1

    .line 276
    .local v16, "currentNotificationId":I
    new-instance v14, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;

    if-nez v43, :cond_1

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v14, v0, v1, v3}, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Z)V

    .line 281
    .local v14, "notificationPrefs":Lcom/android/calendar/alerts/AlertService$NotificationPrefs;
    move/from16 v0, p6

    invoke-static {v7, v8, v9, v0}, Lcom/android/calendar/alerts/AlertService;->redistributeBuckets(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 287
    const/16 v36, 0x0

    .local v36, "i":I
    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v36

    if-ge v0, v3, :cond_2

    .line 288
    move/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/calendar/alerts/AlertService$NotificationInfo;

    .line 289
    .local v10, "info":Lcom/android/calendar/alerts/AlertService$NotificationInfo;
    iget-wide v3, v10, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->startMillis:J

    iget-boolean v5, v10, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->allDay:Z

    iget-object v6, v10, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->location:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/calendar/alerts/AlertUtils;->formatTimeLocation(Landroid/content/Context;JZLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 291
    .local v11, "summaryText":Ljava/lang/String;
    const/4 v13, 0x1

    add-int/lit8 v23, v16, 0x1

    .end local v16    # "currentNotificationId":I
    .local v23, "currentNotificationId":I
    move-object/from16 v12, p0

    move-object/from16 v15, p1

    invoke-static/range {v10 .. v16}, Lcom/android/calendar/alerts/AlertService;->postNotification(Lcom/android/calendar/alerts/AlertService$NotificationInfo;Ljava/lang/String;Landroid/content/Context;ZLcom/android/calendar/alerts/AlertService$NotificationPrefs;Lcom/android/calendar/alerts/NotificationMgr;I)V

    .line 296
    move-wide/from16 v0, p4

    invoke-static {v10, v0, v1}, Lcom/android/calendar/alerts/AlertService;->getNextRefreshTime(Lcom/android/calendar/alerts/AlertService$NotificationInfo;J)J

    move-result-wide v3

    move-wide/from16 v0, v40

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v40

    .line 287
    add-int/lit8 v36, v36, 0x1

    move/from16 v16, v23

    .end local v23    # "currentNotificationId":I
    .restart local v16    # "currentNotificationId":I
    goto :goto_2

    .line 276
    .end local v10    # "info":Lcom/android/calendar/alerts/AlertService$NotificationInfo;
    .end local v11    # "summaryText":Ljava/lang/String;
    .end local v14    # "notificationPrefs":Lcom/android/calendar/alerts/AlertService$NotificationPrefs;
    .end local v36    # "i":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 304
    .restart local v14    # "notificationPrefs":Lcom/android/calendar/alerts/AlertService$NotificationPrefs;
    .restart local v36    # "i":I
    :cond_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v36, v3, -0x1

    move/from16 v23, v16

    .end local v16    # "currentNotificationId":I
    .restart local v23    # "currentNotificationId":I
    :goto_3
    if-ltz v36, :cond_3

    .line 305
    move/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/calendar/alerts/AlertService$NotificationInfo;

    .line 308
    .restart local v10    # "info":Lcom/android/calendar/alerts/AlertService$NotificationInfo;
    iget-wide v3, v10, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->startMillis:J

    iget-boolean v5, v10, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->allDay:Z

    iget-object v6, v10, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->location:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/calendar/alerts/AlertUtils;->formatTimeLocation(Landroid/content/Context;JZLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 310
    .restart local v11    # "summaryText":Ljava/lang/String;
    const/16 v20, 0x0

    add-int/lit8 v16, v23, 0x1

    .end local v23    # "currentNotificationId":I
    .restart local v16    # "currentNotificationId":I
    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, p0

    move-object/from16 v21, v14

    move-object/from16 v22, p1

    invoke-static/range {v17 .. v23}, Lcom/android/calendar/alerts/AlertService;->postNotification(Lcom/android/calendar/alerts/AlertService$NotificationInfo;Ljava/lang/String;Landroid/content/Context;ZLcom/android/calendar/alerts/AlertService$NotificationPrefs;Lcom/android/calendar/alerts/NotificationMgr;I)V

    .line 314
    move-wide/from16 v0, p4

    invoke-static {v10, v0, v1}, Lcom/android/calendar/alerts/AlertService;->getNextRefreshTime(Lcom/android/calendar/alerts/AlertService$NotificationInfo;J)J

    move-result-wide v3

    move-wide/from16 v0, v40

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v40

    .line 304
    add-int/lit8 v36, v36, -0x1

    move/from16 v23, v16

    .end local v16    # "currentNotificationId":I
    .restart local v23    # "currentNotificationId":I
    goto :goto_3

    .line 318
    .end local v10    # "info":Lcom/android/calendar/alerts/AlertService$NotificationInfo;
    .end local v11    # "summaryText":Ljava/lang/String;
    :cond_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v44

    .line 319
    .local v44, "numLowPriority":I
    if-lez v44, :cond_5

    .line 320
    invoke-static {v9}, Lcom/android/calendar/alerts/AlertService;->getDigestTitle(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v35

    .line 322
    .local v35, "expiredDigestTitle":Ljava/lang/String;
    const/4 v3, 0x1

    move/from16 v0, v44

    if-ne v0, v3, :cond_4

    .line 324
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/calendar/alerts/AlertService$NotificationInfo;

    .line 325
    .restart local v10    # "info":Lcom/android/calendar/alerts/AlertService$NotificationInfo;
    iget-wide v3, v10, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->startMillis:J

    iget-boolean v5, v10, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->allDay:Z

    iget-object v6, v10, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->location:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/calendar/alerts/AlertUtils;->formatTimeLocation(Landroid/content/Context;JZLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 327
    .restart local v11    # "summaryText":Ljava/lang/String;
    iget-object v0, v10, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->eventName:Ljava/lang/String;

    move-object/from16 v25, v0

    iget-wide v0, v10, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->startMillis:J

    move-wide/from16 v27, v0

    iget-wide v0, v10, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->endMillis:J

    move-wide/from16 v29, v0

    iget-wide v0, v10, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->eventId:J

    move-wide/from16 v31, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v24, p0

    move-object/from16 v26, v11

    invoke-static/range {v24 .. v34}, Lcom/android/calendar/alerts/AlertReceiver;->makeBasicNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJJIZ)Lcom/android/calendar/alerts/AlertService$NotificationWrapper;

    move-result-object v42

    .line 337
    .end local v10    # "info":Lcom/android/calendar/alerts/AlertService$NotificationInfo;
    .end local v11    # "summaryText":Ljava/lang/String;
    .local v42, "notification":Lcom/android/calendar/alerts/AlertService$NotificationWrapper;
    :goto_4
    const/4 v3, 0x1

    # invokes: Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->getDefaultVibrate()Z
    invoke-static {v14}, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->access$000(Lcom/android/calendar/alerts/AlertService$NotificationPrefs;)Z

    move-result v4

    # invokes: Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->getRingtoneAndSilence()Ljava/lang/String;
    invoke-static {v14}, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->access$100(Lcom/android/calendar/alerts/AlertService$NotificationPrefs;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v42

    move-object/from16 v1, v35

    invoke-static {v0, v3, v1, v4, v5}, Lcom/android/calendar/alerts/AlertService;->addNotificationOptions(Lcom/android/calendar/alerts/AlertService$NotificationWrapper;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 342
    const-string v3, "AlertService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Quietly posting digest alarm notification, numEvents:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", notificationId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-interface {v0, v3, v1}, Lcom/android/calendar/alerts/NotificationMgr;->notify(ILcom/android/calendar/alerts/AlertService$NotificationWrapper;)V

    .line 356
    .end local v35    # "expiredDigestTitle":Ljava/lang/String;
    .end local v42    # "notification":Lcom/android/calendar/alerts/AlertService$NotificationWrapper;
    :goto_5
    move/from16 v0, v23

    move/from16 v1, p6

    if-gt v0, v1, :cond_7

    .line 357
    move/from16 v36, v23

    :goto_6
    move/from16 v0, v36

    move/from16 v1, p6

    if-gt v0, v1, :cond_6

    .line 358
    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-interface {v0, v1}, Lcom/android/calendar/alerts/NotificationMgr;->cancel(I)V

    .line 357
    add-int/lit8 v36, v36, 0x1

    goto :goto_6

    .line 332
    .restart local v35    # "expiredDigestTitle":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-static {v0, v9, v1, v3}, Lcom/android/calendar/alerts/AlertReceiver;->makeDigestNotification(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Z)Lcom/android/calendar/alerts/AlertService$NotificationWrapper;

    move-result-object v42

    .restart local v42    # "notification":Lcom/android/calendar/alerts/AlertService$NotificationWrapper;
    goto :goto_4

    .line 349
    .end local v35    # "expiredDigestTitle":Ljava/lang/String;
    .end local v42    # "notification":Lcom/android/calendar/alerts/AlertService$NotificationWrapper;
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lcom/android/calendar/alerts/NotificationMgr;->cancel(I)V

    .line 351
    const-string v3, "AlertService"

    const-string v4, "No low priority events, canceling the digest notification."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 361
    :cond_6
    const-string v3, "AlertService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Canceling leftover notification IDs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_7
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v40, v3

    if-gez v3, :cond_9

    cmp-long v3, v40, p4

    if-lez v3, :cond_9

    .line 369
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v40

    invoke-static {v0, v3, v1, v2}, Lcom/android/calendar/alerts/AlertUtils;->scheduleNextNotificationRefresh(Landroid/content/Context;Landroid/app/AlarmManager;J)V

    .line 371
    sub-long v3, v40, p4

    const-wide/32 v5, 0xea60

    div-long v37, v3, v5

    .line 372
    .local v37, "minutesBeforeRefresh":J
    new-instance v45, Landroid/text/format/Time;

    invoke-direct/range {v45 .. v45}, Landroid/text/format/Time;-><init>()V

    .line 373
    .local v45, "time":Landroid/text/format/Time;
    move-object/from16 v0, v45

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 374
    const-string v3, "Scheduling next notification refresh in %d min at: %d:%02d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, v45

    iget v6, v0, Landroid/text/format/Time;->hour:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    move-object/from16 v0, v45

    iget v6, v0, Landroid/text/format/Time;->minute:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    .line 376
    .local v39, "msg":Ljava/lang/String;
    const-string v3, "AlertService"

    move-object/from16 v0, v39

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    .end local v37    # "minutesBeforeRefresh":J
    .end local v39    # "msg":Ljava/lang/String;
    .end local v45    # "time":Landroid/text/format/Time;
    :cond_8
    :goto_7
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 378
    :cond_9
    cmp-long v3, v40, p4

    if-gez v3, :cond_8

    .line 379
    const-string v3, "AlertService"

    const-string v4, "Illegal state: next notification refresh time found to be in the past."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method private static getDigestTitle(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/alerts/AlertService$NotificationInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 667
    .local p0, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/calendar/alerts/AlertService$NotificationInfo;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 668
    .local v0, "digestTitle":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/alerts/AlertService$NotificationInfo;

    .line 669
    .local v1, "eventInfo":Lcom/android/calendar/alerts/AlertService$NotificationInfo;
    iget-object v3, v1, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->eventName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 670
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 671
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    :cond_1
    iget-object v3, v1, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->eventName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 676
    .end local v1    # "eventInfo":Lcom/android/calendar/alerts/AlertService$NotificationInfo;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static getGracePeriodMs(JJ)J
    .locals 6
    .param p0, "beginTime"    # J
    .param p2, "endTime"    # J

    .prologue
    .line 663
    const-wide/32 v0, 0xdbba0

    sub-long v2, p2, p0

    const-wide/16 v4, 0x4

    div-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getNextRefreshTime(Lcom/android/calendar/alerts/AlertService$NotificationInfo;J)J
    .locals 10
    .param p0, "info"    # Lcom/android/calendar/alerts/AlertService$NotificationInfo;
    .param p1, "currentTime"    # J

    .prologue
    .line 460
    const-wide v2, 0x7fffffffffffffffL

    .line 461
    .local v2, "nextRefreshTime":J
    iget-wide v4, p0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->startMillis:J

    iget-wide v6, p0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->startMillis:J

    iget-wide v8, p0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->endMillis:J

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendar/alerts/AlertService;->getGracePeriodMs(JJ)J

    move-result-wide v6

    add-long v0, v4, v6

    .line 463
    .local v0, "gracePeriodCutoff":J
    cmp-long v4, v0, p1

    if-lez v4, :cond_0

    .line 464
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 468
    :cond_0
    iget-wide v4, p0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->endMillis:J

    cmp-long v4, v4, p1

    if-lez v4, :cond_1

    iget-wide v4, p0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->endMillis:J

    cmp-long v4, v4, v0

    if-lez v4, :cond_1

    .line 469
    iget-wide v4, p0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->endMillis:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 471
    :cond_1
    return-wide v2
.end method

.method private static getTickerText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "eventName"    # Ljava/lang/String;
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 712
    move-object v0, p0

    .line 713
    .local v0, "tickerText":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 714
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 716
    :cond_0
    return-object v0
.end method

.method private static logEventIdsBumped(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/alerts/AlertService$NotificationInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/alerts/AlertService$NotificationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 435
    .local p0, "list1":Ljava/util/List;, "Ljava/util/List<Lcom/android/calendar/alerts/AlertService$NotificationInfo;>;"
    .local p1, "list2":Ljava/util/List;, "Ljava/util/List<Lcom/android/calendar/alerts/AlertService$NotificationInfo;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 436
    .local v1, "ids":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    .line 437
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/alerts/AlertService$NotificationInfo;

    .line 438
    .local v2, "info":Lcom/android/calendar/alerts/AlertService$NotificationInfo;
    iget-wide v3, v2, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->eventId:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 439
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 442
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Lcom/android/calendar/alerts/AlertService$NotificationInfo;
    :cond_0
    if-eqz p1, :cond_1

    .line 443
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/alerts/AlertService$NotificationInfo;

    .line 444
    .restart local v2    # "info":Lcom/android/calendar/alerts/AlertService$NotificationInfo;
    iget-wide v3, v2, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->eventId:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 445
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 448
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Lcom/android/calendar/alerts/AlertService$NotificationInfo;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_2

    .line 449
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 451
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 452
    const-string v3, "AlertService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reached max postings, bumping event IDs {"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "} to digest."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_3
    return-void
.end method

.method private static postNotification(Lcom/android/calendar/alerts/AlertService$NotificationInfo;Ljava/lang/String;Landroid/content/Context;ZLcom/android/calendar/alerts/AlertService$NotificationPrefs;Lcom/android/calendar/alerts/NotificationMgr;I)V
    .locals 21
    .param p0, "info"    # Lcom/android/calendar/alerts/AlertService$NotificationInfo;
    .param p1, "summaryText"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "highPriority"    # Z
    .param p4, "prefs"    # Lcom/android/calendar/alerts/AlertService$NotificationPrefs;
    .param p5, "notificationMgr"    # Lcom/android/calendar/alerts/NotificationMgr;
    .param p6, "notificationId"    # I

    .prologue
    .line 682
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->eventName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->location:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/calendar/alerts/AlertService;->getTickerText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 683
    .local v20, "tickerText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->eventName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->description:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->startMillis:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->endMillis:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->eventId:J

    # invokes: Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->getDoPopup()Z
    invoke-static/range {p4 .. p4}, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->access$200(Lcom/android/calendar/alerts/AlertService$NotificationPrefs;)Z

    move-result v15

    move-object/from16 v4, p2

    move-object/from16 v6, p1

    move/from16 v14, p6

    move/from16 v16, p3

    invoke-static/range {v4 .. v16}, Lcom/android/calendar/alerts/AlertReceiver;->makeExpandingNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJIZZ)Lcom/android/calendar/alerts/AlertService$NotificationWrapper;

    move-result-object v17

    .line 688
    .local v17, "notification":Lcom/android/calendar/alerts/AlertService$NotificationWrapper;
    const/16 v18, 0x1

    .line 689
    .local v18, "quietUpdate":Z
    const-string v19, ""

    .line 690
    .local v19, "ringtone":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->newAlert:Z

    if-eqz v4, :cond_0

    .line 691
    move-object/from16 v0, p4

    iget-boolean v0, v0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->quietUpdate:Z

    move/from16 v18, v0

    .line 695
    # invokes: Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->getRingtoneAndSilence()Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->access$100(Lcom/android/calendar/alerts/AlertService$NotificationPrefs;)Ljava/lang/String;

    move-result-object v19

    .line 697
    :cond_0
    # invokes: Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->getDefaultVibrate()Z
    invoke-static/range {p4 .. p4}, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->access$000(Lcom/android/calendar/alerts/AlertService$NotificationPrefs;)Z

    move-result v4

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v20

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/calendar/alerts/AlertService;->addNotificationOptions(Lcom/android/calendar/alerts/AlertService$NotificationWrapper;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 701
    move-object/from16 v0, p5

    move/from16 v1, p6

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lcom/android/calendar/alerts/NotificationMgr;->notify(ILcom/android/calendar/alerts/AlertService$NotificationWrapper;)V

    .line 704
    const-string v5, "AlertService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Posting individual alarm notification, eventId:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->eventId:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", notificationId:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, ", quiet"

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p3, :cond_2

    const-string v4, ", high-priority"

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    return-void

    .line 704
    :cond_1
    const-string v4, ", LOUD"

    goto :goto_0

    :cond_2
    const-string v4, ""

    goto :goto_1
.end method

.method static processQuery(Landroid/database/Cursor;Landroid/content/Context;JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 51
    .param p0, "alertCursor"    # Landroid/database/Cursor;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "currentTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/alerts/AlertService$NotificationInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/alerts/AlertService$NotificationInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/alerts/AlertService$NotificationInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 489
    .local p4, "highPriorityEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/calendar/alerts/AlertService$NotificationInfo;>;"
    .local p5, "mediumPriorityEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/calendar/alerts/AlertService$NotificationInfo;>;"
    .local p6, "lowPriorityEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/calendar/alerts/AlertService$NotificationInfo;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    .line 490
    .local v24, "cr":Landroid/content/ContentResolver;
    new-instance v27, Ljava/util/HashMap;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashMap;-><init>()V

    .line 491
    .local v27, "eventIds":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/calendar/alerts/AlertService$NotificationInfo;>;"
    const/16 v37, 0x0

    .line 493
    .local v37, "numFired":I
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v47

    if-eqz v47, :cond_11

    .line 494
    const/16 v47, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 495
    .local v19, "alertId":J
    const/16 v47, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 496
    .local v13, "eventId":J
    const/16 v47, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 497
    .local v32, "minutes":I
    const/16 v47, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 498
    .local v6, "eventName":Ljava/lang/String;
    const/16 v47, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 499
    .local v8, "description":Ljava/lang/String;
    const/16 v47, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 500
    .local v7, "location":Ljava/lang/String;
    const/16 v47, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v44

    .line 501
    .local v44, "status":I
    const/16 v47, 0x2

    move/from16 v0, v44

    move/from16 v1, v47

    if-ne v0, v1, :cond_8

    const/16 v25, 0x1

    .line 502
    .local v25, "declined":Z
    :goto_1
    const/16 v47, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 503
    .local v9, "beginTime":J
    const/16 v47, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 504
    .local v11, "endTime":J
    sget-object v47, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v47

    move-wide/from16 v1, v19

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v21

    .line 506
    .local v21, "alertUri":Landroid/net/Uri;
    const/16 v47, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 507
    .local v17, "alarmTime":J
    const/16 v47, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v43

    .line 508
    .local v43, "state":I
    const/16 v47, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v47

    if-eqz v47, :cond_9

    const/4 v15, 0x1

    .line 511
    .local v15, "allDay":Z
    :goto_2
    const-string v47, "AlertService"

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "alertCursor result: alarmTime:"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " alertId:"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " eventId:"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " state: "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " minutes:"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " declined:"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " beginTime:"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " endTime:"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " allDay:"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v47 .. v48}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    new-instance v46, Landroid/content/ContentValues;

    invoke-direct/range {v46 .. v46}, Landroid/content/ContentValues;-><init>()V

    .line 518
    .local v46, "values":Landroid/content/ContentValues;
    const/16 v35, -0x1

    .line 519
    .local v35, "newState":I
    const/16 v16, 0x0

    .line 529
    .local v16, "newAlert":Z
    if-nez v25, :cond_a

    .line 530
    if-nez v43, :cond_1

    .line 531
    const/16 v35, 0x1

    .line 532
    add-int/lit8 v37, v37, 0x1

    .line 533
    const/16 v16, 0x1

    .line 538
    const-string v47, "receivedTime"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    invoke-virtual/range {v46 .. v48}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 545
    :cond_1
    :goto_3
    const/16 v47, -0x1

    move/from16 v0, v35

    move/from16 v1, v47

    if-eq v0, v1, :cond_2

    .line 546
    const-string v47, "state"

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    invoke-virtual/range {v46 .. v48}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 547
    move/from16 v43, v35

    .line 550
    :cond_2
    const/16 v47, 0x1

    move/from16 v0, v43

    move/from16 v1, v47

    if-ne v0, v1, :cond_3

    .line 553
    const-string v47, "notifyTime"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    invoke-virtual/range {v46 .. v48}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 557
    :cond_3
    invoke-virtual/range {v46 .. v46}, Landroid/content/ContentValues;->size()I

    move-result v47

    if-lez v47, :cond_4

    const/16 v47, 0x0

    const/16 v48, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    move-object/from16 v2, v46

    move-object/from16 v3, v47

    move-object/from16 v4, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 559
    :cond_4
    const/16 v47, 0x1

    move/from16 v0, v43

    move/from16 v1, v47

    if-ne v0, v1, :cond_0

    .line 565
    packed-switch v44, :pswitch_data_0

    .line 573
    :pswitch_0
    const/16 v36, 0x0

    .line 576
    .local v36, "newStatus":I
    :goto_4
    new-instance v5, Lcom/android/calendar/alerts/AlertService$NotificationInfo;

    invoke-direct/range {v5 .. v16}, Lcom/android/calendar/alerts/AlertService$NotificationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJZZ)V

    .line 582
    .local v5, "newInfo":Lcom/android/calendar/alerts/AlertService$NotificationInfo;
    move-wide/from16 v22, v9

    .line 583
    .local v22, "beginTimeAdjustedForAllDay":J
    const/16 v45, 0x0

    .line 584
    .local v45, "tz":Ljava/lang/String;
    if-eqz v15, :cond_b

    .line 585
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v45

    .line 586
    const/16 v47, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, v45

    invoke-static {v0, v9, v10, v1}, Lcom/android/calendar/Utils;->convertAlldayUtcToLocal(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v22

    .line 588
    const-wide/32 v28, 0xdbba0

    .line 594
    .local v28, "gracePeriodMs":J
    :goto_5
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    move-object/from16 v0, v27

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v47

    if-eqz v47, :cond_6

    .line 595
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    move-object/from16 v0, v27

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/android/calendar/alerts/AlertService$NotificationInfo;

    .line 596
    .local v40, "oldInfo":Lcom/android/calendar/alerts/AlertService$NotificationInfo;
    move-object/from16 v0, v40

    iget-wide v0, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->startMillis:J

    move-wide/from16 v38, v0

    .line 597
    .local v38, "oldBeginTimeAdjustedForAllDay":J
    if-eqz v15, :cond_5

    .line 598
    const/16 v47, 0x0

    move-object/from16 v0, v40

    iget-wide v0, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->startMillis:J

    move-wide/from16 v48, v0

    move-object/from16 v0, v47

    move-wide/from16 v1, v48

    move-object/from16 v3, v45

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Utils;->convertAlldayUtcToLocal(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v38

    .line 604
    :cond_5
    sub-long v41, v38, p2

    .line 605
    .local v41, "oldStartInterval":J
    sub-long v33, v22, p2

    .line 607
    .local v33, "newStartInterval":J
    const-wide/16 v47, 0x0

    cmp-long v47, v33, v47

    if-gez v47, :cond_d

    const-wide/16 v47, 0x0

    cmp-long v47, v41, v47

    if-lez v47, :cond_d

    .line 609
    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->abs(J)J

    move-result-wide v47

    const-wide/32 v49, 0xdbba0

    cmp-long v47, v47, v49

    if-gez v47, :cond_c

    const/16 v26, 0x1

    .line 615
    .local v26, "dropOld":Z
    :goto_6
    if-eqz v26, :cond_0

    .line 624
    move-object/from16 v0, p4

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 625
    move-object/from16 v0, p5

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 627
    const-string v47, "AlertService"

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "Dropping alert for recurring event ID:"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v40

    iget-wide v0, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->eventId:J

    move-wide/from16 v49, v0

    invoke-virtual/range {v48 .. v50}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, ", startTime:"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v40

    iget-wide v0, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->startMillis:J

    move-wide/from16 v49, v0

    invoke-virtual/range {v48 .. v50}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " in favor of startTime:"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    iget-wide v0, v5, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->startMillis:J

    move-wide/from16 v49, v0

    invoke-virtual/range {v48 .. v50}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v47 .. v48}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    .end local v26    # "dropOld":Z
    .end local v33    # "newStartInterval":J
    .end local v38    # "oldBeginTimeAdjustedForAllDay":J
    .end local v40    # "oldInfo":Lcom/android/calendar/alerts/AlertService$NotificationInfo;
    .end local v41    # "oldStartInterval":J
    :cond_6
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    move-object/from16 v0, v27

    move-object/from16 v1, v47

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    sub-long v30, p2, v28

    .line 641
    .local v30, "highPriorityCutoff":J
    cmp-long v47, v22, v30

    if-lez v47, :cond_f

    .line 643
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 652
    .end local v5    # "newInfo":Lcom/android/calendar/alerts/AlertService$NotificationInfo;
    .end local v6    # "eventName":Ljava/lang/String;
    .end local v7    # "location":Ljava/lang/String;
    .end local v8    # "description":Ljava/lang/String;
    .end local v9    # "beginTime":J
    .end local v11    # "endTime":J
    .end local v13    # "eventId":J
    .end local v15    # "allDay":Z
    .end local v16    # "newAlert":Z
    .end local v17    # "alarmTime":J
    .end local v19    # "alertId":J
    .end local v21    # "alertUri":Landroid/net/Uri;
    .end local v22    # "beginTimeAdjustedForAllDay":J
    .end local v25    # "declined":Z
    .end local v28    # "gracePeriodMs":J
    .end local v30    # "highPriorityCutoff":J
    .end local v32    # "minutes":I
    .end local v35    # "newState":I
    .end local v36    # "newStatus":I
    .end local v43    # "state":I
    .end local v44    # "status":I
    .end local v45    # "tz":Ljava/lang/String;
    .end local v46    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v47

    if-eqz p0, :cond_7

    .line 653
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v47

    .line 501
    .restart local v6    # "eventName":Ljava/lang/String;
    .restart local v7    # "location":Ljava/lang/String;
    .restart local v8    # "description":Ljava/lang/String;
    .restart local v13    # "eventId":J
    .restart local v19    # "alertId":J
    .restart local v32    # "minutes":I
    .restart local v44    # "status":I
    :cond_8
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 508
    .restart local v9    # "beginTime":J
    .restart local v11    # "endTime":J
    .restart local v17    # "alarmTime":J
    .restart local v21    # "alertUri":Landroid/net/Uri;
    .restart local v25    # "declined":Z
    .restart local v43    # "state":I
    :cond_9
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 541
    .restart local v15    # "allDay":Z
    .restart local v16    # "newAlert":Z
    .restart local v35    # "newState":I
    .restart local v46    # "values":Landroid/content/ContentValues;
    :cond_a
    const/16 v35, 0x2

    goto/16 :goto_3

    .line 567
    :pswitch_1
    const/16 v36, 0x2

    .line 568
    .restart local v36    # "newStatus":I
    goto/16 :goto_4

    .line 570
    .end local v36    # "newStatus":I
    :pswitch_2
    const/16 v36, 0x1

    .line 571
    .restart local v36    # "newStatus":I
    goto/16 :goto_4

    .line 590
    .restart local v5    # "newInfo":Lcom/android/calendar/alerts/AlertService$NotificationInfo;
    .restart local v22    # "beginTimeAdjustedForAllDay":J
    .restart local v45    # "tz":Ljava/lang/String;
    :cond_b
    :try_start_1
    invoke-static {v9, v10, v11, v12}, Lcom/android/calendar/alerts/AlertService;->getGracePeriodMs(JJ)J

    move-result-wide v28

    .restart local v28    # "gracePeriodMs":J
    goto/16 :goto_5

    .line 609
    .restart local v33    # "newStartInterval":J
    .restart local v38    # "oldBeginTimeAdjustedForAllDay":J
    .restart local v40    # "oldInfo":Lcom/android/calendar/alerts/AlertService$NotificationInfo;
    .restart local v41    # "oldStartInterval":J
    :cond_c
    const/16 v26, 0x0

    goto/16 :goto_6

    .line 612
    :cond_d
    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->abs(J)J

    move-result-wide v47

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->abs(J)J

    move-result-wide v49

    cmp-long v47, v47, v49

    if-gez v47, :cond_e

    const/16 v26, 0x1

    .restart local v26    # "dropOld":Z
    :goto_7
    goto/16 :goto_6

    .end local v26    # "dropOld":Z
    :cond_e
    const/16 v26, 0x0

    goto :goto_7

    .line 644
    .end local v33    # "newStartInterval":J
    .end local v38    # "oldBeginTimeAdjustedForAllDay":J
    .end local v40    # "oldInfo":Lcom/android/calendar/alerts/AlertService$NotificationInfo;
    .end local v41    # "oldStartInterval":J
    .restart local v30    # "highPriorityCutoff":J
    :cond_f
    if-eqz v15, :cond_10

    if-eqz v45, :cond_10

    invoke-static/range {v22 .. v23}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v47

    if-eqz v47, :cond_10

    .line 646
    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 648
    :cond_10
    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 652
    .end local v5    # "newInfo":Lcom/android/calendar/alerts/AlertService$NotificationInfo;
    .end local v6    # "eventName":Ljava/lang/String;
    .end local v7    # "location":Ljava/lang/String;
    .end local v8    # "description":Ljava/lang/String;
    .end local v9    # "beginTime":J
    .end local v11    # "endTime":J
    .end local v13    # "eventId":J
    .end local v15    # "allDay":Z
    .end local v16    # "newAlert":Z
    .end local v17    # "alarmTime":J
    .end local v19    # "alertId":J
    .end local v21    # "alertUri":Landroid/net/Uri;
    .end local v22    # "beginTimeAdjustedForAllDay":J
    .end local v25    # "declined":Z
    .end local v28    # "gracePeriodMs":J
    .end local v30    # "highPriorityCutoff":J
    .end local v32    # "minutes":I
    .end local v35    # "newState":I
    .end local v36    # "newStatus":I
    .end local v43    # "state":I
    .end local v44    # "status":I
    .end local v45    # "tz":Ljava/lang/String;
    .end local v46    # "values":Landroid/content/ContentValues;
    :cond_11
    if-eqz p0, :cond_12

    .line 653
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    .line 656
    :cond_12
    return v37

    .line 565
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static redistributeBuckets(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 5
    .param p3, "maxNotifications"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/alerts/AlertService$NotificationInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/alerts/AlertService$NotificationInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/alerts/AlertService$NotificationInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p0, "highPriorityEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/calendar/alerts/AlertService$NotificationInfo;>;"
    .local p1, "mediumPriorityEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/calendar/alerts/AlertService$NotificationInfo;>;"
    .local p2, "lowPriorityEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/calendar/alerts/AlertService$NotificationInfo;>;"
    const/4 v4, 0x0

    .line 397
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p3, :cond_0

    .line 399
    invoke-virtual {p2, v4, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 402
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, p3

    invoke-virtual {p0, v4, v2}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 405
    .local v0, "itemsToMoveSublist":Ljava/util/List;, "Ljava/util/List<Lcom/android/calendar/alerts/AlertService$NotificationInfo;>;"
    invoke-virtual {p2, v4, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 407
    invoke-static {p1, v0}, Lcom/android/calendar/alerts/AlertService;->logEventIdsBumped(Ljava/util/List;Ljava/util/List;)V

    .line 409
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 411
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 415
    .end local v0    # "itemsToMoveSublist":Ljava/util/List;, "Ljava/util/List<Lcom/android/calendar/alerts/AlertService$NotificationInfo;>;"
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    if-le v2, p3, :cond_1

    .line 416
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v1, p3, v2

    .line 421
    .local v1, "spaceRemaining":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 423
    .restart local v0    # "itemsToMoveSublist":Ljava/util/List;, "Ljava/util/List<Lcom/android/calendar/alerts/AlertService$NotificationInfo;>;"
    invoke-virtual {p2, v4, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 425
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/calendar/alerts/AlertService;->logEventIdsBumped(Ljava/util/List;Ljava/util/List;)V

    .line 429
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 431
    .end local v0    # "itemsToMoveSublist":Ljava/util/List;, "Ljava/util/List<Lcom/android/calendar/alerts/AlertService$NotificationInfo;>;"
    .end local v1    # "spaceRemaining":I
    :cond_1
    return-void
.end method

.method public static final rescheduleMissedAlarms(Landroid/content/ContentResolver;Landroid/content/Context;Landroid/app/AlarmManager;)V
    .locals 17
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Landroid/app/AlarmManager;

    .prologue
    .line 890
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 891
    .local v15, "now":J
    const-wide/32 v2, 0x5265c00

    sub-long v10, v15, v2

    .line 892
    .local v10, "ancient":J
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "alarmTime"

    aput-object v3, v4, v2

    .line 898
    .local v4, "projection":[Ljava/lang/String;
    sget-object v3, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "state=0 AND alarmTime<? AND alarmTime>? AND end>=?"

    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x2

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v7, "alarmTime ASC"

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 902
    .local v12, "cursor":Landroid/database/Cursor;
    if-nez v12, :cond_0

    .line 926
    :goto_0
    return-void

    .line 907
    :cond_0
    const-string v2, "AlertService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "missed alarms found: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    const-wide/16 v8, -0x1

    .line 913
    .local v8, "alarmTime":J
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 914
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 915
    .local v13, "newAlarmTime":J
    cmp-long v2, v8, v13

    if-eqz v2, :cond_1

    .line 917
    const-string v2, "AlertService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rescheduling missed alarm. alarmTime: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v13, v14}, Lcom/android/calendar/alerts/AlertUtils;->scheduleAlarm(Landroid/content/Context;Landroid/app/AlarmManager;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 920
    move-wide v8, v13

    goto :goto_1

    .line 924
    .end local v13    # "newAlarmTime":J
    :cond_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method static updateAlertNotification(Landroid/content/Context;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 216
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 217
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v10, Lcom/android/calendar/alerts/AlertService$NotificationMgrWrapper;

    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    invoke-direct {v10, v1}, Lcom/android/calendar/alerts/AlertService$NotificationMgrWrapper;-><init>(Landroid/app/NotificationManager;)V

    .line 219
    .local v10, "nm":Lcom/android/calendar/alerts/NotificationMgr;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 220
    .local v8, "currentTime":J
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 223
    .local v11, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "AlertService"

    const-string v3, "Beginning updateAlertNotification"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const-string v1, "preferences_alerts"

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    const-string v1, "AlertService"

    const-string v3, "alert preference is OFF"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-interface {v10}, Lcom/android/calendar/alerts/NotificationMgr;->cancelAll()V

    move v1, v2

    .line 251
    :goto_0
    return v1

    .line 237
    :cond_0
    sget-object v1, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/calendar/alerts/AlertService;->ALERT_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(state=? OR state=?) AND alarmTime<="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/calendar/alerts/AlertService;->ACTIVE_ALERTS_SELECTION_ARGS:[Ljava/lang/String;

    const-string v5, "begin DESC, end DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 241
    .local v4, "alertCursor":Landroid/database/Cursor;
    if-eqz v4, :cond_1

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 242
    :cond_1
    if-eqz v4, :cond_2

    .line 243
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 246
    :cond_2
    const-string v1, "AlertService"

    const-string v2, "No fired or scheduled alerts"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-interface {v10}, Lcom/android/calendar/alerts/NotificationMgr;->cancelAll()V

    .line 248
    const/4 v1, 0x0

    goto :goto_0

    .line 251
    :cond_3
    const/16 v7, 0x14

    move-object v1, p0

    move-object v2, v10

    move-object v3, v11

    move-wide v5, v8

    invoke-static/range {v1 .. v7}, Lcom/android/calendar/alerts/AlertService;->generateAlerts(Landroid/content/Context;Lcom/android/calendar/alerts/NotificationMgr;Landroid/content/SharedPreferences;Landroid/database/Cursor;JI)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 970
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 944
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AlertService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 946
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 948
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/alerts/AlertService;->mServiceLooper:Landroid/os/Looper;

    .line 949
    new-instance v1, Lcom/android/calendar/alerts/AlertService$ServiceHandler;

    iget-object v2, p0, Lcom/android/calendar/alerts/AlertService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/calendar/alerts/AlertService$ServiceHandler;-><init>(Lcom/android/calendar/alerts/AlertService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/calendar/alerts/AlertService;->mServiceHandler:Lcom/android/calendar/alerts/AlertService$ServiceHandler;

    .line 950
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 966
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 954
    if-eqz p1, :cond_0

    .line 955
    iget-object v1, p0, Lcom/android/calendar/alerts/AlertService;->mServiceHandler:Lcom/android/calendar/alerts/AlertService$ServiceHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 956
    .local v0, "msg":Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 957
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 958
    iget-object v1, p0, Lcom/android/calendar/alerts/AlertService;->mServiceHandler:Lcom/android/calendar/alerts/AlertService$ServiceHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 960
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    const/4 v1, 0x3

    return v1
.end method

.method processMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 181
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 185
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "action"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "action":Ljava/lang/String;
    const-string v2, "AlertService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "alarmTime"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const-string v2, "android.intent.action.PROVIDER_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.EVENT_REMINDER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 194
    :cond_0
    invoke-static {p0}, Lcom/android/calendar/alerts/AlertService;->updateAlertNotification(Landroid/content/Context;)Z

    .line 203
    :goto_0
    return-void

    .line 195
    :cond_1
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 197
    :cond_2
    invoke-direct {p0}, Lcom/android/calendar/alerts/AlertService;->doTimeChanged()V

    goto :goto_0

    .line 198
    :cond_3
    const-string v2, "removeOldReminders"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 199
    invoke-static {p0}, Lcom/android/calendar/alerts/AlertService;->dismissOldAlerts(Landroid/content/Context;)V

    goto :goto_0

    .line 201
    :cond_4
    const-string v2, "AlertService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
