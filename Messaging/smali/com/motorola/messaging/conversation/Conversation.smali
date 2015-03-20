.class public Lcom/motorola/messaging/conversation/Conversation;
.super Ljava/lang/Object;
.source "Conversation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/conversation/Conversation$Cache;,
        Lcom/motorola/messaging/conversation/Conversation$DeleteThreadExecutor;
    }
.end annotation


# static fields
.field private static final ALL_THREADS_PROJECTION:[Ljava/lang/String;

.field private static final LOCAL_LOG:Z

.field private static final SEEN_PROJECTION:[Ljava/lang/String;

.field private static final sAllThreadsUri:Landroid/net/Uri;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDate:J

.field private mHasAttachment:Z

.field private mHasError:Z

.field private mHasInvalidAddresses:Z

.field private mHasUnreadMessages:Z

.field private mMessageCount:I

.field private mRecipients:Lcom/motorola/messaging/contact/ContactList;

.field private mSnippet:Ljava/lang/String;

.field private mThreadId:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    sput-boolean v0, Lcom/motorola/messaging/conversation/Conversation;->LOCAL_LOG:Z

    .line 49
    sget-object v0, Lcom/motorola/messaging/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "simple"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/conversation/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    .line 52
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "message_count"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "recipient_ids"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "snippet"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "snippet_cs"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "error"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "has_attachment"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/messaging/conversation/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    .line 69
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "seen"

    aput-object v1, v0, v3

    sput-object v0, Lcom/motorola/messaging/conversation/Conversation;->SEEN_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/conversation/Conversation;->mContext:Landroid/content/Context;

    .line 147
    new-instance v0, Lcom/motorola/messaging/contact/ContactList;

    invoke-direct {v0}, Lcom/motorola/messaging/contact/ContactList;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/conversation/Conversation;->mRecipients:Lcom/motorola/messaging/contact/ContactList;

    .line 148
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/messaging/conversation/Conversation;->mThreadId:J

    .line 149
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "threadId"    # J

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/conversation/Conversation;->mContext:Landroid/content/Context;

    .line 153
    invoke-direct {p0, p2, p3}, Lcom/motorola/messaging/conversation/Conversation;->loadFromThreadId(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lcom/motorola/messaging/contact/ContactList;

    invoke-direct {v0}, Lcom/motorola/messaging/contact/ContactList;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/conversation/Conversation;->mRecipients:Lcom/motorola/messaging/contact/ContactList;

    .line 155
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/messaging/conversation/Conversation;->mThreadId:J

    .line 157
    :cond_0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "allowQuery"    # Z

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/conversation/Conversation;->mContext:Landroid/content/Context;

    .line 161
    invoke-static {p0, p2}, Lcom/motorola/messaging/conversation/Conversation;->fillFromCursor(Lcom/motorola/messaging/conversation/Conversation;Landroid/database/Cursor;)V

    .line 162
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/database/Cursor;ZLcom/motorola/messaging/conversation/Conversation$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Landroid/database/Cursor;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lcom/motorola/messaging/conversation/Conversation$1;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/messaging/conversation/Conversation;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/messaging/conversation/Conversation;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/conversation/Conversation;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/motorola/messaging/conversation/Conversation;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/motorola/messaging/conversation/Conversation;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/conversation/Conversation;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/motorola/messaging/conversation/Conversation;->mHasUnreadMessages:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/motorola/messaging/conversation/Conversation;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/conversation/Conversation;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 41
    invoke-static {p0, p1}, Lcom/motorola/messaging/conversation/Conversation;->fillFromCursor(Lcom/motorola/messaging/conversation/Conversation;Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-static {p0}, Lcom/motorola/messaging/conversation/Conversation;->blockingMarkAllSmsMessagesAsSeen(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-static {p0}, Lcom/motorola/messaging/conversation/Conversation;->blockingMarkAllMmsMessagesAsSeen(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/motorola/messaging/conversation/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/motorola/messaging/conversation/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/motorola/messaging/conversation/Conversation;->LOCAL_LOG:Z

    return v0
.end method

.method static synthetic access$800(Lcom/motorola/messaging/conversation/Conversation;)J
    .locals 2
    .param p0, "x0"    # Lcom/motorola/messaging/conversation/Conversation;

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/motorola/messaging/conversation/Conversation;->mThreadId:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/motorola/messaging/conversation/Conversation;)Lcom/motorola/messaging/contact/ContactList;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/conversation/Conversation;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/motorola/messaging/conversation/Conversation;->mRecipients:Lcom/motorola/messaging/contact/ContactList;

    return-object v0
.end method

.method static synthetic access$902(Lcom/motorola/messaging/conversation/Conversation;Lcom/motorola/messaging/contact/ContactList;)Lcom/motorola/messaging/contact/ContactList;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/conversation/Conversation;
    .param p1, "x1"    # Lcom/motorola/messaging/contact/ContactList;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/motorola/messaging/conversation/Conversation;->mRecipients:Lcom/motorola/messaging/contact/ContactList;

    return-object p1
.end method

.method public static asyncDeleteEmpty(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "threadId"    # J

    .prologue
    .line 748
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 749
    new-instance v0, Lcom/motorola/messaging/conversation/Conversation$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/motorola/messaging/conversation/Conversation$7;-><init>(Landroid/content/Context;J)V

    .line 756
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v1

    const-string v2, "delete_empty"

    invoke-virtual {v1, v0, v2}, Lcom/motorola/messaging/concurrent/TaskManager;->runLowPriorityTask(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 758
    .end local v0    # "runnable":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method private static blockingMarkAllMmsMessagesAsSeen(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 375
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/motorola/messaging/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/motorola/messaging/conversation/Conversation;->SEEN_PROJECTION:[Ljava/lang/String;

    const-string v4, "seen=0"

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 378
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 380
    .local v7, "count":I
    if-eqz v8, :cond_0

    .line 382
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 384
    invoke-static {v8}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 388
    :cond_0
    if-nez v7, :cond_1

    .line 402
    :goto_0
    return-void

    .line 384
    :catchall_0
    move-exception v0

    invoke-static {v8}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v0

    .line 392
    :cond_1
    sget-boolean v0, Lcom/motorola/messaging/conversation/Conversation;->LOCAL_LOG:Z

    if-eqz v0, :cond_2

    .line 393
    const-string v0, "Conversation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mark "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MMS msgs as seen"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    :cond_2
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 397
    .local v3, "values":Landroid/content/ContentValues;
    const-string v0, "seen"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 399
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/motorola/messaging/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "seen=0"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/motorola/messaging/provider/SqliteManager;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static blockingMarkAllSmsMessagesAsSeen(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 346
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/motorola/messaging/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/motorola/messaging/conversation/Conversation;->SEEN_PROJECTION:[Ljava/lang/String;

    const-string v4, "seen=0"

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 349
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 351
    .local v7, "count":I
    if-eqz v8, :cond_0

    .line 353
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 355
    invoke-static {v8}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 359
    :cond_0
    if-nez v7, :cond_1

    .line 372
    :goto_0
    return-void

    .line 355
    :catchall_0
    move-exception v0

    invoke-static {v8}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v0

    .line 363
    :cond_1
    sget-boolean v0, Lcom/motorola/messaging/conversation/Conversation;->LOCAL_LOG:Z

    if-eqz v0, :cond_2

    .line 364
    const-string v0, "Conversation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mark "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SMS msgs as seen"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :cond_2
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 368
    .local v3, "values":Landroid/content/ContentValues;
    const-string v0, "seen"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 370
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/motorola/messaging/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "seen=0"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/motorola/messaging/provider/SqliteManager;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static buildConfirmDeleteThreadDialog(Lcom/motorola/messaging/conversation/Conversation$DeleteThreadExecutor;ZLandroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 8
    .param p0, "executor"    # Lcom/motorola/messaging/conversation/Conversation$DeleteThreadExecutor;
    .param p1, "hasLockedMessages"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 100
    new-instance v4, Lcom/motorola/messaging/conversation/Conversation$1;

    invoke-direct {v4, p0}, Lcom/motorola/messaging/conversation/Conversation$1;-><init>(Lcom/motorola/messaging/conversation/Conversation$DeleteThreadExecutor;)V

    .line 106
    .local v4, "posButtonListener":Landroid/content/DialogInterface$OnClickListener;
    const v5, 0x7f030010

    invoke-static {p2, v5, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 108
    .local v2, "contents":Landroid/view/View;
    const v5, 0x7f09003c

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 110
    .local v3, "msg":Landroid/widget/TextView;
    invoke-interface {p0}, Lcom/motorola/messaging/conversation/Conversation$DeleteThreadExecutor;->isSingleThread()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 111
    const v5, 0x7f0b009a

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 116
    :goto_0
    const v5, 0x7f090014

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 117
    .local v1, "checkbox":Landroid/widget/CheckBox;
    const v5, 0x7f0b00a6

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 119
    if-nez p1, :cond_1

    .line 120
    const/4 v5, 0x1

    invoke-interface {p0, v5}, Lcom/motorola/messaging/conversation/Conversation$DeleteThreadExecutor;->setDeleteProtectedMessage(Z)V

    .line 121
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 135
    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 136
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0b0099

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1080027

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0b007b

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0b00a4

    invoke-virtual {v5, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 142
    return-object v0

    .line 113
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "checkbox":Landroid/widget/CheckBox;
    :cond_0
    const v5, 0x7f0b009b

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 123
    .restart local v1    # "checkbox":Landroid/widget/CheckBox;
    :cond_1
    const/4 v5, 0x0

    invoke-interface {p0, v5}, Lcom/motorola/messaging/conversation/Conversation$DeleteThreadExecutor;->setDeleteProtectedMessage(Z)V

    .line 124
    new-instance v5, Lcom/motorola/messaging/conversation/Conversation$2;

    invoke-direct {v5, p0}, Lcom/motorola/messaging/conversation/Conversation$2;-><init>(Lcom/motorola/messaging/conversation/Conversation$DeleteThreadExecutor;)V

    invoke-virtual {v1, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1
.end method

.method public static cacheFromCursor(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1149
    if-eqz p1, :cond_0

    .line 1153
    invoke-static {p1}, Lcom/motorola/messaging/conversation/ThreadFilter;->copyCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 1155
    .local v0, "copiedCursor":Landroid/database/Cursor;
    new-instance v1, Lcom/motorola/messaging/conversation/Conversation$8;

    invoke-direct {v1, v0, p0}, Lcom/motorola/messaging/conversation/Conversation$8;-><init>(Landroid/database/Cursor;Landroid/content/Context;)V

    .line 1201
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v2

    const-string v3, "cache_from_cursor"

    invoke-virtual {v2, v1, v3}, Lcom/motorola/messaging/concurrent/TaskManager;->runLowPriorityTask(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1203
    .end local v0    # "copiedCursor":Landroid/database/Cursor;
    .end local v1    # "runnable":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method private checkForInvalidAddresses()V
    .locals 3

    .prologue
    .line 1230
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/motorola/messaging/conversation/Conversation;->mHasInvalidAddresses:Z

    .line 1231
    iget-object v2, p0, Lcom/motorola/messaging/conversation/Conversation;->mRecipients:Lcom/motorola/messaging/contact/ContactList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/contact/Contact;

    .line 1232
    .local v0, "contact":Lcom/motorola/messaging/contact/Contact;
    invoke-virtual {v0}, Lcom/motorola/messaging/contact/Contact;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1233
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/motorola/messaging/conversation/Conversation;->mHasInvalidAddresses:Z

    .line 1237
    .end local v0    # "contact":Lcom/motorola/messaging/contact/Contact;
    :cond_1
    return-void
.end method

.method public static createFromCursor(Landroid/content/Context;Landroid/database/Cursor;)Lcom/motorola/messaging/conversation/Conversation;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v5, 0x0

    .line 184
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 186
    .local v3, "threadId":J
    invoke-static {}, Lcom/motorola/messaging/conversation/Conversation$Cache;->getInstance()Lcom/motorola/messaging/conversation/Conversation$Cache;

    move-result-object v6

    monitor-enter v6

    .line 187
    const-wide/16 v7, 0x0

    cmp-long v5, v3, v7

    if-lez v5, :cond_0

    .line 188
    :try_start_0
    invoke-static {v3, v4}, Lcom/motorola/messaging/conversation/Conversation$Cache;->get(J)Lcom/motorola/messaging/conversation/Conversation;

    move-result-object v0

    .line 189
    .local v0, "conv":Lcom/motorola/messaging/conversation/Conversation;
    if-eqz v0, :cond_0

    .line 191
    invoke-static {v0, p1}, Lcom/motorola/messaging/conversation/Conversation;->fillFromCursor(Lcom/motorola/messaging/conversation/Conversation;Landroid/database/Cursor;)V

    .line 192
    monitor-exit v6

    move-object v1, v0

    .line 201
    .end local v0    # "conv":Lcom/motorola/messaging/conversation/Conversation;
    .local v1, "conv":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 195
    .end local v1    # "conv":Ljava/lang/Object;
    :cond_0
    new-instance v0, Lcom/motorola/messaging/conversation/Conversation;

    const/4 v5, 0x0

    invoke-direct {v0, p0, p1, v5}, Lcom/motorola/messaging/conversation/Conversation;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    .restart local v0    # "conv":Lcom/motorola/messaging/conversation/Conversation;
    :try_start_1
    invoke-static {v0}, Lcom/motorola/messaging/conversation/Conversation$Cache;->put(Lcom/motorola/messaging/conversation/Conversation;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    :goto_1
    :try_start_2
    monitor-exit v6

    move-object v1, v0

    .restart local v1    # "conv":Ljava/lang/Object;
    goto :goto_0

    .line 198
    .end local v1    # "conv":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 199
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string v5, "Conversation"

    const-string v7, "Tried to add duplicate Conversation to Cache"

    invoke-static {v5, v7}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 202
    .end local v0    # "conv":Lcom/motorola/messaging/conversation/Conversation;
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method

.method public static createNew(Landroid/content/Context;)Lcom/motorola/messaging/conversation/Conversation;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 170
    new-instance v0, Lcom/motorola/messaging/conversation/Conversation;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/conversation/Conversation;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static deleteEmpty(Landroid/content/Context;J)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "threadId"    # J

    .prologue
    const/4 v3, 0x0

    .line 767
    sget-boolean v0, Lcom/motorola/messaging/conversation/Conversation;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 768
    const-string v0, "Conversation"

    const-string v1, "deleteEmpty"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 772
    sget-object v0, Lcom/motorola/messaging/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "simple"

    const-string v5, "true"

    invoke-virtual {v0, v1, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 774
    .local v2, "queryUri":Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "message_count=0 AND _id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 776
    .local v4, "selection":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 778
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 780
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 781
    const/4 v0, 0x1

    invoke-static {p0, v0, p1, p2}, Lcom/motorola/messaging/conversation/Conversation;->deleteSync(Landroid/content/Context;ZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 784
    :cond_1
    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 788
    .end local v2    # "queryUri":Landroid/net/Uri;
    .end local v4    # "selection":Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_2
    return-void

    .line 784
    .restart local v2    # "queryUri":Landroid/net/Uri;
    .restart local v4    # "selection":Ljava/lang/String;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static deleteMultiple(Landroid/content/Context;Z[J)V
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deleteAll"    # Z
    .param p2, "threadIds"    # [J

    .prologue
    .line 823
    sget-boolean v17, Lcom/motorola/messaging/conversation/Conversation;->LOCAL_LOG:Z

    if-eqz v17, :cond_0

    .line 824
    const-string v17, "Conversation"

    const/16 v18, 0x1

    const/16 v19, 0x1

    const-string v20, "deleteMultiple"

    invoke-static/range {v17 .. v20}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 827
    :cond_0
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 876
    :goto_0
    return-void

    .line 831
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 834
    .local v3, "appContext":Landroid/content/Context;
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "thread_id IN ("

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 835
    .local v16, "where":Ljava/lang/StringBuilder;
    const-string v5, ","

    .line 839
    .local v5, "commaStr":Ljava/lang/String;
    move-object/from16 v4, p2

    .local v4, "arr$":[J
    array-length v8, v4

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v8, :cond_2

    aget-wide v13, v4, v7

    .line 840
    .local v13, "threadId":J
    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 841
    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 843
    .end local v13    # "threadId":J
    :cond_2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    const-string v18, ","

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 844
    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    if-eqz p1, :cond_5

    const-string v17, ""

    :goto_2
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    const/4 v9, 0x0

    .line 848
    .local v9, "msgsDeleted":I
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 849
    .local v10, "resolver":Landroid/content/ContentResolver;
    sget-object v17, Lcom/motorola/messaging/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v3, v10, v0, v1, v2}, Lcom/motorola/messaging/provider/SqliteManager;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 852
    if-eqz v9, :cond_3

    .line 853
    invoke-static {}, Lcom/motorola/messaging/transaction/MOSmsManager;->removeObsoletePending()V

    .line 856
    :cond_3
    new-instance v6, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;

    const/16 v17, 0x3

    const-string v18, "MSG_DELETED"

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v6, v0, v1}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;-><init>(ILjava/lang/String;)V

    .line 857
    .local v6, "event":Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;
    const-string v17, "numMsgs"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v9}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->addField(Ljava/lang/String;I)V

    .line 858
    const-string v17, "action"

    const-string v18, "delConv"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    invoke-virtual {v6}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->log()V

    .line 862
    sget-boolean v17, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v17, :cond_4

    .line 863
    const-string v17, "Conversation"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Messages Deleted: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    :cond_4
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 868
    .local v15, "threadSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    move-object/from16 v4, p2

    array-length v8, v4

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v8, :cond_6

    aget-wide v11, v4, v7

    .line 869
    .local v11, "threaId":J
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 868
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 845
    .end local v6    # "event":Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;
    .end local v9    # "msgsDeleted":I
    .end local v10    # "resolver":Landroid/content/ContentResolver;
    .end local v11    # "threaId":J
    .end local v15    # "threadSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_5
    const-string v17, " AND locked=0"

    goto :goto_2

    .line 873
    .restart local v6    # "event":Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;
    .restart local v9    # "msgsDeleted":I
    .restart local v10    # "resolver":Landroid/content/ContentResolver;
    .restart local v15    # "threadSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_6
    invoke-static {}, Lcom/motorola/messaging/conversation/Conversation$Cache;->getInstance()Lcom/motorola/messaging/conversation/Conversation$Cache;

    move-result-object v18

    monitor-enter v18

    .line 874
    :try_start_0
    invoke-static {v15}, Lcom/motorola/messaging/conversation/Conversation$Cache;->removeAll(Ljava/util/Set;)V

    .line 875
    monitor-exit v18

    goto/16 :goto_0

    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v17
.end method

.method private static deleteSync(Landroid/content/Context;ZJ)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deleteAll"    # Z
    .param p2, "threadId"    # J

    .prologue
    const/4 v4, 0x0

    .line 792
    sget-boolean v5, Lcom/motorola/messaging/conversation/Conversation;->LOCAL_LOG:Z

    if-eqz v5, :cond_0

    .line 793
    const-string v5, "Conversation"

    const-string v6, "deleteSync"

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    :cond_0
    sget-object v5, Lcom/motorola/messaging/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 797
    .local v3, "uri":Landroid/net/Uri;
    if-eqz p1, :cond_2

    move-object v2, v4

    .line 798
    .local v2, "selection":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {p0, v5, v3, v2, v4}, Lcom/motorola/messaging/provider/SqliteManager;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 800
    .local v1, "num_msgs":I
    if-eqz v1, :cond_1

    .line 801
    invoke-static {}, Lcom/motorola/messaging/transaction/MOSmsManager;->removeObsoletePending()V

    .line 804
    :cond_1
    new-instance v0, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;

    const/4 v4, 0x3

    const-string v5, "MSG_DELETED"

    invoke-direct {v0, v4, v5}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;-><init>(ILjava/lang/String;)V

    .line 805
    .local v0, "event":Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;
    const-string v4, "numMsgs"

    invoke-virtual {v0, v4, v1}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->addField(Ljava/lang/String;I)V

    .line 806
    const-string v4, "action"

    const-string v5, "delConv"

    invoke-virtual {v0, v4, v5}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    invoke-virtual {v0}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->log()V

    .line 811
    invoke-static {}, Lcom/motorola/messaging/conversation/Conversation$Cache;->getInstance()Lcom/motorola/messaging/conversation/Conversation$Cache;

    move-result-object v5

    monitor-enter v5

    .line 812
    :try_start_0
    invoke-static {p2, p3}, Lcom/motorola/messaging/conversation/Conversation$Cache;->remove(J)Lcom/motorola/messaging/conversation/Conversation;

    .line 813
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 814
    return-void

    .line 797
    .end local v0    # "event":Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;
    .end local v1    # "num_msgs":I
    .end local v2    # "selection":Ljava/lang/String;
    :cond_2
    const-string v2, "locked=0"

    goto :goto_0

    .line 813
    .restart local v0    # "event":Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;
    .restart local v1    # "num_msgs":I
    .restart local v2    # "selection":Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private static fillFromCursor(Lcom/motorola/messaging/conversation/Conversation;Landroid/database/Cursor;)V
    .locals 9
    .param p0, "conv"    # Lcom/motorola/messaging/conversation/Conversation;
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 919
    sget-boolean v5, Lcom/motorola/messaging/conversation/Conversation;->LOCAL_LOG:Z

    if-eqz v5, :cond_0

    .line 920
    const-string v5, "Conversation"

    const-string v6, "fillFromCursor"

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    :cond_0
    invoke-static {}, Lcom/motorola/messaging/conversation/Conversation$Cache;->getInstance()Lcom/motorola/messaging/conversation/Conversation$Cache;

    move-result-object v6

    monitor-enter v6

    .line 924
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 925
    const/4 v5, 0x0

    :try_start_1
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/motorola/messaging/conversation/Conversation;->mThreadId:J

    .line 926
    const/4 v5, 0x1

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/motorola/messaging/conversation/Conversation;->mDate:J

    .line 927
    const/4 v5, 0x2

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, p0, Lcom/motorola/messaging/conversation/Conversation;->mMessageCount:I

    .line 930
    const/4 v5, 0x4

    const/4 v7, 0x5

    invoke-static {p1, v5, v7}, Lcom/motorola/messaging/util/MessageUtils;->extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v2

    .line 931
    .local v2, "snippet":Ljava/lang/String;
    iput-object v2, p0, Lcom/motorola/messaging/conversation/Conversation;->mSnippet:Ljava/lang/String;

    .line 933
    const/4 v5, 0x6

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-nez v5, :cond_2

    move v5, v3

    :goto_0
    iput-boolean v5, p0, Lcom/motorola/messaging/conversation/Conversation;->mHasUnreadMessages:Z

    .line 934
    const/4 v5, 0x7

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_3

    move v5, v3

    :goto_1
    iput-boolean v5, p0, Lcom/motorola/messaging/conversation/Conversation;->mHasError:Z

    .line 935
    const/16 v5, 0x8

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_4

    :goto_2
    iput-boolean v3, p0, Lcom/motorola/messaging/conversation/Conversation;->mHasAttachment:Z

    .line 936
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 939
    const/4 v3, 0x3

    :try_start_2
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 940
    .local v0, "recipientIds":Ljava/lang/String;
    invoke-static {v0}, Lcom/motorola/messaging/contact/ContactList;->getByIdsInCache(Ljava/lang/String;)Lcom/motorola/messaging/contact/ContactList;

    move-result-object v1

    .line 941
    .local v1, "recipients":Lcom/motorola/messaging/contact/ContactList;
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 942
    :try_start_3
    iget-object v3, p0, Lcom/motorola/messaging/conversation/Conversation;->mRecipients:Lcom/motorola/messaging/contact/ContactList;

    invoke-virtual {v1, v3}, Lcom/motorola/messaging/contact/ContactList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 943
    invoke-static {p0, v1}, Lcom/motorola/messaging/conversation/Conversation$Cache;->changeRecipients(Lcom/motorola/messaging/conversation/Conversation;Lcom/motorola/messaging/contact/ContactList;)V

    .line 944
    invoke-direct {p0}, Lcom/motorola/messaging/conversation/Conversation;->checkForInvalidAddresses()V

    .line 946
    :cond_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 947
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 948
    return-void

    .end local v0    # "recipientIds":Ljava/lang/String;
    .end local v1    # "recipients":Lcom/motorola/messaging/contact/ContactList;
    :cond_2
    move v5, v4

    .line 933
    goto :goto_0

    :cond_3
    move v5, v4

    .line 934
    goto :goto_1

    :cond_4
    move v3, v4

    .line 935
    goto :goto_2

    .line 936
    .end local v2    # "snippet":Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3

    .line 947
    :catchall_1
    move-exception v3

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v3

    .line 946
    .restart local v0    # "recipientIds":Ljava/lang/String;
    .restart local v1    # "recipients":Lcom/motorola/messaging/contact/ContactList;
    .restart local v2    # "snippet":Ljava/lang/String;
    :catchall_2
    move-exception v3

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
.end method

.method public static get(Landroid/content/Context;J)Lcom/motorola/messaging/conversation/Conversation;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "threadId"    # J

    .prologue
    .line 210
    invoke-static {}, Lcom/motorola/messaging/conversation/Conversation$Cache;->getInstance()Lcom/motorola/messaging/conversation/Conversation$Cache;

    move-result-object v4

    monitor-enter v4

    .line 211
    :try_start_0
    invoke-static {p1, p2}, Lcom/motorola/messaging/conversation/Conversation$Cache;->get(J)Lcom/motorola/messaging/conversation/Conversation;

    move-result-object v0

    .line 212
    .local v0, "conv":Lcom/motorola/messaging/conversation/Conversation;
    if-eqz v0, :cond_0

    .line 213
    monitor-exit v4

    move-object v1, v0

    .line 221
    .end local v0    # "conv":Lcom/motorola/messaging/conversation/Conversation;
    .local v1, "conv":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 215
    .end local v1    # "conv":Ljava/lang/Object;
    .restart local v0    # "conv":Lcom/motorola/messaging/conversation/Conversation;
    :cond_0
    new-instance v0, Lcom/motorola/messaging/conversation/Conversation;

    .end local v0    # "conv":Lcom/motorola/messaging/conversation/Conversation;
    invoke-direct {v0, p0, p1, p2}, Lcom/motorola/messaging/conversation/Conversation;-><init>(Landroid/content/Context;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    .restart local v0    # "conv":Lcom/motorola/messaging/conversation/Conversation;
    :try_start_1
    invoke-static {v0}, Lcom/motorola/messaging/conversation/Conversation$Cache;->put(Lcom/motorola/messaging/conversation/Conversation;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    :goto_1
    :try_start_2
    monitor-exit v4

    move-object v1, v0

    .restart local v1    # "conv":Ljava/lang/Object;
    goto :goto_0

    .line 218
    .end local v1    # "conv":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 219
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string v3, "Conversation"

    const-string v5, "Tried to add duplicate Conversation to Cache"

    invoke-static {v3, v5}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 222
    .end local v0    # "conv":Lcom/motorola/messaging/conversation/Conversation;
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public static get(Landroid/content/Context;Lcom/motorola/messaging/contact/ContactList;)Lcom/motorola/messaging/conversation/Conversation;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "recipients"    # Lcom/motorola/messaging/contact/ContactList;

    .prologue
    .line 231
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_0

    .line 232
    invoke-static {p0}, Lcom/motorola/messaging/conversation/Conversation;->createNew(Landroid/content/Context;)Lcom/motorola/messaging/conversation/Conversation;

    move-result-object v0

    .line 251
    :goto_0
    return-object v0

    .line 235
    :cond_0
    invoke-static {}, Lcom/motorola/messaging/conversation/Conversation$Cache;->getInstance()Lcom/motorola/messaging/conversation/Conversation$Cache;

    move-result-object v5

    monitor-enter v5

    .line 236
    :try_start_0
    invoke-static {p1}, Lcom/motorola/messaging/conversation/Conversation$Cache;->get(Lcom/motorola/messaging/contact/ContactList;)Lcom/motorola/messaging/conversation/Conversation;

    move-result-object v0

    .line 238
    .local v0, "conv":Lcom/motorola/messaging/conversation/Conversation;
    if-eqz v0, :cond_1

    .line 239
    monitor-exit v5

    goto :goto_0

    .line 252
    .end local v0    # "conv":Lcom/motorola/messaging/conversation/Conversation;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 242
    .restart local v0    # "conv":Lcom/motorola/messaging/conversation/Conversation;
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-static {v4, p1}, Lcom/motorola/messaging/conversation/ConversationManager;->getOrCreateThreadId(ZLcom/motorola/messaging/contact/ContactList;)J

    move-result-wide v2

    .line 243
    .local v2, "threadId":J
    new-instance v0, Lcom/motorola/messaging/conversation/Conversation;

    .end local v0    # "conv":Lcom/motorola/messaging/conversation/Conversation;
    invoke-direct {v0, p0, v2, v3}, Lcom/motorola/messaging/conversation/Conversation;-><init>(Landroid/content/Context;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    .restart local v0    # "conv":Lcom/motorola/messaging/conversation/Conversation;
    :try_start_2
    invoke-static {v0}, Lcom/motorola/messaging/conversation/Conversation$Cache;->put(Lcom/motorola/messaging/conversation/Conversation;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 251
    :goto_1
    :try_start_3
    monitor-exit v5

    goto :goto_0

    .line 247
    :catch_0
    move-exception v1

    .line 248
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v4, "Conversation"

    const-string v6, "Tried to add duplicate Conversation to Cache"

    invoke-static {v4, v6}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public static getCached([Ljava/lang/String;)Lcom/motorola/messaging/conversation/Conversation;
    .locals 3
    .param p0, "recipients"    # [Ljava/lang/String;

    .prologue
    .line 260
    invoke-static {}, Lcom/motorola/messaging/conversation/Conversation$Cache;->getInstance()Lcom/motorola/messaging/conversation/Conversation$Cache;

    move-result-object v2

    monitor-enter v2

    .line 261
    :try_start_0
    invoke-static {p0}, Lcom/motorola/messaging/conversation/Conversation$Cache;->get([Ljava/lang/String;)Lcom/motorola/messaging/conversation/Conversation;

    move-result-object v0

    .line 262
    .local v0, "conv":Lcom/motorola/messaging/conversation/Conversation;
    monitor-exit v2

    return-object v0

    .line 263
    .end local v0    # "conv":Lcom/motorola/messaging/conversation/Conversation;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getUri(J)Landroid/net/Uri;
    .locals 1
    .param p0, "threadId"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 425
    sget-object v0, Lcom/motorola/messaging/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static hasCachedValues()Z
    .locals 1

    .prologue
    .line 1140
    # getter for: Lcom/motorola/messaging/conversation/Conversation$Cache;->sInstance:Lcom/motorola/messaging/conversation/Conversation$Cache;
    invoke-static {}, Lcom/motorola/messaging/conversation/Conversation$Cache;->access$1000()Lcom/motorola/messaging/conversation/Conversation$Cache;

    move-result-object v0

    # getter for: Lcom/motorola/messaging/conversation/Conversation$Cache;->mCache:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/motorola/messaging/conversation/Conversation$Cache;->access$1100(Lcom/motorola/messaging/conversation/Conversation$Cache;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadFromThreadId(J)Z
    .locals 9
    .param p1, "threadId"    # J

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 1206
    iget-object v0, p0, Lcom/motorola/messaging/conversation/Conversation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/messaging/conversation/Conversation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/motorola/messaging/conversation/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    sget-object v3, Lcom/motorola/messaging/conversation/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1210
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 1212
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1213
    invoke-static {p0, v7}, Lcom/motorola/messaging/conversation/Conversation;->fillFromCursor(Lcom/motorola/messaging/conversation/Conversation;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1220
    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 1225
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 1215
    :cond_0
    :try_start_1
    const-string v0, "Conversation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadFromThreadId: Can\'t find thread ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1220
    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    move v0, v8

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v0

    :cond_1
    move v0, v8

    .line 1223
    goto :goto_0
.end method

.method public static markAllConversationsAsSeen(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 328
    sget-boolean v1, Lcom/motorola/messaging/conversation/Conversation;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 329
    const-string v1, "Conversation"

    const-string v2, "Conversation.markAllConversationsAsSeen"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_0
    new-instance v0, Lcom/motorola/messaging/conversation/Conversation$4;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/conversation/Conversation$4;-><init>(Landroid/content/Context;)V

    .line 342
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v1

    const-string v2, "mark_all_as_seen"

    invoke-virtual {v1, v0, v2}, Lcom/motorola/messaging/concurrent/TaskManager;->runLowPriorityTask(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method public static removeConversationFromCache(J)V
    .locals 2
    .param p0, "threadId"    # J

    .prologue
    .line 510
    invoke-static {}, Lcom/motorola/messaging/conversation/Conversation$Cache;->getInstance()Lcom/motorola/messaging/conversation/Conversation$Cache;

    move-result-object v1

    monitor-enter v1

    .line 511
    :try_start_0
    invoke-static {p0, p1}, Lcom/motorola/messaging/conversation/Conversation$Cache;->remove(J)Lcom/motorola/messaging/conversation/Conversation;

    .line 512
    monitor-exit v1

    .line 513
    return-void

    .line 512
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static removeObsoleteConversations(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 645
    sget-boolean v1, Lcom/motorola/messaging/conversation/Conversation;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 646
    const-string v1, "Conversation"

    const-string v2, "removeObsoleteConversations"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    :cond_0
    new-instance v0, Lcom/motorola/messaging/conversation/Conversation$5;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/conversation/Conversation$5;-><init>(Landroid/content/Context;)V

    .line 681
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v1

    const-string v2, "remove_obsolete"

    invoke-virtual {v1, v0, v2}, Lcom/motorola/messaging/concurrent/TaskManager;->runLowPriorityTask(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 682
    return-void
.end method

.method public static setDraftState(JZ)V
    .locals 2
    .param p0, "threadId"    # J
    .param p2, "hasDraft"    # Z

    .prologue
    .line 562
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 566
    :goto_0
    return-void

    .line 565
    :cond_0
    invoke-static {}, Lcom/motorola/messaging/conversation/DraftCache;->getInstance()Lcom/motorola/messaging/conversation/DraftCache;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/motorola/messaging/conversation/DraftCache;->setDraftState(JZ)V

    goto :goto_0
.end method

.method public static startDelete(Landroid/content/AsyncQueryHandler;IZJ)V
    .locals 6
    .param p0, "handler"    # Landroid/content/AsyncQueryHandler;
    .param p1, "token"    # I
    .param p2, "deleteAll"    # Z
    .param p3, "threadId"    # J

    .prologue
    const/4 v2, 0x0

    .line 710
    sget-object v0, Lcom/motorola/messaging/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 711
    .local v3, "uri":Landroid/net/Uri;
    if-eqz p2, :cond_0

    move-object v4, v2

    .local v4, "selection":Ljava/lang/String;
    :goto_0
    move-object v0, p0

    move v1, p1

    move-object v5, v2

    .line 712
    invoke-virtual/range {v0 .. v5}, Landroid/content/AsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 715
    invoke-static {}, Lcom/motorola/messaging/conversation/Conversation$Cache;->getInstance()Lcom/motorola/messaging/conversation/Conversation$Cache;

    move-result-object v1

    monitor-enter v1

    .line 716
    :try_start_0
    invoke-static {p3, p4}, Lcom/motorola/messaging/conversation/Conversation$Cache;->remove(J)Lcom/motorola/messaging/conversation/Conversation;

    .line 717
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 718
    return-void

    .line 711
    .end local v4    # "selection":Ljava/lang/String;
    :cond_0
    const-string v4, "locked=0"

    goto :goto_0

    .line 717
    .restart local v4    # "selection":Ljava/lang/String;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/String;)V
    .locals 8
    .param p0, "handler"    # Landroid/content/AsyncQueryHandler;
    .param p1, "token"    # I
    .param p2, "selection"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 694
    invoke-virtual {p0, p1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 695
    sget-object v3, Lcom/motorola/messaging/conversation/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    sget-object v4, Lcom/motorola/messaging/conversation/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    const-string v7, "date DESC"

    move-object v0, p0

    move v1, p1

    move-object v5, p2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    return-void
.end method

.method public static startQueryHasProtectedMessages(Landroid/content/AsyncQueryHandler;JILjava/lang/Object;)V
    .locals 8
    .param p0, "handler"    # Landroid/content/AsyncQueryHandler;
    .param p1, "threadId"    # J
    .param p3, "token"    # I
    .param p4, "cookie"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 905
    invoke-virtual {p0, p3}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 906
    sget-object v3, Lcom/motorola/messaging/provider/Telephony$MmsSms;->CONTENT_LOCKED_URI:Landroid/net/Uri;

    .line 907
    .local v3, "uri":Landroid/net/Uri;
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 908
    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 910
    :cond_0
    sget-object v4, Lcom/motorola/messaging/conversation/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    const-string v7, "date DESC"

    move-object v0, p0

    move v1, p3

    move-object v2, p4

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    return-void
.end method


# virtual methods
.method public clearThreadId()V
    .locals 5

    .prologue
    .line 491
    invoke-static {}, Lcom/motorola/messaging/conversation/Conversation$Cache;->getInstance()Lcom/motorola/messaging/conversation/Conversation$Cache;

    move-result-object v1

    monitor-enter v1

    .line 492
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 493
    :try_start_1
    sget-boolean v0, Lcom/motorola/messaging/conversation/Conversation;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 494
    const-string v0, "Conversation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearThreadId old threadId was: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/motorola/messaging/conversation/Conversation;->mThreadId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " now zero"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :cond_0
    iget-wide v2, p0, Lcom/motorola/messaging/conversation/Conversation;->mThreadId:J

    invoke-static {v2, v3}, Lcom/motorola/messaging/conversation/Conversation$Cache;->remove(J)Lcom/motorola/messaging/conversation/Conversation;

    .line 500
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/motorola/messaging/conversation/Conversation;->mThreadId:J

    .line 501
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 502
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 503
    return-void

    .line 501
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 502
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public ensureThreadId()J
    .locals 5

    .prologue
    .line 463
    sget-boolean v1, Lcom/motorola/messaging/conversation/Conversation;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 464
    const-string v1, "Conversation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ensureThreadId before: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/motorola/messaging/conversation/Conversation;->mThreadId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :cond_0
    iget-wide v1, p0, Lcom/motorola/messaging/conversation/Conversation;->mThreadId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    .line 468
    invoke-static {}, Lcom/motorola/messaging/conversation/Conversation$Cache;->getInstance()Lcom/motorola/messaging/conversation/Conversation$Cache;

    move-result-object v2

    monitor-enter v2

    .line 469
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 470
    const/4 v1, 0x1

    :try_start_1
    iget-object v3, p0, Lcom/motorola/messaging/conversation/Conversation;->mRecipients:Lcom/motorola/messaging/contact/ContactList;

    invoke-static {v1, v3}, Lcom/motorola/messaging/conversation/ConversationManager;->getOrCreateThreadId(ZLcom/motorola/messaging/contact/ContactList;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/motorola/messaging/conversation/Conversation;->mThreadId:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 472
    :try_start_2
    invoke-static {p0}, Lcom/motorola/messaging/conversation/Conversation$Cache;->put(Lcom/motorola/messaging/conversation/Conversation;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 476
    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 477
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 480
    :cond_1
    sget-boolean v1, Lcom/motorola/messaging/conversation/Conversation;->LOCAL_LOG:Z

    if-eqz v1, :cond_2

    .line 481
    const-string v1, "Conversation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ensureThreadId after: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/motorola/messaging/conversation/Conversation;->mThreadId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    :cond_2
    iget-wide v1, p0, Lcom/motorola/messaging/conversation/Conversation;->mThreadId:J

    return-wide v1

    .line 473
    :catch_0
    move-exception v0

    .line 474
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_5
    const-string v1, "Conversation"

    const-string v3, "Tried to add duplicate Conversation to Cache"

    invoke-static {v1, v3}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 476
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1

    .line 477
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 620
    if-nez p1, :cond_0

    .line 626
    :goto_0
    return v3

    .line 623
    :cond_0
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/motorola/messaging/conversation/Conversation;

    move-object v2, v0

    .line 624
    .local v2, "other":Lcom/motorola/messaging/conversation/Conversation;
    iget-object v4, p0, Lcom/motorola/messaging/conversation/Conversation;->mRecipients:Lcom/motorola/messaging/contact/ContactList;

    iget-object v5, v2, Lcom/motorola/messaging/conversation/Conversation;->mRecipients:Lcom/motorola/messaging/contact/ContactList;

    invoke-virtual {v4, v5}, Lcom/motorola/messaging/contact/ContactList;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 625
    .end local v2    # "other":Lcom/motorola/messaging/conversation/Conversation;
    :catch_0
    move-exception v1

    .line 626
    .local v1, "e":Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public declared-synchronized getDate()J
    .locals 2

    .prologue
    .line 573
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/motorola/messaging/conversation/Conversation;->mDate:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMessageCount()I
    .locals 1

    .prologue
    .line 581
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/messaging/conversation/Conversation;->mMessageCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRecipients()Lcom/motorola/messaging/contact/ContactList;
    .locals 1

    .prologue
    .line 537
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/messaging/conversation/Conversation;->mRecipients:Lcom/motorola/messaging/contact/ContactList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 588
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/messaging/conversation/Conversation;->mSnippet:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getThreadId()J
    .locals 2

    .prologue
    .line 433
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/motorola/messaging/conversation/Conversation;->mThreadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 409
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/motorola/messaging/conversation/Conversation;->mThreadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 410
    const/4 v0, 0x0

    .line 413
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/motorola/messaging/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/motorola/messaging/conversation/Conversation;->mThreadId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 409
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasAttachment()Z
    .locals 1

    .prologue
    .line 602
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/messaging/conversation/Conversation;->mHasAttachment:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasDraft()Z
    .locals 4

    .prologue
    .line 544
    iget-wide v0, p0, Lcom/motorola/messaging/conversation/Conversation;->mThreadId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 545
    const/4 v0, 0x0

    .line 548
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/motorola/messaging/conversation/DraftCache;->getInstance()Lcom/motorola/messaging/conversation/DraftCache;

    move-result-object v0

    iget-wide v1, p0, Lcom/motorola/messaging/conversation/Conversation;->mThreadId:J

    invoke-virtual {v0, v1, v2}, Lcom/motorola/messaging/conversation/DraftCache;->hasDraft(J)Z

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized hasError()Z
    .locals 1

    .prologue
    .line 609
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/messaging/conversation/Conversation;->mHasError:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasInvalidAddresses()Z
    .locals 1

    .prologue
    .line 1240
    iget-boolean v0, p0, Lcom/motorola/messaging/conversation/Conversation;->mHasInvalidAddresses:Z

    return v0
.end method

.method public hasOnlineAlbumRecipients()Z
    .locals 3

    .prologue
    .line 1248
    iget-object v2, p0, Lcom/motorola/messaging/conversation/Conversation;->mRecipients:Lcom/motorola/messaging/contact/ContactList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/contact/Contact;

    .line 1249
    .local v0, "contact":Lcom/motorola/messaging/contact/Contact;
    invoke-virtual {v0}, Lcom/motorola/messaging/contact/Contact;->isOnlineAlbum()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1250
    const/4 v2, 0x1

    .line 1253
    .end local v0    # "contact":Lcom/motorola/messaging/contact/Contact;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public declared-synchronized hasUnreadMessages()Z
    .locals 1

    .prologue
    .line 595
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/messaging/conversation/Conversation;->mHasUnreadMessages:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasValidRecipients()Z
    .locals 1

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/motorola/messaging/conversation/Conversation;->mRecipients:Lcom/motorola/messaging/contact/ContactList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/messaging/conversation/Conversation;->mHasInvalidAddresses:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/motorola/messaging/conversation/Conversation;->mRecipients:Lcom/motorola/messaging/contact/ContactList;

    invoke-virtual {v0}, Lcom/motorola/messaging/contact/ContactList;->hashCode()I

    move-result v0

    return v0
.end method

.method public declared-synchronized markAsRead(ZZ)V
    .locals 6
    .param p1, "dontMarkIfHasReadReports"    # Z
    .param p2, "block"    # Z

    .prologue
    .line 276
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/messaging/conversation/Conversation;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 277
    .local v2, "threadUri":Landroid/net/Uri;
    iget-wide v4, p0, Lcom/motorola/messaging/conversation/Conversation;->mThreadId:J

    .line 279
    .local v4, "threadId":J
    new-instance v0, Lcom/motorola/messaging/conversation/Conversation$3;

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/motorola/messaging/conversation/Conversation$3;-><init>(Lcom/motorola/messaging/conversation/Conversation;Landroid/net/Uri;ZJ)V

    .line 319
    .local v0, "runnable":Ljava/lang/Runnable;
    if-eqz p2, :cond_0

    .line 320
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    :goto_0
    monitor-exit p0

    return-void

    .line 322
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v1

    const-string v3, "mark_as_read"

    invoke-virtual {v1, v0, v3}, Lcom/motorola/messaging/concurrent/TaskManager;->runLowPriorityTask(Ljava/lang/Runnable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 276
    .end local v0    # "runnable":Ljava/lang/Runnable;
    .end local v2    # "threadUri":Landroid/net/Uri;
    .end local v4    # "threadId":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setDraftState(Z)V
    .locals 2
    .param p1, "hasDraft"    # Z

    .prologue
    .line 555
    iget-wide v0, p0, Lcom/motorola/messaging/conversation/Conversation;->mThreadId:J

    invoke-static {v0, v1, p1}, Lcom/motorola/messaging/conversation/Conversation;->setDraftState(JZ)V

    .line 556
    return-void
.end method

.method public setRecipients(Lcom/motorola/messaging/contact/ContactList;)V
    .locals 4
    .param p1, "list"    # Lcom/motorola/messaging/contact/ContactList;

    .prologue
    .line 522
    invoke-static {}, Lcom/motorola/messaging/conversation/Conversation$Cache;->getInstance()Lcom/motorola/messaging/conversation/Conversation$Cache;

    move-result-object v1

    monitor-enter v1

    .line 523
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 524
    :try_start_1
    invoke-static {p0, p1}, Lcom/motorola/messaging/conversation/Conversation$Cache;->changeRecipients(Lcom/motorola/messaging/conversation/Conversation;Lcom/motorola/messaging/contact/ContactList;)V

    .line 525
    invoke-direct {p0}, Lcom/motorola/messaging/conversation/Conversation;->checkForInvalidAddresses()V

    .line 528
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/motorola/messaging/conversation/Conversation;->mThreadId:J

    .line 529
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 530
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 531
    return-void

    .line 529
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 530
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public setThreadId(J)V
    .locals 5
    .param p1, "threadId"    # J

    .prologue
    .line 440
    invoke-static {}, Lcom/motorola/messaging/conversation/Conversation$Cache;->getInstance()Lcom/motorola/messaging/conversation/Conversation$Cache;

    move-result-object v2

    monitor-enter v2

    .line 441
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 442
    const-wide/16 v3, 0x0

    cmp-long v1, p1, v3

    if-gez v1, :cond_0

    .line 443
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can not set negative thread id."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 452
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 453
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 445
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Lcom/motorola/messaging/conversation/Conversation;->clearThreadId()V

    .line 446
    iput-wide p1, p0, Lcom/motorola/messaging/conversation/Conversation;->mThreadId:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 448
    :try_start_4
    invoke-static {p0}, Lcom/motorola/messaging/conversation/Conversation$Cache;->put(Lcom/motorola/messaging/conversation/Conversation;)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 452
    :goto_0
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 453
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 454
    return-void

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_7
    const-string v1, "Conversation"

    const-string v3, "Tried to add duplicate Conversation to Cache"

    invoke-static {v1, v3}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 637
    const-string v0, "[%s] (tid %d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/motorola/messaging/conversation/Conversation;->mRecipients:Lcom/motorola/messaging/contact/ContactList;

    invoke-virtual {v3}, Lcom/motorola/messaging/contact/ContactList;->serialize()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/motorola/messaging/conversation/Conversation;->mThreadId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateCount(I)V
    .locals 0
    .param p1, "msgCount"    # I

    .prologue
    .line 1261
    iput p1, p0, Lcom/motorola/messaging/conversation/Conversation;->mMessageCount:I

    .line 1262
    return-void
.end method
