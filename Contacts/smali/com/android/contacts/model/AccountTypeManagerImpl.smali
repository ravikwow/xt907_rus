.class Lcom/android/contacts/model/AccountTypeManagerImpl;
.super Lcom/android/contacts/model/AccountTypeManager;
.source "AccountTypeManager.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/model/AccountTypeManagerImpl$InvitableAccountTypeCache;,
        Lcom/android/contacts/model/AccountTypeManagerImpl$FindInvitablesTask;
    }
.end annotation


# static fields
.field private static final ACCOUNT_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_UNMODIFIABLE_ACCOUNT_TYPE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/model/account/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field private static final SAMPLE_CONTACT_URI:Landroid/net/Uri;


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mAccountTypesWithDataSets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/model/account/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field private mAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCheckFilterValidityRunnable:Ljava/lang/Runnable;

.field private mContactWritableAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFallbackAccountType:Lcom/android/contacts/model/account/AccountType;

.field private mGroupWritableAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mInvitableAccountTypeCache:Lcom/android/contacts/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

.field private mInvitableAccountTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/model/account/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field private final mInvitablesCacheIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mInvitablesTaskIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mListenerHandler:Landroid/os/Handler;

.field private mListenerThread:Landroid/os/HandlerThread;

.field private final mMainThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->EMPTY_UNMODIFIABLE_ACCOUNT_TYPE_MAP:Ljava/util/Map;

    .line 196
    const-wide/16 v0, 0x1

    const-string v2, "xxx"

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->SAMPLE_CONTACT_URI:Landroid/net/Uri;

    .line 252
    new-instance v0, Lcom/android/contacts/model/AccountTypeManagerImpl$3;

    invoke-direct {v0}, Lcom/android/contacts/model/AccountTypeManagerImpl$3;-><init>()V

    sput-object v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->ACCOUNT_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 294
    invoke-direct {p0}, Lcom/android/contacts/model/AccountTypeManager;-><init>()V

    .line 204
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/List;

    .line 205
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    .line 206
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mGroupWritableAccounts:Ljava/util/List;

    .line 207
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    .line 208
    sget-object v2, Lcom/android/contacts/model/AccountTypeManagerImpl;->EMPTY_UNMODIFIABLE_ACCOUNT_TYPE_MAP:Ljava/util/Map;

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInvitableAccountTypes:Ljava/util/Map;

    .line 217
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInvitablesCacheIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 223
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInvitablesTaskIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 231
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    .line 232
    new-instance v2, Lcom/android/contacts/model/AccountTypeManagerImpl$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/model/AccountTypeManagerImpl$1;-><init>(Lcom/android/contacts/model/AccountTypeManagerImpl;)V

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mCheckFilterValidityRunnable:Ljava/lang/Runnable;

    .line 239
    new-instance v2, Lcom/android/contacts/model/AccountTypeManagerImpl$2;

    invoke-direct {v2, p0}, Lcom/android/contacts/model/AccountTypeManagerImpl$2;-><init>(Lcom/android/contacts/model/AccountTypeManagerImpl;)V

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 250
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

    .line 295
    iput-object p1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    .line 296
    new-instance v2, Lcom/android/contacts/model/account/FallbackAccountType;

    invoke-direct {v2, p1}, Lcom/android/contacts/model/account/FallbackAccountType;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mFallbackAccountType:Lcom/android/contacts/model/account/AccountType;

    .line 298
    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountManager:Landroid/accounts/AccountManager;

    .line 300
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "AccountChangeListener"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mListenerThread:Landroid/os/HandlerThread;

    .line 301
    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mListenerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 302
    new-instance v2, Lcom/android/contacts/model/AccountTypeManagerImpl$4;

    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mListenerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/contacts/model/AccountTypeManagerImpl$4;-><init>(Lcom/android/contacts/model/AccountTypeManagerImpl;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    .line 316
    new-instance v2, Lcom/android/contacts/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/contacts/model/AccountTypeManagerImpl$InvitableAccountTypeCache;-><init>(Lcom/android/contacts/model/AccountTypeManagerImpl$1;)V

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInvitableAccountTypeCache:Lcom/android/contacts/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    .line 319
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 320
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 321
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 322
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 323
    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 324
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 325
    .local v1, "sdFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 327
    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 331
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 332
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 334
    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v2, p0, v3, v4}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 336
    invoke-static {v5, p0}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    .line 338
    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 339
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/model/AccountTypeManagerImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/model/AccountTypeManagerImpl;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/model/AccountTypeManagerImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/model/AccountTypeManagerImpl;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/model/AccountTypeManagerImpl;Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/model/AccountTypeManagerImpl;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/android/contacts/model/AccountTypeManagerImpl;->findUsableInvitableAccountTypes(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/model/AccountTypeManagerImpl;)Lcom/android/contacts/model/AccountTypeManagerImpl$InvitableAccountTypeCache;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/model/AccountTypeManagerImpl;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInvitableAccountTypeCache:Lcom/android/contacts/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/model/AccountTypeManagerImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/model/AccountTypeManagerImpl;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInvitablesTaskIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private addAccountType(Lcom/android/contacts/model/account/AccountType;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .param p1, "accountType"    # Lcom/android/contacts/model/account/AccountType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/account/AccountType;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/model/account/AccountType;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/account/AccountType;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 564
    .local p2, "accountTypesByTypeAndDataSet":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/contacts/model/account/AccountTypeWithDataSet;Lcom/android/contacts/model/account/AccountType;>;"
    .local p3, "accountTypesByType":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/contacts/model/account/AccountType;>;>;"
    invoke-virtual {p1}, Lcom/android/contacts/model/account/AccountType;->getAccountTypeAndDataSet()Lcom/android/contacts/model/account/AccountTypeWithDataSet;

    move-result-object v1

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    iget-object v1, p1, Lcom/android/contacts/model/account/AccountType;->accountType:Ljava/lang/String;

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 566
    .local v0, "accountsForType":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/account/AccountType;>;"
    if-nez v0, :cond_0

    .line 567
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 569
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    iget-object v1, p1, Lcom/android/contacts/model/account/AccountType;->accountType:Ljava/lang/String;

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    return-void
.end method

.method static findAllInvitableAccountTypes(Landroid/content/Context;Ljava/util/Collection;Ljava/util/Map;)Ljava/util/Map;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/model/account/AccountType;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/model/account/AccountType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 745
    .local p1, "accounts":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/contacts/model/account/AccountWithDataSet;>;"
    .local p2, "accountTypesByTypeAndDataSet":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/contacts/model/account/AccountTypeWithDataSet;Lcom/android/contacts/model/account/AccountType;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    .line 746
    .local v3, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/contacts/model/account/AccountTypeWithDataSet;Lcom/android/contacts/model/account/AccountType;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/account/AccountWithDataSet;

    .line 747
    .local v0, "account":Lcom/android/contacts/model/account/AccountWithDataSet;
    invoke-virtual {v0}, Lcom/android/contacts/model/account/AccountWithDataSet;->getAccountTypeWithDataSet()Lcom/android/contacts/model/account/AccountTypeWithDataSet;

    move-result-object v1

    .line 748
    .local v1, "accountTypeWithDataSet":Lcom/android/contacts/model/account/AccountTypeWithDataSet;
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/account/AccountType;

    .line 749
    .local v4, "type":Lcom/android/contacts/model/account/AccountType;
    if-eqz v4, :cond_0

    .line 750
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 752
    const-string v5, "AccountTypeManager"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 753
    const-string v5, "AccountTypeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " inviteClass="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/contacts/model/account/AccountType;->getInviteContactActivityClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_1
    invoke-virtual {v4}, Lcom/android/contacts/model/account/AccountType;->getInviteContactActivityClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 757
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 760
    .end local v0    # "account":Lcom/android/contacts/model/account/AccountWithDataSet;
    .end local v1    # "accountTypeWithDataSet":Lcom/android/contacts/model/account/AccountTypeWithDataSet;
    .end local v4    # "type":Lcom/android/contacts/model/account/AccountType;
    :cond_2
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    return-object v5
.end method

.method protected static findAuthenticator([Landroid/accounts/AuthenticatorDescription;Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;
    .locals 5
    .param p0, "auths"    # [Landroid/accounts/AuthenticatorDescription;
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 579
    move-object v0, p0

    .local v0, "arr$":[Landroid/accounts/AuthenticatorDescription;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 580
    .local v1, "auth":Landroid/accounts/AuthenticatorDescription;
    iget-object v4, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 584
    .end local v1    # "auth":Landroid/accounts/AuthenticatorDescription;
    :goto_1
    return-object v1

    .line 579
    .restart local v1    # "auth":Landroid/accounts/AuthenticatorDescription;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 584
    .end local v1    # "auth":Landroid/accounts/AuthenticatorDescription;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private findUsableInvitableAccountTypes(Landroid/content/Context;)Ljava/util/Map;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/model/account/AccountType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 774
    invoke-direct {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->getAllInvitableAccountTypes()Ljava/util/Map;

    move-result-object v2

    .line 775
    .local v2, "allInvitables":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/contacts/model/account/AccountTypeWithDataSet;Lcom/android/contacts/model/account/AccountType;>;"
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 776
    sget-object v8, Lcom/android/contacts/model/AccountTypeManagerImpl;->EMPTY_UNMODIFIABLE_ACCOUNT_TYPE_MAP:Ljava/util/Map;

    .line 809
    :goto_0
    return-object v8

    .line 779
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v7

    .line 780
    .local v7, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/contacts/model/account/AccountTypeWithDataSet;Lcom/android/contacts/model/account/AccountType;>;"
    invoke-virtual {v7, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 782
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 783
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/account/AccountTypeWithDataSet;

    .line 784
    .local v1, "accountTypeWithDataSet":Lcom/android/contacts/model/account/AccountTypeWithDataSet;
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/account/AccountType;

    .line 787
    .local v0, "accountType":Lcom/android/contacts/model/account/AccountType;
    sget-object v8, Lcom/android/contacts/model/AccountTypeManagerImpl;->SAMPLE_CONTACT_URI:Landroid/net/Uri;

    invoke-static {v0, v8}, Lcom/android/contacts/ContactsUtils;->getInvitableIntent(Lcom/android/contacts/model/account/AccountType;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    .line 789
    .local v4, "invitableIntent":Landroid/content/Intent;
    if-nez v4, :cond_2

    .line 790
    invoke-virtual {v7, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 793
    :cond_2
    const/high16 v8, 0x10000

    invoke-virtual {v5, v4, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 795
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v6, :cond_3

    .line 798
    invoke-virtual {v7, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 804
    :cond_3
    invoke-virtual {v1, p1}, Lcom/android/contacts/model/account/AccountTypeWithDataSet;->hasData(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 805
    invoke-virtual {v7, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 809
    .end local v0    # "accountType":Lcom/android/contacts/model/account/AccountType;
    .end local v1    # "accountTypeWithDataSet":Lcom/android/contacts/model/account/AccountTypeWithDataSet;
    .end local v4    # "invitableIntent":Landroid/content/Intent;
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_4
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    goto :goto_0
.end method

.method private getAllInvitableAccountTypes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/model/account/AccountType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 701
    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 702
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInvitableAccountTypes:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method ensureAccountsLoaded()V
    .locals 3

    .prologue
    .line 361
    iget-object v1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

    .line 362
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    if-nez v1, :cond_0

    .line 368
    :goto_0
    return-void

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 367
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public getAccountType(Lcom/android/contacts/model/account/AccountTypeWithDataSet;)Lcom/android/contacts/model/account/AccountType;
    .locals 2
    .param p1, "accountTypeWithDataSet"    # Lcom/android/contacts/model/account/AccountTypeWithDataSet;

    .prologue
    .line 688
    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 689
    monitor-enter p0

    .line 690
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/account/AccountType;

    .line 691
    .local v0, "type":Lcom/android/contacts/model/account/AccountType;
    if-eqz v0, :cond_0

    .end local v0    # "type":Lcom/android/contacts/model/account/AccountType;
    :goto_0
    monitor-exit p0

    return-object v0

    .restart local v0    # "type":Lcom/android/contacts/model/account/AccountType;
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mFallbackAccountType:Lcom/android/contacts/model/account/AccountType;

    goto :goto_0

    .line 692
    .end local v0    # "type":Lcom/android/contacts/model/account/AccountType;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAccountTypes(Z)Ljava/util/List;
    .locals 4
    .param p1, "contactWritableOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/account/AccountType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 814
    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 815
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 816
    .local v0, "accountTypes":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/account/AccountType;>;"
    monitor-enter p0

    .line 817
    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/account/AccountType;

    .line 818
    .local v2, "type":Lcom/android/contacts/model/account/AccountType;
    if-eqz p1, :cond_1

    invoke-virtual {v2}, Lcom/android/contacts/model/account/AccountType;->areContactsWritable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 819
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 822
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "type":Lcom/android/contacts/model/account/AccountType;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 823
    return-object v0
.end method

.method public getAccounts(Z)Ljava/util/List;
    .locals 6
    .param p1, "contactWritableOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 592
    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 594
    if-eqz p1, :cond_4

    .line 595
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 596
    .local v3, "rtnAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/account/AccountWithDataSet;>;"
    monitor-enter p0

    .line 597
    :try_start_0
    iget-object v4, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/account/AccountWithDataSet;

    .line 598
    .local v0, "account":Lcom/android/contacts/model/account/AccountWithDataSet;
    iget-object v4, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->isSimContactsFeatureSupported(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 600
    const-string v4, "com.card.contacts"

    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 601
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    .line 602
    .local v2, "phoneType":I
    invoke-static {v2}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->isSimReady(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->getFreeSpace(Landroid/content/ContentResolver;)I

    move-result v4

    if-lez v4, :cond_0

    .line 604
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 617
    .end local v0    # "account":Lcom/android/contacts/model/account/AccountWithDataSet;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "phoneType":I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 607
    .restart local v0    # "account":Lcom/android/contacts/model/account/AccountWithDataSet;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 611
    :cond_2
    const-string v4, "com.card.contacts"

    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 613
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 617
    .end local v0    # "account":Lcom/android/contacts/model/account/AccountWithDataSet;
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 620
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "rtnAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/account/AccountWithDataSet;>;"
    :goto_1
    return-object v3

    :cond_4
    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/List;

    goto :goto_1
.end method

.method public getAccountsWithoutCard(Z)Ljava/util/List;
    .locals 5
    .param p1, "contactWritableOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 628
    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 629
    if-eqz p1, :cond_2

    .line 630
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 631
    .local v2, "rtnAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/account/AccountWithDataSet;>;"
    monitor-enter p0

    .line 632
    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/account/AccountWithDataSet;

    .line 633
    .local v0, "account":Lcom/android/contacts/model/account/AccountWithDataSet;
    const-string v3, "com.card.contacts"

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 635
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 638
    .end local v0    # "account":Lcom/android/contacts/model/account/AccountWithDataSet;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 641
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "rtnAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/account/AccountWithDataSet;>;"
    :goto_1
    return-object v2

    :cond_2
    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/List;

    goto :goto_1
.end method

.method public getGroupWritableAccounts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 650
    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 651
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mGroupWritableAccounts:Ljava/util/List;

    return-object v0
.end method

.method public getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 5
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "dataSet"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 661
    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 662
    const/4 v0, 0x0

    .line 665
    .local v0, "kind":Lcom/android/contacts/model/dataitem/DataKind;
    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/android/contacts/model/account/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountTypeWithDataSet;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/account/AccountType;

    .line 667
    .local v1, "type":Lcom/android/contacts/model/account/AccountType;
    if-eqz v1, :cond_0

    .line 668
    invoke-virtual {v1, p3}, Lcom/android/contacts/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v0

    .line 671
    :cond_0
    if-nez v0, :cond_1

    .line 673
    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mFallbackAccountType:Lcom/android/contacts/model/account/AccountType;

    invoke-virtual {v2, p3}, Lcom/android/contacts/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v0

    .line 676
    :cond_1
    if-nez v0, :cond_2

    .line 677
    const-string v2, "AccountTypeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_2
    return-object v0
.end method

.method public getUsableInvitableAccountTypes()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/model/account/AccountType;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 707
    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 721
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInvitablesCacheIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 722
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInvitableAccountTypeCache:Lcom/android/contacts/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    iget-object v1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/contacts/model/AccountTypeManagerImpl;->findUsableInvitableAccountTypes(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/AccountTypeManagerImpl$InvitableAccountTypeCache;->setCachedValue(Ljava/util/Map;)V

    .line 723
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInvitablesCacheIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 734
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInvitableAccountTypeCache:Lcom/android/contacts/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    invoke-virtual {v0}, Lcom/android/contacts/model/AccountTypeManagerImpl$InvitableAccountTypeCache;->getCachedValue()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 728
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInvitableAccountTypeCache:Lcom/android/contacts/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    invoke-virtual {v0}, Lcom/android/contacts/model/AccountTypeManagerImpl$InvitableAccountTypeCache;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInvitablesTaskIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    new-instance v0, Lcom/android/contacts/model/AccountTypeManagerImpl$FindInvitablesTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/model/AccountTypeManagerImpl$FindInvitablesTask;-><init>(Lcom/android/contacts/model/AccountTypeManagerImpl;Lcom/android/contacts/model/AccountTypeManagerImpl$1;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/AccountTypeManagerImpl$FindInvitablesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected loadAccountsInBackground()V
    .locals 41

    .prologue
    .line 380
    const-string v37, "ContactsPerf"

    const/16 v38, 0x3

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v37

    if-eqz v37, :cond_0

    .line 381
    const-string v37, "ContactsPerf"

    const-string v38, "AccountTypeManager.loadAccountsInBackground start"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_0
    new-instance v35, Landroid/util/TimingLogger;

    const-string v37, "AccountTypeManager"

    const-string v38, "loadAccountsInBackground"

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    .local v35, "timings":Landroid/util/TimingLogger;
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v28

    .line 385
    .local v28, "startTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v30

    .line 388
    .local v30, "startTimeWall":J
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v7

    .line 394
    .local v7, "accountTypesByTypeAndDataSet":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/contacts/model/account/AccountTypeWithDataSet;Lcom/android/contacts/model/account/AccountType;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v6

    .line 396
    .local v6, "accountTypesByType":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/contacts/model/account/AccountType;>;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v10

    .line 397
    .local v10, "allAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/account/AccountWithDataSet;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v15

    .line 398
    .local v15, "contactWritableAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/account/AccountWithDataSet;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v24

    .line 399
    .local v24, "groupWritableAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/account/AccountWithDataSet;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v23

    .line 401
    .local v23, "extensionPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountManager:Landroid/accounts/AccountManager;

    .line 402
    .local v11, "am":Landroid/accounts/AccountManager;
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v16

    .line 405
    .local v16, "cs":Landroid/content/IContentService;
    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/content/IContentService;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v34

    .line 406
    .local v34, "syncs":[Landroid/content/SyncAdapterType;
    invoke-virtual {v11}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v14

    .line 409
    .local v14, "auths":[Landroid/accounts/AuthenticatorDescription;
    move-object/from16 v12, v34

    .local v12, "arr$":[Landroid/content/SyncAdapterType;
    array-length v0, v12

    move/from16 v27, v0

    .local v27, "len$":I
    const/16 v25, 0x0

    .local v25, "i$":I
    :goto_0
    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_b

    aget-object v32, v12, v25

    .line 410
    .local v32, "sync":Landroid/content/SyncAdapterType;
    const-string v37, "com.android.contacts"

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_2

    .line 409
    :cond_1
    :goto_1
    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    .line 417
    :cond_2
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v36, v0

    .line 418
    .local v36, "type":Ljava/lang/String;
    move-object/from16 v0, v36

    invoke-static {v14, v0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->findAuthenticator([Landroid/accounts/AuthenticatorDescription;Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v13

    .line 419
    .local v13, "auth":Landroid/accounts/AuthenticatorDescription;
    if-nez v13, :cond_6

    .line 420
    const-string v37, "AccountTypeManager"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "No authenticator found for type="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ", ignoring it."

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 489
    .end local v12    # "arr$":[Landroid/content/SyncAdapterType;
    .end local v13    # "auth":Landroid/accounts/AuthenticatorDescription;
    .end local v14    # "auths":[Landroid/accounts/AuthenticatorDescription;
    .end local v25    # "i$":I
    .end local v27    # "len$":I
    .end local v32    # "sync":Landroid/content/SyncAdapterType;
    .end local v34    # "syncs":[Landroid/content/SyncAdapterType;
    .end local v36    # "type":Ljava/lang/String;
    :catch_0
    move-exception v17

    .line 490
    .local v17, "e":Landroid/os/RemoteException;
    const-string v37, "AccountTypeManager"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Problem loading accounts: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v17 .. v17}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    .end local v17    # "e":Landroid/os/RemoteException;
    :cond_3
    const-string v37, "Loaded account types"

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountManager:Landroid/accounts/AccountManager;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v9

    .line 496
    .local v9, "accounts":[Landroid/accounts/Account;
    move-object v12, v9

    .local v12, "arr$":[Landroid/accounts/Account;
    array-length v0, v12

    move/from16 v27, v0

    .restart local v27    # "len$":I
    const/16 v25, 0x0

    .restart local v25    # "i$":I
    move/from16 v26, v25

    .end local v25    # "i$":I
    .local v26, "i$":I
    :goto_2
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_11

    aget-object v3, v12, v26

    .line 497
    .local v3, "account":Landroid/accounts/Account;
    const/16 v33, 0x0

    .line 499
    .local v33, "syncable":Z
    :try_start_1
    const-string v37, "com.android.contacts"

    move-object/from16 v0, v16

    move-object/from16 v1, v37

    invoke-interface {v0, v3, v1}, Landroid/content/IContentService;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v37

    if-lez v37, :cond_f

    const/16 v33, 0x1

    .line 504
    :goto_3
    if-eqz v33, :cond_10

    .line 505
    iget-object v0, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 506
    .local v5, "accountTypes":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/account/AccountType;>;"
    if-eqz v5, :cond_10

    .line 509
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .end local v26    # "i$":I
    .local v25, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_10

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/account/AccountType;

    .line 510
    .local v4, "accountType":Lcom/android/contacts/model/account/AccountType;
    new-instance v8, Lcom/android/contacts/model/account/AccountWithDataSet;

    iget-object v0, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v37, v0

    iget-object v0, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v38, v0

    iget-object v0, v4, Lcom/android/contacts/model/account/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-direct {v8, v0, v1, v2}, Lcom/android/contacts/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    .local v8, "accountWithDataSet":Lcom/android/contacts/model/account/AccountWithDataSet;
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    invoke-virtual {v4}, Lcom/android/contacts/model/account/AccountType;->areContactsWritable()Z

    move-result v37

    if-eqz v37, :cond_5

    .line 514
    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    :cond_5
    invoke-virtual {v4}, Lcom/android/contacts/model/account/AccountType;->isGroupMembershipEditable()Z

    move-result v37

    if-eqz v37, :cond_4

    .line 517
    move-object/from16 v0, v24

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 425
    .end local v3    # "account":Landroid/accounts/Account;
    .end local v4    # "accountType":Lcom/android/contacts/model/account/AccountType;
    .end local v5    # "accountTypes":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/account/AccountType;>;"
    .end local v8    # "accountWithDataSet":Lcom/android/contacts/model/account/AccountWithDataSet;
    .end local v9    # "accounts":[Landroid/accounts/Account;
    .end local v33    # "syncable":Z
    .local v12, "arr$":[Landroid/content/SyncAdapterType;
    .restart local v13    # "auth":Landroid/accounts/AuthenticatorDescription;
    .restart local v14    # "auths":[Landroid/accounts/AuthenticatorDescription;
    .local v25, "i$":I
    .restart local v32    # "sync":Landroid/content/SyncAdapterType;
    .restart local v34    # "syncs":[Landroid/content/SyncAdapterType;
    .restart local v36    # "type":Ljava/lang/String;
    :cond_6
    :try_start_2
    const-string v37, "com.google"

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_7

    .line 426
    new-instance v4, Lcom/android/contacts/model/account/GoogleAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    iget-object v0, v13, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-direct {v4, v0, v1}, Lcom/android/contacts/model/account/GoogleAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 440
    .restart local v4    # "accountType":Lcom/android/contacts/model/account/AccountType;
    :goto_5
    invoke-virtual {v4}, Lcom/android/contacts/model/account/AccountType;->isInitialized()Z

    move-result v37

    if-nez v37, :cond_a

    .line 441
    invoke-virtual {v4}, Lcom/android/contacts/model/account/AccountType;->isEmbedded()Z

    move-result v37

    if-eqz v37, :cond_1

    .line 442
    new-instance v37, Ljava/lang/IllegalStateException;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Problem initializing embedded type "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v37

    .line 427
    .end local v4    # "accountType":Lcom/android/contacts/model/account/AccountType;
    :cond_7
    invoke-static/range {v36 .. v36}, Lcom/android/contacts/model/account/ExchangeAccountType;->isExchangeType(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_8

    .line 428
    new-instance v4, Lcom/android/contacts/model/account/ExchangeAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    iget-object v0, v13, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v36

    invoke-direct {v4, v0, v1, v2}, Lcom/android/contacts/model/account/ExchangeAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v4    # "accountType":Lcom/android/contacts/model/account/AccountType;
    goto :goto_5

    .line 430
    .end local v4    # "accountType":Lcom/android/contacts/model/account/AccountType;
    :cond_8
    const-string v37, "com.card.contacts"

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_9

    .line 431
    new-instance v4, Lcom/motorola/contacts/simcontact/account/CardAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    iget-object v0, v13, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-direct {v4, v0, v1}, Lcom/motorola/contacts/simcontact/account/CardAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 432
    .restart local v4    # "accountType":Lcom/android/contacts/model/account/AccountType;
    const-string v37, "AccountTypeManager"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "find card account type,"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    iget-object v0, v13, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 436
    .end local v4    # "accountType":Lcom/android/contacts/model/account/AccountType;
    :cond_9
    const-string v37, "AccountTypeManager"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Registering external account type="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ", packageName="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    iget-object v0, v13, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    new-instance v4, Lcom/android/contacts/model/account/ExternalAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    iget-object v0, v13, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-direct {v4, v0, v1, v2}, Lcom/android/contacts/model/account/ExternalAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .restart local v4    # "accountType":Lcom/android/contacts/model/account/AccountType;
    goto/16 :goto_5

    .line 450
    :cond_a
    iget-object v0, v13, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iput-object v0, v4, Lcom/android/contacts/model/account/AccountType;->accountType:Ljava/lang/String;

    .line 451
    iget v0, v13, Landroid/accounts/AuthenticatorDescription;->labelId:I

    move/from16 v37, v0

    move/from16 v0, v37

    iput v0, v4, Lcom/android/contacts/model/account/AccountType;->titleRes:I

    .line 452
    iget v0, v13, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v37, v0

    move/from16 v0, v37

    iput v0, v4, Lcom/android/contacts/model/account/AccountType;->iconRes:I

    .line 454
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v7, v6}, Lcom/android/contacts/model/AccountTypeManagerImpl;->addAccountType(Lcom/android/contacts/model/account/AccountType;Ljava/util/Map;Ljava/util/Map;)V

    .line 458
    invoke-virtual {v4}, Lcom/android/contacts/model/account/AccountType;->getExtensionPackageNames()Ljava/util/List;

    move-result-object v37

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 462
    .end local v4    # "accountType":Lcom/android/contacts/model/account/AccountType;
    .end local v13    # "auth":Landroid/accounts/AuthenticatorDescription;
    .end local v32    # "sync":Landroid/content/SyncAdapterType;
    .end local v36    # "type":Ljava/lang/String;
    :cond_b
    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->isEmpty()Z

    move-result v37

    if-nez v37, :cond_3

    .line 463
    const-string v37, "AccountTypeManager"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Registering "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->size()I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " extension packages"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "i$":Ljava/util/Iterator;
    :cond_c
    :goto_6
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_3

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 465
    .local v22, "extensionPackage":Ljava/lang/String;
    new-instance v4, Lcom/android/contacts/model/account/ExternalAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    move-object/from16 v0, v37

    move-object/from16 v1, v22

    move/from16 v2, v38

    invoke-direct {v4, v0, v1, v2}, Lcom/android/contacts/model/account/ExternalAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 467
    .local v4, "accountType":Lcom/android/contacts/model/account/ExternalAccountType;
    invoke-virtual {v4}, Lcom/android/contacts/model/account/ExternalAccountType;->isInitialized()Z

    move-result v37

    if-eqz v37, :cond_c

    .line 471
    invoke-virtual {v4}, Lcom/android/contacts/model/account/ExternalAccountType;->hasContactsMetadata()Z

    move-result v37

    if-nez v37, :cond_d

    .line 472
    const-string v37, "AccountTypeManager"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Skipping extension package "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " because"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " it doesn\'t have the CONTACTS_STRUCTURE metadata"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 476
    :cond_d
    iget-object v0, v4, Lcom/android/contacts/model/account/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v37

    if-eqz v37, :cond_e

    .line 477
    const-string v37, "AccountTypeManager"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Skipping extension package "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " because"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " the CONTACTS_STRUCTURE metadata doesn\'t have the accountType"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " attribute"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 482
    :cond_e
    const-string v37, "AccountTypeManager"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Registering extension package account type="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    iget-object v0, v4, Lcom/android/contacts/model/account/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ", dataSet="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    iget-object v0, v4, Lcom/android/contacts/model/account/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ", packageName="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v7, v6}, Lcom/android/contacts/model/AccountTypeManagerImpl;->addAccountType(Lcom/android/contacts/model/account/AccountType;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_6

    .line 499
    .end local v4    # "accountType":Lcom/android/contacts/model/account/ExternalAccountType;
    .end local v14    # "auths":[Landroid/accounts/AuthenticatorDescription;
    .end local v22    # "extensionPackage":Ljava/lang/String;
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v34    # "syncs":[Landroid/content/SyncAdapterType;
    .restart local v3    # "account":Landroid/accounts/Account;
    .restart local v9    # "accounts":[Landroid/accounts/Account;
    .local v12, "arr$":[Landroid/accounts/Account;
    .restart local v26    # "i$":I
    .restart local v33    # "syncable":Z
    :cond_f
    const/16 v33, 0x0

    goto/16 :goto_3

    .line 500
    :catch_1
    move-exception v17

    .line 501
    .restart local v17    # "e":Landroid/os/RemoteException;
    const-string v37, "AccountTypeManager"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Cannot obtain sync flag for account: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 496
    .end local v17    # "e":Landroid/os/RemoteException;
    .end local v26    # "i$":I
    :cond_10
    add-int/lit8 v25, v26, 0x1

    .local v25, "i$":I
    move/from16 v26, v25

    .end local v25    # "i$":I
    .restart local v26    # "i$":I
    goto/16 :goto_2

    .line 524
    .end local v3    # "account":Landroid/accounts/Account;
    .end local v33    # "syncable":Z
    :cond_11
    sget-object v37, Lcom/android/contacts/model/AccountTypeManagerImpl;->ACCOUNT_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v37

    invoke-static {v10, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 525
    sget-object v37, Lcom/android/contacts/model/AccountTypeManagerImpl;->ACCOUNT_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v37

    invoke-static {v15, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 526
    sget-object v37, Lcom/android/contacts/model/AccountTypeManagerImpl;->ACCOUNT_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 528
    const-string v37, "Loaded accounts"

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 530
    monitor-enter p0

    .line 531
    :try_start_3
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    .line 532
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/List;

    .line 533
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    .line 534
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/AccountTypeManagerImpl;->mGroupWritableAccounts:Ljava/util/List;

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-static {v0, v10, v7}, Lcom/android/contacts/model/AccountTypeManagerImpl;->findAllInvitableAccountTypes(Landroid/content/Context;Ljava/util/Collection;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInvitableAccountTypes:Ljava/util/Map;

    .line 537
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 539
    invoke-virtual/range {v35 .. v35}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 540
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 541
    .local v20, "endTimeWall":J
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v18

    .line 543
    .local v18, "endTime":J
    const-string v37, "AccountTypeManager"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Loaded meta-data for "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    move-object/from16 v39, v0

    invoke-interface/range {v39 .. v39}, Ljava/util/Map;->size()I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " account types, "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/List;

    move-object/from16 v39, v0

    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " accounts in "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    sub-long v39, v20, v30

    invoke-virtual/range {v38 .. v40}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "ms(wall) "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    sub-long v39, v18, v28

    invoke-virtual/range {v38 .. v40}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "ms(cpu)"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v37, v0

    if-eqz v37, :cond_12

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 549
    const/16 v37, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

    .line 551
    :cond_12
    const-string v37, "ContactsPerf"

    const/16 v38, 0x3

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v37

    if-eqz v37, :cond_13

    .line 552
    const-string v37, "ContactsPerf"

    const-string v38, "AccountTypeManager.loadAccountsInBackground finish"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mCheckFilterValidityRunnable:Ljava/lang/Runnable;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 558
    return-void

    .line 537
    .end local v18    # "endTime":J
    .end local v20    # "endTimeWall":J
    :catchall_0
    move-exception v37

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v37
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 0
    .param p1, "accounts"    # [Landroid/accounts/Account;

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->loadAccountsInBackground()V

    .line 354
    return-void
.end method

.method public onStatusChanged(I)V
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 344
    return-void
.end method

.method public processBroadcastIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 348
    return-void
.end method
