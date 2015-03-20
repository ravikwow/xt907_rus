.class public abstract Lcom/motorola/messaging/composer/MessageItem;
.super Ljava/lang/Object;
.source "MessageItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/composer/MessageItem$MessageItemListener;,
        Lcom/motorola/messaging/composer/MessageItem$Cache;,
        Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;,
        Lcom/motorola/messaging/composer/MessageItem$SMSMessageItem;,
        Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;
    }
.end annotation


# static fields
.field protected static final LOCAL_LOG:Z

.field private static mCache:Lcom/motorola/messaging/composer/MessageItem$Cache;

.field private static mDrmProtectedString:Ljava/lang/String;

.field private static mLoadingString:Ljava/lang/String;

.field private static final mSearchTextBackgroundSpan:Landroid/text/style/BackgroundColorSpan;

.field private static final mSearchTextForegroundSpan:Landroid/text/style/ForegroundColorSpan;

.field private static mSenderSelfString:Ljava/lang/String;

.field private static mSizeString:Ljava/lang/String;

.field private static final mSubjectSpan:Landroid/text/style/StyleSpan;

.field private static mUnsupportedMmsString:Ljava/lang/String;

.field private static mUrgentSpan:Landroid/text/style/ImageSpan;


# instance fields
.field protected mAddress:Ljava/lang/String;

.field protected mBody:Ljava/lang/CharSequence;

.field protected mBoxId:I

.field protected mContactName:Ljava/lang/String;

.field protected final mContext:Landroid/content/Context;

.field protected mDeliveryStatus:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

.field mDownloadManager:Lcom/motorola/messaging/transaction/DownloadManager;

.field private mFinishLoadingRunnable:Ljava/lang/Runnable;

.field protected mHighlight:Ljava/util/regex/Pattern;

.field protected mIsLoading:Z

.field protected mIsProtected:Z

.field protected mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/motorola/messaging/composer/MessageItem$MessageItemListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mMessageGroupType:I

.field protected final mMsgId:J

.field protected mPriority:I

.field protected mRawDateSent:J

.field protected mRawTimeStamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 76
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    sput-boolean v0, Lcom/motorola/messaging/composer/MessageItem;->LOCAL_LOG:Z

    .line 104
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v0, Lcom/motorola/messaging/composer/MessageItem;->mSearchTextForegroundSpan:Landroid/text/style/ForegroundColorSpan;

    .line 105
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    const v1, -0xb27f50

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    sput-object v0, Lcom/motorola/messaging/composer/MessageItem;->mSearchTextBackgroundSpan:Landroid/text/style/BackgroundColorSpan;

    .line 108
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Lcom/motorola/messaging/composer/MessageItem;->mSubjectSpan:Landroid/text/style/StyleSpan;

    .line 162
    new-instance v0, Lcom/motorola/messaging/composer/MessageItem$Cache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/messaging/composer/MessageItem$Cache;-><init>(Lcom/motorola/messaging/composer/MessageItem$1;)V

    sput-object v0, Lcom/motorola/messaging/composer/MessageItem;->mCache:Lcom/motorola/messaging/composer/MessageItem$Cache;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/regex/Pattern;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "highlight"    # Ljava/util/regex/Pattern;

    .prologue
    const/4 v2, 0x1

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    sget-object v0, Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;->NONE:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    iput-object v0, p0, Lcom/motorola/messaging/composer/MessageItem;->mDeliveryStatus:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/messaging/composer/MessageItem;->mMessageGroupType:I

    .line 165
    new-instance v0, Lcom/motorola/messaging/composer/MessageItem$1;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/composer/MessageItem$1;-><init>(Lcom/motorola/messaging/composer/MessageItem;)V

    iput-object v0, p0, Lcom/motorola/messaging/composer/MessageItem;->mFinishLoadingRunnable:Ljava/lang/Runnable;

    .line 315
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/composer/MessageItem;->mContext:Landroid/content/Context;

    .line 316
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/messaging/composer/MessageItem;->mMsgId:J

    .line 317
    iput-boolean v2, p0, Lcom/motorola/messaging/composer/MessageItem;->mIsLoading:Z

    .line 318
    iput-object p3, p0, Lcom/motorola/messaging/composer/MessageItem;->mHighlight:Ljava/util/regex/Pattern;

    .line 319
    invoke-static {}, Lcom/motorola/messaging/transaction/TransactionManager;->getInstance()Lcom/motorola/messaging/transaction/TransactionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/messaging/transaction/TransactionManager;->getDownloadManager()Lcom/motorola/messaging/transaction/DownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/composer/MessageItem;->mDownloadManager:Lcom/motorola/messaging/transaction/DownloadManager;

    .line 320
    sget-object v0, Lcom/motorola/messaging/composer/MessageItem;->mSenderSelfString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 321
    invoke-static {p1}, Lcom/motorola/messaging/composer/MessageItem;->initStaticFields(Landroid/content/Context;)V

    .line 323
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/regex/Pattern;Lcom/motorola/messaging/composer/MessageItem$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Landroid/database/Cursor;
    .param p3, "x2"    # Ljava/util/regex/Pattern;
    .param p4, "x3"    # Lcom/motorola/messaging/composer/MessageItem$1;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/messaging/composer/MessageItem;-><init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/regex/Pattern;)V

    return-void
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/motorola/messaging/composer/MessageItem;->mDrmProtectedString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/motorola/messaging/composer/MessageItem;->mUnsupportedMmsString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200()Landroid/text/style/StyleSpan;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/motorola/messaging/composer/MessageItem;->mSubjectSpan:Landroid/text/style/StyleSpan;

    return-object v0
.end method

.method static synthetic access$200()Lcom/motorola/messaging/composer/MessageItem$Cache;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/motorola/messaging/composer/MessageItem;->mCache:Lcom/motorola/messaging/composer/MessageItem$Cache;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/motorola/messaging/composer/MessageItem;->mSenderSelfString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/motorola/messaging/composer/MessageItem;->mLoadingString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/motorola/messaging/composer/MessageItem;->mSizeString:Ljava/lang/String;

    return-object v0
.end method

.method public static clearCache()V
    .locals 2

    .prologue
    .line 308
    sget-boolean v0, Lcom/motorola/messaging/composer/MessageItem;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 309
    const-string v0, "MessageItem"

    const-string v1, "Clearing cache"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :cond_0
    sget-object v0, Lcom/motorola/messaging/composer/MessageItem;->mCache:Lcom/motorola/messaging/composer/MessageItem$Cache;

    invoke-virtual {v0}, Lcom/motorola/messaging/composer/MessageItem$Cache;->clear()V

    .line 312
    return-void
.end method

.method public static clearCache(J)V
    .locals 1
    .param p0, "key"    # J

    .prologue
    .line 301
    sget-object v0, Lcom/motorola/messaging/composer/MessageItem;->mCache:Lcom/motorola/messaging/composer/MessageItem$Cache;

    invoke-virtual {v0, p0, p1}, Lcom/motorola/messaging/composer/MessageItem$Cache;->removeItem(J)Lcom/motorola/messaging/composer/MessageItem;

    .line 302
    return-void
.end method

.method public static clearCache(JLjava/lang/String;)V
    .locals 1
    .param p0, "msgId"    # J
    .param p2, "msgType"    # Ljava/lang/String;

    .prologue
    .line 293
    sget-object v0, Lcom/motorola/messaging/composer/MessageItem;->mCache:Lcom/motorola/messaging/composer/MessageItem$Cache;

    invoke-virtual {v0, p0, p1, p2}, Lcom/motorola/messaging/composer/MessageItem$Cache;->removeItem(JLjava/lang/String;)Lcom/motorola/messaging/composer/MessageItem;

    .line 294
    return-void
.end method

.method private getListener()Lcom/motorola/messaging/composer/MessageItem$MessageItemListener;
    .locals 2

    .prologue
    .line 623
    const/4 v0, 0x0

    .line 624
    .local v0, "listener":Lcom/motorola/messaging/composer/MessageItem$MessageItemListener;
    iget-object v1, p0, Lcom/motorola/messaging/composer/MessageItem;->mListener:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 625
    iget-object v1, p0, Lcom/motorola/messaging/composer/MessageItem;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcom/motorola/messaging/composer/MessageItem$MessageItemListener;
    check-cast v0, Lcom/motorola/messaging/composer/MessageItem$MessageItemListener;

    .line 627
    .restart local v0    # "listener":Lcom/motorola/messaging/composer/MessageItem$MessageItemListener;
    :cond_0
    return-object v0
.end method

.method public static getMessageItem(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/regex/Pattern;)Lcom/motorola/messaging/composer/MessageItem;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "highlight"    # Ljava/util/regex/Pattern;

    .prologue
    .line 185
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 187
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, "msgType":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 189
    .local v1, "msgId":J
    sget-object v5, Lcom/motorola/messaging/composer/MessageItem;->mCache:Lcom/motorola/messaging/composer/MessageItem$Cache;

    invoke-virtual {v5, v1, v2, v4}, Lcom/motorola/messaging/composer/MessageItem$Cache;->getItem(JLjava/lang/String;)Lcom/motorola/messaging/composer/MessageItem;

    move-result-object v3

    .line 192
    .local v3, "msgItem":Lcom/motorola/messaging/composer/MessageItem;
    if-eqz v3, :cond_0

    .line 193
    invoke-static {v3, p1}, Lcom/motorola/messaging/composer/MessageItem;->isCacheEntryValid(Lcom/motorola/messaging/composer/MessageItem;Landroid/database/Cursor;)Z

    move-result v0

    .line 195
    .local v0, "isValid":Z
    if-nez v0, :cond_0

    .line 196
    sget-object v5, Lcom/motorola/messaging/composer/MessageItem;->mCache:Lcom/motorola/messaging/composer/MessageItem$Cache;

    invoke-virtual {v5, v1, v2, v4}, Lcom/motorola/messaging/composer/MessageItem$Cache;->removeItem(JLjava/lang/String;)Lcom/motorola/messaging/composer/MessageItem;

    .line 197
    invoke-direct {v3}, Lcom/motorola/messaging/composer/MessageItem;->getListener()Lcom/motorola/messaging/composer/MessageItem$MessageItemListener;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/motorola/messaging/composer/MessageItem;->clearListener(Lcom/motorola/messaging/composer/MessageItem$MessageItemListener;)V

    .line 198
    const/4 v3, 0x0

    .line 199
    const-string v5, "MessageItem"

    const-string v6, "Invalid cache entry"

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .end local v0    # "isValid":Z
    :cond_0
    sget-boolean v5, Lcom/motorola/messaging/composer/MessageItem;->LOCAL_LOG:Z

    if-eqz v5, :cond_1

    .line 204
    const-string v5, "MessageItem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getMessageItem, id ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_1
    if-nez v3, :cond_4

    .line 208
    const-string v5, "mms"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 209
    new-instance v3, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;

    .end local v3    # "msgItem":Lcom/motorola/messaging/composer/MessageItem;
    invoke-direct {v3, p0, p1, p2}, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;-><init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/regex/Pattern;)V

    .line 210
    .restart local v3    # "msgItem":Lcom/motorola/messaging/composer/MessageItem;
    sget-object v5, Lcom/motorola/messaging/composer/MessageItem;->mCache:Lcom/motorola/messaging/composer/MessageItem$Cache;

    neg-long v6, v1

    invoke-virtual {v5, v6, v7, v3}, Lcom/motorola/messaging/composer/MessageItem$Cache;->putItem(JLcom/motorola/messaging/composer/MessageItem;)V

    .line 218
    :goto_0
    invoke-virtual {v3}, Lcom/motorola/messaging/composer/MessageItem;->finishLoading()V

    .line 224
    :goto_1
    return-object v3

    .line 211
    :cond_2
    const-string v5, "sms"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 212
    new-instance v3, Lcom/motorola/messaging/composer/MessageItem$SMSMessageItem;

    .end local v3    # "msgItem":Lcom/motorola/messaging/composer/MessageItem;
    invoke-direct {v3, p0, p1, p2}, Lcom/motorola/messaging/composer/MessageItem$SMSMessageItem;-><init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/regex/Pattern;)V

    .line 213
    .restart local v3    # "msgItem":Lcom/motorola/messaging/composer/MessageItem;
    sget-object v5, Lcom/motorola/messaging/composer/MessageItem;->mCache:Lcom/motorola/messaging/composer/MessageItem$Cache;

    invoke-virtual {v5, v1, v2, v3}, Lcom/motorola/messaging/composer/MessageItem$Cache;->putItem(JLcom/motorola/messaging/composer/MessageItem;)V

    goto :goto_0

    .line 215
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "msgType must be either sms or mms"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 220
    :cond_4
    invoke-virtual {v3, p1}, Lcom/motorola/messaging/composer/MessageItem;->update(Landroid/database/Cursor;)V

    .line 221
    invoke-direct {v3, p2}, Lcom/motorola/messaging/composer/MessageItem;->updateHighlight(Ljava/util/regex/Pattern;)V

    goto :goto_1
.end method

.method private static initStaticFields(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 326
    const v0, 0x7f0b0009

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/composer/MessageItem;->mSenderSelfString:Ljava/lang/String;

    .line 327
    const v0, 0x7f0b01a1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/composer/MessageItem;->mLoadingString:Ljava/lang/String;

    .line 328
    const v0, 0x7f0b00b4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/composer/MessageItem;->mSizeString:Ljava/lang/String;

    .line 329
    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/composer/MessageItem;->mDrmProtectedString:Ljava/lang/String;

    .line 330
    const v0, 0x7f0b0117

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/composer/MessageItem;->mUnsupportedMmsString:Ljava/lang/String;

    .line 331
    new-instance v0, Landroid/text/style/ImageSpan;

    const v1, 0x7f020049

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    sput-object v0, Lcom/motorola/messaging/composer/MessageItem;->mUrgentSpan:Landroid/text/style/ImageSpan;

    .line 332
    return-void
.end method

.method private static isCacheEntryValid(Lcom/motorola/messaging/composer/MessageItem;Landroid/database/Cursor;)Z
    .locals 6
    .param p0, "msgItem"    # Lcom/motorola/messaging/composer/MessageItem;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/16 v5, 0x11

    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 234
    const-string v2, "sms"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 235
    invoke-virtual {p0}, Lcom/motorola/messaging/composer/MessageItem;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 236
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 251
    :cond_0
    :goto_0
    return v0

    .line 239
    :cond_1
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eq v1, v2, :cond_0

    :cond_2
    move v0, v1

    .line 251
    goto :goto_0

    .line 242
    :cond_3
    const-string v2, "mms"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 243
    invoke-virtual {p0}, Lcom/motorola/messaging/composer/MessageItem;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 244
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eq v1, v2, :cond_2

    goto :goto_0

    .line 247
    :cond_4
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v1, v2, :cond_2

    goto :goto_0
.end method

.method public static onLocaleChanged(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 283
    invoke-static {}, Lcom/motorola/messaging/composer/MessageItem;->clearCache()V

    .line 284
    invoke-static {p0}, Lcom/motorola/messaging/composer/MessageItem;->initStaticFields(Landroid/content/Context;)V

    .line 285
    return-void
.end method

.method private updateHighlight(Ljava/util/regex/Pattern;)V
    .locals 1
    .param p1, "highlight"    # Ljava/util/regex/Pattern;

    .prologue
    .line 691
    iget-object v0, p0, Lcom/motorola/messaging/composer/MessageItem;->mHighlight:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_2

    .line 692
    if-nez p1, :cond_1

    .line 693
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/messaging/composer/MessageItem;->buildBody(Ljava/util/regex/Pattern;)V

    .line 694
    invoke-virtual {p0}, Lcom/motorola/messaging/composer/MessageItem;->updateListener()V

    .line 703
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/motorola/messaging/composer/MessageItem;->mHighlight:Ljava/util/regex/Pattern;

    .line 704
    return-void

    .line 695
    :cond_1
    iget-object v0, p0, Lcom/motorola/messaging/composer/MessageItem;->mHighlight:Ljava/util/regex/Pattern;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 696
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/composer/MessageItem;->buildBody(Ljava/util/regex/Pattern;)V

    .line 697
    invoke-virtual {p0}, Lcom/motorola/messaging/composer/MessageItem;->updateListener()V

    goto :goto_0

    .line 699
    :cond_2
    if-eqz p1, :cond_0

    .line 700
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/composer/MessageItem;->buildBody(Ljava/util/regex/Pattern;)V

    .line 701
    invoke-virtual {p0}, Lcom/motorola/messaging/composer/MessageItem;->updateListener()V

    goto :goto_0
.end method


# virtual methods
.method protected addUrgentMark(Landroid/text/SpannableStringBuilder;)V
    .locals 4
    .param p1, "body"    # Landroid/text/SpannableStringBuilder;

    .prologue
    const/4 v3, 0x0

    .line 729
    invoke-virtual {p0}, Lcom/motorola/messaging/composer/MessageItem;->isUrgent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    const-string v0, "x "

    invoke-virtual {p1, v3, v0}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 731
    sget-object v0, Lcom/motorola/messaging/composer/MessageItem;->mUrgentSpan:Landroid/text/style/ImageSpan;

    const/4 v1, 0x1

    const/16 v2, 0x21

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 733
    :cond_0
    return-void
.end method

.method protected abstract blockUI()Z
.end method

.method protected abstract buildBody(Ljava/util/regex/Pattern;)V
.end method

.method protected cleanBody(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 673
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 674
    const-string v0, "(\r\n)+"

    const-string v1, "\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 675
    const-string v0, "\r+?"

    const-string v1, "\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 676
    const-string v0, "\n+?"

    const-string v1, "\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 678
    :cond_0
    return-object p1
.end method

.method public declared-synchronized clearListener(Lcom/motorola/messaging/composer/MessageItem$MessageItemListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/motorola/messaging/composer/MessageItem$MessageItemListener;

    .prologue
    .line 644
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/motorola/messaging/composer/MessageItem;->getListener()Lcom/motorola/messaging/composer/MessageItem$MessageItemListener;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 645
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/messaging/composer/MessageItem;->mListener:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    :cond_0
    monitor-exit p0

    return-void

    .line 644
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract doFinishLoading()V
.end method

.method protected finishLoading()V
    .locals 3

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/motorola/messaging/composer/MessageItem;->blockUI()Z

    move-result v0

    if-nez v0, :cond_0

    .line 660
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/composer/MessageItem;->mFinishLoadingRunnable:Ljava/lang/Runnable;

    const-string v2, "MessageItem_finish_load"

    invoke-virtual {v0, v1, v2}, Lcom/motorola/messaging/concurrent/TaskManager;->runBackgroundTask(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/motorola/messaging/concurrent/TaskManager$Task;

    .line 664
    :goto_0
    return-void

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/composer/MessageItem;->mFinishLoadingRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method protected formatBody(Ljava/lang/CharSequence;Ljava/util/regex/Pattern;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "body"    # Ljava/lang/CharSequence;
    .param p2, "highlight"    # Ljava/util/regex/Pattern;

    .prologue
    const/4 v6, 0x0

    .line 709
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 710
    .local v0, "buf":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Lcom/motorola/messaging/composer/SmileyParser;->getInstance()Lcom/motorola/messaging/composer/SmileyParser;

    move-result-object v2

    .line 711
    .local v2, "parser":Lcom/motorola/messaging/composer/SmileyParser;
    invoke-virtual {v2, p1}, Lcom/motorola/messaging/composer/SmileyParser;->parseSmileysFromText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 712
    sget-object v3, Lcom/motorola/messaging/composer/MessageItem;->mSearchTextForegroundSpan:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 713
    sget-object v3, Lcom/motorola/messaging/composer/MessageItem;->mSearchTextBackgroundSpan:Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 717
    if-eqz p2, :cond_0

    .line 718
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 719
    .local v1, "m":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 720
    sget-object v3, Lcom/motorola/messaging/composer/MessageItem;->mSearchTextForegroundSpan:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 721
    sget-object v3, Lcom/motorola/messaging/composer/MessageItem;->mSearchTextBackgroundSpan:Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 725
    .end local v1    # "m":Ljava/util/regex/Matcher;
    :cond_0
    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/motorola/messaging/composer/MessageItem;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/motorola/messaging/composer/MessageItem;->mBody:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCallbackNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 468
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeliveryStatus()Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/motorola/messaging/composer/MessageItem;->mDeliveryStatus:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    return-object v0
.end method

.method public getFolder()I
    .locals 1

    .prologue
    .line 405
    iget v0, p0, Lcom/motorola/messaging/composer/MessageItem;->mBoxId:I

    return v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/motorola/messaging/composer/MessageItem;->mContactName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 496
    iget-wide v0, p0, Lcom/motorola/messaging/composer/MessageItem;->mMsgId:J

    return-wide v0
.end method

.method public getMmsMediaType()I
    .locals 2

    .prologue
    .line 557
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only Valid For MMS Messages"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMmsUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 566
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only Valid For MMS Messages"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRawBody()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/motorola/messaging/composer/MessageItem;->isUrgent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 380
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 381
    .local v0, "buf":Landroid/text/SpannableStringBuilder;
    iget-object v1, p0, Lcom/motorola/messaging/composer/MessageItem;->mBody:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 382
    sget-object v1, Lcom/motorola/messaging/composer/MessageItem;->mUrgentSpan:Landroid/text/style/ImageSpan;

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 383
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/motorola/messaging/composer/MessageItem;->mBody:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 386
    .end local v0    # "buf":Landroid/text/SpannableStringBuilder;
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/motorola/messaging/composer/MessageItem;->mBody:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getRawPriority()I
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Lcom/motorola/messaging/composer/MessageItem;->mPriority:I

    return v0
.end method

.method public abstract getRawTimeStamp()J
.end method

.method public abstract getSize()I
.end method

.method public getSmilModel()Lcom/motorola/messaging/model/SmilModel;
    .locals 2

    .prologue
    .line 548
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only Valid For MMS Messages"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 2

    .prologue
    .line 347
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only Valid For MMS Messages"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .locals 7

    .prologue
    .line 413
    iget-wide v1, p0, Lcom/motorola/messaging/composer/MessageItem;->mRawTimeStamp:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 414
    const-string v1, ""

    .line 422
    :goto_0
    return-object v1

    .line 417
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/messaging/composer/MessageItem;->getTimestampStrId()I

    move-result v0

    .line 418
    .local v0, "timeFormatStringId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 419
    iget-object v1, p0, Lcom/motorola/messaging/composer/MessageItem;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/motorola/messaging/composer/MessageItem;->mContext:Landroid/content/Context;

    iget-wide v5, p0, Lcom/motorola/messaging/composer/MessageItem;->mRawTimeStamp:J

    invoke-static {v4, v5, v6}, Lcom/motorola/messaging/util/MessageUtils;->formatLongTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 422
    :cond_1
    iget-object v1, p0, Lcom/motorola/messaging/composer/MessageItem;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/motorola/messaging/composer/MessageItem;->mRawTimeStamp:J

    invoke-static {v1, v2, v3}, Lcom/motorola/messaging/util/MessageUtils;->formatLongTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected getTimestampStrId()I
    .locals 1

    .prologue
    .line 570
    invoke-virtual {p0}, Lcom/motorola/messaging/composer/MessageItem;->isSent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    const v0, 0x7f0b0012

    .line 576
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public abstract getType()I
.end method

.method public abstract getTypeString()Ljava/lang/String;
.end method

.method public hasMultipleRecipients()Z
    .locals 1

    .prologue
    .line 450
    const/4 v0, 0x0

    return v0
.end method

.method public isDownloaded()Z
    .locals 1

    .prologue
    .line 526
    const/4 v0, 0x1

    return v0
.end method

.method public isDownloading()Z
    .locals 2

    .prologue
    .line 540
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only Valid For MMS Messages"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract isFailed()Z
.end method

.method public abstract isIncoming()Z
.end method

.method public isIndividualGroupMessage()Z
    .locals 1

    .prologue
    .line 459
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized isLoading()Z
    .locals 1

    .prologue
    .line 654
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/messaging/composer/MessageItem;->mIsLoading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isOutgoing()Z
    .locals 1

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/motorola/messaging/composer/MessageItem;->isOutgoingNotSent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/messaging/composer/MessageItem;->isSent()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isOutgoingNotSent()Z
.end method

.method public isProtected()Z
    .locals 1

    .prologue
    .line 518
    iget-boolean v0, p0, Lcom/motorola/messaging/composer/MessageItem;->mIsProtected:Z

    return v0
.end method

.method public isSendInProgress()Z
    .locals 1

    .prologue
    .line 598
    invoke-virtual {p0}, Lcom/motorola/messaging/composer/MessageItem;->isFailed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/messaging/composer/MessageItem;->isOutgoingNotSent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isSent()Z
.end method

.method protected abstract isUrgent()Z
.end method

.method public setDownloadState(I)V
    .locals 0
    .param p1, "downloadState"    # I

    .prologue
    .line 533
    return-void
.end method

.method public declared-synchronized setListener(Lcom/motorola/messaging/composer/MessageItem$MessageItemListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/motorola/messaging/composer/MessageItem$MessageItemListener;

    .prologue
    .line 635
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 636
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/messaging/composer/MessageItem;->mListener:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 638
    :cond_0
    monitor-exit p0

    return-void

    .line 635
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract update(Landroid/database/Cursor;)V
.end method

.method protected declared-synchronized updateListener()V
    .locals 2

    .prologue
    .line 682
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/motorola/messaging/composer/MessageItem;->getListener()Lcom/motorola/messaging/composer/MessageItem$MessageItemListener;

    move-result-object v0

    .line 683
    .local v0, "listener":Lcom/motorola/messaging/composer/MessageItem$MessageItemListener;
    if-eqz v0, :cond_0

    .line 684
    invoke-interface {v0, p0}, Lcom/motorola/messaging/composer/MessageItem$MessageItemListener;->onUpdate(Lcom/motorola/messaging/composer/MessageItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    :cond_0
    monitor-exit p0

    return-void

    .line 682
    .end local v0    # "listener":Lcom/motorola/messaging/composer/MessageItem$MessageItemListener;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
