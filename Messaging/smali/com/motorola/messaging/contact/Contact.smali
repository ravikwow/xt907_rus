.class public Lcom/motorola/messaging/contact/Contact;
.super Ljava/lang/Object;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/contact/Contact$FetchContactRequest;,
        Lcom/motorola/messaging/contact/Contact$Cache;,
        Lcom/motorola/messaging/contact/Contact$ContactUpdateListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final LOCAL_LOG:Z

.field protected static mDefaultAvatar:Landroid/graphics/Bitmap;

.field protected static mDefaultHighResAvatar:Landroid/graphics/Bitmap;

.field protected static mDefaultOutgoingAvatar:Landroid/graphics/Bitmap;

.field protected static mSelfAvatar:Landroid/graphics/Bitmap;

.field private static mUnknownLabel:Ljava/lang/String;

.field private static sTaskStack:Lcom/motorola/messaging/concurrent/TaskStack;


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mAddressIsModified:Z

.field private mAvatar:Landroid/graphics/Bitmap;

.field private mContactId:J

.field private mContactTableId:J

.field private mFormattedAddress:Ljava/lang/String;

.field private mIsAnonymous:Z

.field private mIsFixedDialContact:Z

.field private mIsLocalNumber:Z

.field private mIsOnlineAlbum:Z

.field private mIsShortCode:Ljava/lang/Boolean;

.field private mIsStale:Z

.field private mLabel:Ljava/lang/String;

.field private final mListeners:Lcom/motorola/messaging/util/WeakHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/messaging/util/WeakHashSet",
            "<",
            "Lcom/motorola/messaging/contact/Contact$ContactUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mNameAndAddress:Ljava/lang/String;

.field private mRecipientId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEBUG_ALL:Z

    sput-boolean v0, Lcom/motorola/messaging/contact/Contact;->DEBUG:Z

    .line 31
    sget-boolean v0, Lcom/motorola/messaging/contact/Contact;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/contact/Contact;->LOCAL_LOG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/motorola/messaging/util/WeakHashSet;

    invoke-direct {v0}, Lcom/motorola/messaging/util/WeakHashSet;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/contact/Contact;->mListeners:Lcom/motorola/messaging/util/WeakHashSet;

    .line 68
    iput-boolean v1, p0, Lcom/motorola/messaging/contact/Contact;->mIsFixedDialContact:Z

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/messaging/contact/Contact;->mName:Ljava/lang/String;

    .line 84
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/contact/Contact;->setAddress(Ljava/lang/String;)V

    .line 85
    iput-boolean v1, p0, Lcom/motorola/messaging/contact/Contact;->mAddressIsModified:Z

    .line 86
    sget-object v0, Lcom/motorola/messaging/contact/Contact;->mUnknownLabel:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/messaging/contact/Contact;->mLabel:Ljava/lang/String;

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/messaging/contact/Contact;->mIsStale:Z

    .line 88
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/motorola/messaging/contact/Contact$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/motorola/messaging/contact/Contact$1;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/motorola/messaging/contact/Contact;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/messaging/contact/Contact;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/contact/Contact;

    .prologue
    .line 28
    invoke-static {p0}, Lcom/motorola/messaging/contact/Contact;->updateContact(Lcom/motorola/messaging/contact/Contact;)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-static {p0}, Lcom/motorola/messaging/contact/Contact;->loadSelfAvatarData(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/messaging/contact/Contact;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/contact/Contact;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/motorola/messaging/contact/Contact;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/motorola/messaging/contact/Contact;->LOCAL_LOG:Z

    return v0
.end method

.method private static asyncLoadSelfAvatar(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 640
    sget-boolean v1, Lcom/motorola/messaging/contact/Contact;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 641
    const-string v1, "Contact"

    const-string v2, "asyncLoadSelfAvatar"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    :cond_0
    new-instance v0, Lcom/motorola/messaging/contact/Contact$2;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/contact/Contact$2;-><init>(Landroid/content/Context;)V

    .line 650
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v1

    const-string v2, "load_self_avatar"

    invoke-virtual {v1, v0, v2}, Lcom/motorola/messaging/concurrent/TaskManager;->runBackgroundTask(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/motorola/messaging/concurrent/TaskManager$Task;

    .line 651
    return-void
.end method

.method private static asyncUpdateContact(Lcom/motorola/messaging/contact/Contact;Z)V
    .locals 4
    .param p0, "c"    # Lcom/motorola/messaging/contact/Contact;
    .param p1, "canBlock"    # Z

    .prologue
    .line 327
    if-nez p0, :cond_0

    .line 346
    :goto_0
    return-void

    .line 331
    :cond_0
    sget-boolean v1, Lcom/motorola/messaging/contact/Contact;->LOCAL_LOG:Z

    if-eqz v1, :cond_1

    .line 332
    const-string v1, "Contact"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "asyncUpdateContact for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/motorola/messaging/contact/Contact;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_1
    new-instance v0, Lcom/motorola/messaging/contact/Contact$1;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/contact/Contact$1;-><init>(Lcom/motorola/messaging/contact/Contact;)V

    .line 341
    .local v0, "r":Ljava/lang/Runnable;
    if-eqz p1, :cond_2

    .line 342
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 344
    :cond_2
    sget-object v1, Lcom/motorola/messaging/contact/Contact;->sTaskStack:Lcom/motorola/messaging/concurrent/TaskStack;

    new-instance v2, Lcom/motorola/messaging/contact/Contact$FetchContactRequest;

    iget-object v3, p0, Lcom/motorola/messaging/contact/Contact;->mAddress:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lcom/motorola/messaging/contact/Contact$FetchContactRequest;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/motorola/messaging/concurrent/TaskStack;->push(Lcom/motorola/messaging/concurrent/TaskStack$TaskRequest;)V

    goto :goto_0
.end method

.method public static createContact(Ljava/lang/String;Z)Lcom/motorola/messaging/contact/Contact;
    .locals 1
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "canBlock"    # Z

    .prologue
    .line 98
    new-instance v0, Lcom/motorola/messaging/contact/Contact;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/contact/Contact;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, "contact":Lcom/motorola/messaging/contact/Contact;
    invoke-static {v0, p1}, Lcom/motorola/messaging/contact/Contact;->asyncUpdateContact(Lcom/motorola/messaging/contact/Contact;Z)V

    .line 100
    return-object v0
.end method

.method private static emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 197
    if-eqz p0, :cond_0

    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    const-string p0, ""

    goto :goto_0
.end method

.method private formatNameAndAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 424
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/contact/Contact;->mFormattedAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 427
    .end local p2    # "address":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method public static get(Ljava/lang/String;Z)Lcom/motorola/messaging/contact/Contact;
    .locals 1
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "canBlock"    # Z

    .prologue
    .line 107
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/motorola/messaging/contact/Contact;->get(Ljava/lang/String;ZZ)Lcom/motorola/messaging/contact/Contact;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;ZZ)Lcom/motorola/messaging/contact/Contact;
    .locals 2
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "canBlock"    # Z
    .param p2, "shallStartLoading"    # Z

    .prologue
    .line 119
    invoke-static {p0}, Lcom/motorola/messaging/contact/Contact;->getOrCreateContact(Ljava/lang/String;)Lcom/motorola/messaging/contact/Contact;

    move-result-object v0

    .line 121
    .local v0, "contact":Lcom/motorola/messaging/contact/Contact;
    if-eqz p2, :cond_0

    iget-boolean v1, v0, Lcom/motorola/messaging/contact/Contact;->mIsStale:Z

    if-eqz v1, :cond_0

    .line 122
    invoke-static {v0, p1}, Lcom/motorola/messaging/contact/Contact;->asyncUpdateContact(Lcom/motorola/messaging/contact/Contact;Z)V

    .line 124
    :cond_0
    return-object v0
.end method

.method public static getCached(Ljava/lang/String;Z)Lcom/motorola/messaging/contact/Contact;
    .locals 5
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "useStrictComparison"    # Z

    .prologue
    const/4 v4, 0x1

    .line 135
    sget-boolean v1, Lcom/motorola/messaging/contact/Contact;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 136
    const-string v1, "Contact"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lazyGet, address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v4, v4, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 140
    :cond_0
    invoke-static {p0, p1}, Lcom/motorola/messaging/contact/Contact$Cache;->getContact(Ljava/lang/String;Z)Lcom/motorola/messaging/contact/Contact;

    move-result-object v0

    .line 142
    .local v0, "contact":Lcom/motorola/messaging/contact/Contact;
    return-object v0
.end method

.method public static getDefaultAvatar()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 694
    sget-object v0, Lcom/motorola/messaging/contact/Contact;->mDefaultAvatar:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private static getOrCreateContact(Ljava/lang/String;)Lcom/motorola/messaging/contact/Contact;
    .locals 5
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 152
    const/4 v2, 0x0

    .line 153
    .local v2, "isAnonymous":Z
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getAnonymousRecipientPrompt()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "anonymousRecipient":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 156
    sget-boolean v3, Lcom/motorola/messaging/contact/Contact;->LOCAL_LOG:Z

    if-eqz v3, :cond_0

    .line 157
    const-string v3, "Contact"

    const-string v4, "Handle empty address"

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_0
    move-object p0, v0

    .line 161
    const/4 v2, 0x1

    .line 166
    :cond_1
    :goto_0
    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/motorola/messaging/contact/Contact;->getCached(Ljava/lang/String;Z)Lcom/motorola/messaging/contact/Contact;

    move-result-object v1

    .line 167
    .local v1, "contact":Lcom/motorola/messaging/contact/Contact;
    if-nez v1, :cond_2

    .line 168
    invoke-static {p0}, Lcom/motorola/messaging/contact/Contact$Cache;->addContact(Ljava/lang/String;)Lcom/motorola/messaging/contact/Contact;

    move-result-object v1

    .line 171
    :cond_2
    iput-boolean v2, v1, Lcom/motorola/messaging/contact/Contact;->mIsAnonymous:Z

    .line 173
    return-object v1

    .line 162
    .end local v1    # "contact":Lcom/motorola/messaging/contact/Contact;
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 163
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static getPixelsToCompare(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)[I
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 294
    const/4 v1, 0x5

    new-array v0, v1, [I

    .line 295
    .local v0, "pixels":[I
    const/4 v1, 0x0

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    aput v2, v0, v1

    .line 296
    const/4 v1, 0x1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    aput v2, v0, v1

    .line 297
    const/4 v1, 0x2

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    aput v2, v0, v1

    .line 298
    const/4 v1, 0x3

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    aput v2, v0, v1

    .line 299
    const/4 v1, 0x4

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    aput v2, v0, v1

    .line 300
    return-object v0
.end method

.method public static getSelfAvatar()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 682
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/motorola/messaging/contact/Contact;->getSelfAvatar(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getSelfAvatar(Z)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "isOutgoing"    # Z

    .prologue
    .line 686
    if-eqz p0, :cond_1

    .line 687
    sget-object v0, Lcom/motorola/messaging/contact/Contact;->mSelfAvatar:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/messaging/contact/Contact;->mSelfAvatar:Landroid/graphics/Bitmap;

    .line 689
    :goto_0
    return-object v0

    .line 687
    :cond_0
    sget-object v0, Lcom/motorola/messaging/contact/Contact;->mDefaultOutgoingAvatar:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 689
    :cond_1
    sget-object v0, Lcom/motorola/messaging/contact/Contact;->mSelfAvatar:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/motorola/messaging/contact/Contact;->mSelfAvatar:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/motorola/messaging/contact/Contact;->mDefaultAvatar:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private static handleLocalNumber(Lcom/motorola/messaging/contact/Contact;)Z
    .locals 4
    .param p0, "c"    # Lcom/motorola/messaging/contact/Contact;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 309
    iget-object v2, p0, Lcom/motorola/messaging/contact/Contact;->mAddress:Ljava/lang/String;

    invoke-static {}, Lcom/motorola/messaging/contact/ContactUtils;->getOwnMSISDN()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 311
    iget-object v1, p0, Lcom/motorola/messaging/contact/Contact;->mName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    monitor-enter p0

    .line 313
    :try_start_0
    invoke-static {}, Lcom/motorola/messaging/contact/Contact$Cache;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0009

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/messaging/contact/Contact;->mName:Ljava/lang/String;

    .line 314
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/messaging/contact/Contact;->mIsStale:Z

    .line 315
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/messaging/contact/Contact;->mIsLocalNumber:Z

    .line 316
    invoke-direct {p0}, Lcom/motorola/messaging/contact/Contact;->updateNameAndAddress()V

    .line 317
    invoke-virtual {p0}, Lcom/motorola/messaging/contact/Contact;->updateListeners()V

    .line 318
    monitor-exit p0

    .line 323
    :cond_0
    :goto_0
    return v0

    .line 318
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 322
    :cond_1
    iput-boolean v1, p0, Lcom/motorola/messaging/contact/Contact;->mIsLocalNumber:Z

    move v0, v1

    .line 323
    goto :goto_0
.end method

.method private static handleOnlineAlbum(Lcom/motorola/messaging/contact/Contact;)Z
    .locals 4
    .param p0, "c"    # Lcom/motorola/messaging/contact/Contact;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 405
    iget-object v2, p0, Lcom/motorola/messaging/contact/Contact;->mAddress:Ljava/lang/String;

    invoke-static {v2}, Lcom/motorola/messaging/contact/ContactUtils;->isOnlineAlbumAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 406
    monitor-enter p0

    .line 407
    :try_start_0
    invoke-static {}, Lcom/motorola/messaging/contact/Contact$Cache;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/motorola/messaging/contact/Contact$Cache;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b01a9

    invoke-static {v2, v3}, Lcom/motorola/messaging/settings/OverlayResources;->getStringOverlaidResourceId(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/messaging/contact/Contact;->mName:Ljava/lang/String;

    .line 408
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/messaging/contact/Contact;->mIsOnlineAlbum:Z

    .line 409
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/messaging/contact/Contact;->mIsStale:Z

    .line 410
    invoke-direct {p0}, Lcom/motorola/messaging/contact/Contact;->updateNameAndAddress()V

    .line 411
    invoke-virtual {p0}, Lcom/motorola/messaging/contact/Contact;->updateListeners()V

    .line 412
    monitor-exit p0

    .line 416
    :goto_0
    return v0

    .line 413
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 415
    :cond_0
    iput-boolean v1, p0, Lcom/motorola/messaging/contact/Contact;->mIsOnlineAlbum:Z

    move v0, v1

    .line 416
    goto :goto_0
.end method

.method private static hasAvatarChanged(Lcom/motorola/messaging/contact/Contact;Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;)Z
    .locals 16
    .param p0, "orig"    # Lcom/motorola/messaging/contact/Contact;
    .param p1, "newEntry"    # Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;

    .prologue
    .line 239
    const-wide v1, 0x3fb999999999999aL

    .line 241
    .local v1, "RECT_MARGIN":D
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/motorola/messaging/contact/Contact;->mAvatar:Landroid/graphics/Bitmap;

    if-nez v11, :cond_0

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;->mAvatar:Landroid/graphics/Bitmap;

    if-nez v11, :cond_0

    .line 242
    const/4 v11, 0x0

    .line 290
    :goto_0
    return v11

    .line 245
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/motorola/messaging/contact/Contact;->mAvatar:Landroid/graphics/Bitmap;

    if-eqz v11, :cond_1

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;->mAvatar:Landroid/graphics/Bitmap;

    if-nez v11, :cond_2

    .line 246
    :cond_1
    const/4 v11, 0x1

    goto :goto_0

    .line 249
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/motorola/messaging/contact/Contact;->mAvatar:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 250
    .local v9, "width":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/motorola/messaging/contact/Contact;->mAvatar:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 252
    .local v3, "height":I
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;->mAvatar:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    if-eq v9, v11, :cond_4

    .line 253
    sget-boolean v11, Lcom/motorola/messaging/contact/Contact;->LOCAL_LOG:Z

    if-eqz v11, :cond_3

    .line 254
    const-string v11, "Contact"

    const-string v12, "Avatar changed - New width is different"

    invoke-static {v11, v12}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_3
    const/4 v11, 0x1

    goto :goto_0

    .line 259
    :cond_4
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;->mAvatar:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    if-eq v3, v11, :cond_6

    .line 260
    sget-boolean v11, Lcom/motorola/messaging/contact/Contact;->LOCAL_LOG:Z

    if-eqz v11, :cond_5

    .line 261
    const-string v11, "Contact"

    const-string v12, "Avatar changed - New height is different"

    invoke-static {v11, v12}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_5
    const/4 v11, 0x1

    goto :goto_0

    .line 268
    :cond_6
    const/4 v11, 0x1

    int-to-double v12, v9

    const-wide v14, 0x3fb999999999999aL

    mul-double/2addr v12, v14

    double-to-int v12, v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 269
    .local v10, "widthMargin":I
    const/4 v11, 0x1

    int-to-double v12, v3

    const-wide v14, 0x3fb999999999999aL

    mul-double/2addr v12, v14

    double-to-int v12, v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 273
    .local v4, "heightMargin":I
    new-instance v8, Landroid/graphics/Rect;

    add-int/lit8 v11, v9, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    add-int/lit8 v12, v3, -0x1

    invoke-static {v4, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    sub-int v13, v9, v10

    add-int/lit8 v14, v9, -0x1

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    sub-int v14, v3, v4

    add-int/lit8 v15, v3, -0x1

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-direct {v8, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 278
    .local v8, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/motorola/messaging/contact/Contact;->mAvatar:Landroid/graphics/Bitmap;

    invoke-static {v11, v8}, Lcom/motorola/messaging/contact/Contact;->getPixelsToCompare(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)[I

    move-result-object v7

    .line 279
    .local v7, "oldPix":[I
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;->mAvatar:Landroid/graphics/Bitmap;

    invoke-static {v11, v8}, Lcom/motorola/messaging/contact/Contact;->getPixelsToCompare(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)[I

    move-result-object v6

    .line 281
    .local v6, "newPix":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    const/4 v11, 0x5

    if-ge v5, v11, :cond_9

    .line 282
    aget v11, v7, v5

    aget v12, v6, v5

    if-eq v11, v12, :cond_8

    .line 283
    sget-boolean v11, Lcom/motorola/messaging/contact/Contact;->LOCAL_LOG:Z

    if-eqz v11, :cond_7

    .line 284
    const-string v11, "Contact"

    const-string v12, "Avatar changed - Pixels are different"

    invoke-static {v11, v12}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_7
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 281
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 290
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method private static hasContactChanged(Lcom/motorola/messaging/contact/Contact;Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;)Z
    .locals 10
    .param p0, "orig"    # Lcom/motorola/messaging/contact/Contact;
    .param p1, "newEntry"    # Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;

    .prologue
    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 204
    iget-object v4, p0, Lcom/motorola/messaging/contact/Contact;->mName:Ljava/lang/String;

    invoke-static {v4}, Lcom/motorola/messaging/contact/Contact;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, "oldName":Ljava/lang/String;
    iget-object v4, p1, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    invoke-static {v4}, Lcom/motorola/messaging/contact/Contact;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "newName":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 207
    sget-boolean v4, Lcom/motorola/messaging/contact/Contact;->LOCAL_LOG:Z

    if-eqz v4, :cond_0

    .line 208
    const-string v4, "Contact"

    const-string v6, "name changed: %s -> %s"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v8

    aput-object v1, v7, v5

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move v4, v5

    .line 229
    :goto_0
    return v4

    .line 213
    :cond_1
    iget-object v4, p0, Lcom/motorola/messaging/contact/Contact;->mLabel:Ljava/lang/String;

    invoke-static {v4}, Lcom/motorola/messaging/contact/Contact;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "oldLabel":Ljava/lang/String;
    iget-object v4, p1, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;->label:Ljava/lang/CharSequence;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/motorola/messaging/contact/Contact;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "newLabel":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 216
    sget-boolean v4, Lcom/motorola/messaging/contact/Contact;->LOCAL_LOG:Z

    if-eqz v4, :cond_2

    .line 217
    const-string v4, "Contact"

    const-string v6, "label changed: %s -> %s"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v8

    aput-object v0, v7, v5

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move v4, v5

    .line 219
    goto :goto_0

    .line 222
    :cond_3
    iget-wide v6, p0, Lcom/motorola/messaging/contact/Contact;->mContactId:J

    iget-wide v8, p1, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;->contact_id:J

    cmp-long v4, v6, v8

    if-eqz v4, :cond_5

    .line 223
    sget-boolean v4, Lcom/motorola/messaging/contact/Contact;->LOCAL_LOG:Z

    if-eqz v4, :cond_4

    .line 224
    const-string v4, "Contact"

    const-string v6, "contact id changed"

    invoke-static {v4, v6}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move v4, v5

    .line 226
    goto :goto_0

    .line 229
    :cond_5
    invoke-static {p0, p1}, Lcom/motorola/messaging/contact/Contact;->hasAvatarChanged(Lcom/motorola/messaging/contact/Contact;Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;)Z

    move-result v4

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 609
    new-instance v1, Lcom/motorola/messaging/concurrent/TaskStack;

    invoke-direct {v1}, Lcom/motorola/messaging/concurrent/TaskStack;-><init>()V

    sput-object v1, Lcom/motorola/messaging/contact/Contact;->sTaskStack:Lcom/motorola/messaging/concurrent/TaskStack;

    .line 610
    invoke-static {p0}, Lcom/motorola/messaging/contact/Contact$Cache;->init(Landroid/content/Context;)V

    .line 611
    invoke-static {p0}, Lcom/motorola/messaging/contact/RecipientIdCache;->init(Landroid/content/Context;)V

    .line 612
    sget-object v1, Lcom/motorola/messaging/contact/Contact;->mDefaultAvatar:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 614
    const v1, 0x7f02007b

    invoke-static {p0, v1}, Lcom/motorola/messaging/settings/OverlayResources;->getDrawableOverlaidResourceId(Landroid/content/Context;I)I

    move-result v0

    .line 617
    .local v0, "contactPhotoResourceId":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/motorola/messaging/contact/Contact;->mDefaultAvatar:Landroid/graphics/Bitmap;

    .line 620
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02001b

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/motorola/messaging/contact/Contact;->mDefaultHighResAvatar:Landroid/graphics/Bitmap;

    .line 624
    .end local v0    # "contactPhotoResourceId":I
    :cond_0
    sget-object v1, Lcom/motorola/messaging/contact/Contact;->mDefaultOutgoingAvatar:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 626
    const v1, 0x7f02007c

    invoke-static {p0, v1}, Lcom/motorola/messaging/settings/OverlayResources;->getDrawableOverlaidResourceId(Landroid/content/Context;I)I

    move-result v0

    .line 629
    .restart local v0    # "contactPhotoResourceId":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/motorola/messaging/contact/Contact;->mDefaultOutgoingAvatar:Landroid/graphics/Bitmap;

    .line 633
    .end local v0    # "contactPhotoResourceId":I
    :cond_1
    invoke-static {p0}, Lcom/motorola/messaging/contact/Contact;->asyncLoadSelfAvatar(Landroid/content/Context;)V

    .line 635
    const v1, 0x7f0b01b2

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/motorola/messaging/contact/Contact;->mUnknownLabel:Ljava/lang/String;

    .line 636
    return-void
.end method

.method public static invalidateCache()V
    .locals 2

    .prologue
    .line 177
    sget-boolean v0, Lcom/motorola/messaging/contact/Contact;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 178
    const-string v0, "Contact"

    const-string v1, "invalidateCache"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_0
    invoke-static {}, Lcom/motorola/messaging/contact/Contact$Cache;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/messaging/contact/Contact;->asyncLoadSelfAvatar(Landroid/content/Context;)V

    .line 184
    invoke-static {}, Lcom/motorola/messaging/contact/ContactInfoCache;->getInstance()Lcom/motorola/messaging/contact/ContactInfoCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/messaging/contact/ContactInfoCache;->invalidateCache()V

    .line 193
    invoke-static {}, Lcom/motorola/messaging/contact/Contact$Cache;->invalidate()V

    .line 194
    return-void
.end method

.method private static loadSelfAvatarData(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 657
    const/4 v1, 0x0

    .line 658
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    sget-object v2, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 660
    .local v2, "contactUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 664
    .local v0, "avatarDataStream":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 665
    invoke-static {v0, v5, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 669
    :cond_0
    if-eqz v0, :cond_1

    .line 670
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    :cond_1
    :goto_0
    sput-object v1, Lcom/motorola/messaging/contact/Contact;->mSelfAvatar:Landroid/graphics/Bitmap;

    .line 679
    return-void

    .line 672
    :catch_0
    move-exception v3

    .line 673
    .local v3, "e":Ljava/io/IOException;
    sget-boolean v4, Lcom/motorola/messaging/contact/Contact;->LOCAL_LOG:Z

    if-eqz v4, :cond_1

    .line 674
    const-string v4, "Contact"

    const-string v5, "loadSelfAvatarData - Exception on closing avatar streaming."

    invoke-static {v4, v6, v6, v5}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;ZZLjava/lang/String;)V

    goto :goto_0
.end method

.method private static updateContact(Lcom/motorola/messaging/contact/Contact;)V
    .locals 5
    .param p0, "c"    # Lcom/motorola/messaging/contact/Contact;

    .prologue
    .line 349
    if-nez p0, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    invoke-static {p0}, Lcom/motorola/messaging/contact/Contact;->handleLocalNumber(Lcom/motorola/messaging/contact/Contact;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 358
    invoke-static {p0}, Lcom/motorola/messaging/contact/Contact;->handleOnlineAlbum(Lcom/motorola/messaging/contact/Contact;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 362
    invoke-static {}, Lcom/motorola/messaging/contact/ContactInfoCache;->getInstance()Lcom/motorola/messaging/contact/ContactInfoCache;

    move-result-object v0

    .line 363
    .local v0, "cache":Lcom/motorola/messaging/contact/ContactInfoCache;
    iget-object v2, p0, Lcom/motorola/messaging/contact/Contact;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/motorola/messaging/contact/ContactInfoCache;->getContactInfo(Ljava/lang/String;)Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;

    move-result-object v1

    .line 365
    .local v1, "entry":Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;->isStale()Z

    move-result v2

    if-nez v2, :cond_0

    .line 369
    monitor-enter p0

    .line 370
    :try_start_0
    invoke-static {p0, v1}, Lcom/motorola/messaging/contact/Contact;->hasContactChanged(Lcom/motorola/messaging/contact/Contact;Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 371
    sget-boolean v2, Lcom/motorola/messaging/contact/Contact;->LOCAL_LOG:Z

    if-eqz v2, :cond_2

    .line 372
    const-string v2, "Contact"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateContact: contact changed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :cond_2
    iget-object v2, v1, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    iput-object v2, p0, Lcom/motorola/messaging/contact/Contact;->mName:Ljava/lang/String;

    .line 376
    invoke-direct {p0}, Lcom/motorola/messaging/contact/Contact;->updateNameAndAddress()V

    .line 377
    iget-object v2, v1, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;->label:Ljava/lang/CharSequence;

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/motorola/messaging/contact/Contact;->mLabel:Ljava/lang/String;

    .line 378
    iget-wide v2, v1, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;->contact_id:J

    iput-wide v2, p0, Lcom/motorola/messaging/contact/Contact;->mContactId:J

    .line 379
    iget-wide v2, v1, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;->contact_table_id:J

    iput-wide v2, p0, Lcom/motorola/messaging/contact/Contact;->mContactTableId:J

    .line 380
    iget-object v2, v1, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;->mAvatar:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/motorola/messaging/contact/Contact;->mAvatar:Landroid/graphics/Bitmap;

    .line 381
    iget-boolean v2, v1, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;->isFixedDialContact:Z

    iput-boolean v2, p0, Lcom/motorola/messaging/contact/Contact;->mIsFixedDialContact:Z

    .line 382
    invoke-virtual {p0}, Lcom/motorola/messaging/contact/Contact;->updateListeners()V

    .line 384
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/motorola/messaging/contact/Contact;->mIsStale:Z

    .line 385
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private updateNameAndAddress()V
    .locals 2

    .prologue
    .line 502
    iget-boolean v0, p0, Lcom/motorola/messaging/contact/Contact;->mIsOnlineAlbum:Z

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/motorola/messaging/contact/Contact;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/messaging/contact/Contact;->mNameAndAddress:Ljava/lang/String;

    .line 508
    :goto_0
    return-void

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/contact/Contact;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/motorola/messaging/contact/Contact;->mFormattedAddress:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/motorola/messaging/contact/Contact;->formatNameAndAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/contact/Contact;->mNameAndAddress:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/motorola/messaging/contact/Contact$ContactUpdateListener;)V
    .locals 2
    .param p1, "l"    # Lcom/motorola/messaging/contact/Contact$ContactUpdateListener;

    .prologue
    .line 557
    monitor-enter p0

    .line 558
    :try_start_0
    iget-object v1, p0, Lcom/motorola/messaging/contact/Contact;->mListeners:Lcom/motorola/messaging/util/WeakHashSet;

    invoke-virtual {v1, p1}, Lcom/motorola/messaging/util/WeakHashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 559
    .local v0, "added":Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/messaging/contact/Contact;->dumpListeners()V

    .line 560
    :cond_0
    monitor-exit p0

    .line 561
    return-void

    .line 560
    .end local v0    # "added":Z
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dumpListeners()V
    .locals 7

    .prologue
    .line 571
    sget-boolean v4, Lcom/motorola/messaging/contact/Contact;->LOCAL_LOG:Z

    if-eqz v4, :cond_0

    .line 572
    const/4 v0, 0x0

    .line 573
    .local v0, "i":I
    const-string v4, "Contact"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Contact] dumpListeners("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/messaging/contact/Contact;->mAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/messaging/contact/Contact;->mListeners:Lcom/motorola/messaging/util/WeakHashSet;

    invoke-virtual {v6}, Lcom/motorola/messaging/util/WeakHashSet;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    iget-object v4, p0, Lcom/motorola/messaging/contact/Contact;->mListeners:Lcom/motorola/messaging/util/WeakHashSet;

    invoke-virtual {v4}, Lcom/motorola/messaging/util/WeakHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/messaging/contact/Contact$ContactUpdateListener;

    .line 575
    .local v3, "listener":Lcom/motorola/messaging/contact/Contact$ContactUpdateListener;
    const-string v4, "Contact"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 578
    .end local v0    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "listener":Lcom/motorola/messaging/contact/Contact$ContactUpdateListener;
    :cond_0
    return-void
.end method

.method public existsInDatabase()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 543
    iget-boolean v1, p0, Lcom/motorola/messaging/contact/Contact;->mIsStale:Z

    if-eqz v1, :cond_1

    .line 544
    sget-boolean v1, Lcom/motorola/messaging/contact/Contact;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 545
    const-string v1, "Contact"

    const-string v2, "existsInDatabase when stale"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    :cond_0
    invoke-static {p0, v0}, Lcom/motorola/messaging/contact/Contact;->asyncUpdateContact(Lcom/motorola/messaging/contact/Contact;Z)V

    .line 549
    :cond_1
    iget-wide v1, p0, Lcom/motorola/messaging/contact/Contact;->mContactId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/motorola/messaging/contact/Contact;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatar()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 589
    iget-boolean v0, p0, Lcom/motorola/messaging/contact/Contact;->mIsStale:Z

    if-eqz v0, :cond_1

    .line 590
    sget-boolean v0, Lcom/motorola/messaging/contact/Contact;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 591
    const-string v0, "Contact"

    const-string v1, "getAvatar when stale"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/motorola/messaging/contact/Contact;->asyncUpdateContact(Lcom/motorola/messaging/contact/Contact;Z)V

    .line 595
    :cond_1
    iget-object v0, p0, Lcom/motorola/messaging/contact/Contact;->mAvatar:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/messaging/contact/Contact;->mAvatar:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_2
    sget-object v0, Lcom/motorola/messaging/contact/Contact;->mDefaultAvatar:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getContactId()J
    .locals 2

    .prologue
    .line 523
    iget-boolean v0, p0, Lcom/motorola/messaging/contact/Contact;->mIsStale:Z

    if-eqz v0, :cond_1

    .line 524
    sget-boolean v0, Lcom/motorola/messaging/contact/Contact;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 525
    const-string v0, "Contact"

    const-string v1, "getContactId when stale"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/motorola/messaging/contact/Contact;->asyncUpdateContact(Lcom/motorola/messaging/contact/Contact;Z)V

    .line 529
    :cond_1
    iget-wide v0, p0, Lcom/motorola/messaging/contact/Contact;->mContactId:J

    return-wide v0
.end method

.method public getFormattedAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/motorola/messaging/contact/Contact;->mFormattedAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getHighResAvatar()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 599
    iget-boolean v0, p0, Lcom/motorola/messaging/contact/Contact;->mIsStale:Z

    if-eqz v0, :cond_1

    .line 600
    sget-boolean v0, Lcom/motorola/messaging/contact/Contact;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 601
    const-string v0, "Contact"

    const-string v1, "getHighResAvatar when stale"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/motorola/messaging/contact/Contact;->asyncUpdateContact(Lcom/motorola/messaging/contact/Contact;Z)V

    .line 605
    :cond_1
    iget-object v0, p0, Lcom/motorola/messaging/contact/Contact;->mAvatar:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/messaging/contact/Contact;->mAvatar:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_2
    sget-object v0, Lcom/motorola/messaging/contact/Contact;->mDefaultHighResAvatar:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 472
    iget-boolean v0, p0, Lcom/motorola/messaging/contact/Contact;->mIsStale:Z

    if-eqz v0, :cond_0

    .line 473
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/motorola/messaging/contact/Contact;->asyncUpdateContact(Lcom/motorola/messaging/contact/Contact;Z)V

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/contact/Contact;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 477
    iget-object v0, p0, Lcom/motorola/messaging/contact/Contact;->mFormattedAddress:Ljava/lang/String;

    .line 479
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/motorola/messaging/contact/Contact;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNameAndAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 492
    iget-boolean v0, p0, Lcom/motorola/messaging/contact/Contact;->mIsStale:Z

    if-eqz v0, :cond_1

    .line 493
    sget-boolean v0, Lcom/motorola/messaging/contact/Contact;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 494
    const-string v0, "Contact"

    const-string v1, "getNameAndAddress when stale"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/motorola/messaging/contact/Contact;->asyncUpdateContact(Lcom/motorola/messaging/contact/Contact;Z)V

    .line 498
    :cond_1
    iget-object v0, p0, Lcom/motorola/messaging/contact/Contact;->mNameAndAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientId()J
    .locals 2

    .prologue
    .line 511
    iget-wide v0, p0, Lcom/motorola/messaging/contact/Contact;->mRecipientId:J

    return-wide v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 519
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/motorola/messaging/contact/Contact;->mContactId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 4

    .prologue
    .line 708
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/motorola/messaging/contact/Contact;->mIsStale:Z

    .line 709
    invoke-static {}, Lcom/motorola/messaging/contact/ContactInfoCache;->getInstance()Lcom/motorola/messaging/contact/ContactInfoCache;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/messaging/contact/Contact;->mAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/motorola/messaging/contact/ContactInfoCache;->invalidateContact(Ljava/lang/String;)V

    .line 710
    monitor-enter p0

    .line 711
    :try_start_0
    iget-object v2, p0, Lcom/motorola/messaging/contact/Contact;->mListeners:Lcom/motorola/messaging/util/WeakHashSet;

    invoke-virtual {v2}, Lcom/motorola/messaging/util/WeakHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/contact/Contact$ContactUpdateListener;

    .line 712
    .local v1, "listener":Lcom/motorola/messaging/contact/Contact$ContactUpdateListener;
    invoke-interface {v1, p0}, Lcom/motorola/messaging/contact/Contact$ContactUpdateListener;->onContactInvalidated(Lcom/motorola/messaging/contact/Contact;)V

    goto :goto_0

    .line 714
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/motorola/messaging/contact/Contact$ContactUpdateListener;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 715
    return-void
.end method

.method public isAddressModified()Z
    .locals 1

    .prologue
    .line 456
    iget-boolean v0, p0, Lcom/motorola/messaging/contact/Contact;->mAddressIsModified:Z

    return v0
.end method

.method public isAlias()Z
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcom/motorola/messaging/contact/Contact;->mAddress:Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/messaging/contact/ContactUtils;->isAliasAddress(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isAnonymous()Z
    .locals 1

    .prologue
    .line 851
    iget-boolean v0, p0, Lcom/motorola/messaging/contact/Contact;->mIsAnonymous:Z

    return v0
.end method

.method public isEmail()Z
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/motorola/messaging/contact/Contact;->mAddress:Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/messaging/contact/ContactUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isFixedDialContact()Z
    .locals 1

    .prologue
    .line 553
    iget-boolean v0, p0, Lcom/motorola/messaging/contact/Contact;->mIsFixedDialContact:Z

    return v0
.end method

.method public isLocalNumber()Z
    .locals 1

    .prologue
    .line 855
    iget-boolean v0, p0, Lcom/motorola/messaging/contact/Contact;->mIsLocalNumber:Z

    return v0
.end method

.method public isMessagableNumber()Z
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/motorola/messaging/contact/Contact;->mAddress:Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/messaging/contact/ContactUtils;->isMessagableNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isOnlineAlbum()Z
    .locals 1

    .prologue
    .line 847
    iget-boolean v0, p0, Lcom/motorola/messaging/contact/Contact;->mIsOnlineAlbum:Z

    return v0
.end method

.method public isShortCode()Z
    .locals 2

    .prologue
    .line 859
    iget-object v0, p0, Lcom/motorola/messaging/contact/Contact;->mIsShortCode:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 860
    invoke-static {}, Lcom/motorola/messaging/contact/Contact$Cache;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/contact/Contact;->mAddress:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/motorola/messaging/contact/ContactUtils;->isShortCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/contact/Contact;->mIsShortCode:Ljava/lang/Boolean;

    .line 862
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/contact/Contact;->mIsShortCode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/motorola/messaging/contact/Contact;->isAnonymous()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/messaging/contact/Contact;->isEmail()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/messaging/contact/Contact;->isMessagableNumber()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/messaging/contact/Contact;->isAlias()Z

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

.method public refresh(Z)V
    .locals 1
    .param p1, "canBlock"    # Z

    .prologue
    .line 699
    iget-boolean v0, p0, Lcom/motorola/messaging/contact/Contact;->mIsStale:Z

    if-eqz v0, :cond_0

    .line 700
    invoke-static {p0, p1}, Lcom/motorola/messaging/contact/Contact;->asyncUpdateContact(Lcom/motorola/messaging/contact/Contact;Z)V

    .line 702
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/motorola/messaging/contact/Contact$ContactUpdateListener;)V
    .locals 2
    .param p1, "l"    # Lcom/motorola/messaging/contact/Contact$ContactUpdateListener;

    .prologue
    .line 564
    monitor-enter p0

    .line 565
    :try_start_0
    iget-object v1, p0, Lcom/motorola/messaging/contact/Contact;->mListeners:Lcom/motorola/messaging/util/WeakHashSet;

    invoke-virtual {v1, p1}, Lcom/motorola/messaging/util/WeakHashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 566
    .local v0, "removed":Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/messaging/contact/Contact;->dumpListeners()V

    .line 567
    :cond_0
    monitor-exit p0

    .line 568
    return-void

    .line 567
    .end local v0    # "removed":Z
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 440
    invoke-static {p1}, Lcom/motorola/messaging/contact/ContactUtils;->getUnformattedAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 442
    iget-object v0, p0, Lcom/motorola/messaging/contact/Contact;->mAddress:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 443
    sget-boolean v0, Lcom/motorola/messaging/contact/Contact;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 444
    const-string v0, "Contact"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAddress. Old address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/contact/Contact;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    :cond_0
    iput-object p1, p0, Lcom/motorola/messaging/contact/Contact;->mAddress:Ljava/lang/String;

    .line 447
    invoke-static {p1}, Lcom/motorola/messaging/contact/ContactUtils;->getFormattedAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/contact/Contact;->mFormattedAddress:Ljava/lang/String;

    .line 449
    invoke-direct {p0}, Lcom/motorola/messaging/contact/Contact;->updateNameAndAddress()V

    .line 450
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/messaging/contact/Contact;->mAddressIsModified:Z

    .line 451
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/messaging/contact/Contact;->mIsShortCode:Ljava/lang/Boolean;

    .line 453
    :cond_1
    return-void
.end method

.method public setIsAddressModified(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 460
    iput-boolean p1, p0, Lcom/motorola/messaging/contact/Contact;->mAddressIsModified:Z

    .line 461
    return-void
.end method

.method public setRecipientId(J)V
    .locals 0
    .param p1, "id"    # J

    .prologue
    .line 515
    iput-wide p1, p0, Lcom/motorola/messaging/contact/Contact;->mRecipientId:J

    .line 516
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 73
    const-string v0, "{ address=%s, name=%s, nameAndAddress=%s, label=%s, contact_id=%d, contact_table_id=%d }"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/motorola/messaging/contact/Contact;->mAddress:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/motorola/messaging/contact/Contact;->mName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/motorola/messaging/contact/Contact;->mNameAndAddress:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/motorola/messaging/contact/Contact;->mLabel:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-wide v3, p0, Lcom/motorola/messaging/contact/Contact;->mContactId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/motorola/messaging/contact/Contact;->mContactTableId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateListeners()V
    .locals 5

    .prologue
    .line 389
    monitor-enter p0

    .line 390
    :try_start_0
    iget-object v2, p0, Lcom/motorola/messaging/contact/Contact;->mListeners:Lcom/motorola/messaging/util/WeakHashSet;

    invoke-virtual {v2}, Lcom/motorola/messaging/util/WeakHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/contact/Contact$ContactUpdateListener;

    .line 391
    .local v1, "listener":Lcom/motorola/messaging/contact/Contact$ContactUpdateListener;
    sget-boolean v2, Lcom/motorola/messaging/contact/Contact;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 392
    const-string v2, "Contact"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updating "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :cond_0
    invoke-interface {v1, p0}, Lcom/motorola/messaging/contact/Contact$ContactUpdateListener;->onContactUpdated(Lcom/motorola/messaging/contact/Contact;)V

    goto :goto_0

    .line 396
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/motorola/messaging/contact/Contact$ContactUpdateListener;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 397
    return-void
.end method
