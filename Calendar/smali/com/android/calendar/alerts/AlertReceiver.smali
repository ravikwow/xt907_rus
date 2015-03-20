.class public Lcom/android/calendar/alerts/AlertReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlertReceiver.java"


# static fields
.field private static final ATTENDEES_PROJECTION:[Ljava/lang/String;

.field private static final EVENT_PROJECTION:[Ljava/lang/String;

.field private static final mBlankLinePattern:Ljava/util/regex/Pattern;

.field static mStartingService:Landroid/os/PowerManager$WakeLock;

.field static final mStartingServiceSync:Ljava/lang/Object;

.field private static sAsyncHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 70
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/android/calendar/alerts/AlertReceiver;->mStartingServiceSync:Ljava/lang/Object;

    .line 72
    const-string v1, "^\\s*$[\n\r]"

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/android/calendar/alerts/AlertReceiver;->mBlankLinePattern:Ljava/util/regex/Pattern;

    .line 80
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AlertReceiver async"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, "thr":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 82
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/calendar/alerts/AlertReceiver;->sAsyncHandler:Landroid/os/Handler;

    .line 429
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "attendeeEmail"

    aput-object v2, v1, v3

    const-string v2, "attendeeStatus"

    aput-object v2, v1, v4

    sput-object v1, Lcom/android/calendar/alerts/AlertReceiver;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    .line 439
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "ownerAccount"

    aput-object v2, v1, v3

    const-string v2, "account_name"

    aput-object v2, v1, v4

    const-string v2, "title"

    aput-object v2, v1, v5

    sput-object v1, Lcom/android/calendar/alerts/AlertReceiver;->EVENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static addIfEmailable(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "syncAccount"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 576
    .local p0, "emailList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1, p2}, Lcom/android/calendar/Utils;->isEmailableFrom(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    :cond_0
    return-void
.end method

.method public static beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 131
    sget-object v2, Lcom/android/calendar/alerts/AlertReceiver;->mStartingServiceSync:Ljava/lang/Object;

    monitor-enter v2

    .line 132
    :try_start_0
    sget-object v1, Lcom/android/calendar/alerts/AlertReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 133
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 135
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v3, "StartingAlertService"

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/android/calendar/alerts/AlertReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    .line 137
    sget-object v1, Lcom/android/calendar/alerts/AlertReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 139
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    sget-object v1, Lcom/android/calendar/alerts/AlertReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 140
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 141
    monitor-exit v2

    .line 142
    return-void

    .line 141
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static createAlertActivityIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 211
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 212
    const-class v1, Lcom/android/calendar/alerts/AlertActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 213
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 214
    const/4 v1, 0x0

    const/high16 v2, 0x48000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private static createBroadcastMailIntent(Landroid/content/Context;JLjava/lang/String;)Landroid/app/PendingIntent;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 467
    .line 468
    invoke-static {p0, p1, p2}, Lcom/android/calendar/alerts/AlertReceiver;->getEventCursor(Landroid/content/Context;J)Landroid/database/Cursor;

    move-result-object v2

    .line 470
    if-eqz v2, :cond_7

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 471
    const/4 v1, 0x1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 474
    :goto_0
    if-eqz v2, :cond_0

    .line 475
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 480
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/calendar/alerts/AlertReceiver;->getAttendeesCursor(Landroid/content/Context;J)Landroid/database/Cursor;

    move-result-object v2

    .line 482
    if-eqz v2, :cond_5

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 484
    :cond_1
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 485
    invoke-static {v3, v1}, Lcom/android/calendar/Utils;->isEmailableFrom(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 490
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.calendar.MAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 491
    const-class v1, Lcom/android/calendar/alerts/AlertReceiver;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 492
    const-string v1, "eventid"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 493
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    const/high16 v3, 0x10000000

    invoke-static {p0, v1, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 502
    if-eqz v2, :cond_2

    .line 503
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    return-object v0

    .line 474
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_3

    .line 475
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 497
    :cond_4
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v3

    if-nez v3, :cond_1

    .line 502
    :cond_5
    if-eqz v2, :cond_2

    .line 503
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 502
    :catchall_1
    move-exception v0

    if-eqz v2, :cond_6

    .line 503
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    :cond_7
    move-object v1, v0

    goto :goto_0
.end method

.method private static createClickEventIntent(Landroid/content/Context;JJJI)Landroid/app/PendingIntent;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # J
    .param p3, "startMillis"    # J
    .param p5, "endMillis"    # J
    .param p7, "notificationId"    # I

    .prologue
    .line 160
    const-string v8, "com.android.calendar.CLICK"

    const/4 v9, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    invoke-static/range {v0 .. v9}, Lcom/android/calendar/alerts/AlertReceiver;->createDismissAlarmsIntent(Landroid/content/Context;JJJILjava/lang/String;Z)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private static createDeleteEventIntent(Landroid/content/Context;JJJI)Landroid/app/PendingIntent;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # J
    .param p3, "startMillis"    # J
    .param p5, "endMillis"    # J
    .param p7, "notificationId"    # I

    .prologue
    .line 166
    const-string v8, "com.android.calendar.DELETE"

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    invoke-static/range {v0 .. v9}, Lcom/android/calendar/alerts/AlertReceiver;->createDismissAlarmsIntent(Landroid/content/Context;JJJILjava/lang/String;Z)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private static createDismissAlarmsIntent(Landroid/content/Context;JJJILjava/lang/String;Z)Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 173
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 174
    const-class v1, Lcom/android/calendar/alerts/DismissAlarmsService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 175
    const-string v1, "eventid"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 176
    const-string v1, "eventstart"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 177
    const-string v1, "eventend"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 178
    const-string v1, "showevent"

    invoke-virtual {v0, v1, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 179
    const-string v1, "notificationid"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 186
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 187
    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 188
    invoke-static {v1, p3, p4}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 189
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 190
    invoke-virtual {v0, p8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static createEmailIntent(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # J
    .param p3, "body"    # Ljava/lang/String;

    .prologue
    .line 517
    const/4 v5, 0x0

    .line 518
    .local v5, "ownerAccount":Ljava/lang/String;
    const/4 v11, 0x0

    .line 519
    .local v11, "syncAccount":Ljava/lang/String;
    const/4 v1, 0x0

    .line 520
    .local v1, "eventTitle":Ljava/lang/String;
    invoke-static {p0, p1, p2}, Lcom/android/calendar/alerts/AlertReceiver;->getEventCursor(Landroid/content/Context;J)Landroid/database/Cursor;

    move-result-object v8

    .line 522
    .local v8, "eventCursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 524
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 525
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 528
    :cond_0
    if-eqz v8, :cond_1

    .line 529
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 532
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 533
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c000c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 537
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 538
    .local v3, "toEmails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 539
    .local v4, "ccEmails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p1, p2}, Lcom/android/calendar/alerts/AlertReceiver;->getAttendeesCursor(Landroid/content/Context;J)Landroid/database/Cursor;

    move-result-object v6

    .line 541
    .local v6, "attendeesCursor":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 543
    :cond_3
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 544
    .local v10, "status":I
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 545
    .local v7, "email":Ljava/lang/String;
    packed-switch v10, :pswitch_data_0

    .line 550
    invoke-static {v3, v7, v11}, Lcom/android/calendar/alerts/AlertReceiver;->addIfEmailable(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_3

    .line 555
    .end local v7    # "email":Ljava/lang/String;
    .end local v10    # "status":I
    :cond_4
    if-eqz v6, :cond_5

    .line 556
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 560
    :cond_5
    const/4 v9, 0x0

    .line 561
    .local v9, "intent":Landroid/content/Intent;
    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_6

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 562
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->createEmailAttendeesIntent(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 566
    :cond_7
    if-nez v9, :cond_a

    .line 567
    const/4 v9, 0x0

    .line 571
    .end local v9    # "intent":Landroid/content/Intent;
    :goto_1
    return-object v9

    .line 528
    .end local v3    # "toEmails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "ccEmails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "attendeesCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_8

    .line 529
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    .line 547
    .restart local v3    # "toEmails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "ccEmails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "attendeesCursor":Landroid/database/Cursor;
    .restart local v7    # "email":Ljava/lang/String;
    .restart local v10    # "status":I
    :pswitch_0
    :try_start_2
    invoke-static {v4, v7, v11}, Lcom/android/calendar/alerts/AlertReceiver;->addIfEmailable(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 555
    .end local v7    # "email":Ljava/lang/String;
    .end local v10    # "status":I
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_9

    .line 556
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0

    .line 570
    .restart local v9    # "intent":Landroid/content/Intent;
    :cond_a
    const v0, 0x10008000

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 545
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private static createSnoozeIntent(Landroid/content/Context;JJJI)Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 196
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 197
    const-class v1, Lcom/android/calendar/alerts/SnoozeAlarmsService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 198
    const-string v1, "eventid"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 199
    const-string v1, "eventstart"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 200
    const-string v1, "eventend"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 201
    const-string v1, "notificationid"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 203
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 204
    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 205
    invoke-static {v1, p3, p4}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 206
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 207
    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static finishStartingService(Landroid/app/Service;I)V
    .locals 2
    .param p0, "service"    # Landroid/app/Service;
    .param p1, "startId"    # I

    .prologue
    .line 149
    sget-object v1, Lcom/android/calendar/alerts/AlertReceiver;->mStartingServiceSync:Ljava/lang/Object;

    monitor-enter v1

    .line 150
    :try_start_0
    sget-object v0, Lcom/android/calendar/alerts/AlertReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelfResult(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    sget-object v0, Lcom/android/calendar/alerts/AlertReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 155
    :cond_0
    monitor-exit v1

    .line 156
    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getAttendeesCursor(Landroid/content/Context;J)Landroid/database/Cursor;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # J

    .prologue
    .line 455
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/calendar/alerts/AlertReceiver;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    const-string v3, "event_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "attendeeName ASC, attendeeEmail ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static getEventCursor(Landroid/content/Context;J)Landroid/database/Cursor;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # J

    .prologue
    const/4 v3, 0x0

    .line 449
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/calendar/alerts/AlertReceiver;->EVENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static makeBasicNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJJIZ)Lcom/android/calendar/alerts/AlertService$NotificationWrapper;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "summaryText"    # Ljava/lang/String;
    .param p3, "startMillis"    # J
    .param p5, "endMillis"    # J
    .param p7, "eventId"    # J
    .param p9, "notificationId"    # I
    .param p10, "doPopup"    # Z

    .prologue
    .line 222
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-static/range {v0 .. v12}, Lcom/android/calendar/alerts/AlertReceiver;->makeBasicNotificationBuilder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJJIZZZ)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 225
    .local v1, "n":Landroid/app/Notification;
    new-instance v0, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;

    move/from16 v2, p9

    move-wide/from16 v3, p7

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;-><init>(Landroid/app/Notification;IJJJZ)V

    return-object v0
.end method

.method private static makeBasicNotificationBuilder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJJIZZZ)Landroid/app/Notification$Builder;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "summaryText"    # Ljava/lang/String;
    .param p3, "startMillis"    # J
    .param p5, "endMillis"    # J
    .param p7, "eventId"    # J
    .param p9, "notificationId"    # I
    .param p10, "doPopup"    # Z
    .param p11, "highPriority"    # Z
    .param p12, "addActionButtons"    # Z

    .prologue
    .line 231
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 232
    .local v16, "resources":Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 233
    :cond_0
    const v4, 0x7f0c000c

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    move-object/from16 v4, p0

    move-wide/from16 v5, p7

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move/from16 v11, p9

    .line 238
    invoke-static/range {v4 .. v11}, Lcom/android/calendar/alerts/AlertReceiver;->createClickEventIntent(Landroid/content/Context;JJJI)Landroid/app/PendingIntent;

    move-result-object v12

    .local v12, "clickIntent":Landroid/app/PendingIntent;
    move-object/from16 v4, p0

    move-wide/from16 v5, p7

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move/from16 v11, p9

    .line 242
    invoke-static/range {v4 .. v11}, Lcom/android/calendar/alerts/AlertReceiver;->createDeleteEventIntent(Landroid/content/Context;JJJI)Landroid/app/PendingIntent;

    move-result-object v13

    .line 246
    .local v13, "deleteIntent":Landroid/app/PendingIntent;
    new-instance v15, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 247
    .local v15, "notificationBuilder":Landroid/app/Notification$Builder;
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 248
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 249
    const v4, 0x7f020059

    invoke-virtual {v15, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 250
    invoke-virtual {v15, v12}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 251
    invoke-virtual {v15, v13}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 252
    if-eqz p12, :cond_2

    move-object/from16 v4, p0

    move-wide/from16 v5, p7

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move/from16 v11, p9

    .line 254
    invoke-static/range {v4 .. v11}, Lcom/android/calendar/alerts/AlertReceiver;->createSnoozeIntent(Landroid/content/Context;JJJI)Landroid/app/PendingIntent;

    move-result-object v17

    .line 256
    .local v17, "snoozeIntent":Landroid/app/PendingIntent;
    const v4, 0x7f02002e

    const v5, 0x7f0c005d

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v15, v4, v5, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 260
    move-object/from16 v0, p0

    move-wide/from16 v1, p7

    move-object/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/alerts/AlertReceiver;->createBroadcastMailIntent(Landroid/content/Context;JLjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v14

    .line 261
    .local v14, "emailIntent":Landroid/app/PendingIntent;
    if-eqz v14, :cond_2

    .line 262
    const v4, 0x7f02003e

    const v5, 0x7f0c0043

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v4, v5, v14}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 266
    .end local v14    # "emailIntent":Landroid/app/PendingIntent;
    .end local v17    # "snoozeIntent":Landroid/app/PendingIntent;
    :cond_2
    if-eqz p10, :cond_3

    .line 267
    invoke-static/range {p0 .. p0}, Lcom/android/calendar/alerts/AlertReceiver;->createAlertActivityIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v15, v4, v5}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    .line 271
    :cond_3
    const-wide/16 v4, 0x0

    invoke-virtual {v15, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 275
    if-eqz p11, :cond_4

    .line 276
    const/4 v4, 0x1

    invoke-virtual {v15, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 280
    :goto_0
    return-object v15

    .line 278
    :cond_4
    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    goto :goto_0
.end method

.method public static makeDigestNotification(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Z)Lcom/android/calendar/alerts/AlertService$NotificationWrapper;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/alerts/AlertService$NotificationInfo;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/android/calendar/alerts/AlertService$NotificationWrapper;"
        }
    .end annotation

    .prologue
    .line 325
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 326
    :cond_0
    const/4 v0, 0x0

    .line 426
    :goto_0
    return-object v0

    .line 329
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 330
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 331
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [J

    .line 332
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 333
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;

    iget-wide v5, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->eventId:J

    aput-wide v5, v2, v1

    .line 332
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 337
    :cond_2
    invoke-static {p0}, Lcom/android/calendar/alerts/AlertReceiver;->createAlertActivityIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 341
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 342
    const-class v5, Lcom/android/calendar/alerts/DismissAlarmsService;

    invoke-virtual {v1, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 343
    const-string v5, "com.android.calendar.DELETEALL"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    const-string v5, "eventids"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 345
    const/4 v2, 0x0

    const/high16 v5, 0x8000000

    invoke-static {p0, v2, v1, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 348
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 349
    :cond_3
    const v2, 0x7f0c000c

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 352
    :cond_4
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 353
    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 354
    const v5, 0x7f02005a

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 355
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 356
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 357
    const v0, 0x7f0d0006

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v5

    invoke-virtual {v3, v0, v4, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 358
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 361
    const/4 v0, -0x2

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 365
    if-eqz p3, :cond_8

    .line 367
    new-instance v5, Landroid/app/Notification$InboxStyle;

    invoke-direct {v5, v2}, Landroid/app/Notification$InboxStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 369
    const/4 v0, 0x0

    .line 370
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v0

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;

    .line 371
    const/4 v2, 0x3

    if-ge v1, v2, :cond_6

    .line 372
    iget-object v2, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->eventName:Ljava/lang/String;

    .line 373
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 374
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f0c000c

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 376
    :cond_5
    iget-wide v7, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->startMillis:J

    iget-boolean v9, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->allDay:Z

    iget-object v0, v0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->location:Ljava/lang/String;

    invoke-static {p0, v7, v8, v9, v0}, Lcom/android/calendar/alerts/AlertUtils;->formatTimeLocation(Landroid/content/Context;JZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 379
    new-instance v7, Landroid/text/style/TextAppearanceSpan;

    const v8, 0x7f0e0021

    invoke-direct {v7, p0, v8}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 381
    new-instance v8, Landroid/text/style/TextAppearanceSpan;

    const v9, 0x7f0e0022

    invoke-direct {v8, p0, v9}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 385
    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 386
    invoke-virtual {v9, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 387
    const/4 v2, 0x0

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v9, v7, v2, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 388
    const-string v2, "  "

    invoke-virtual {v9, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 391
    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 392
    invoke-virtual {v9, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 393
    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/4 v7, 0x0

    invoke-virtual {v9, v8, v2, v0, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 395
    invoke-virtual {v5, v9}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 396
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 397
    goto :goto_2

    .line 403
    :cond_6
    sub-int v0, v4, v1

    .line 404
    if-lez v0, :cond_7

    .line 405
    const v1, 0x7f0d0007

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v4

    invoke-virtual {v3, v1, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 408
    invoke-virtual {v5, v0}, Landroid/app/Notification$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 412
    :cond_7
    const-string v0, ""

    invoke-virtual {v5, v0}, Landroid/app/Notification$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 414
    invoke-virtual {v5}, Landroid/app/Notification$InboxStyle;->build()Landroid/app/Notification;

    move-result-object v0

    .line 419
    :goto_3
    new-instance v10, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;

    invoke-direct {v10, v0}, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;-><init>(Landroid/app/Notification;)V

    .line 421
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/calendar/alerts/AlertService$NotificationInfo;

    .line 422
    new-instance v0, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-wide v3, v7, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->eventId:J

    iget-wide v5, v7, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->startMillis:J

    iget-wide v7, v7, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->endMillis:J

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;-><init>(Landroid/app/Notification;IJJJZ)V

    invoke-virtual {v10, v0}, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;->add(Lcom/android/calendar/alerts/AlertService$NotificationWrapper;)V

    goto :goto_4

    .line 416
    :cond_8
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    goto :goto_3

    :cond_9
    move-object v0, v10

    .line 426
    goto/16 :goto_0
.end method

.method public static makeExpandingNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJIZZ)Lcom/android/calendar/alerts/AlertService$NotificationWrapper;
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "summaryText"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "startMillis"    # J
    .param p6, "endMillis"    # J
    .param p8, "eventId"    # J
    .param p10, "notificationId"    # I
    .param p11, "doPopup"    # Z
    .param p12, "highPriority"    # Z

    .prologue
    .line 290
    const/4 v14, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-static/range {v2 .. v14}, Lcom/android/calendar/alerts/AlertReceiver;->makeBasicNotificationBuilder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJJIZZZ)Landroid/app/Notification$Builder;

    move-result-object v15

    .line 295
    .local v15, "basicBuilder":Landroid/app/Notification$Builder;
    new-instance v16, Landroid/app/Notification$BigTextStyle;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 297
    .local v16, "expandedBuilder":Landroid/app/Notification$BigTextStyle;
    if-eqz p3, :cond_0

    .line 298
    sget-object v2, Lcom/android/calendar/alerts/AlertReceiver;->mBlankLinePattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 299
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 302
    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 303
    move-object/from16 v18, p2

    .line 313
    .local v18, "text":Ljava/lang/CharSequence;
    :goto_0
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 315
    new-instance v2, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;

    invoke-virtual/range {v16 .. v16}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v3

    move/from16 v4, p10

    move-wide/from16 v5, p8

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move/from16 v11, p11

    invoke-direct/range {v2 .. v11}, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;-><init>(Landroid/app/Notification;IJJJZ)V

    return-object v2

    .line 305
    .end local v18    # "text":Ljava/lang/CharSequence;
    :cond_1
    new-instance v17, Landroid/text/SpannableStringBuilder;

    invoke-direct/range {v17 .. v17}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 306
    .local v17, "stringBuilder":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 307
    const-string v2, "\n\n"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 308
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const/high16 v3, 0x3f000000

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual/range {v17 .. v17}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 310
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 311
    move-object/from16 v18, v17

    .restart local v18    # "text":Ljava/lang/CharSequence;
    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const-wide/16 v3, -0x1

    .line 88
    const-string v0, "AlertReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: a="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string v0, "com.android.calendar.DELETEALL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/calendar/alerts/DismissAlarmsService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    const-string v0, "com.android.calendar.MAIL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 104
    const-string v0, "eventid"

    invoke-virtual {p2, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 105
    cmp-long v2, v0, v3

    if-eqz v2, :cond_0

    .line 106
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/calendar/alerts/QuickResponseActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    const-string v3, "eventId"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 108
    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 109
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 112
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 113
    const-class v1, Lcom/android/calendar/alerts/AlertService;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 114
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 115
    const-string v1, "action"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 119
    if-eqz v1, :cond_3

    .line 120
    const-string v2, "uri"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    :cond_3
    invoke-static {p1, v0}, Lcom/android/calendar/alerts/AlertReceiver;->beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
