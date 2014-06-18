.class public abstract Lcom/android/systemui/statusbar/BaseStatusBar;
.super Lcom/android/systemui/SystemUI;
.source "BaseStatusBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;,
        Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;,
        Lcom/android/systemui/statusbar/BaseStatusBar$H;
    }
.end annotation


# instance fields
.field protected mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field protected mCurrentUserId:I

.field private mDeviceProvisioned:Z

.field protected mDisplay:Landroid/view/Display;

.field protected mDreamManager:Landroid/service/dreams/IDreamManager;

.field protected mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

.field protected mInterruptingNotificationEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

.field protected mInterruptingNotificationTime:J

.field protected mLayoutDirection:I

.field private mLocale:Ljava/util/Locale;

.field protected mNotificationBlamePopup:Landroid/widget/PopupMenu;

.field protected mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

.field private mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field protected mPanelSlightlyVisible:Z

.field protected mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

.field mPowerManager:Landroid/os/PowerManager;

.field private mProvisioningObserver:Landroid/database/ContentObserver;

.field private mRecents:Lcom/android/systemui/RecentsComponent;

.field protected mRecentsPreloadOnTouchListener:Landroid/view/View$OnTouchListener;

.field protected mRowHeight:I

.field protected mSearchPanelView:Lcom/android/systemui/SearchPanelView;

.field protected mUseHeadsUp:Z

.field protected mWindowManager:Landroid/view/WindowManager;

.field protected mWindowManagerService:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 109
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->createHandler()Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    .line 112
    new-instance v0, Lcom/android/systemui/statusbar/NotificationData;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    .line 126
    iput v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 128
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    .line 130
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUseHeadsUp:Z

    .line 150
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    .line 162
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mProvisioningObserver:Landroid/database/ContentObserver;

    .line 174
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$2;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 206
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$3;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 554
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$6;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecentsPreloadOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 760
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/BaseStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/BaseStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->startApplicationDetailsActivity(Ljava/lang/String;)V

    return-void
.end method

.method private addNotificationViews(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V
    .locals 1
    .param p1, "key"    # Landroid/os/IBinder;
    .param p2, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 903
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->createNotificationViews(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->addNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 904
    return-void
.end method

.method private startApplicationDetailsActivity(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 408
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package"

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 410
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 411
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v3, v2}, Landroid/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 413
    return-void
.end method

.method private updateNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V
    .locals 7
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 1068
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v2, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1069
    .local v2, "contentView":Landroid/widget/RemoteViews;
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v0, v4, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 1071
    .local v0, "bigContentView":Landroid/widget/RemoteViews;
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v2, v4, v5, v6}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 1072
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getBigContentView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1073
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getBigContentView()Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v0, v4, v5, v6}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 1076
    :cond_0
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v1, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1077
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    if-eqz v1, :cond_1

    .line 1078
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    invoke-virtual {p0, v1, v4, v5, v6}, Lcom/android/systemui/statusbar/BaseStatusBar;->makeClicker(Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    move-result-object v3

    .line 1080
    .local v3, "listener":Landroid/view/View$OnClickListener;
    iget-object v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1084
    .end local v3    # "listener":Landroid/view/View$OnClickListener;
    :goto_0
    return-void

    .line 1082
    :cond_1
    iget-object v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method protected addNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 2
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 894
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/NotificationData;->add(Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v0

    .line 898
    .local v0, "pos":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateExpansionStates()V

    .line 899
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationIcons()V

    .line 900
    return-void
.end method

.method protected applyLegacyRowBackground(Landroid/service/notification/StatusBarNotification;Landroid/view/View;)V
    .locals 6
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "content"    # Landroid/view/View;

    .prologue
    .line 390
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    const v4, 0x1090064

    if-eq v3, v4, :cond_0

    .line 392
    const/4 v2, 0x0

    .line 394
    .local v2, "version":I
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 395
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-lez v2, :cond_1

    const/16 v3, 0x9

    if-ge v2, v3, :cond_1

    .line 400
    const v3, 0x7f02007b

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 405
    .end local v2    # "version":I
    :cond_0
    :goto_1
    return-void

    .line 396
    .restart local v2    # "version":I
    :catch_0
    move-exception v0

    .line 397
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "StatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed looking up ApplicationInfo for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 402
    .end local v0    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const v3, 0x108044b

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public cancelPreloadRecentApps()V
    .locals 2

    .prologue
    .line 470
    const/16 v0, 0x3ff

    .line 471
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 472
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 473
    return-void
.end method

.method protected cancelPreloadingRecentTasksList()V
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0}, Lcom/android/systemui/RecentsComponent;->cancelPreloadingRecentTasksList()V

    .line 590
    :cond_0
    return-void
.end method

.method protected closeRecents()V
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0}, Lcom/android/systemui/RecentsComponent;->closeRecents()V

    .line 596
    :cond_0
    return-void
.end method

.method protected abstract createAndAddWindows()V
.end method

.method protected createHandler()Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1

    .prologue
    .line 540
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    return-object v0
.end method

.method protected createNotificationViews(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 867
    new-instance v8, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-direct {v8, v0, v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    .line 870
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 872
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->icon:I

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->number:I

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 878
    invoke-virtual {v8, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 879
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t create icon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    move-object v0, v7

    .line 889
    :cond_0
    :goto_0
    return-object v0

    .line 883
    :cond_1
    new-instance v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-direct {v0, p1, p2, v8}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 884
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t expand RemoteViews for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    move-object v0, v7

    .line 887
    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    if-eqz v0, :cond_0

    .line 1146
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 1148
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1149
    return-void
.end method

.method public dismissPopups()V
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationBlamePopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationBlamePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 447
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationBlamePopup:Landroid/widget/PopupMenu;

    .line 449
    :cond_0
    return-void
.end method

.method protected getNotificationLongClicker()Landroid/view/View$OnLongClickListener;
    .locals 1

    .prologue
    .line 416
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$5;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    return-object v0
.end method

.method protected abstract getSearchLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
.end method

.method protected abstract getStatusBarView()Landroid/view/View;
.end method

.method protected abstract haltTicker()V
.end method

.method handleNotificationError(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
    .locals 7
    .param p1, "key"    # Landroid/os/IBinder;
    .param p2, "n"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 838
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeNotification(Landroid/os/IBinder;)V

    .line 840
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v5

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 844
    :goto_0
    return-void

    .line 841
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public hideHomeSearchAction()V
    .locals 0

    .prologue
    .line 498
    return-void
.end method

.method public hideSearchPanel()V
    .locals 2

    .prologue
    .line 484
    const/16 v0, 0x401

    .line 485
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 486
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 487
    return-void
.end method

.method public inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z
    .locals 24
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 666
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0d0018

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    .line 668
    .local v19, "minHeight":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0d0019

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    .line 670
    .local v18, "maxHeight":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v22, v0

    .line 671
    .local v22, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {v22 .. v22}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v13, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 672
    .local v13, "contentView":Landroid/widget/RemoteViews;
    invoke-virtual/range {v22 .. v22}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v10, v4, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 673
    .local v10, "bigContentView":Landroid/widget/RemoteViews;
    if-nez v13, :cond_0

    .line 674
    const/4 v4, 0x0

    .line 753
    :goto_0
    return v4

    .line 678
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/LayoutInflater;

    .line 680
    .local v17, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f04001e

    const/4 v6, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 684
    .local v21, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual/range {v22 .. v22}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTag(Ljava/lang/Object;)V

    .line 686
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->workAroundBadLayerDrawableOpacity(Landroid/view/View;)V

    .line 687
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationVetoButton(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)Landroid/view/View;

    move-result-object v23

    .line 688
    .local v23, "vetoButton":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0076

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 694
    const v4, 0x7f08007b

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 695
    .local v12, "content":Landroid/view/ViewGroup;
    const v4, 0x7f08007c

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 697
    .local v9, "adaptive":Landroid/view/ViewGroup;
    const/high16 v4, 0x60000

    invoke-virtual {v12, v4}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 699
    invoke-virtual/range {v22 .. v22}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v5, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 700
    .local v5, "contentIntent":Landroid/app/PendingIntent;
    if-eqz v5, :cond_4

    .line 701
    new-instance v3, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    invoke-virtual/range {v22 .. v22}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v22 .. v22}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v8

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)V

    .line 703
    .local v3, "listener":Landroid/view/View$OnClickListener;
    invoke-virtual {v12, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 708
    .end local v3    # "listener":Landroid/view/View$OnClickListener;
    :goto_1
    const/4 v14, 0x0

    .line 709
    .local v14, "contentViewLocal":Landroid/view/View;
    const/4 v11, 0x0

    .line 711
    .local v11, "bigContentViewLocal":Landroid/view/View;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v13, v4, v9, v6}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v14

    .line 712
    if-eqz v10, :cond_1

    .line 713
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v10, v4, v9, v6}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 722
    :cond_1
    if-eqz v14, :cond_2

    .line 723
    new-instance v20, Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 725
    .local v20, "params":Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;
    move/from16 v0, v19

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;->minHeight:I

    .line 726
    move/from16 v0, v19

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;->maxHeight:I

    .line 727
    move-object/from16 v0, v20

    invoke-virtual {v9, v14, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 729
    .end local v20    # "params":Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;
    :cond_2
    if-eqz v11, :cond_3

    .line 730
    new-instance v20, Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 732
    .restart local v20    # "params":Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;
    add-int/lit8 v4, v19, 0x1

    move-object/from16 v0, v20

    iput v4, v0, Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;->minHeight:I

    .line 733
    move/from16 v0, v18

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;->maxHeight:I

    .line 734
    move-object/from16 v0, v20

    invoke-virtual {v9, v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 736
    .end local v20    # "params":Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;
    :cond_3
    const/4 v4, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setDrawingCacheEnabled(Z)V

    .line 738
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v12}, Lcom/android/systemui/statusbar/BaseStatusBar;->applyLegacyRowBackground(Landroid/service/notification/StatusBarNotification;Landroid/view/View;)V

    .line 747
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 748
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRowHeight:I

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setRowHeight(I)V

    .line 749
    move-object/from16 v0, p1

    iput-object v12, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    .line 750
    move-object/from16 v0, p1

    iput-object v14, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    .line 751
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setBigContentView(Landroid/view/View;)V

    .line 753
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 705
    .end local v11    # "bigContentViewLocal":Landroid/view/View;
    .end local v14    # "contentViewLocal":Landroid/view/View;
    :cond_4
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 716
    .restart local v11    # "bigContentViewLocal":Landroid/view/View;
    .restart local v14    # "contentViewLocal":Landroid/view/View;
    :catch_0
    move-exception v15

    .line 717
    .local v15, "e":Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v22 .. v22}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/0x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 718
    .local v16, "ident":Ljava/lang/String;
    const-string v4, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "couldn\'t inflate view for notification "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 719
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method public isDeviceProvisioned()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    return v0
.end method

.method protected isTopNotification(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 937
    if-eqz p1, :cond_0

    iget-object v0, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeClicker(Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;
    .locals 6
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "id"    # I

    .prologue
    .line 757
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public notificationIsForCurrentUser(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 334
    iget v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 335
    .local v1, "thisUserId":I
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    .line 340
    .local v0, "notificationUserId":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-ne v1, v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected notifyHeadsUpScreenOn(Z)V
    .locals 2
    .param p1, "screenOn"    # Z

    .prologue
    .line 1087
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mInterruptingNotificationEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v0, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/16 v1, 0x404

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1090
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 346
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 347
    .local v1, "locale":Ljava/util/Locale;
    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    .line 348
    .local v0, "ld":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    if-eq v0, v2, :cond_1

    .line 354
    :cond_0
    iput-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    .line 355
    iput v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    .line 356
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->refreshLayout(I)V

    .line 358
    :cond_1
    return-void
.end method

.method public onHeadsUpDismissed()V
    .locals 0

    .prologue
    .line 452
    return-void
.end method

.method protected onHideSearchPanel()V
    .locals 0

    .prologue
    .line 660
    return-void
.end method

.method protected onShowSearchPanel()V
    .locals 0

    .prologue
    .line 663
    return-void
.end method

.method public preloadRecentApps()V
    .locals 2

    .prologue
    .line 463
    const/16 v0, 0x3fe

    .line 464
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 465
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 466
    return-void
.end method

.method protected preloadRecentTasksList()V
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0}, Lcom/android/systemui/RecentsComponent;->preloadRecentTasksList()V

    .line 584
    :cond_0
    return-void
.end method

.method protected abstract refreshLayout(I)V
.end method

.method protected removeNotificationViews(Landroid/os/IBinder;)Landroid/service/notification/StatusBarNotification;
    .locals 5
    .param p1, "key"    # Landroid/os/IBinder;

    .prologue
    .line 847
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/NotificationData;->remove(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 848
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v0, :cond_0

    .line 849
    const-string v2, "StatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeNotification for unknown key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    const/4 v2, 0x0

    .line 858
    :goto_0
    return-object v2

    .line 853
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 854
    .local v1, "rowParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 855
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateExpansionStates()V

    .line 856
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationIcons()V

    .line 858
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    goto :goto_0
.end method

.method public abstract resetHeadsUpDecayTimer()V
.end method

.method protected abstract setAreThereNotifications()V
.end method

.method public setInteracting(IZ)V
    .locals 0
    .param p1, "barWindow"    # I
    .param p2, "interacting"    # Z

    .prologue
    .line 1142
    return-void
.end method

.method protected abstract shouldDisableNavbarGestures()Z
.end method

.method protected shouldInterrupt(Landroid/service/notification/StatusBarNotification;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1093
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    .line 1095
    iget v0, v5, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    iget v0, v5, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget-object v0, v5, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-object v0, v5, Landroid/app/Notification;->vibrate:[J

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    .line 1099
    :goto_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getScore()I

    move-result v3

    const/16 v4, 0xb

    if-lt v3, v4, :cond_3

    move v3, v2

    .line 1100
    :goto_1
    iget-object v4, v5, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_4

    move v4, v2

    .line 1101
    :goto_2
    iget-object v5, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "headsup"

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_5

    move v5, v2

    .line 1104
    :goto_3
    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;

    move-result-object v6

    .line 1105
    if-nez v4, :cond_1

    if-eqz v3, :cond_6

    if-eqz v0, :cond_6

    :cond_1
    if-eqz v5, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->isShowingAndNotHidden()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->isInputRestricted()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    .line 1111
    :goto_4
    if-eqz v0, :cond_7

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v3}, Landroid/service/dreams/IDreamManager;->isDreaming()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_7

    :goto_5
    move v0, v2

    .line 1116
    :goto_6
    return v0

    :cond_2
    move v0, v1

    .line 1095
    goto :goto_0

    :cond_3
    move v3, v1

    .line 1099
    goto :goto_1

    :cond_4
    move v4, v1

    .line 1100
    goto :goto_2

    :cond_5
    move v5, v1

    .line 1101
    goto :goto_3

    :cond_6
    move v0, v1

    .line 1105
    goto :goto_4

    :cond_7
    move v2, v1

    .line 1111
    goto :goto_5

    .line 1112
    :catch_0
    move-exception v1

    .line 1113
    const-string v2, "StatusBar"

    const-string v3, "failed to query dream manager"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method public showHomeSearchAction()V
    .locals 0

    .prologue
    .line 493
    return-void
.end method

.method protected showNotificationEvenIfUnprovisioned(Landroid/service/notification/StatusBarNotification;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1123
    const-string v2, "android"

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1124
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->kind:[Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1125
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v3, v2, Landroid/app/Notification;->kind:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 1127
    const-string v6, "android.system.imeswitcher"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1133
    :cond_0
    :goto_1
    return v0

    .line 1129
    :cond_1
    const-string v6, "android.system.update"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1125
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1133
    goto :goto_1
.end method

.method public showSearchPanel()V
    .locals 2

    .prologue
    .line 477
    const/16 v0, 0x400

    .line 478
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 479
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 480
    return-void
.end method

.method public start()V
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 219
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    .line 220
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 221
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDisplay:Landroid/view/Display;

    .line 223
    const-string v0, "dreams"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 225
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPowerManager:Landroid/os/PowerManager;

    .line 227
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mProvisioningObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v8}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 228
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mProvisioningObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v7, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 232
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 235
    const-class v0, Lcom/android/systemui/RecentsComponent;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/RecentsComponent;

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    .line 237
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    .line 238
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    .line 241
    new-instance v2, Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-direct {v2}, Lcom/android/internal/statusbar/StatusBarIconList;-><init>()V

    .line 242
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 243
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 244
    new-instance v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/statusbar/CommandQueue;-><init>(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;Lcom/android/internal/statusbar/StatusBarIconList;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 246
    const/4 v0, 0x7

    new-array v5, v0, [I

    .line 247
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/statusbar/IStatusBarService;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;Ljava/util/List;Ljava/util/List;[ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->createAndAddWindows()V

    .line 282
    aget v0, v5, v8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->disable(I)V

    .line 283
    aget v0, v5, v7

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->setSystemUiVisibility(II)V

    .line 284
    const/4 v0, 0x2

    aget v0, v5, v0

    if-eqz v0, :cond_3

    move v0, v7

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->topAppWindowChanged(Z)V

    .line 286
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    const/4 v1, 0x3

    aget v1, v5, v1

    const/4 v6, 0x4

    aget v6, v5, v6

    invoke-virtual {p0, v0, v1, v6}, Lcom/android/systemui/statusbar/BaseStatusBar;->setImeWindowStatus(Landroid/os/IBinder;II)V

    .line 287
    const/4 v0, 0x5

    aget v0, v5, v0

    if-eqz v0, :cond_4

    move v0, v7

    :goto_2
    const/4 v1, 0x6

    aget v1, v5, v1

    if-eqz v1, :cond_5

    :goto_3
    invoke-virtual {p0, v0, v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->setHardKeyboardStatus(ZZ)V

    .line 290
    invoke-virtual {v2}, Lcom/android/internal/statusbar/StatusBarIconList;->size()I

    move-result v5

    move v1, v8

    move v0, v8

    .line 292
    :goto_4
    if-ge v1, v5, :cond_6

    .line 293
    invoke-virtual {v2, v1}, Lcom/android/internal/statusbar/StatusBarIconList;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v6

    .line 294
    if-eqz v6, :cond_1

    .line 295
    invoke-virtual {v2, v1}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlot(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v1, v0, v6}, Lcom/android/systemui/statusbar/BaseStatusBar;->addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 296
    add-int/lit8 v0, v0, 0x1

    .line 292
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 251
    :catch_0
    move-exception v0

    .line 254
    const-string v1, "StatusBar"

    const-string v9, "Remote exception in register"

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    instance-of v0, v0, Landroid/os/TransactionTooLargeException;

    if-eqz v0, :cond_0

    .line 259
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-interface {v0, v1, v5, v6}, Lcom/android/internal/statusbar/IStatusBarService;->registerStatusBarWithoutNotifications(Lcom/android/internal/statusbar/IStatusBar;[ILjava/util/List;)V

    .line 261
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 262
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v0, v7

    .line 264
    :cond_2
    :goto_5
    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, v2, v1, v9, v3}, Lcom/android/internal/statusbar/IStatusBarService;->getNextNotification(Lcom/android/internal/statusbar/StatusBarIconList;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    .line 267
    const-string v10, "StatusBar"

    const-string v11, "Success in getting notification"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 269
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 273
    :catch_1
    move-exception v0

    .line 274
    const-string v1, "StatusBar"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Remote exception in registering again. what a terrible failure!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    move v0, v8

    .line 284
    goto/16 :goto_1

    :cond_4
    move v0, v8

    .line 287
    goto/16 :goto_2

    :cond_5
    move v7, v8

    goto/16 :goto_3

    .line 301
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 302
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v2, v0, :cond_7

    .line 303
    :goto_6
    if-ge v8, v2, :cond_8

    .line 304
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->addNotification(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V

    .line 303
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 307
    :cond_7
    const-string v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notification list length mismatch: keys="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " notifications="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_8
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 324
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 325
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 327
    return-void
.end method

.method protected abstract tick(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;Z)V
.end method

.method public toggleRecentApps()V
    .locals 2

    .prologue
    .line 456
    const/16 v0, 0x3fc

    .line 457
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 458
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 459
    return-void
.end method

.method protected toggleRecentsActivity()V
    .locals 4

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDisplay:Landroid/view/Display;

    iget v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getStatusBarView()Landroid/view/View;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/RecentsComponent;->toggleRecents(Landroid/view/Display;ILandroid/view/View;)V

    .line 578
    :cond_0
    return-void
.end method

.method protected abstract updateExpandedViewPos(I)V
.end method

.method protected updateExpansionStates()V
    .locals 5

    .prologue
    .line 907
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    .line 908
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 909
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    .line 910
    .local v1, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v3

    if-nez v3, :cond_0

    .line 911
    add-int/lit8 v3, v0, -0x1

    if-ne v2, v3, :cond_1

    .line 913
    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpanded(Z)V

    .line 908
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 915
    :cond_1
    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserExpanded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 917
    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpanded(Z)V

    goto :goto_1

    .line 926
    .end local v1    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_2
    return-void
.end method

.method public updateNotification(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V
    .locals 10

    .prologue
    .line 943
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->findByKey(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v8

    .line 944
    if-nez v8, :cond_0

    .line 945
    const-string v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNotification for unknown key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    :goto_0
    return-void

    .line 949
    :cond_0
    iget-object v5, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 952
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 953
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v9, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 954
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v2, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 955
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v3, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 974
    iget-object v1, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    if-eqz v1, :cond_7

    invoke-virtual {v9}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    invoke-virtual {v9}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    move v1, v0

    .line 980
    :goto_1
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getBigContentView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getBigContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v2}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v2}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v2}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v2

    if-ne v0, v2, :cond_8

    :cond_2
    const/4 v0, 0x1

    move v2, v0

    .line 987
    :goto_2
    iget-object v0, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 988
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-wide v3, v3, Landroid/app/Notification;->when:J

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-wide v6, v6, Landroid/app/Notification;->when:J

    cmp-long v3, v3, v6

    if-nez v3, :cond_9

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getScore()I

    move-result v3

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getScore()I

    move-result v4

    if-ne v3, v4, :cond_9

    const/4 v3, 0x1

    .line 992
    :goto_3
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_a

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v6, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    const/4 v4, 0x1

    move v7, v4

    .line 995
    :goto_4
    invoke-virtual {p0, v0, v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->isTopNotification(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v0

    .line 996
    if-eqz v1, :cond_d

    if-eqz v2, :cond_d

    if-nez v3, :cond_3

    if-eqz v0, :cond_d

    .line 998
    :cond_3
    iput-object p2, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 1000
    :try_start_0
    invoke-direct {p0, v8, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V

    .line 1002
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mInterruptingNotificationEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mInterruptingNotificationEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    if-ne v5, v0, :cond_4

    .line 1004
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->shouldInterrupt(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1006
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/16 v1, 0x403

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1015
    :cond_4
    :goto_5
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->icon:I

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->number:I

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 1020
    iget-object v1, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1021
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t update icon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1026
    :catch_0
    move-exception v0

    .line 1028
    const-string v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t reapply views for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1029
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeNotificationViews(Landroid/os/IBinder;)Landroid/service/notification/StatusBarNotification;

    .line 1030
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->addNotificationViews(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V

    .line 1049
    :cond_5
    :goto_6
    iget-object v0, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationVetoButton(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)Landroid/view/View;

    .line 1052
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->notificationIsForCurrentUser(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    .line 1056
    if-eqz v7, :cond_6

    if-eqz v0, :cond_6

    .line 1057
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->haltTicker()V

    .line 1058
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->tick(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;Z)V

    .line 1062
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->setAreThereNotifications()V

    .line 1063
    const/16 v0, -0x2710

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateExpandedViewPos(I)V

    goto/16 :goto_0

    .line 974
    :cond_7
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_1

    .line 980
    :cond_8
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_2

    .line 988
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 992
    :cond_a
    const/4 v4, 0x0

    move v7, v4

    goto/16 :goto_4

    .line 1009
    :cond_b
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mInterruptingNotificationEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iput-object p2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 1010
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mInterruptingNotificationEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V

    goto/16 :goto_5

    .line 1024
    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateExpansionStates()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    .line 1037
    :cond_d
    iget-object v0, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserExpanded()Z

    move-result v0

    .line 1038
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeNotificationViews(Landroid/os/IBinder;)Landroid/service/notification/StatusBarNotification;

    .line 1039
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->addNotificationViews(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V

    .line 1040
    if-eqz v0, :cond_5

    .line 1041
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->findByKey(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 1042
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpanded(Z)V

    .line 1043
    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    goto :goto_6
.end method

.method protected abstract updateNotificationIcons()V
.end method

.method protected updateNotificationVetoButton(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)Landroid/view/View;
    .locals 5
    .param p1, "row"    # Landroid/view/View;
    .param p2, "n"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 361
    const v4, 0x7f08007a

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 362
    .local v3, "vetoButton":Landroid/view/View;
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mInterruptingNotificationEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mInterruptingNotificationEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v4, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-ne v4, p1, :cond_1

    .line 364
    :cond_0
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 365
    .local v1, "_pkg":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v2

    .line 366
    .local v2, "_tag":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v0

    .line 367
    .local v0, "_id":I
    new-instance v4, Lcom/android/systemui/statusbar/BaseStatusBar$4;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$4;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 384
    .end local v0    # "_id":I
    .end local v1    # "_pkg":Ljava/lang/String;
    .end local v2    # "_tag":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 385
    return-object v3

    .line 382
    :cond_1
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateSearchPanel()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 506
    const/4 v3, 0x0

    .line 507
    .local v3, "visible":Z
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    if-eqz v4, :cond_0

    .line 508
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v4}, Lcom/android/systemui/SearchPanelView;->isShowing()Z

    move-result v3

    .line 509
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-interface {v4, v5}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 513
    :cond_0
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 516
    .local v2, "tmpRoot":Landroid/widget/LinearLayout;
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 517
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 518
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040022

    invoke-virtual {v4, v5, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/SearchPanelView;

    iput-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    .line 526
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    new-instance v5, Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;

    const/16 v6, 0x401

    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-direct {v5, p0, v6, v7}, Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;ILcom/android/systemui/statusbar/StatusBarPanel;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/SearchPanelView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 528
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/systemui/SearchPanelView;->setVisibility(I)V

    .line 530
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v4}, Lcom/android/systemui/SearchPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->getSearchLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 532
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-interface {v4, v5, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 533
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v4, p0}, Lcom/android/systemui/SearchPanelView;->setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 534
    if-eqz v3, :cond_1

    .line 535
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v8}, Lcom/android/systemui/SearchPanelView;->show(ZZ)V

    .line 537
    :cond_1
    return-void

    .line 521
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040021

    invoke-virtual {v4, v5, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/SearchPanelView;

    iput-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    goto :goto_0
.end method

.method public userSwitched(I)V
    .locals 0
    .param p1, "newUserId"    # I

    .prologue
    .line 331
    return-void
.end method

.method protected visibilityChanged(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 821
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPanelSlightlyVisible:Z

    if-eq v0, p1, :cond_0

    .line 822
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPanelSlightlyVisible:Z

    .line 824
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 829
    :cond_0
    :goto_0
    return-void

    .line 825
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected workAroundBadLayerDrawableOpacity(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 657
    return-void
.end method
