.class Lcom/android/contacts/calllog/CallLogQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CallLogQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/calllog/CallLogQueryHandler$Listener;,
        Lcom/android/contacts/calllog/CallLogQueryHandler$CatchingWorkerHandler;
    }
.end annotation


# static fields
.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final NEW_SECTION_TIME_WINDOW:J


# instance fields
.field private mCallsRequestId:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private final mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/contacts/calllog/CallLogQueryHandler$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mNewCallsCursor:Landroid/database/Cursor;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private mOldCallsCursor:Landroid/database/Cursor;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/contacts/calllog/CallLogQueryHandler;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 69
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/contacts/calllog/CallLogQueryHandler;->NEW_SECTION_TIME_WINDOW:J

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Lcom/android/contacts/calllog/CallLogQueryHandler$Listener;)V
    .locals 1
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "listener"    # Lcom/android/contacts/calllog/CallLogQueryHandler$Listener;

    .prologue
    .line 127
    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 128
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    .line 129
    return-void
.end method

.method private cancelFetch()V
    .locals 1

    .prologue
    .line 209
    const/16 v0, 0x35

    invoke-virtual {p0, v0}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 210
    const/16 v0, 0x36

    invoke-virtual {p0, v0}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 211
    return-void
.end method

.method private createHeaderCursorFor(I)Landroid/database/Cursor;
    .locals 8
    .param p1, "section"    # I

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 133
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/android/contacts/calllog/CallLogQuery;->EXTENDED_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 137
    .local v0, "matrixCursor":Landroid/database/MatrixCursor;
    const/16 v1, 0x14

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x8

    aput-object v4, v1, v2

    const/16 v2, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    aput-object v4, v1, v2

    const/16 v2, 0xb

    aput-object v4, v1, v2

    const/16 v2, 0xc

    aput-object v4, v1, v2

    const/16 v2, 0xd

    aput-object v4, v1, v2

    const/16 v2, 0xe

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xf

    aput-object v4, v1, v2

    const/16 v2, 0x10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x11

    aput-object v4, v1, v2

    const/16 v2, 0x12

    aput-object v4, v1, v2

    const/16 v2, 0x13

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 141
    return-object v0
.end method

.method private createMergedCursor()Landroid/database/Cursor;
    .locals 7
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 315
    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mNewCallsCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 316
    .local v0, "hasNewCalls":Z
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mOldCallsCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_1

    .line 318
    .local v1, "hasOldCalls":Z
    :goto_1
    if-nez v0, :cond_2

    .line 320
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mNewCallsCursor:Landroid/database/Cursor;

    invoke-static {v2}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 321
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mOldCallsCursor:Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    iput-object v6, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mNewCallsCursor:Landroid/database/Cursor;

    .line 337
    iput-object v6, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mOldCallsCursor:Landroid/database/Cursor;

    :goto_2
    return-object v2

    .end local v0    # "hasNewCalls":Z
    .end local v1    # "hasOldCalls":Z
    :cond_0
    move v0, v2

    .line 315
    goto :goto_0

    .restart local v0    # "hasNewCalls":Z
    :cond_1
    move v1, v2

    .line 316
    goto :goto_1

    .line 324
    .restart local v1    # "hasOldCalls":Z
    :cond_2
    if-nez v1, :cond_3

    .line 326
    :try_start_1
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mOldCallsCursor:Landroid/database/Cursor;

    invoke-static {v2}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 327
    new-instance v2, Landroid/database/MergeCursor;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/database/Cursor;

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->createNewCallsHeaderCursor()Landroid/database/Cursor;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mNewCallsCursor:Landroid/database/Cursor;

    aput-object v5, v3, v4

    invoke-direct {v2, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    iput-object v6, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mNewCallsCursor:Landroid/database/Cursor;

    .line 337
    iput-object v6, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mOldCallsCursor:Landroid/database/Cursor;

    goto :goto_2

    .line 331
    :cond_3
    :try_start_2
    new-instance v2, Landroid/database/MergeCursor;

    const/4 v3, 0x4

    new-array v3, v3, [Landroid/database/Cursor;

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->createNewCallsHeaderCursor()Landroid/database/Cursor;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mNewCallsCursor:Landroid/database/Cursor;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->createOldCallsHeaderCursor()Landroid/database/Cursor;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mOldCallsCursor:Landroid/database/Cursor;

    aput-object v5, v3, v4

    invoke-direct {v2, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 336
    iput-object v6, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mNewCallsCursor:Landroid/database/Cursor;

    .line 337
    iput-object v6, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mOldCallsCursor:Landroid/database/Cursor;

    goto :goto_2

    .line 336
    .end local v0    # "hasNewCalls":Z
    .end local v1    # "hasOldCalls":Z
    :catchall_0
    move-exception v2

    iput-object v6, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mNewCallsCursor:Landroid/database/Cursor;

    .line 337
    iput-object v6, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mOldCallsCursor:Landroid/database/Cursor;

    throw v2
.end method

.method private createNewCallsHeaderCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->createHeaderCursorFor(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private createOldCallsHeaderCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->createHeaderCursorFor(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private fetchCalls(IIZZ)V
    .locals 10
    .param p1, "token"    # I
    .param p2, "requestId"    # I
    .param p3, "isNew"    # Z
    .param p4, "voicemailOnly"    # Z

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 189
    const-string v0, "%s IS NOT NULL AND %s = 0 AND %s > ?"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "is_read"

    aput-object v2, v1, v6

    const-string v2, "is_read"

    aput-object v2, v1, v7

    const-string v2, "date"

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 191
    .local v5, "selection":Ljava/lang/String;
    new-array v0, v7, [Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/android/contacts/calllog/CallLogQueryHandler;->NEW_SECTION_TIME_WINDOW:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v8

    .line 193
    .local v8, "selectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p3, :cond_0

    .line 195
    const-string v0, "NOT (%s)"

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v5, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 197
    :cond_0
    if-eqz p4, :cond_1

    .line 199
    const-string v0, "(%s) AND (%s = ?)"

    new-array v1, v9, [Ljava/lang/Object;

    aput-object v5, v1, v6

    const-string v2, "type"

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 200
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    sget-object v4, Lcom/android/contacts/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    sget-object v0, Lcom/android/contacts/calllog/CallLogQueryHandler;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    const-string v7, "date DESC"

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method private declared-synchronized newCallsRequest()I
    .locals 1

    .prologue
    .line 265
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mNewCallsCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 266
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mOldCallsCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mNewCallsCursor:Landroid/database/Cursor;

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mOldCallsCursor:Landroid/database/Cursor;

    .line 269
    iget v0, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mCallsRequestId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mCallsRequestId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateAdapterData(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "combinedCursor"    # Landroid/database/Cursor;

    .prologue
    .line 345
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/calllog/CallLogQueryHandler$Listener;

    .line 346
    .local v0, "listener":Lcom/android/contacts/calllog/CallLogQueryHandler$Listener;
    if-eqz v0, :cond_0

    .line 347
    invoke-interface {v0, p1}, Lcom/android/contacts/calllog/CallLogQueryHandler$Listener;->onCallsFetched(Landroid/database/Cursor;)V

    .line 349
    :cond_0
    return-void
.end method

.method private updateVoicemailStatus(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "statusCursor"    # Landroid/database/Cursor;

    .prologue
    .line 352
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/calllog/CallLogQueryHandler$Listener;

    .line 353
    .local v0, "listener":Lcom/android/contacts/calllog/CallLogQueryHandler$Listener;
    if-eqz v0, :cond_0

    .line 354
    invoke-interface {v0, p1}, Lcom/android/contacts/calllog/CallLogQueryHandler$Listener;->onVoicemailStatusFetched(Landroid/database/Cursor;)V

    .line 356
    :cond_0
    return-void
.end method


# virtual methods
.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 123
    new-instance v0, Lcom/android/contacts/calllog/CallLogQueryHandler$CatchingWorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/calllog/CallLogQueryHandler$CatchingWorkerHandler;-><init>(Lcom/android/contacts/calllog/CallLogQueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method public fetchAllCalls()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 160
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->cancelFetch()V

    .line 161
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->newCallsRequest()I

    move-result v0

    .line 162
    .local v0, "requestId":I
    const/16 v1, 0x35

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/contacts/calllog/CallLogQueryHandler;->fetchCalls(IIZZ)V

    .line 163
    const/16 v1, 0x36

    invoke-direct {p0, v1, v0, v3, v3}, Lcom/android/contacts/calllog/CallLogQueryHandler;->fetchCalls(IIZZ)V

    .line 164
    return-void
.end method

.method public fetchVoicemailOnly()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 172
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->cancelFetch()V

    .line 173
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->newCallsRequest()I

    move-result v0

    .line 174
    .local v0, "requestId":I
    const/16 v1, 0x35

    invoke-direct {p0, v1, v0, v3, v3}, Lcom/android/contacts/calllog/CallLogQueryHandler;->fetchCalls(IIZZ)V

    .line 175
    const/16 v1, 0x36

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/contacts/calllog/CallLogQueryHandler;->fetchCalls(IIZZ)V

    .line 176
    return-void
.end method

.method public fetchVoicemailStatus()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 180
    const/16 v1, 0x3a

    sget-object v3, Landroid/provider/VoicemailContract$Status;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl;->PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public markMissedCallsAsRead()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 246
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .local v7, "where":Ljava/lang/StringBuilder;
    const-string v0, "is_read"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    const-string v0, " AND "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    const-string v0, "type"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 251
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 252
    .local v4, "values":Landroid/content/ContentValues;
    const-string v0, "is_read"

    const-string v1, "1"

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const/16 v1, 0x39

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/content/AsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public markNewCallsAsOld()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 216
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .local v7, "where":Ljava/lang/StringBuilder;
    const-string v0, "new"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    const-string v0, " = 1"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 221
    .local v4, "values":Landroid/content/ContentValues;
    const-string v0, "new"

    const-string v1, "0"

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const/16 v1, 0x37

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/content/AsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public markNewVoicemailsAsOld()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 230
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .local v7, "where":Ljava/lang/StringBuilder;
    const-string v0, "new"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    const-string v0, " = 1 AND "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    const-string v0, "type"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const-string v0, " = ?"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 237
    .local v4, "values":Landroid/content/ContentValues;
    const-string v0, "new"

    const-string v1, "0"

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const/16 v1, 0x38

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/content/AsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method protected declared-synchronized onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 275
    monitor-enter p0

    if-nez p3, :cond_1

    .line 276
    :try_start_0
    const-string v1, "CallLogQueryHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "somethings wrong when db query, so ignoring: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    .end local p2    # "cookie":Ljava/lang/Object;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 279
    .restart local p2    # "cookie":Ljava/lang/Object;
    :cond_1
    const/16 v1, 0x35

    if-ne p1, v1, :cond_2

    .line 282
    :try_start_1
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mNewCallsCursor:Landroid/database/Cursor;

    invoke-static {v1}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 283
    new-instance v1, Lcom/android/contacts/calllog/ExtendedCursor;

    const-string v2, "section"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, p3, v2, v3}, Lcom/android/contacts/calllog/ExtendedCursor;-><init>(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mNewCallsCursor:Landroid/database/Cursor;

    .line 306
    .end local p2    # "cookie":Ljava/lang/Object;
    :goto_1
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mNewCallsCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mOldCallsCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 307
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->createMergedCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/contacts/calllog/CallLogQueryHandler;->updateAdapterData(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 275
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 285
    .restart local p2    # "cookie":Ljava/lang/Object;
    :cond_2
    const/16 v1, 0x36

    if-ne p1, v1, :cond_4

    .line 286
    :try_start_2
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "cookie":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 287
    .local v0, "requestId":I
    iget v1, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mCallsRequestId:I

    if-eq v0, v1, :cond_3

    .line 289
    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 294
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mOldCallsCursor:Landroid/database/Cursor;

    invoke-static {v1}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 295
    new-instance v1, Lcom/android/contacts/calllog/ExtendedCursor;

    const-string v2, "section"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, p3, v2, v3}, Lcom/android/contacts/calllog/ExtendedCursor;-><init>(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/contacts/calllog/CallLogQueryHandler;->mOldCallsCursor:Landroid/database/Cursor;

    goto :goto_1

    .line 297
    .end local v0    # "requestId":I
    .restart local p2    # "cookie":Ljava/lang/Object;
    :cond_4
    const/16 v1, 0x3a

    if-ne p1, v1, :cond_5

    .line 298
    invoke-direct {p0, p3}, Lcom/android/contacts/calllog/CallLogQueryHandler;->updateVoicemailStatus(Landroid/database/Cursor;)V

    goto :goto_0

    .line 301
    :cond_5
    const-string v1, "CallLogQueryHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown query completed: ignoring: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method
