.class public Lcom/android/contacts/calllog/CallLogFragment;
.super Landroid/app/ListFragment;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/android/contacts/activities/CallLogActivity$ViewVisibilityListener;
.implements Lcom/android/contacts/activities/DialtactsActivity$ViewPagerVisibilityListener;
.implements Lcom/android/contacts/calllog/CallLogAdapter$CallFetcher;
.implements Lcom/android/contacts/calllog/CallLogQueryHandler$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;,
        Lcom/android/contacts/calllog/CallLogFragment$ContactsObserver;,
        Lcom/android/contacts/calllog/CallLogFragment$CustomContentObserver;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final VDBG:Z


# instance fields
.field fragmentVisibilty:Z

.field private isTaskifyAvailable:Z

.field private mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

.field private mCallLogFetched:Z

.field private final mCallLogObserver:Landroid/database/ContentObserver;

.field private mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

.field private mContactObserver:Lcom/android/contacts/calllog/CallLogFragment$ContactsObserver;

.field private final mContactsObserver:Landroid/database/ContentObserver;

.field private mEmptyLoaderRunning:Z

.field private final mHandler:Landroid/os/Handler;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mMenuVisible:Z

.field private mRefreshDataRequired:Z

.field private mSelectCallback:Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;

.field private mShowingVoicemailOnly:Z

.field private mStatusMessageAction:Landroid/widget/TextView;

.field private mStatusMessageText:Landroid/widget/TextView;

.field private mStatusMessageView:Landroid/view/View;

.field private mTaskFailedDialog:Landroid/app/AlertDialog;

.field private mTaskifyContextMenuTitle:Ljava/lang/String;

.field private mVoicemailSourcesAvailable:Z

.field private mVoicemailStatusFetched:Z

.field private mVoicemailStatusHelper:Lcom/android/contacts/voicemail/VoicemailStatusHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 142
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->DBG:Z

    sput-boolean v0, Lcom/android/contacts/calllog/CallLogFragment;->DBG:Z

    .line 143
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->VDBG:Z

    sput-boolean v0, Lcom/android/contacts/calllog/CallLogFragment;->VDBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 109
    iput-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mVoicemailSourcesAvailable:Z

    .line 111
    iput-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mShowingVoicemailOnly:Z

    .line 124
    iput-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->fragmentVisibilty:Z

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mTaskifyContextMenuTitle:Ljava/lang/String;

    .line 150
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mHandler:Landroid/os/Handler;

    .line 163
    new-instance v0, Lcom/android/contacts/calllog/CallLogFragment$CustomContentObserver;

    invoke-direct {v0, p0}, Lcom/android/contacts/calllog/CallLogFragment$CustomContentObserver;-><init>(Lcom/android/contacts/calllog/CallLogFragment;)V

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogObserver:Landroid/database/ContentObserver;

    .line 164
    new-instance v0, Lcom/android/contacts/calllog/CallLogFragment$CustomContentObserver;

    invoke-direct {v0, p0}, Lcom/android/contacts/calllog/CallLogFragment$CustomContentObserver;-><init>(Lcom/android/contacts/calllog/CallLogFragment;)V

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mContactsObserver:Landroid/database/ContentObserver;

    .line 165
    iput-boolean v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mRefreshDataRequired:Z

    .line 168
    iput-boolean v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mMenuVisible:Z

    .line 669
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/calllog/CallLogFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/contacts/calllog/CallLogFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/calllog/CallLogFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mRefreshDataRequired:Z

    return p1
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 93
    sget-boolean v0, Lcom/android/contacts/calllog/CallLogFragment;->DBG:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/contacts/calllog/CallLogFragment;)Lcom/android/contacts/calllog/CallLogAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/calllog/CallLogFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 93
    sget-boolean v0, Lcom/android/contacts/calllog/CallLogFragment;->VDBG:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/contacts/calllog/CallLogFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/calllog/CallLogFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mTaskifyContextMenuTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/contacts/calllog/CallLogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/calllog/CallLogFragment;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->showTaskFailedDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/contacts/calllog/CallLogFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/calllog/CallLogFragment;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->isTaskifyAvailable:Z

    return v0
.end method

.method private destroyEmptyLoaderIfAllDataFetched()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 262
    iget-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogFetched:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mVoicemailStatusFetched:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mEmptyLoaderRunning:Z

    if-eqz v0, :cond_0

    .line 263
    iput-boolean v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mEmptyLoaderRunning:Z

    .line 264
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 266
    :cond_0
    return-void
.end method

.method private static isPkgInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1063
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1065
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1069
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 1066
    :catch_0
    move-exception v0

    .line 1067
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1077
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

    .line 1078
    return-void
.end method

.method private refreshData()V
    .locals 1

    .prologue
    .line 571
    sget-boolean v0, Lcom/android/contacts/calllog/CallLogFragment;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "refreshData()"

    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 573
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mRefreshDataRequired:Z

    if-eqz v0, :cond_1

    .line 578
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->startCallsQuery()V

    .line 579
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->startVoicemailStatusQuery()V

    .line 580
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->updateOnEntry()V

    .line 581
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mRefreshDataRequired:Z

    .line 583
    :cond_1
    return-void
.end method

.method private removeMissedCallNotifications()V
    .locals 4

    .prologue
    .line 588
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 590
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 591
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->cancelMissedCallsNotification()V

    .line 599
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return-void

    .line 593
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    const-string v2, "CallLogFragment"

    const-string v3, "Telephony service is null, can\'t call cancelMissedCallsNotification"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 596
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 597
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
    .line 270
    iget-boolean v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mVoicemailSourcesAvailable:Z

    if-ne v1, p1, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    iput-boolean p1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mVoicemailSourcesAvailable:Z

    .line 273
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 274
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method private showTaskFailedDialog()V
    .locals 5

    .prologue
    .line 1052
    const v1, 0x7f0c025f

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/contacts/calllog/CallLogFragment;->mTaskifyContextMenuTitle:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1053
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c025e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0245

    new-instance v3, Lcom/android/contacts/calllog/CallLogFragment$2;

    invoke-direct {v3, p0}, Lcom/android/contacts/calllog/CallLogFragment$2;-><init>(Lcom/android/contacts/calllog/CallLogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mTaskFailedDialog:Landroid/app/AlertDialog;

    .line 1059
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mTaskFailedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1060
    return-void
.end method

.method private startVoicemailStatusQuery()V
    .locals 1

    .prologue
    .line 434
    sget-boolean v0, Lcom/android/contacts/calllog/CallLogFragment;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "startVoicemailStatusQuery()"

    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->fetchVoicemailStatus()V

    .line 436
    return-void
.end method

.method private updateOnEntry()V
    .locals 1

    .prologue
    .line 608
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/calllog/CallLogFragment;->updateOnTransition(Z)V

    .line 609
    return-void
.end method

.method private updateOnExit()V
    .locals 1

    .prologue
    .line 603
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/calllog/CallLogFragment;->updateOnTransition(Z)V

    .line 604
    return-void
.end method

.method private updateOnTransition(Z)V
    .locals 1
    .param p1, "onEntry"    # Z

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 619
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->markNewCallsAsOld()V

    .line 620
    if-nez p1, :cond_0

    .line 621
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->markMissedCallsAsRead()V

    .line 623
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->removeMissedCallNotifications()V

    .line 624
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->updateVoicemailNotifications()V

    .line 626
    :cond_1
    return-void
.end method

.method private updateVoicemailNotifications()V
    .locals 3

    .prologue
    .line 629
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/contacts/calllog/CallLogNotificationsService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 630
    const-string v1, "com.android.contacts.calllog.UPDATE_NOTIFICATIONS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 631
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 632
    return-void
.end method

.method private updateVoicemailStatusMessage(Landroid/database/Cursor;)V
    .locals 6
    .param p1, "statusCursor"    # Landroid/database/Cursor;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 353
    sget-boolean v2, Lcom/android/contacts/calllog/CallLogFragment;->VDBG:Z

    if-eqz v2, :cond_0

    const-string v2, "updateVoicemailStatusMessage()"

    invoke-static {v2}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 355
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mVoicemailStatusHelper:Lcom/android/contacts/voicemail/VoicemailStatusHelper;

    invoke-interface {v2, p1}, Lcom/android/contacts/voicemail/VoicemailStatusHelper;->getStatusMessages(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    .line 356
    .local v1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 357
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mStatusMessageView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 381
    :goto_0
    return-void

    .line 359
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mStatusMessageView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 361
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;

    .line 362
    .local v0, "message":Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;
    invoke-virtual {v0}, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->showInCallLog()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 363
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mStatusMessageText:Landroid/widget/TextView;

    iget v3, v0, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->callLogMessageId:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 365
    :cond_2
    iget v2, v0, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->actionMessageId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 366
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mStatusMessageAction:Landroid/widget/TextView;

    iget v3, v0, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->actionMessageId:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 368
    :cond_3
    iget-object v2, v0, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->actionUri:Landroid/net/Uri;

    if-eqz v2, :cond_4

    .line 369
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mStatusMessageAction:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 370
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mStatusMessageAction:Landroid/widget/TextView;

    new-instance v3, Lcom/android/contacts/calllog/CallLogFragment$1;

    invoke-direct {v3, p0, v0}, Lcom/android/contacts/calllog/CallLogFragment$1;-><init>(Lcom/android/contacts/calllog/CallLogFragment;Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 378
    :cond_4
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mStatusMessageAction:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public callSelectedEntry()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 481
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v5

    .line 482
    .local v5, "position":I
    sget-boolean v6, Lcom/android/contacts/calllog/CallLogFragment;->VDBG:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startVoicemailStatusQuery(): position = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 483
    :cond_0
    if-gez v5, :cond_1

    .line 487
    const/4 v5, 0x0

    .line 489
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {v6, v5}, Lcom/android/common/widget/GroupingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 490
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_2

    .line 491
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 492
    .local v4, "number":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {v6}, Lcom/android/contacts/calllog/CallLogAdapter;->getPhoneNumberHelper()Lcom/android/contacts/calllog/PhoneNumberHelper;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/contacts/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 521
    .end local v4    # "number":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 498
    .restart local v4    # "number":Ljava/lang/String;
    :cond_3
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 499
    const-string v6, "sip"

    invoke-static {v6, v4, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Lcom/android/contacts/ContactsUtils;->getCallIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    .line 515
    .local v3, "intent":Landroid/content/Intent;
    :goto_1
    const/high16 v6, 0x10800000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 517
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    sget-object v7, Lcom/motorola/contacts/util/MEDialer$DialFrom;->RECENT:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    invoke-static {v6, v3, v7}, Lcom/motorola/contacts/util/MEDialer;->onDial(Landroid/content/Context;Landroid/content/Intent;Lcom/motorola/contacts/util/MEDialer$DialFrom;)V

    .line 518
    invoke-virtual {p0, v3}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 519
    sget-boolean v6, Lcom/android/contacts/calllog/CallLogFragment;->VDBG:Z

    if-eqz v6, :cond_2

    const-string v6, "Calling_Kpi_Debug, RecentCall callEntry"

    invoke-static {v6}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 504
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_4
    const/4 v6, 0x4

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 505
    .local v0, "callType":I
    const-string v6, "+"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    if-eq v0, v8, :cond_5

    const/4 v6, 0x3

    if-ne v0, v6, :cond_6

    .line 509
    :cond_5
    const/4 v6, 0x5

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 510
    .local v1, "countryIso":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {v6, v4, v1}, Lcom/android/contacts/calllog/CallLogAdapter;->getBetterNumberFromContacts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 512
    .end local v1    # "countryIso":Ljava/lang/String;
    :cond_6
    const-string v6, "tel"

    invoke-static {v6, v4, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Lcom/android/contacts/ContactsUtils;->getCallIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    .restart local v3    # "intent":Landroid/content/Intent;
    goto :goto_1
.end method

.method public fetchCalls()V
    .locals 1

    .prologue
    .line 414
    sget-boolean v0, Lcom/android/contacts/calllog/CallLogFragment;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "fetchCalls()"

    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 415
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mShowingVoicemailOnly:Z

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->fetchVoicemailOnly()V

    .line 420
    :goto_0
    return-void

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->fetchAllCalls()V

    goto :goto_0
.end method

.method finishMode()V
    .locals 1

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mSelectCallback:Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;

    if-eqz v0, :cond_0

    .line 1073
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mSelectCallback:Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;->finish()V

    .line 1075
    :cond_0
    return-void
.end method

.method getAdapter()Lcom/android/contacts/calllog/CallLogAdapter;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1030
    packed-switch p1, :pswitch_data_0

    .line 1048
    :cond_0
    :goto_0
    return-void

    .line 1032
    :pswitch_0
    const/4 v2, -0x1

    if-ne v2, p2, :cond_0

    .line 1033
    if-eqz p3, :cond_0

    .line 1034
    const-string v2, "create_taskify_result"

    invoke-virtual {p3, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1035
    .local v0, "addToTaskSuccessful":Z
    if-eqz v0, :cond_1

    .line 1036
    const v2, 0x7f0c0260

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/contacts/calllog/CallLogFragment;->mTaskifyContextMenuTitle:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1037
    .local v1, "toaststr":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1039
    .end local v1    # "toaststr":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->showTaskFailedDialog()V

    .line 1040
    const-string v2, "CallLogFragment"

    const-string v3, "onActivityResult can\'t start Taskify activity/app"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1030
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCallsFetched(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 199
    sget-boolean v0, Lcom/android/contacts/calllog/CallLogFragment;->DBG:Z

    if-eqz v0, :cond_0

    .line 200
    const-string v0, "enter onCallsFetched"

    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 203
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_2

    .line 238
    :cond_1
    :goto_0
    return-void

    .line 206
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/calllog/CallLogAdapter;->setLoading(Z)V

    .line 207
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {v0, p1}, Lcom/android/common/widget/GroupingListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 209
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogFetched:Z

    .line 237
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->destroyEmptyLoaderIfAllDataFetched()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 172
    sget-boolean v0, Lcom/android/contacts/calllog/CallLogFragment;->DBG:Z

    if-eqz v0, :cond_0

    .line 173
    const-string v0, "enter onCreate"

    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 175
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 177
    new-instance v0, Lcom/android/contacts/calllog/CallLogQueryHandler;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/contacts/calllog/CallLogQueryHandler;-><init>(Landroid/content/ContentResolver;Lcom/android/contacts/calllog/CallLogQueryHandler$Listener;)V

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    .line 178
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 180
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 182
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mContactsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 184
    invoke-virtual {p0, v3}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 187
    new-instance v0, Lcom/android/contacts/calllog/CallLogFragment$ContactsObserver;

    invoke-direct {v0, p0}, Lcom/android/contacts/calllog/CallLogFragment$ContactsObserver;-><init>(Lcom/android/contacts/calllog/CallLogFragment;)V

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mContactObserver:Lcom/android/contacts/calllog/CallLogFragment$ContactsObserver;

    .line 188
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mContactObserver:Lcom/android/contacts/calllog/CallLogFragment$ContactsObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 189
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.motorola.tasks"

    invoke-static {v0, v1}, Lcom/android/contacts/calllog/CallLogFragment;->isPkgInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->isTaskifyAvailable:Z

    .line 191
    sget-boolean v0, Lcom/android/contacts/calllog/CallLogFragment;->DBG:Z

    if-eqz v0, :cond_1

    .line 192
    const-string v0, "exit onCreate"

    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 194
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 440
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 441
    const v0, 0x7f100003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 442
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 282
    sget-boolean v1, Lcom/android/contacts/calllog/CallLogFragment;->DBG:Z

    if-eqz v1, :cond_0

    .line 283
    const-string v1, "enter onCreateView"

    invoke-static {v1}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 285
    :cond_0
    const v1, 0x7f04000c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 286
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl;

    invoke-direct {v1}, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mVoicemailStatusHelper:Lcom/android/contacts/voicemail/VoicemailStatusHelper;

    .line 287
    const v1, 0x7f07002a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mStatusMessageView:Landroid/view/View;

    .line 288
    const v1, 0x7f070051

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mStatusMessageText:Landroid/widget/TextView;

    .line 289
    const v1, 0x7f070052

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mStatusMessageAction:Landroid/widget/TextView;

    .line 290
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 403
    sget-boolean v0, Lcom/android/contacts/calllog/CallLogFragment;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onDestroy"

    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 404
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 405
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogAdapter;->stopRequestProcessing()V

    .line 406
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogAdapter;->clearAllCache()V

    .line 407
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/widget/GroupingListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 408
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 409
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mContactsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 410
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 1016
    const/4 v3, 0x2

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    .line 1017
    .local v1, "layoutLocation":[I
    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1018
    const-string v3, "Calling_dbg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onListItemClick layoutLocation[0]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " layoutLocation[1]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "position: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/calllog/CallLogListItemViews;

    .line 1022
    .local v2, "views":Lcom/android/contacts/calllog/CallLogListItemViews;
    iget-object v3, v2, Lcom/android/contacts/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/calllog/IntentProvider;

    .line 1023
    .local v0, "intentProvider":Lcom/android/contacts/calllog/IntentProvider;
    if-eqz v0, :cond_0

    .line 1024
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/contacts/calllog/IntentProvider;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1026
    :cond_0
    return-void

    .line 1016
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 460
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 476
    :goto_0
    return v0

    .line 462
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/calllog/ClearCallLogDialog;->show(Landroid/app/FragmentManager;)V

    goto :goto_0

    .line 466
    :pswitch_1
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    invoke-virtual {v1}, Lcom/android/contacts/calllog/CallLogQueryHandler;->fetchVoicemailOnly()V

    .line 467
    iput-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mShowingVoicemailOnly:Z

    goto :goto_0

    .line 471
    :pswitch_2
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    invoke-virtual {v2}, Lcom/android/contacts/calllog/CallLogQueryHandler;->fetchAllCalls()V

    .line 472
    iput-boolean v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mShowingVoicemailOnly:Z

    goto :goto_0

    .line 460
    nop

    :pswitch_data_0
    .packed-switch 0x7f07018e
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 385
    sget-boolean v0, Lcom/android/contacts/calllog/CallLogFragment;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onPause"

    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 386
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->finishMode()V

    .line 387
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 389
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogAdapter;->stopRequestProcessing()V

    .line 390
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 446
    const v1, 0x7f070190

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 449
    .local v0, "itemDeleteAll":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 450
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/calllog/CallLogAdapter;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 451
    const v1, 0x7f07018e

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget-boolean v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mVoicemailSourcesAvailable:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mShowingVoicemailOnly:Z

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 453
    const v1, 0x7f07018f

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/contacts/calllog/CallLogFragment;->mVoicemailSourcesAvailable:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/contacts/calllog/CallLogFragment;->mShowingVoicemailOnly:Z

    if-eqz v4, :cond_3

    :goto_2
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 456
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 450
    goto :goto_0

    :cond_2
    move v1, v3

    .line 451
    goto :goto_1

    :cond_3
    move v2, v3

    .line 453
    goto :goto_2
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 341
    sget-boolean v0, Lcom/android/contacts/calllog/CallLogFragment;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume enter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->fragmentVisibilty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 342
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 344
    iget-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->fragmentVisibilty:Z

    if-eqz v0, :cond_1

    .line 345
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->refreshData()V

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/contacts/calllog/CallLogAdapter;->mIsCallBeenPlaced:Z

    .line 349
    sget-boolean v0, Lcom/android/contacts/calllog/CallLogFragment;->VDBG:Z

    if-eqz v0, :cond_2

    const-string v0, "onResume exit"

    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 350
    :cond_2
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 1095
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {v0, p2}, Lcom/android/contacts/calllog/CallLogAdapter;->onScrollStateChanged(I)V

    .line 1100
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 329
    sget-boolean v0, Lcom/android/contacts/calllog/CallLogFragment;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onStart enter"

    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 332
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcom/android/contacts/util/EmptyLoader$Callback;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/contacts/util/EmptyLoader$Callback;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mEmptyLoaderRunning:Z

    .line 335
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 336
    sget-boolean v0, Lcom/android/contacts/calllog/CallLogFragment;->VDBG:Z

    if-eqz v0, :cond_1

    const-string v0, "onStart exit"

    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 337
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 394
    sget-boolean v0, Lcom/android/contacts/calllog/CallLogFragment;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onStop"

    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 395
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 396
    iget-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->fragmentVisibilty:Z

    if-eqz v0, :cond_1

    .line 397
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->updateOnExit()V

    .line 399
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 295
    sget-boolean v2, Lcom/android/contacts/calllog/CallLogFragment;->DBG:Z

    if-eqz v2, :cond_0

    .line 296
    const-string v2, "enter onViewCreated"

    invoke-static {v2}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 298
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 299
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "currentCountryIso":Ljava/lang/String;
    new-instance v2, Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/android/contacts/calllog/ContactInfoHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/android/contacts/calllog/ContactInfoHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v2, v3, p0, v4}, Lcom/android/contacts/calllog/CallLogAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/calllog/CallLogAdapter$CallFetcher;Lcom/android/contacts/calllog/ContactInfoHelper;)V

    iput-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    .line 302
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {p0, v2}, Landroid/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 304
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 306
    .local v1, "listView":Landroid/widget/ListView;
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 307
    new-instance v2, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;-><init>(Lcom/android/contacts/calllog/CallLogFragment;Lcom/android/contacts/calllog/CallLogFragment$1;)V

    iput-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mSelectCallback:Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;

    .line 308
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mSelectCallback:Lcom/android/contacts/calllog/CallLogFragment$SelectActionModeCallback;

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 309
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 311
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 549
    sget-boolean v1, Lcom/android/contacts/calllog/CallLogFragment;->VDBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVisibilityChanged: visible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 551
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 552
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 553
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 556
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 557
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->refreshData()V

    .line 560
    :cond_2
    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroid/app/Fragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 561
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->finishMode()V

    .line 562
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->updateOnExit()V

    .line 565
    :cond_3
    iput-boolean p1, p0, Lcom/android/contacts/calllog/CallLogFragment;->fragmentVisibilty:Z

    .line 566
    return-void
.end method

.method public onVoicemailStatusFetched(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "statusCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x1

    .line 245
    sget-boolean v1, Lcom/android/contacts/calllog/CallLogFragment;->DBG:Z

    if-eqz v1, :cond_0

    .line 246
    const-string v1, "enter onVoicemailStatusFetched"

    invoke-static {v1}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 249
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 259
    :cond_1
    :goto_0
    return-void

    .line 252
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/contacts/calllog/CallLogFragment;->updateVoicemailStatusMessage(Landroid/database/Cursor;)V

    .line 254
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mVoicemailStatusHelper:Lcom/android/contacts/voicemail/VoicemailStatusHelper;

    invoke-interface {v1, p1}, Lcom/android/contacts/voicemail/VoicemailStatusHelper;->getNumberActivityVoicemailSources(Landroid/database/Cursor;)I

    move-result v0

    .line 255
    .local v0, "activeSources":I
    if-eqz v0, :cond_3

    move v1, v2

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/contacts/calllog/CallLogFragment;->setVoicemailSourcesAvailable(Z)V

    .line 256
    invoke-static {p1}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 257
    iput-boolean v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mVoicemailStatusFetched:Z

    .line 258
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->destroyEmptyLoaderIfAllDataFetched()V

    goto :goto_0

    .line 255
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setMenuVisibility(Z)V
    .locals 1
    .param p1, "menuVisible"    # Z

    .prologue
    .line 530
    sget-boolean v0, Lcom/android/contacts/calllog/CallLogFragment;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "setMenuVisibility()"

    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 532
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 533
    iget-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mMenuVisible:Z

    if-eq v0, p1, :cond_1

    .line 534
    iput-boolean p1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mMenuVisible:Z

    .line 536
    invoke-virtual {p0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 537
    if-nez p1, :cond_2

    .line 538
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->updateOnExit()V

    .line 545
    :cond_1
    :goto_0
    return-void

    .line 540
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->refreshData()V

    goto :goto_0
.end method

.method public startCallsQuery()V
    .locals 2

    .prologue
    .line 423
    sget-boolean v0, Lcom/android/contacts/calllog/CallLogFragment;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "startCallsQuery()"

    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/calllog/CallLogAdapter;->setLoading(Z)V

    .line 426
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->fetchAllCalls()V

    .line 427
    iget-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mShowingVoicemailOnly:Z

    if-eqz v0, :cond_1

    .line 428
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mShowingVoicemailOnly:Z

    .line 429
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 431
    :cond_1
    return-void
.end method
