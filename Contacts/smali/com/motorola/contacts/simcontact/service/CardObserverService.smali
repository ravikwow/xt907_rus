.class public Lcom/motorola/contacts/simcontact/service/CardObserverService;
.super Landroid/app/Service;
.source "CardObserverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/contacts/simcontact/service/CardObserverService$SyncWorkHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCardContentObserver:Landroid/database/ContentObserver;

.field private mContactContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mResolver:Landroid/content/ContentResolver;

.field private mWorkHandler:Lcom/motorola/contacts/simcontact/service/CardObserverService$SyncWorkHandler;

.field private mWorkThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/motorola/contacts/simcontact/service/CardObserverService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/contacts/simcontact/service/CardObserverService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/motorola/contacts/simcontact/service/CardObserverService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/contacts/simcontact/service/CardObserverService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/simcontact/service/CardObserverService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/motorola/contacts/simcontact/service/CardObserverService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/contacts/simcontact/service/CardObserverService;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/contacts/simcontact/service/CardObserverService;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/motorola/contacts/simcontact/service/CardObserverService;->scheduleSyncWorkFromCardToContact()V

    return-void
.end method

.method static synthetic access$300(Lcom/motorola/contacts/simcontact/service/CardObserverService;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/contacts/simcontact/service/CardObserverService;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/motorola/contacts/simcontact/service/CardObserverService;->scheduleSyncWorkFromContactToCard()V

    return-void
.end method

.method private scheduleSyncWorkFromCardToContact()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 56
    sget-object v1, Lcom/motorola/contacts/simcontact/service/CardObserverService;->TAG:Ljava/lang/String;

    const-string v2, "SIM Card content was changed, add scheduleSyncWorkFromCardToContact to queue!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v1, p0, Lcom/motorola/contacts/simcontact/service/CardObserverService;->mWorkHandler:Lcom/motorola/contacts/simcontact/service/CardObserverService$SyncWorkHandler;

    invoke-virtual {v1, v3}, Lcom/motorola/contacts/simcontact/service/CardObserverService$SyncWorkHandler;->removeMessages(I)V

    .line 58
    iget-object v1, p0, Lcom/motorola/contacts/simcontact/service/CardObserverService;->mWorkHandler:Lcom/motorola/contacts/simcontact/service/CardObserverService$SyncWorkHandler;

    invoke-virtual {v1, v3}, Lcom/motorola/contacts/simcontact/service/CardObserverService$SyncWorkHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 59
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/motorola/contacts/simcontact/service/CardObserverService;->mWorkHandler:Lcom/motorola/contacts/simcontact/service/CardObserverService$SyncWorkHandler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Lcom/motorola/contacts/simcontact/service/CardObserverService$SyncWorkHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 60
    return-void
.end method

.method private scheduleSyncWorkFromContactToCard()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 49
    sget-object v1, Lcom/motorola/contacts/simcontact/service/CardObserverService;->TAG:Ljava/lang/String;

    const-string v2, "Contact content was changed, add scheduleSyncWorkFromContactToCard to queue!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v1, p0, Lcom/motorola/contacts/simcontact/service/CardObserverService;->mWorkHandler:Lcom/motorola/contacts/simcontact/service/CardObserverService$SyncWorkHandler;

    invoke-virtual {v1, v3}, Lcom/motorola/contacts/simcontact/service/CardObserverService$SyncWorkHandler;->removeMessages(I)V

    .line 51
    iget-object v1, p0, Lcom/motorola/contacts/simcontact/service/CardObserverService;->mWorkHandler:Lcom/motorola/contacts/simcontact/service/CardObserverService$SyncWorkHandler;

    invoke-virtual {v1, v3}, Lcom/motorola/contacts/simcontact/service/CardObserverService$SyncWorkHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 52
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/motorola/contacts/simcontact/service/CardObserverService;->mWorkHandler:Lcom/motorola/contacts/simcontact/service/CardObserverService$SyncWorkHandler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Lcom/motorola/contacts/simcontact/service/CardObserverService$SyncWorkHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 53
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 149
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 150
    invoke-virtual {p0}, Lcom/motorola/contacts/simcontact/service/CardObserverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/contacts/simcontact/service/CardObserverService;->mContext:Landroid/content/Context;

    .line 151
    invoke-virtual {p0}, Lcom/motorola/contacts/simcontact/service/CardObserverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/contacts/simcontact/service/CardObserverService;->mResolver:Landroid/content/ContentResolver;

    .line 153
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CardObserver"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/motorola/contacts/simcontact/service/CardObserverService;->mWorkThread:Landroid/os/HandlerThread;

    .line 154
    iget-object v0, p0, Lcom/motorola/contacts/simcontact/service/CardObserverService;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 155
    new-instance v0, Lcom/motorola/contacts/simcontact/service/CardObserverService$SyncWorkHandler;

    iget-object v1, p0, Lcom/motorola/contacts/simcontact/service/CardObserverService;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/motorola/contacts/simcontact/service/CardObserverService$SyncWorkHandler;-><init>(Lcom/motorola/contacts/simcontact/service/CardObserverService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/motorola/contacts/simcontact/service/CardObserverService;->mWorkHandler:Lcom/motorola/contacts/simcontact/service/CardObserverService$SyncWorkHandler;

    .line 158
    sget-object v0, Lcom/motorola/contacts/simcontact/service/CardObserverService;->TAG:Ljava/lang/String;

    const-string v1, "Start to CardObserverService and Register SIM content observer!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {p0}, Lcom/motorola/contacts/simcontact/service/CardObserverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->queryAllSimType(Landroid/content/ContentResolver;)V

    .line 161
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 165
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 166
    invoke-virtual {p0}, Lcom/motorola/contacts/simcontact/service/CardObserverService;->unregisterCardContentObserver()V

    .line 167
    invoke-virtual {p0}, Lcom/motorola/contacts/simcontact/service/CardObserverService;->unregisterContactContentObserver()V

    .line 168
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v3, 0x0

    .line 173
    sget-object v0, Lcom/motorola/contacts/simcontact/service/CardObserverService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    if-eqz p1, :cond_0

    .line 176
    const-string v0, "register_card_observer"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {p0}, Lcom/motorola/contacts/simcontact/service/CardObserverService;->registerCardContentObserver()V

    .line 182
    :goto_0
    const-string v0, "register_contact_observer"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    invoke-virtual {p0}, Lcom/motorola/contacts/simcontact/service/CardObserverService;->registerContactContentObserver()V

    .line 188
    :cond_0
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 179
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/contacts/simcontact/service/CardObserverService;->unregisterCardContentObserver()V

    goto :goto_0

    .line 185
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/contacts/simcontact/service/CardObserverService;->unregisterContactContentObserver()V

    goto :goto_1
.end method

.method public registerCardContentObserver()V
    .locals 4

    .prologue
    .line 87
    iget-object v0, p0, Lcom/motorola/contacts/simcontact/service/CardObserverService;->mCardContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 88
    sget-object v0, Lcom/motorola/contacts/simcontact/service/CardObserverService;->TAG:Ljava/lang/String;

    const-string v1, "registerCardContentObserver a new observer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v0, Lcom/motorola/contacts/simcontact/service/CardObserverService$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/motorola/contacts/simcontact/service/CardObserverService$1;-><init>(Lcom/motorola/contacts/simcontact/service/CardObserverService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/motorola/contacts/simcontact/service/CardObserverService;->mCardContentObserver:Landroid/database/ContentObserver;

    .line 97
    iget-object v0, p0, Lcom/motorola/contacts/simcontact/service/CardObserverService;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->SIM_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/motorola/contacts/simcontact/service/CardObserverService;->mCardContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 104
    :goto_0
    return-void

    .line 101
    :cond_0
    sget-object v0, Lcom/motorola/contacts/simcontact/service/CardObserverService;->TAG:Ljava/lang/String;

    const-string v1, "registerCardContentObserver, already registered !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerContactContentObserver()V
    .locals 4

    .prologue
    .line 118
    iget-object v0, p0, Lcom/motorola/contacts/simcontact/service/CardObserverService;->mContactContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 119
    sget-object v0, Lcom/motorola/contacts/simcontact/service/CardObserverService;->TAG:Ljava/lang/String;

    const-string v1, "registerContactContentObserver a new observer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v0, Lcom/motorola/contacts/simcontact/service/CardObserverService$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/motorola/contacts/simcontact/service/CardObserverService$2;-><init>(Lcom/motorola/contacts/simcontact/service/CardObserverService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/motorola/contacts/simcontact/service/CardObserverService;->mContactContentObserver:Landroid/database/ContentObserver;

    .line 129
    iget-object v0, p0, Lcom/motorola/contacts/simcontact/service/CardObserverService;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/motorola/contacts/simcontact/service/CardObserverService;->mContactContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 135
    :goto_0
    return-void

    .line 132
    :cond_0
    sget-object v0, Lcom/motorola/contacts/simcontact/service/CardObserverService;->TAG:Ljava/lang/String;

    const-string v1, "registerContactContentObserver, already registered !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterCardContentObserver()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/motorola/contacts/simcontact/service/CardObserverService;->mCardContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 108
    sget-object v0, Lcom/motorola/contacts/simcontact/service/CardObserverService;->TAG:Ljava/lang/String;

    const-string v1, "unregisterCardContentObserver existing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/motorola/contacts/simcontact/service/CardObserverService;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/motorola/contacts/simcontact/service/CardObserverService;->mCardContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/contacts/simcontact/service/CardObserverService;->mCardContentObserver:Landroid/database/ContentObserver;

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    sget-object v0, Lcom/motorola/contacts/simcontact/service/CardObserverService;->TAG:Ljava/lang/String;

    const-string v1, "unregisterCardContentObserver null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterContactContentObserver()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/motorola/contacts/simcontact/service/CardObserverService;->mContactContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 139
    sget-object v0, Lcom/motorola/contacts/simcontact/service/CardObserverService;->TAG:Ljava/lang/String;

    const-string v1, "unregisterContactContentObserver existing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/motorola/contacts/simcontact/service/CardObserverService;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/motorola/contacts/simcontact/service/CardObserverService;->mContactContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/contacts/simcontact/service/CardObserverService;->mContactContentObserver:Landroid/database/ContentObserver;

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    sget-object v0, Lcom/motorola/contacts/simcontact/service/CardObserverService;->TAG:Ljava/lang/String;

    const-string v1, "unregisterContactContentObserver null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
