.class public Lcom/android/providers/downloads/DownloadNotifier;
.super Ljava/lang/Object;
.source "DownloadNotifier.java"


# instance fields
.field private final mActiveNotifs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDownloadSpeed:Landroid/util/LongSparseLongArray;

.field private final mDownloadTouch:Landroid/util/LongSparseLongArray;

.field private final mNotifManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadNotifier;->mActiveNotifs:Ljava/util/HashMap;

    .line 78
    new-instance v0, Landroid/util/LongSparseLongArray;

    invoke-direct {v0}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadNotifier;->mDownloadSpeed:Landroid/util/LongSparseLongArray;

    .line 85
    new-instance v0, Landroid/util/LongSparseLongArray;

    invoke-direct {v0}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadNotifier;->mDownloadTouch:Landroid/util/LongSparseLongArray;

    .line 89
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadNotifier;->mContext:Landroid/content/Context;

    .line 90
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadNotifier;->mNotifManager:Landroid/app/NotificationManager;

    .line 92
    return-void
.end method

.method private static buildNotificationTag(Lcom/android/providers/downloads/DownloadInfo;)Ljava/lang/String;
    .locals 3
    .parameter "info"

    .prologue
    .line 338
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    const/16 v1, 0xc4

    if-ne v0, v1, :cond_0

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    :goto_0
    return-object v0

    .line 340
    :cond_0
    invoke-static {p0}, Lcom/android/providers/downloads/DownloadNotifier;->isActiveAndVisible(Lcom/android/providers/downloads/DownloadInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 342
    :cond_1
    invoke-static {p0}, Lcom/android/providers/downloads/DownloadNotifier;->isCompleteAndVisible(Lcom/android/providers/downloads/DownloadInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 346
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDownloadIds(Ljava/util/Collection;)[J
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/providers/downloads/DownloadInfo;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 314
    .local p1, infos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/providers/downloads/DownloadInfo;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v3, v5, [J

    .line 315
    .local v3, ids:[J
    const/4 v0, 0x0

    .line 316
    .local v0, i:I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/downloads/DownloadInfo;

    .line 317
    .local v4, info:Lcom/android/providers/downloads/DownloadInfo;
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    iget-wide v5, v4, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    aput-wide v5, v3, v0

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_0

    .line 319
    .end local v4           #info:Lcom/android/providers/downloads/DownloadInfo;
    :cond_0
    return-object v3
.end method

.method private static getDownloadTitle(Landroid/content/res/Resources;Lcom/android/providers/downloads/DownloadInfo;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "res"
    .parameter "info"

    .prologue
    .line 306
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mTitle:Ljava/lang/String;

    .line 309
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getNotificationTagType(Ljava/lang/String;)I
    .locals 2
    .parameter "tag"

    .prologue
    .line 355
    const/4 v0, 0x0

    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static isActiveAndVisible(Lcom/android/providers/downloads/DownloadInfo;)Z
    .locals 3
    .parameter "download"

    .prologue
    const/4 v0, 0x1

    .line 359
    iget v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mVisibility:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mVisibility:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isCompleteAndVisible(Lcom/android/providers/downloads/DownloadInfo;)Z
    .locals 3
    .parameter "download"

    .prologue
    const/4 v0, 0x1

    .line 365
    iget v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    invoke-static {v1}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mVisibility:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mVisibility:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateWithLocked(Ljava/util/Collection;)V
    .locals 30
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/providers/downloads/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/downloads/DownloadNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 128
    invoke-static {}, Lcom/google/common/collect/ArrayListMultimap;->create()Lcom/google/common/collect/ArrayListMultimap;

    move-result-object v13

    .line 129
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/downloads/DownloadInfo;

    .line 130
    invoke-static {v2}, Lcom/android/providers/downloads/DownloadNotifier;->buildNotificationTag(Lcom/android/providers/downloads/DownloadInfo;)Ljava/lang/String;

    move-result-object v4

    .line 131
    if-eqz v4, :cond_0

    .line 132
    invoke-interface {v13, v4, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 137
    :cond_1
    invoke-interface {v13}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 138
    invoke-static {v2}, Lcom/android/providers/downloads/DownloadNotifier;->getNotificationTagType(Ljava/lang/String;)I

    move-result v15

    .line 139
    invoke-interface {v13, v2}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v16

    .line 141
    new-instance v17, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadNotifier;->mActiveNotifs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 146
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadNotifier;->mActiveNotifs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 151
    :goto_2
    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 154
    const/4 v3, 0x1

    if-ne v15, v3, :cond_6

    .line 155
    const v3, 0x1080081

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 163
    :cond_2
    :goto_3
    const/4 v3, 0x1

    if-eq v15, v3, :cond_3

    const/4 v3, 0x2

    if-ne v15, v3, :cond_8

    .line 165
    :cond_3
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "active-dl"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 166
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.DOWNLOAD_LIST"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/downloads/DownloadNotifier;->mContext:Landroid/content/Context;

    const-class v7, Lcom/android/providers/downloads/DownloadReceiver;

    invoke-direct {v4, v5, v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    const-string v3, "extra_click_download_ids"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/providers/downloads/DownloadNotifier;->getDownloadIds(Ljava/util/Collection;)[J

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 170
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadNotifier;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v6, 0x800

    invoke-static {v3, v5, v4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 172
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 203
    :cond_4
    :goto_4
    const/4 v10, 0x0

    .line 204
    const/4 v11, 0x0

    .line 205
    const/4 v3, 0x1

    if-ne v15, v3, :cond_e

    .line 206
    const-wide/16 v8, 0x0

    .line 207
    const-wide/16 v6, 0x0

    .line 208
    const-wide/16 v4, 0x0

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotifier;->mDownloadSpeed:Landroid/util/LongSparseLongArray;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 210
    :try_start_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/downloads/DownloadInfo;

    .line 211
    iget-wide v0, v3, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x1

    cmp-long v20, v20, v22

    if-eqz v20, :cond_1b

    .line 212
    iget-wide v0, v3, Lcom/android/providers/downloads/DownloadInfo;->mCurrentBytes:J

    move-wide/from16 v20, v0

    add-long v8, v8, v20

    .line 213
    iget-wide v0, v3, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    move-wide/from16 v20, v0

    add-long v6, v6, v20

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotifier;->mDownloadSpeed:Landroid/util/LongSparseLongArray;

    move-object/from16 v20, v0

    iget-wide v0, v3, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Landroid/util/LongSparseLongArray;->get(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v20

    add-long v3, v4, v20

    move-wide/from16 v24, v6

    move-wide/from16 v5, v24

    move-wide/from16 v26, v8

    move-wide/from16 v7, v26

    :goto_6
    move-wide/from16 v24, v3

    move-wide/from16 v26, v5

    move-wide/from16 v4, v24

    move-wide/from16 v28, v7

    move-wide/from16 v8, v28

    move-wide/from16 v6, v26

    goto :goto_5

    .line 148
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 149
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/DownloadNotifier;->mActiveNotifs:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 156
    :cond_6
    const/4 v3, 0x2

    if-ne v15, v3, :cond_7

    .line 157
    const v3, 0x108008a

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto/16 :goto_3

    .line 158
    :cond_7
    const/4 v3, 0x3

    if-ne v15, v3, :cond_2

    .line 159
    const v3, 0x1080082

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto/16 :goto_3

    .line 174
    :cond_8
    const/4 v3, 0x3

    if-ne v15, v3, :cond_4

    .line 175
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/downloads/DownloadInfo;

    .line 176
    sget-object v4, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, v3, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 178
    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 181
    iget v5, v3, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    invoke-static {v5}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 182
    const-string v3, "android.intent.action.DOWNLOAD_LIST"

    .line 191
    :goto_7
    new-instance v5, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/downloads/DownloadNotifier;->mContext:Landroid/content/Context;

    const-class v7, Lcom/android/providers/downloads/DownloadReceiver;

    invoke-direct {v5, v3, v4, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    const-string v3, "extra_click_download_ids"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/providers/downloads/DownloadNotifier;->getDownloadIds(Ljava/util/Collection;)[J

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 194
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadNotifier;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v7, 0x800

    invoke-static {v3, v6, v5, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 197
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.DOWNLOAD_HIDE"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/downloads/DownloadNotifier;->mContext:Landroid/content/Context;

    const-class v7, Lcom/android/providers/downloads/DownloadReceiver;

    invoke-direct {v3, v5, v4, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadNotifier;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_4

    .line 184
    :cond_9
    iget v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    const/4 v5, 0x5

    if-eq v3, v5, :cond_a

    .line 185
    const-string v3, "android.intent.action.DOWNLOAD_OPEN"

    goto :goto_7

    .line 187
    :cond_a
    const-string v3, "android.intent.action.DOWNLOAD_LIST"

    goto :goto_7

    .line 217
    :cond_b
    :try_start_1
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    const-wide/16 v18, 0x0

    cmp-long v3, v6, v18

    if-lez v3, :cond_d

    .line 220
    const-wide/16 v18, 0x64

    mul-long v18, v18, v8

    div-long v18, v18, v6

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    .line 221
    const v3, 0x7f03001b

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/16 v19, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v11, v19

    invoke-virtual {v12, v3, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 223
    const-wide/16 v19, 0x0

    cmp-long v3, v4, v19

    if-lez v3, :cond_1a

    .line 224
    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    div-long v3, v6, v4

    .line 225
    const v5, 0x7f03001c

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->formatDuration(J)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v6, v7

    invoke-virtual {v12, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 229
    :goto_8
    const/16 v4, 0x64

    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1, v5}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-object v4, v11

    move-object v10, v3

    .line 237
    :goto_9
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_13

    .line 238
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/downloads/DownloadInfo;

    .line 240
    invoke-static {v12, v3}, Lcom/android/providers/downloads/DownloadNotifier;->getDownloadTitle(Landroid/content/res/Resources;Lcom/android/providers/downloads/DownloadInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 242
    const/4 v5, 0x1

    if-ne v15, v5, :cond_10

    .line 243
    iget-object v5, v3, Lcom/android/providers/downloads/DownloadInfo;->mDescription:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 244
    iget-object v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mDescription:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 248
    :goto_a
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 263
    :cond_c
    :goto_b
    invoke-virtual/range {v17 .. v17}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 291
    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadNotifier;->mNotifManager:Landroid/app/NotificationManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 217
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 231
    :cond_d
    const/16 v3, 0x64

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    :cond_e
    move-object v4, v11

    goto :goto_9

    .line 246
    :cond_f
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_a

    .line 250
    :cond_10
    const/4 v4, 0x2

    if-ne v15, v4, :cond_11

    .line 251
    const v3, 0x7f030012

    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_b

    .line 254
    :cond_11
    const/4 v4, 0x3

    if-ne v15, v4, :cond_c

    .line 255
    iget v4, v3, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    invoke-static {v4}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 256
    const v3, 0x7f030011

    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_b

    .line 257
    :cond_12
    iget v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    invoke-static {v3}, Landroid/provider/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 258
    const v3, 0x7f030010

    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_b

    .line 266
    :cond_13
    new-instance v5, Landroid/app/Notification$InboxStyle;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/Notification$InboxStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 268
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/downloads/DownloadInfo;

    .line 269
    invoke-static {v12, v3}, Lcom/android/providers/downloads/DownloadNotifier;->getDownloadTitle(Landroid/content/res/Resources;Lcom/android/providers/downloads/DownloadInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    goto :goto_d

    .line 272
    :cond_14
    const/4 v3, 0x1

    if-ne v15, v3, :cond_16

    .line 273
    const/high16 v3, 0x7f04

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->size()I

    move-result v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v12, v3, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 275
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 276
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 277
    invoke-virtual {v5, v10}, Landroid/app/Notification$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 288
    :cond_15
    :goto_e
    invoke-virtual {v5}, Landroid/app/Notification$InboxStyle;->build()Landroid/app/Notification;

    move-result-object v3

    goto/16 :goto_c

    .line 279
    :cond_16
    const/4 v3, 0x2

    if-ne v15, v3, :cond_15

    .line 280
    const v3, 0x7f040001

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v12, v3, v4, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 282
    const v3, 0x7f030012

    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 284
    const v3, 0x7f030012

    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/app/Notification$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    goto :goto_e

    .line 295
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/downloads/DownloadNotifier;->mActiveNotifs:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 296
    :cond_18
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 297
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 298
    invoke-interface {v13, v2}, Lcom/google/common/collect/Multimap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 299
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadNotifier;->mNotifManager:Landroid/app/NotificationManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 300
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_f

    .line 303
    :cond_19
    return-void

    :cond_1a
    move-object v3, v10

    goto/16 :goto_8

    :cond_1b
    move-wide/from16 v24, v4

    move-wide/from16 v3, v24

    move-wide/from16 v26, v6

    move-wide/from16 v5, v26

    move-wide/from16 v28, v8

    move-wide/from16 v7, v28

    goto/16 :goto_6
.end method


# virtual methods
.method public cancelAll()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotifier;->mNotifManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 96
    return-void
.end method

.method public dumpSpeeds()V
    .locals 11

    .prologue
    .line 323
    iget-object v6, p0, Lcom/android/providers/downloads/DownloadNotifier;->mDownloadSpeed:Landroid/util/LongSparseLongArray;

    monitor-enter v6

    .line 324
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/providers/downloads/DownloadNotifier;->mDownloadSpeed:Landroid/util/LongSparseLongArray;

    invoke-virtual {v5}, Landroid/util/LongSparseLongArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 325
    iget-object v5, p0, Lcom/android/providers/downloads/DownloadNotifier;->mDownloadSpeed:Landroid/util/LongSparseLongArray;

    invoke-virtual {v5, v2}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    move-result-wide v3

    .line 326
    .local v3, id:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-object v5, p0, Lcom/android/providers/downloads/DownloadNotifier;->mDownloadTouch:Landroid/util/LongSparseLongArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/LongSparseLongArray;->get(J)J

    move-result-wide v9

    sub-long v0, v7, v9

    .line 327
    .local v0, delta:J
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Download "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " speed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/providers/downloads/DownloadNotifier;->mDownloadSpeed:Landroid/util/LongSparseLongArray;

    invoke-virtual {v8, v2}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "bps, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms ago"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 330
    .end local v0           #delta:J
    .end local v3           #id:J
    :cond_0
    monitor-exit v6

    .line 331
    return-void

    .line 330
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public notifyDownloadSpeed(JJ)V
    .locals 4
    .parameter "id"
    .parameter "bytesPerSecond"

    .prologue
    .line 103
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadNotifier;->mDownloadSpeed:Landroid/util/LongSparseLongArray;

    monitor-enter v1

    .line 104
    const-wide/16 v2, 0x0

    cmp-long v0, p3, v2

    if-eqz v0, :cond_0

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotifier;->mDownloadSpeed:Landroid/util/LongSparseLongArray;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 106
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotifier;->mDownloadTouch:Landroid/util/LongSparseLongArray;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, p1, p2, v2, v3}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 111
    :goto_0
    monitor-exit v1

    .line 112
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotifier;->mDownloadSpeed:Landroid/util/LongSparseLongArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseLongArray;->delete(J)V

    .line 109
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotifier;->mDownloadTouch:Landroid/util/LongSparseLongArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseLongArray;->delete(J)V

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateWith(Ljava/util/Collection;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/providers/downloads/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, downloads:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/providers/downloads/DownloadInfo;>;"
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadNotifier;->mActiveNotifs:Ljava/util/HashMap;

    monitor-enter v1

    .line 120
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadNotifier;->updateWithLocked(Ljava/util/Collection;)V

    .line 121
    monitor-exit v1

    .line 122
    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
