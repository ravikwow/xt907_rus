.class public Lcom/android/contacts/calllog/CallLogFragment;
.super Landroid/app/ListFragment;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/android/contacts/calllog/CallLogAdapter$CallFetcher;
.implements Lcom/android/contacts/calllog/CallLogQueryHandler$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/calllog/CallLogFragment$CustomContentObserver;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final VDBG:Z


# instance fields
.field private mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

.field private mCallLogFetched:Z

.field private final mCallLogObserver:Landroid/database/ContentObserver;

.field private mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

.field private mCallTypeFilter:I

.field private final mContactsObserver:Landroid/database/ContentObserver;

.field private mEmptyLoaderRunning:Z

.field private mFilterStatusView:Landroid/widget/TextView;

.field private final mHandler:Landroid/os/Handler;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mMenuVisible:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRefreshDataRequired:Z

.field private mScrollToTop:Z

.field private mStatusMessageAction:Landroid/widget/TextView;

.field private mStatusMessageText:Landroid/widget/TextView;

.field private mStatusMessageView:Landroid/view/View;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVoicemailSourcesAvailable:Z

.field private mVoicemailStatusFetched:Z

.field private mVoicemailStatusHelper:Lcom/android/contacts/voicemail/VoicemailStatusHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    sget-boolean v0, Lcom/android/contacts/ContactsUtils;->DBG:Z

    sput-boolean v0, Lcom/android/contacts/calllog/CallLogFragment;->DBG:Z

    .line 75
    sget-boolean v0, Lcom/android/contacts/ContactsUtils;->VDBG:Z

    sput-boolean v0, Lcom/android/contacts/calllog/CallLogFragment;->VDBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 67
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mVoicemailSourcesAvailable:Z

    .line 101
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mHandler:Landroid/os/Handler;

    .line 117
    new-instance v0, Lcom/android/contacts/calllog/CallLogFragment$CustomContentObserver;

    invoke-direct {v0, p0}, Lcom/android/contacts/calllog/CallLogFragment$CustomContentObserver;-><init>(Lcom/android/contacts/calllog/CallLogFragment;)V

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogObserver:Landroid/database/ContentObserver;

    .line 118
    new-instance v0, Lcom/android/contacts/calllog/CallLogFragment$CustomContentObserver;

    invoke-direct {v0, p0}, Lcom/android/contacts/calllog/CallLogFragment$CustomContentObserver;-><init>(Lcom/android/contacts/calllog/CallLogFragment;)V

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mContactsObserver:Landroid/database/ContentObserver;

    .line 119
    iput-boolean v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mRefreshDataRequired:Z

    .line 122
    iput-boolean v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mMenuVisible:Z

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallTypeFilter:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/calllog/CallLogFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/contacts/calllog/CallLogFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/calllog/CallLogFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mRefreshDataRequired:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/contacts/calllog/CallLogFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/calllog/CallLogFragment;
    .param p1, "x1"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/contacts/calllog/CallLogFragment;->updateFilterTypeAndHeader(I)V

    return-void
.end method

.method private destroyEmptyLoaderIfAllDataFetched()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 208
    iget-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogFetched:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mVoicemailStatusFetched:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mEmptyLoaderRunning:Z

    if-eqz v0, :cond_0

    .line 209
    iput-boolean v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mEmptyLoaderRunning:Z

    .line 210
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 212
    :cond_0
    return-void
.end method

.method private hideCurrentFilterMenuOption(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 392
    const/4 v0, 0x0

    .line 393
    .local v0, "item":Landroid/view/MenuItem;
    iget v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallTypeFilter:I

    packed-switch v1, :pswitch_data_0

    .line 410
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_0

    .line 411
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 413
    :cond_0
    return-void

    .line 395
    :pswitch_1
    const v1, 0x7f060152

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 396
    goto :goto_0

    .line 398
    :pswitch_2
    const v1, 0x7f060156

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 399
    goto :goto_0

    .line 401
    :pswitch_3
    const v1, 0x7f060155

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 402
    goto :goto_0

    .line 404
    :pswitch_4
    const v1, 0x7f060154

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 405
    goto :goto_0

    .line 407
    :pswitch_5
    const v1, 0x7f060153

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 393
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 670
    const-string v0, "CallLogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    return-void
.end method

.method private refreshData()V
    .locals 1

    .prologue
    .line 566
    sget-boolean v0, Lcom/android/contacts/calllog/CallLogFragment;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "refreshData()"

    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 568
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mRefreshDataRequired:Z

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogAdapter;->invalidateCache()V

    .line 572
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->startCallsQuery()V

    .line 573
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->startVoicemailStatusQuery()V

    .line 574
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->updateOnEntry()V

    .line 575
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mRefreshDataRequired:Z

    .line 577
    :cond_1
    return-void
.end method

.method private registerPhoneCallReceiver()V
    .locals 3

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_0

    .line 656
    :goto_0
    return-void

    .line 635
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 637
    new-instance v0, Lcom/android/contacts/calllog/CallLogFragment$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/calllog/CallLogFragment$3;-><init>(Lcom/android/contacts/calllog/CallLogFragment;)V

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 655
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method private removeMissedCallNotifications()V
    .locals 4

    .prologue
    .line 582
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 584
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 585
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->cancelMissedCallsNotification()V

    .line 593
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return-void

    .line 587
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    const-string v2, "CallLogFragment"

    const-string v3, "Telephony service is null, can\'t call cancelMissedCallsNotification"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 590
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 591
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CallLogFragment"

    const-string v3, "Failed to clear missed calls notification due to remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setVoicemailSourcesAvailable(Z)V
    .locals 2
    .param p1, "voicemailSourcesAvailable"    # Z

    .prologue
    .line 216
    iget-boolean v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mVoicemailSourcesAvailable:Z

    if-ne v1, p1, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    iput-boolean p1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mVoicemailSourcesAvailable:Z

    .line 219
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 220
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method private showAllFilterMenuOptions(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x1

    .line 416
    const v0, 0x7f060152

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 417
    const v0, 0x7f060156

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 418
    const v0, 0x7f060155

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 419
    const v0, 0x7f060154

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 420
    const v0, 0x7f060153

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 421
    return-void
.end method

.method private showFilterStatus(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mFilterStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 492
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mFilterStatusView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 493
    return-void
.end method

.method private startVoicemailStatusQuery()V
    .locals 1

    .prologue
    .line 363
    sget-boolean v0, Lcom/android/contacts/calllog/CallLogFragment;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "startVoicemailStatusQuery()"

    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->fetchVoicemailStatus()V

    .line 365
    return-void
.end method

.method private unregisterPhoneCallReceiver()V
    .locals 3

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 664
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 666
    :cond_0
    return-void
.end method

.method private updateFilterTypeAndHeader(I)V
    .locals 2
    .param p1, "filterType"    # I

    .prologue
    .line 469
    iput p1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallTypeFilter:I

    .line 471
    packed-switch p1, :pswitch_data_0

    .line 488
    :goto_0
    :pswitch_0
    return-void

    .line 473
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mFilterStatusView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 476
    :pswitch_2
    const v0, 0x7f0b01ca

    invoke-direct {p0, v0}, Lcom/android/contacts/calllog/CallLogFragment;->showFilterStatus(I)V

    goto :goto_0

    .line 479
    :pswitch_3
    const v0, 0x7f0b01cb

    invoke-direct {p0, v0}, Lcom/android/contacts/calllog/CallLogFragment;->showFilterStatus(I)V

    goto :goto_0

    .line 482
    :pswitch_4
    const v0, 0x7f0b01cc

    invoke-direct {p0, v0}, Lcom/android/contacts/calllog/CallLogFragment;->showFilterStatus(I)V

    goto :goto_0

    .line 485
    :pswitch_5
    const v0, 0x7f0b01c9

    invoke-direct {p0, v0}, Lcom/android/contacts/calllog/CallLogFragment;->showFilterStatus(I)V

    goto :goto_0

    .line 471
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateOnEntry()V
    .locals 1

    .prologue
    .line 602
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/calllog/CallLogFragment;->updateOnTransition(Z)V

    .line 603
    return-void
.end method

.method private updateOnExit()V
    .locals 1

    .prologue
    .line 597
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/calllog/CallLogFragment;->updateOnTransition(Z)V

    .line 598
    return-void
.end method

.method private updateOnTransition(Z)V
    .locals 1
    .param p1, "onEntry"    # Z

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 613
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->markNewCallsAsOld()V

    .line 614
    if-nez p1, :cond_0

    .line 615
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->markMissedCallsAsRead()V

    .line 617
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->removeMissedCallNotifications()V

    .line 618
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->updateVoicemailNotifications()V

    .line 620
    :cond_1
    return-void
.end method

.method private updateVoicemailNotifications()V
    .locals 3

    .prologue
    .line 623
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/contacts/calllog/CallLogNotificationsService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 624
    const-string v1, "com.android.contacts.calllog.UPDATE_NOTIFICATIONS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 625
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 626
    return-void
.end method

.method private updateVoicemailStatusMessage(Landroid/database/Cursor;)V
    .locals 6
    .param p1, "statusCursor"    # Landroid/database/Cursor;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 289
    sget-boolean v2, Lcom/android/contacts/calllog/CallLogFragment;->VDBG:Z

    if-eqz v2, :cond_0

    const-string v2, "updateVoicemailStatusMessage()"

    invoke-static {v2}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 290
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mVoicemailStatusHelper:Lcom/android/contacts/voicemail/VoicemailStatusHelper;

    invoke-interface {v2, p1}, Lcom/android/contacts/voicemail/VoicemailStatusHelper;->getStatusMessages(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    .line 291
    .local v1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 292
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mStatusMessageView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 316
    :goto_0
    return-void

    .line 294
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mStatusMessageView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 296
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;

    .line 297
    .local v0, "message":Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;
    invoke-virtual {v0}, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->showInCallLog()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 298
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mStatusMessageText:Landroid/widget/TextView;

    iget v3, v0, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->callLogMessageId:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 300
    :cond_2
    iget v2, v0, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->actionMessageId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 301
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mStatusMessageAction:Landroid/widget/TextView;

    iget v3, v0, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->actionMessageId:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 303
    :cond_3
    iget-object v2, v0, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->actionUri:Landroid/net/Uri;

    if-eqz v2, :cond_4

    .line 304
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mStatusMessageAction:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 305
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mStatusMessageAction:Landroid/widget/TextView;

    new-instance v3, Lcom/android/contacts/calllog/CallLogFragment$2;

    invoke-direct {v3, p0, v0}, Lcom/android/contacts/calllog/CallLogFragment$2;-><init>(Lcom/android/contacts/calllog/CallLogFragment;Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 313
    :cond_4
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mStatusMessageAction:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public configureScreenFromIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "newIntent"    # Landroid/content/Intent;

    .prologue
    .line 261
    const-string v0, "vnd.android.cursor.dir/calls"

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mScrollToTop:Z

    .line 262
    return-void
.end method

.method public fetchCalls()V
    .locals 2

    .prologue
    .line 352
    sget-boolean v0, Lcom/android/contacts/calllog/CallLogFragment;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "fetchCalls()"

    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    iget v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallTypeFilter:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/calllog/CallLogQueryHandler;->fetchCalls(I)V

    .line 354
    return-void
.end method

.method getAdapter()Lcom/android/contacts/calllog/CallLogAdapter;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    return-object v0
.end method

.method public onCallsFetched(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x5

    const/4 v3, 0x0

    .line 145
    sget-boolean v1, Lcom/android/contacts/calllog/CallLogFragment;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "enter onCallsFetched"

    invoke-static {v1}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 148
    :cond_0
    if-nez p1, :cond_1

    .line 187
    :goto_0
    return-void

    .line 150
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 151
    :cond_2
    invoke-static {p1}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_0

    .line 156
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {v1, v3}, Lcom/android/contacts/calllog/CallLogAdapter;->setLoading(Z)V

    .line 157
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {v1, p1}, Lcom/android/contacts/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 159
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 160
    iget-boolean v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mScrollToTop:Z

    if-eqz v1, :cond_5

    .line 161
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 168
    .local v0, "listView":Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    if-le v1, v2, :cond_4

    .line 169
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 173
    :cond_4
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/contacts/calllog/CallLogFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/android/contacts/calllog/CallLogFragment$1;-><init>(Lcom/android/contacts/calllog/CallLogFragment;Landroid/widget/ListView;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 183
    iput-boolean v3, p0, Lcom/android/contacts/calllog/CallLogFragment;->mScrollToTop:Z

    .line 185
    .end local v0    # "listView":Landroid/widget/ListView;
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogFetched:Z

    .line 186
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->destroyEmptyLoaderIfAllDataFetched()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 129
    sget-boolean v0, Lcom/android/contacts/calllog/CallLogFragment;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "enter onCreate"

    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 130
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 132
    new-instance v0, Lcom/android/contacts/calllog/CallLogQueryHandler;

    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/contacts/calllog/CallLogQueryHandler;-><init>(Landroid/content/ContentResolver;Lcom/android/contacts/calllog/CallLogQueryHandler$Listener;)V

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    .line 133
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 135
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 137
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mContactsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 139
    invoke-virtual {p0, v3}, Lcom/android/contacts/calllog/CallLogFragment;->setHasOptionsMenu(Z)V

    .line 140
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 369
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 370
    const v0, 0x7f100002

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 371
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 228
    sget-boolean v1, Lcom/android/contacts/calllog/CallLogFragment;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "enter onCreateView"

    invoke-static {v1}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 229
    :cond_0
    const v1, 0x7f040009

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 230
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl;

    invoke-direct {v1}, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mVoicemailStatusHelper:Lcom/android/contacts/voicemail/VoicemailStatusHelper;

    .line 231
    const v1, 0x7f060026

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mStatusMessageView:Landroid/view/View;

    .line 232
    const v1, 0x7f06004a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mStatusMessageText:Landroid/widget/TextView;

    .line 233
    const v1, 0x7f06004b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mStatusMessageAction:Landroid/widget/TextView;

    .line 234
    const v1, 0x7f06003d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mFilterStatusView:Landroid/widget/TextView;

    .line 235
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 339
    sget-boolean v0, Lcom/android/contacts/calllog/CallLogFragment;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onDestroy"

    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 340
    :cond_0
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 341
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogAdapter;->stopRequestProcessing()V

    .line 342
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogAdapter;->clearAllCache()V

    .line 343
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->closeCursors()V

    .line 344
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 345
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 346
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mContactsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 347
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->unregisterPhoneCallReceiver()V

    .line 348
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, -0x1

    const/4 v0, 0x1

    .line 425
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 464
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 427
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/calllog/ClearCallLogDialog;->show(Landroid/app/FragmentManager;)V

    goto :goto_0

    .line 433
    :pswitch_1
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->registerPhoneCallReceiver()V

    .line 434
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    invoke-virtual {v1, v3}, Lcom/android/contacts/calllog/CallLogQueryHandler;->fetchCalls(I)V

    .line 435
    invoke-direct {p0, v3}, Lcom/android/contacts/calllog/CallLogFragment;->updateFilterTypeAndHeader(I)V

    goto :goto_0

    .line 439
    :pswitch_2
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->registerPhoneCallReceiver()V

    .line 440
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    invoke-virtual {v1, v0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->fetchCalls(I)V

    .line 441
    invoke-direct {p0, v0}, Lcom/android/contacts/calllog/CallLogFragment;->updateFilterTypeAndHeader(I)V

    goto :goto_0

    .line 445
    :pswitch_3
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->registerPhoneCallReceiver()V

    .line 446
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    invoke-virtual {v1, v4}, Lcom/android/contacts/calllog/CallLogQueryHandler;->fetchCalls(I)V

    .line 447
    invoke-direct {p0, v4}, Lcom/android/contacts/calllog/CallLogFragment;->updateFilterTypeAndHeader(I)V

    goto :goto_0

    .line 451
    :pswitch_4
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->registerPhoneCallReceiver()V

    .line 452
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    invoke-virtual {v1, v5}, Lcom/android/contacts/calllog/CallLogQueryHandler;->fetchCalls(I)V

    .line 453
    invoke-direct {p0, v5}, Lcom/android/contacts/calllog/CallLogFragment;->updateFilterTypeAndHeader(I)V

    goto :goto_0

    .line 458
    :pswitch_5
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->unregisterPhoneCallReceiver()V

    .line 459
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    invoke-virtual {v1, v2}, Lcom/android/contacts/calllog/CallLogQueryHandler;->fetchCalls(I)V

    .line 460
    invoke-direct {p0, v2}, Lcom/android/contacts/calllog/CallLogFragment;->updateFilterTypeAndHeader(I)V

    goto :goto_0

    .line 425
    :pswitch_data_0
    .packed-switch 0x7f060152
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 320
    sget-boolean v0, Lcom/android/contacts/calllog/CallLogFragment;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onPause"

    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 321
    :cond_0
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 323
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogAdapter;->stopRequestProcessing()V

    .line 324
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 375
    const v1, 0x7f060157

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 378
    .local v0, "itemDeleteAll":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 379
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/calllog/CallLogAdapter;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 381
    invoke-direct {p0, p1}, Lcom/android/contacts/calllog/CallLogFragment;->showAllFilterMenuOptions(Landroid/view/Menu;)V

    .line 382
    invoke-direct {p0, p1}, Lcom/android/contacts/calllog/CallLogFragment;->hideCurrentFilterMenuOption(Landroid/view/Menu;)V

    .line 385
    iget-boolean v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mVoicemailSourcesAvailable:Z

    if-nez v1, :cond_0

    .line 386
    const v1, 0x7f060153

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 389
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 379
    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 277
    sget-boolean v0, Lcom/android/contacts/calllog/CallLogFragment;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onResume enter: "

    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 278
    :cond_0
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 280
    iget-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mMenuVisible:Z

    if-eqz v0, :cond_1

    .line 281
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->refreshData()V

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/contacts/calllog/CallLogAdapter;->mIsCallBeenPlaced:Z

    .line 286
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 678
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {v0, p2}, Lcom/android/contacts/calllog/CallLogAdapter;->onScrollStateChanged(I)V

    .line 683
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 266
    sget-boolean v0, Lcom/android/contacts/calllog/CallLogFragment;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "enter onStart"

    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 269
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcom/android/contacts/util/EmptyLoader$Callback;

    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/contacts/util/EmptyLoader$Callback;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mEmptyLoaderRunning:Z

    .line 272
    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    .line 273
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 328
    sget-boolean v0, Lcom/android/contacts/calllog/CallLogFragment;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onStop"

    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 329
    :cond_0
    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    .line 331
    iget-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mMenuVisible:Z

    if-eqz v0, :cond_1

    .line 332
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->updateOnExit()V

    .line 335
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 240
    sget-boolean v1, Lcom/android/contacts/calllog/CallLogFragment;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "enter onViewCreated"

    invoke-static {v1}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 241
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 242
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "currentCountryIso":Ljava/lang/String;
    new-instance v1, Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/android/contacts/calllog/ContactInfoHelper;

    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/android/contacts/calllog/ContactInfoHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v1, v2, p0, v3}, Lcom/android/contacts/calllog/CallLogAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/calllog/CallLogAdapter$CallFetcher;Lcom/android/contacts/calllog/ContactInfoHelper;)V

    iput-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    .line 245
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {p0, v1}, Lcom/android/contacts/calllog/CallLogFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 246
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 247
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 248
    return-void
.end method

.method public onVoicemailStatusFetched(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "statusCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x1

    .line 194
    sget-boolean v1, Lcom/android/contacts/calllog/CallLogFragment;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "enter onVoicemailStatusFetched"

    invoke-static {v1}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 205
    :cond_1
    :goto_0
    return-void

    .line 198
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/contacts/calllog/CallLogFragment;->updateVoicemailStatusMessage(Landroid/database/Cursor;)V

    .line 200
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mVoicemailStatusHelper:Lcom/android/contacts/voicemail/VoicemailStatusHelper;

    invoke-interface {v1, p1}, Lcom/android/contacts/voicemail/VoicemailStatusHelper;->getNumberActivityVoicemailSources(Landroid/database/Cursor;)I

    move-result v0

    .line 201
    .local v0, "activeSources":I
    if-eqz v0, :cond_3

    move v1, v2

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/contacts/calllog/CallLogFragment;->setVoicemailSourcesAvailable(Z)V

    .line 202
    invoke-static {p1}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 203
    iput-boolean v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mVoicemailStatusFetched:Z

    .line 204
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->destroyEmptyLoaderIfAllDataFetched()V

    goto :goto_0

    .line 201
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setMenuVisibility(Z)V
    .locals 2
    .param p1, "menuVisible"    # Z

    .prologue
    .line 548
    sget-boolean v0, Lcom/android/contacts/calllog/CallLogFragment;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMenuVisibility(): menuVisible = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 549
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListFragment;->setMenuVisibility(Z)V

    .line 550
    iget-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mMenuVisible:Z

    if-eq v0, p1, :cond_1

    .line 551
    iput-boolean p1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mMenuVisible:Z

    .line 553
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 554
    if-nez p1, :cond_2

    .line 555
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->updateOnExit()V

    .line 562
    :cond_1
    :goto_0
    return-void

    .line 557
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->refreshData()V

    goto :goto_0
.end method

.method public startCallsQuery()V
    .locals 2

    .prologue
    .line 357
    sget-boolean v0, Lcom/android/contacts/calllog/CallLogFragment;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "startCallsQuery()"

    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/calllog/CallLogAdapter;->setLoading(Z)V

    .line 359
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    iget v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallTypeFilter:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/calllog/CallLogQueryHandler;->fetchCalls(I)V

    .line 360
    return-void
.end method
