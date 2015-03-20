.class public Lcom/motorola/messaging/activity/ManageSimMessagesActivity;
.super Landroid/app/Activity;
.source "ManageSimMessagesActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/activity/ManageSimMessagesActivity$SimMsgAdapter;,
        Lcom/motorola/messaging/activity/ManageSimMessagesActivity$QueryHandler;
    }
.end annotation


# static fields
.field private static final ALL_SIM_MSGS_URI:Landroid/net/Uri;

.field private static final LOCAL_LOG:Z

.field private static final SIM_CAPACITY_URI:Landroid/net/Uri;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mListAdapter:Lcom/motorola/messaging/activity/ManageSimMessagesActivity$SimMsgAdapter;

.field private mMessage:Landroid/widget/TextView;

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mSimCapacity:I

.field private mSimList:Landroid/widget/ListView;

.field private mState:I

.field private final simChangeObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    sput-boolean v0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->LOCAL_LOG:Z

    .line 74
    const-string v0, "content://sms/icc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->ALL_SIM_MSGS_URI:Landroid/net/Uri;

    .line 75
    const-string v0, "content://sms/icccapacity"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->SIM_CAPACITY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 95
    iput-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mCursor:Landroid/database/Cursor;

    .line 99
    iput-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 101
    new-instance v0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$1;-><init>(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->simChangeObserver:Landroid/database/ContentObserver;

    .line 561
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->refreshMessageList()V

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->deleteAllFromSim()V

    return-void
.end method

.method static synthetic access$1200(Landroid/database/Cursor;)Z
    .locals 1
    .param p0, "x0"    # Landroid/database/Cursor;

    .prologue
    .line 68
    invoke-static {p0}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->isIncomingMessage(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->SIM_CAPACITY_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 68
    sget-boolean v0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->LOCAL_LOG:Z

    return v0
.end method

.method static synthetic access$402(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ManageSimMessagesActivity;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mSimCapacity:I

    return p1
.end method

.method static synthetic access$500(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    .prologue
    .line 68
    iget v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mState:I

    return v0
.end method

.method static synthetic access$600(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ManageSimMessagesActivity;
    .param p1, "x1"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->updateState(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$702(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ManageSimMessagesActivity;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$800(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;)Lcom/motorola/messaging/activity/ManageSimMessagesActivity$SimMsgAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mListAdapter:Lcom/motorola/messaging/activity/ManageSimMessagesActivity$SimMsgAdapter;

    return-object v0
.end method

.method static synthetic access$802(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;Lcom/motorola/messaging/activity/ManageSimMessagesActivity$SimMsgAdapter;)Lcom/motorola/messaging/activity/ManageSimMessagesActivity$SimMsgAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ManageSimMessagesActivity;
    .param p1, "x1"    # Lcom/motorola/messaging/activity/ManageSimMessagesActivity$SimMsgAdapter;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mListAdapter:Lcom/motorola/messaging/activity/ManageSimMessagesActivity$SimMsgAdapter;

    return-object p1
.end method

.method static synthetic access$900(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mSimList:Landroid/widget/ListView;

    return-object v0
.end method

.method private copyToPhoneMemory(Landroid/database/Cursor;)V
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 348
    invoke-static {p1}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->isIncomingMessage(Landroid/database/Cursor;)Z

    move-result v2

    .line 349
    .local v2, "isIncoming":Z
    const-string v1, "date"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 350
    .local v5, "date":Ljava/lang/Long;
    const-string v1, "address"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 351
    .local v3, "address":Ljava/lang/String;
    const-string v1, "body"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 353
    .local v4, "body":Ljava/lang/String;
    sget-boolean v1, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 354
    const-string v1, "ManageSimMessagesActivity"

    const-string v6, "copyToPhoneMemory()"

    invoke-static {v1, v6}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :cond_0
    new-instance v0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$3;-><init>(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 385
    .local v0, "getDataAndCopyRunnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v1

    const-string v6, "copy_to_phone_memory"

    invoke-virtual {v1, v0, v6}, Lcom/motorola/messaging/concurrent/TaskManager;->runBackgroundTask(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/motorola/messaging/concurrent/TaskManager$Task;

    .line 386
    return-void
.end method

.method private deleteAllFromSim()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 414
    sget-boolean v6, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->LOCAL_LOG:Z

    if-eqz v6, :cond_0

    .line 415
    const-string v6, "ManageSimMessagesActivity"

    const-string v7, "deleteAllFromSim()"

    invoke-static {v6, v7}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :cond_0
    iget-object v6, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mListAdapter:Lcom/motorola/messaging/activity/ManageSimMessagesActivity$SimMsgAdapter;

    invoke-virtual {v6}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 419
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_3

    .line 421
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 422
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 424
    .local v0, "count":I
    new-array v3, v0, [Ljava/lang/String;

    .line 425
    .local v3, "msgIds":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 426
    const-string v6, "index_on_icc"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    .line 427
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 425
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 430
    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    .line 431
    sget-object v6, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->ALL_SIM_MSGS_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    aget-object v7, v3, v2

    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 433
    .local v5, "simUri":Landroid/net/Uri;
    iget-object v6, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v6, v5, v8, v8}, Lcom/motorola/messaging/provider/SqliteManager;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 434
    .local v4, "result":I
    const/4 v6, 0x1

    if-eq v4, v6, :cond_2

    .line 435
    const v6, 0x7f0b0007

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 430
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 440
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "msgIds":[Ljava/lang/String;
    .end local v4    # "result":I
    .end local v5    # "simUri":Landroid/net/Uri;
    :cond_3
    return-void
.end method

.method private deleteFromSim(Landroid/database/Cursor;)V
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v5, 0x0

    .line 400
    sget-boolean v3, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->LOCAL_LOG:Z

    if-eqz v3, :cond_0

    .line 401
    const-string v3, "ManageSimMessagesActivity"

    const-string v4, "deleteFromSim()"

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :cond_0
    const-string v3, "index_on_icc"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "messageIndexString":Ljava/lang/String;
    sget-object v3, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->ALL_SIM_MSGS_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 407
    .local v2, "simUri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v3, v2, v5, v5}, Lcom/motorola/messaging/provider/SqliteManager;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 408
    .local v1, "result":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    .line 409
    const v3, 0x7f0b0007

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 411
    :cond_1
    return-void
.end method

.method private fetchSimCapacity()V
    .locals 3

    .prologue
    .line 165
    new-instance v0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$2;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$2;-><init>(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;)V

    .line 195
    .local v0, "fetchSimCapacityRunnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v1

    const-string v2, "fetch_sim_capacity"

    invoke-virtual {v1, v0, v2}, Lcom/motorola/messaging/concurrent/TaskManager;->runBackgroundTask(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/motorola/messaging/concurrent/TaskManager$Task;

    .line 196
    return-void
.end method

.method private getFormattedTitle()Ljava/lang/CharSequence;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 554
    const/4 v2, 0x0

    .line 555
    .local v2, "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 556
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-nez v0, :cond_0

    move v1, v3

    .line 557
    .local v1, "slotsUsed":I
    :goto_0
    const v4, 0x7f0b0027

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x1

    iget v6, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mSimCapacity:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 558
    return-object v2

    .line 556
    .end local v1    # "slotsUsed":I
    :cond_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 149
    sget-boolean v0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 150
    const-string v0, "ManageSimMessagesActivity"

    const-string v1, "init()"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mContext:Landroid/content/Context;

    const/16 v1, 0x65

    invoke-static {v0, v1}, Lcom/motorola/messaging/util/MessagingNotification;->clearNotification(Landroid/content/Context;I)V

    .line 156
    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mContext:Landroid/content/Context;

    const/16 v1, 0x66

    invoke-static {v0, v1}, Lcom/motorola/messaging/util/MessagingNotification;->clearNotification(Landroid/content/Context;I)V

    .line 159
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->updateState(I)V

    .line 160
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->fetchSimCapacity()V

    .line 161
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->startQuery()V

    .line 162
    return-void
.end method

.method private static isIncomingMessage(Landroid/database/Cursor;)Z
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x1

    .line 389
    sget-boolean v2, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 390
    const-string v2, "ManageSimMessagesActivity"

    const-string v3, "isIncomingMessage()"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :cond_0
    const-string v2, "status"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 395
    .local v0, "messageStatus":I
    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshMessageList()V
    .locals 2

    .prologue
    .line 255
    sget-boolean v0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 256
    const-string v0, "ManageSimMessagesActivity"

    const-string v1, "refreshMessageList()"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->updateState(I)V

    .line 259
    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 261
    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mCursor:Landroid/database/Cursor;

    .line 264
    :cond_1
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->startQuery()V

    .line 265
    return-void
.end method

.method private registerSimChangeObserver()V
    .locals 4

    .prologue
    .line 339
    sget-boolean v0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 340
    const-string v0, "ManageSimMessagesActivity"

    const-string v1, "registerSimChangeObserver()"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->ALL_SIM_MSGS_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->simChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 344
    return-void
.end method

.method private startQuery()V
    .locals 9

    .prologue
    .line 243
    sget-boolean v0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 244
    const-string v0, "ManageSimMessagesActivity"

    const-string v1, "startQuery()"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->ALL_SIM_MSGS_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v8

    .line 249
    .local v8, "e":Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v8}, Lcom/motorola/messaging/provider/SqliteManager;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    .line 250
    const-string v0, "ManageSimMessagesActivity"

    const-string v1, "SQLite Exception occurred when starting query!!!"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateState(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 520
    sget-boolean v0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 521
    const-string v0, "ManageSimMessagesActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateState() - mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    :cond_0
    iget v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mState:I

    if-ne v0, p1, :cond_1

    .line 524
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->getFormattedTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 551
    :goto_0
    return-void

    .line 528
    :cond_1
    iput p1, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mState:I

    .line 529
    packed-switch p1, :pswitch_data_0

    .line 549
    const-string v0, "ManageSimMessagesActivity"

    const-string v1, "Invalid State"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 531
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 532
    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 533
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->getFormattedTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 534
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_0

    .line 537
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 538
    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 539
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->getFormattedTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 540
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_0

    .line 543
    :pswitch_2
    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 544
    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 545
    const v0, 0x7f0b0005

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 546
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_0

    .line 529
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 143
    sget-boolean v0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 144
    const-string v0, "ManageSimMessagesActivity"

    const-string v1, "onConfigurationChanged()"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 293
    sget-boolean v5, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->LOCAL_LOG:Z

    if-eqz v5, :cond_0

    .line 294
    const-string v5, "ManageSimMessagesActivity"

    const-string v6, "onContextItemSelected()"

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    .local v2, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v5, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mListAdapter:Lcom/motorola/messaging/activity/ManageSimMessagesActivity$SimMsgAdapter;

    iget v6, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v5, v6}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 305
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_1

    .line 317
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v2    # "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :goto_0
    return v3

    .line 299
    :catch_0
    move-exception v1

    .line 300
    .local v1, "exception":Ljava/lang/ClassCastException;
    const-string v4, "ManageSimMessagesActivity"

    const-string v5, "Bad menuInfo."

    invoke-static {v4, v5, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 308
    .end local v1    # "exception":Ljava/lang/ClassCastException;
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v2    # "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 317
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    goto :goto_0

    .line 310
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->copyToPhoneMemory(Landroid/database/Cursor;)V

    move v3, v4

    .line 311
    goto :goto_0

    .line 313
    :pswitch_1
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->updateState(I)V

    .line 314
    invoke-direct {p0, v0}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->deleteFromSim(Landroid/database/Cursor;)V

    move v3, v4

    .line 315
    goto :goto_0

    .line 308
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    sget-boolean v1, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 113
    const-string v1, "ManageSimMessagesActivity"

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_0
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 117
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mContext:Landroid/content/Context;

    .line 118
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 119
    new-instance v1, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$QueryHandler;

    iget-object v2, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v1, p0, v2, p0}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$QueryHandler;-><init>(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;Landroid/content/ContentResolver;Lcom/motorola/messaging/activity/ManageSimMessagesActivity;)V

    iput-object v1, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 120
    const v1, 0x7f03001d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 121
    const v1, 0x7f090059

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mSimList:Landroid/widget/ListView;

    .line 122
    const v1, 0x7f09005a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mMessage:Landroid/widget/TextView;

    .line 124
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 125
    .local v0, "actionBar":Landroid/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 126
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->init()V

    .line 127
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 284
    sget-boolean v0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 285
    const-string v0, "ManageSimMessagesActivity"

    const-string v1, "onCreateContextMenu()"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_0
    const v0, 0x7f0b00cb

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 288
    const v0, 0x7f0b0020

    invoke-interface {p1, v2, v3, v3, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 289
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 476
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 478
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x0

    .line 480
    .local v1, "dialog":Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 505
    :goto_0
    if-nez v1, :cond_0

    .line 506
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 509
    :cond_0
    new-instance v2, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$5;

    invoke-direct {v2, p0, p1}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$5;-><init>(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;I)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 516
    return-object v1

    .line 482
    :pswitch_0
    const v2, 0x7f0b0099

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 483
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 484
    const v2, 0x7f0b0078

    new-instance v3, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$4;

    invoke-direct {v3, p0}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$4;-><init>(Lcom/motorola/messaging/activity/ManageSimMessagesActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 497
    const v2, 0x7f0b0079

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 498
    const v2, 0x7f0b00a5

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 480
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 269
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 270
    sget-boolean v0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 271
    const-string v0, "ManageSimMessagesActivity"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 277
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mCursor:Landroid/database/Cursor;

    .line 278
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 132
    sget-boolean v0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 133
    const-string v0, "ManageSimMessagesActivity"

    const-string v1, "onNewIntent()"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_0
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->init()V

    .line 137
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 459
    sget-boolean v0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 460
    const-string v0, "ManageSimMessagesActivity"

    const-string v1, "onOptionsItemSelected()"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 471
    :goto_0
    return v2

    .line 464
    :sswitch_0
    invoke-virtual {p0, v2}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 467
    :sswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 462
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 331
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 332
    sget-boolean v0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 333
    const-string v0, "ManageSimMessagesActivity"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->simChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 336
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 444
    sget-boolean v0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 445
    const-string v0, "ManageSimMessagesActivity"

    const-string v1, "onPrepareOptionsMenu()"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :cond_0
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 449
    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->mState:I

    if-nez v0, :cond_1

    .line 450
    const v0, 0x7f0b00ca

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 454
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 322
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 323
    sget-boolean v0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 324
    const-string v0, "ManageSimMessagesActivity"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :cond_0
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->registerSimChangeObserver()V

    .line 327
    return-void
.end method
