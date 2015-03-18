.class public Lcom/android/systemui/statusbar/tablet/TabletStatusBar;
.super Lcom/android/systemui/statusbar/BaseStatusBar;
.source "TabletStatusBar.java"

# interfaces
.implements Lcom/android/systemui/recent/RecentsPanelView$OnRecentsPanelVisibilityChangedListener;
.implements Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$OnHardKeyboardEnabledChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;,
        Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;
    }
.end annotation


# instance fields
.field private mAltBackButtonEnabledForIme:Z

.field mBackButton:Landroid/widget/ImageView;

.field mBarContents:Landroid/view/ViewGroup;

.field mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mCompatModeButton:Lcom/android/systemui/statusbar/policy/CompatModeButton;

.field private mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

.field mCompatibilityHelpDialog:Landroid/view/View;

.field mDisabled:I

.field mDoNotDisturb:Lcom/android/systemui/statusbar/DoNotDisturb;

.field mFakeSpaceBar:Landroid/view/View;

.field mFeedbackIconArea:Landroid/view/ViewGroup;

.field mHomeButton:Landroid/view/View;

.field private mHomeSearchActionListener:Landroid/view/View$OnTouchListener;

.field mIconHPadding:I

.field mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

.field mIconSize:I

.field mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

.field private mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

.field mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

.field mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

.field private mMaxNotificationIcons:I

.field mMenuButton:Landroid/view/View;

.field mMenuNavIconWidth:I

.field mNaturalBarHeight:I

.field mNavIconWidth:I

.field mNavigationArea:Landroid/view/ViewGroup;

.field private mNavigationIconHints:I

.field mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field mNotificationArea:Landroid/view/View;

.field mNotificationDNDDummyEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

.field mNotificationDNDMode:Z

.field mNotificationFlingVelocity:I

.field mNotificationIconArea:Lcom/android/systemui/statusbar/tablet/NotificationIconArea;

.field mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

.field mNotificationPanelParams:Landroid/view/WindowManager$LayoutParams;

.field mNotificationPeekIndex:I

.field mNotificationPeekKey:Landroid/os/IBinder;

.field mNotificationPeekRow:Landroid/view/ViewGroup;

.field mNotificationPeekTapDuration:I

.field mNotificationPeekWindow:Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;

.field mNotificationTrigger:Landroid/view/View;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field mRecentButton:Landroid/view/View;

.field mShadow:Landroid/view/View;

.field private mShowSearchHoldoff:I

.field private mShowSearchPanel:Ljava/lang/Runnable;

.field mSpaceBarKeyEvent:Landroid/view/KeyEvent;

.field mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

.field private mSystemUiVisibility:I

.field mTicker:Lcom/android/systemui/statusbar/tablet/TabletTicker;

.field mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 96
    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;-><init>()V

    .line 129
    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNaturalBarHeight:I

    .line 130
    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconSize:I

    .line 131
    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconHPadding:I

    .line 132
    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavIconWidth:I

    .line 133
    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMenuNavIconWidth:I

    .line 134
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMaxNotificationIcons:I

    .line 185
    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSpaceBarKeyEvent:Landroid/view/KeyEvent;

    .line 187
    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatibilityHelpDialog:Landroid/view/View;

    .line 190
    iput v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mDisabled:I

    .line 195
    iput v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSystemUiVisibility:I

    .line 197
    iput v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationIconHints:I

    .line 199
    iput v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mShowSearchHoldoff:I

    .line 203
    new-instance v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$1;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mShowSearchPanel:Ljava/lang/Runnable;

    .line 209
    new-instance v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$2;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHomeSearchActionListener:Landroid/view/View$OnTouchListener;

    .line 1290
    new-instance v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$6;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 1675
    new-instance v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$7;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mShowSearchPanel:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/tablet/TabletStatusBar;
    .param p1, "x1"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "x2"    # Landroid/view/ViewGroup;

    .prologue
    .line 96
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/tablet/TabletStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->visibilityChanged(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/tablet/CompatModePanel;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    return-object v0
.end method

.method static synthetic access$1672(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/tablet/TabletStatusBar;
    .param p1, "x1"    # I

    .prologue
    .line 96
    iget v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSystemUiVisibility:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSystemUiVisibility:I

    return v0
.end method

.method static synthetic access$1676(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/tablet/TabletStatusBar;
    .param p1, "x1"    # I

    .prologue
    .line 96
    iget v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSystemUiVisibility:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSystemUiVisibility:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->notifyUiVisibilityChanged()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/tablet/TabletStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->visibilityChanged(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->hideCompatibilityHelp()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    .prologue
    .line 96
    iget v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mShowSearchHoldoff:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/tablet/TabletStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->visibilityChanged(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/tablet/TabletStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->visibilityChanged(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/recent/RecentsPanelView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method private addStatusBarWindow()V
    .locals 7

    .prologue
    const/4 v1, -0x1

    .line 235
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->makeStatusBarView()Landroid/view/View;

    move-result-object v6

    .line 237
    .local v6, "sb":Landroid/view/View;
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e3

    const v4, 0x800048

    const/4 v5, 0x4

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 254
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->getStatusBarGravity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 255
    const-string v1, "SystemBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 257
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    return-void
.end method

.method private getNotificationPanelHeight()I
    .locals 5

    .prologue
    .line 422
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 423
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 424
    .local v0, "d":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 425
    .local v2, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 426
    const v3, 0x7f0c003d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    return v3
.end method

.method private hasTicker(Landroid/app/Notification;)Z
    .locals 1
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    .line 1032
    iget-object v0, p1, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hideCompatibilityHelp()V
    .locals 2

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatibilityHelpDialog:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1221
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatibilityHelpDialog:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 1222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatibilityHelpDialog:Landroid/view/View;

    .line 1224
    :cond_0
    return-void
.end method

.method private isImmersive()Z
    .locals 2

    .prologue
    .line 1275
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->isTopActivityImmersive()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1279
    :goto_0
    return v1

    .line 1277
    :catch_0
    move-exception v0

    .line 1279
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadNotificationPanel()V
    .locals 13

    .prologue
    .line 1617
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    .line 1619
    .local v0, "N":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1621
    .local v8, "toShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isDeviceProvisioned()Z

    move-result v5

    .line 1623
    .local v5, "provisioned":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 1624
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v11, v0, v3

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    .line 1625
    .local v2, "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v5, :cond_0

    iget-object v10, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/BaseStatusBar;->showNotificationEvenIfUnprovisioned(Lcom/android/internal/statusbar/StatusBarNotification;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1626
    :cond_0
    iget-object v10, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1623
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1630
    .end local v2    # "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1631
    .local v7, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v3, 0x0

    :goto_1
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-ge v3, v10, :cond_4

    .line 1632
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v10, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1633
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1634
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1631
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1638
    .end local v1    # "child":Landroid/view/View;
    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 1639
    .local v6, "remove":Landroid/view/View;
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v10, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_2

    .line 1642
    .end local v6    # "remove":Landroid/view/View;
    :cond_5
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_7

    .line 1643
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 1644
    .local v9, "v":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-nez v10, :cond_6

    .line 1646
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    sub-int/2addr v11, v3

    iget-object v12, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-virtual {v10, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1642
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1650
    .end local v9    # "v":Landroid/view/View;
    :cond_7
    iget-object v10, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->setNotificationCount(I)V

    .line 1651
    iget-object v10, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isDeviceProvisioned()Z

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->setSettingsEnabled(Z)V

    .line 1652
    return-void
.end method

.method private notifyUiVisibilityChanged()V
    .locals 2

    .prologue
    .line 1124
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mWindowManager:Landroid/view/IWindowManager;

    iget v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSystemUiVisibility:I

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->statusBarVisibilityChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1127
    :goto_0
    return-void

    .line 1125
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private reloadAllNotificationIcons()V
    .locals 1

    .prologue
    .line 1520
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    if-nez v0, :cond_0

    .line 1523
    :goto_0
    return-void

    .line 1521
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1522
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->updateNotificationIcons()V

    goto :goto_0
.end method

.method private setNavigationVisibility(I)V
    .locals 7

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1019
    const/high16 v0, 0x200000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    move v5, v1

    .line 1020
    :goto_0
    const/high16 v0, 0x1000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_1

    move v4, v1

    .line 1021
    :goto_1
    const/high16 v0, 0x400000

    and-int/2addr v0, p1

    if-eqz v0, :cond_2

    move v0, v1

    .line 1023
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBackButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    move v0, v3

    :goto_3
    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1024
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHomeButton:Landroid/view/View;

    if-eqz v5, :cond_4

    move v0, v3

    :goto_4
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1025
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentButton:Landroid/view/View;

    if-eqz v4, :cond_5

    :goto_5
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1027
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    const/high16 v3, 0x100000

    and-int/2addr v3, p1

    if-eqz v3, :cond_6

    :goto_6
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->setScreenLocked(Z)V

    .line 1029
    return-void

    :cond_0
    move v5, v2

    .line 1019
    goto :goto_0

    :cond_1
    move v4, v2

    .line 1020
    goto :goto_1

    :cond_2
    move v0, v2

    .line 1021
    goto :goto_2

    :cond_3
    move v0, v2

    .line 1023
    goto :goto_3

    :cond_4
    move v0, v2

    .line 1024
    goto :goto_4

    :cond_5
    move v3, v2

    .line 1025
    goto :goto_5

    :cond_6
    move v1, v2

    .line 1027
    goto :goto_6
.end method

.method private showCompatibilityHelp()V
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 1186
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatibilityHelpDialog:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1217
    :goto_0
    return-void

    .line 1190
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v2, 0x7f030001

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatibilityHelpDialog:Landroid/view/View;

    .line 1191
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatibilityHelpDialog:Landroid/view/View;

    const v2, 0x7f0d000b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1193
    new-instance v2, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$5;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1203
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d8

    const v4, 0x20300

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1211
    const-string v1, "CompatibilityModeDialog"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1212
    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1214
    const v1, 0x10301e7

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1216
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatibilityHelpDialog:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "viewIndex"    # I
    .param p4, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 913
    return-void
.end method

.method public addNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V
    .locals 2

    .prologue
    .line 926
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 928
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->isImmersive()Z

    .line 931
    iget-object v0, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 933
    const-string v0, "TabletStatusBar"

    const-string v1, "Notification has fullScreenIntent and activity is not immersive; sending fullScreenIntent"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :try_start_0
    iget-object v0, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 943
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->setAreThereNotifications()V

    .line 944
    return-void

    .line 940
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->tick(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Z)V

    goto :goto_0

    .line 937
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected addPanelWindows()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/16 v13, 0x55

    const/4 v12, 0x0

    const/4 v11, -0x2

    const/4 v5, -0x3

    .line 261
    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 262
    .local v6, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 265
    .local v8, "res":Landroid/content/res/Resources;
    const v1, 0x7f03001c

    invoke-static {v6, v1, v14}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    .line 267
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->setBar(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    .line 268
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v1, v12, v12}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->show(ZZ)V

    .line 269
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    new-instance v2, Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;

    const/16 v3, 0x3e9

    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;ILcom/android/systemui/statusbar/tablet/StatusBarPanel;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 273
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v3, 0x7f0d0028

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->addIconView(Landroid/widget/ImageView;)V

    .line 274
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v3, 0x7f0d0051

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->addLabelView(Landroid/widget/TextView;)V

    .line 278
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v3, 0x7f0d004a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->addIconView(Landroid/widget/ImageView;)V

    .line 283
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v2, 0x7f0d001a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 285
    .local v7, "mobileRSSI":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v2, 0x7f0d0011

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 287
    .local v10, "wifiRSSI":Landroid/widget/ImageView;
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 288
    if-eqz v7, :cond_0

    .line 289
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/policy/NetworkController;->addPhoneSignalIconView(Landroid/widget/ImageView;)V

    .line 291
    :cond_0
    if-eqz v10, :cond_1

    .line 292
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    invoke-virtual {v1, v10}, Lcom/android/systemui/statusbar/policy/NetworkController;->addWifiIconView(Landroid/widget/ImageView;)V

    .line 294
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v3, 0x7f0d0050

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addWifiLabelView(Landroid/widget/TextView;)V

    .line 297
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v3, 0x7f0d001b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addDataTypeIconView(Landroid/widget/ImageView;)V

    .line 299
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v3, 0x7f0d004d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addMobileLabelView(Landroid/widget/TextView;)V

    .line 301
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBarContents:Landroid/view/ViewGroup;

    const v3, 0x7f0d008d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCombinedLabelView(Landroid/widget/TextView;)V

    .line 330
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationTrigger:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v1, v12, v2, v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->setIgnoreChildren(ILandroid/view/View;Landroid/view/View;)V

    .line 332
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const v1, 0x7f0c003a

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->getNotificationPanelHeight()I

    move-result v2

    const/16 v3, 0x7e8

    const v4, 0x1820300

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanelParams:Landroid/view/WindowManager$LayoutParams;

    .line 342
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput v13, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 343
    const-string v1, "NotificationPanel"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 344
    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 346
    const/high16 v1, 0x1030000

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 349
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v1, v2, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    new-instance v1, Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-direct {v1, v6}, Lcom/android/systemui/recent/RecentTasksLoader;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    .line 353
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->updateRecentsPanel()V

    .line 356
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 357
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHomeButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHomeSearchActionListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 358
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->updateSearchPanel()V

    .line 361
    const v1, 0x7f030019

    invoke-static {v6, v1, v14}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    .line 363
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->setHardKeyboardEnabledChangeListener(Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$OnHardKeyboardEnabledChangeListener;)V

    .line 364
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    new-instance v2, Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;

    const/16 v3, 0x411

    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;ILcom/android/systemui/statusbar/tablet/StatusBarPanel;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 366
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->setImeSwitchButton(Lcom/android/systemui/statusbar/tablet/InputMethodButton;)V

    .line 367
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->setIgnoreChildren(ILandroid/view/View;Landroid/view/View;)V

    .line 368
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x7de

    const v4, 0x1820100

    move v1, v11

    move v2, v11

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 377
    .restart local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    iput v13, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 378
    const-string v1, "InputMethodsPanel"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 379
    const v1, 0x7f0f000c

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 381
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    invoke-virtual {v1, v2, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    const v1, 0x7f030017

    invoke-static {v6, v1, v14}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    .line 386
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    new-instance v2, Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;

    const/16 v3, 0x41b

    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;ILcom/android/systemui/statusbar/tablet/StatusBarPanel;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 388
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModeButton:Lcom/android/systemui/statusbar/policy/CompatModeButton;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->setTrigger(Landroid/view/View;)V

    .line 389
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 390
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModeButton:Lcom/android/systemui/statusbar/policy/CompatModeButton;

    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->setIgnoreChildren(ILandroid/view/View;Landroid/view/View;)V

    .line 391
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0xfa

    const/16 v3, 0x7de

    const v4, 0x1820100

    move v2, v11

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 400
    .restart local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    iput v13, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 401
    const-string v1, "CompatModePanel"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 402
    const v1, 0x1030002

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 404
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    invoke-virtual {v1, v2, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 406
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 408
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v2, 0x7f0d0057

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    .line 409
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 410
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getNotificationLongClicker()Landroid/view/View$OnLongClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setLongPressListener(Landroid/view/View$OnLongClickListener;)V

    .line 412
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/widget/ScrollView;

    .line 413
    .local v9, "scroller":Landroid/widget/ScrollView;
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 414
    return-void

    .line 304
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v9    # "scroller":Landroid/widget/ScrollView;
    :cond_2
    if-eqz v7, :cond_3

    .line 305
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/policy/NetworkController;->addPhoneSignalIconView(Landroid/widget/ImageView;)V

    .line 307
    :cond_3
    if-eqz v10, :cond_4

    .line 308
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v1, v10}, Lcom/android/systemui/statusbar/policy/NetworkController;->addWifiIconView(Landroid/widget/ImageView;)V

    .line 312
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v3, 0x7f0d0038

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addRoamingOverlayIconView(Landroid/widget/ImageView;)V

    .line 316
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v3, 0x7f0d0050

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addWifiLabelView(Landroid/widget/TextView;)V

    .line 319
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v3, 0x7f0d001b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addDataTypeIconView(Landroid/widget/ImageView;)V

    .line 321
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v3, 0x7f0d004f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addDataDirectionOverlayIconView(Landroid/widget/ImageView;)V

    .line 324
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v3, 0x7f0d004d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addMobileLabelView(Landroid/widget/TextView;)V

    .line 326
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBarContents:Landroid/view/ViewGroup;

    const v3, 0x7f0d008d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCombinedLabelView(Landroid/widget/TextView;)V

    goto/16 :goto_0
.end method

.method public animateCollapse()V
    .locals 1

    .prologue
    .line 1070
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateCollapse(I)V

    .line 1071
    return-void
.end method

.method public animateCollapse(I)V
    .locals 6
    .param p1, "flags"    # I

    .prologue
    const/16 v5, 0x41b

    const/16 v4, 0x411

    const/16 v3, 0x401

    const/16 v2, 0x3fd

    const/16 v1, 0x3e9

    .line 1074
    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    .line 1075
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1076
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1078
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1

    .line 1079
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1080
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1082
    :cond_1
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_2

    .line 1083
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1084
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1086
    :cond_2
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_3

    .line 1087
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1088
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1090
    :cond_3
    and-int/lit8 v0, p1, 0x10

    if-nez v0, :cond_4

    .line 1091
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1092
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1095
    :cond_4
    return-void
.end method

.method public animateExpand()V
    .locals 2

    .prologue
    const/16 v1, 0x3e8

    .line 1065
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1066
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1067
    return-void
.end method

.method public clearAll()V
    .locals 1

    .prologue
    .line 1667
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->onClearAllNotifications()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1671
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateCollapse()V

    .line 1672
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->visibilityChanged(Z)V

    .line 1673
    return-void

    .line 1668
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected createAndAddWindows()V
    .locals 0

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->addStatusBarWindow()V

    .line 231
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->addPanelWindows()V

    .line 232
    return-void
.end method

.method protected createHandler()Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 2

    .prologue
    .line 775
    new-instance v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Lcom/android/systemui/statusbar/tablet/TabletStatusBar$1;)V

    return-object v0
.end method

.method public disable(I)V
    .locals 10

    .prologue
    const/high16 v9, 0x20000

    const/high16 v8, 0x10000

    const/16 v7, 0x3fd

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 965
    iget v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mDisabled:I

    .line 966
    xor-int v4, p1, v0

    .line 967
    iput p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mDisabled:I

    .line 970
    const/high16 v0, 0x800000

    and-int/2addr v0, v4

    if-eqz v0, :cond_0

    .line 971
    const/high16 v0, 0x800000

    and-int/2addr v0, p1

    if-nez v0, :cond_5

    move v0, v1

    .line 972
    :goto_0
    const-string v5, "TabletStatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DISABLE_CLOCK: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v0, :cond_6

    const-string v3, "no"

    :goto_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->showClock(Z)V

    .line 975
    :cond_0
    const/high16 v0, 0x100000

    and-int/2addr v0, v4

    if-eqz v0, :cond_1

    .line 976
    const/high16 v0, 0x100000

    and-int/2addr v0, p1

    if-nez v0, :cond_7

    .line 977
    :goto_2
    const-string v3, "TabletStatusBar"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DISABLE_SYSTEM_INFO: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_8

    const-string v0, "no"

    :goto_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationTrigger:Landroid/view/View;

    if-eqz v1, :cond_9

    move v0, v2

    :goto_4
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 980
    :cond_1
    and-int v0, v4, v8

    if-eqz v0, :cond_2

    .line 981
    and-int v0, p1, v8

    if-eqz v0, :cond_2

    .line 982
    const-string v0, "TabletStatusBar"

    const-string v1, "DISABLE_EXPAND: yes"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateCollapse()V

    .line 984
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->visibilityChanged(Z)V

    .line 987
    :cond_2
    and-int v0, v4, v9

    if-eqz v0, :cond_d

    .line 988
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/Prefs;->read(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "do_not_disturb"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationDNDMode:Z

    .line 991
    and-int v0, p1, v9

    if-eqz v0, :cond_b

    .line 992
    const-string v1, "TabletStatusBar"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DISABLE_NOTIFICATION_ICONS: yes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationDNDMode:Z

    if-eqz v0, :cond_a

    const-string v0, " (DND)"

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mTicker:Lcom/android/systemui/statusbar/tablet/TabletTicker;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->halt()V

    .line 999
    :goto_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->reloadAllNotificationIcons()V

    .line 1005
    :cond_3
    :goto_7
    const/high16 v0, 0x1600000

    and-int/2addr v0, v4

    if-eqz v0, :cond_4

    .line 1008
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->setNavigationVisibility(I)V

    .line 1010
    const/high16 v0, 0x1000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_4

    .line 1012
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1013
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1016
    :cond_4
    return-void

    :cond_5
    move v0, v2

    .line 971
    goto/16 :goto_0

    .line 972
    :cond_6
    const-string v3, "yes"

    goto/16 :goto_1

    :cond_7
    move v1, v2

    .line 976
    goto/16 :goto_2

    .line 977
    :cond_8
    const-string v0, "yes"

    goto/16 :goto_3

    .line 978
    :cond_9
    const/16 v0, 0x8

    goto :goto_4

    .line 992
    :cond_a
    const-string v0, ""

    goto :goto_5

    .line 995
    :cond_b
    const-string v1, "TabletStatusBar"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DISABLE_NOTIFICATION_ICONS: no"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationDNDMode:Z

    if-eqz v0, :cond_c

    const-string v0, " (DND)"

    :goto_8
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_c
    const-string v0, ""

    goto :goto_8

    .line 1000
    :cond_d
    const/high16 v0, 0x80000

    and-int/2addr v0, v4

    if-eqz v0, :cond_3

    .line 1001
    const/high16 v0, 0x80000

    and-int/2addr v0, p1

    if-eqz v0, :cond_3

    .line 1002
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mTicker:Lcom/android/systemui/statusbar/tablet/TabletTicker;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->halt()V

    goto :goto_7
.end method

.method public doneTicking()V
    .locals 2

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mFeedbackIconArea:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1062
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1701
    const-string v0, "mDisabled=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1702
    iget v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mDisabled:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1703
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1704
    const-string v0, "mMSimNetworkController:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1705
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1706
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    .line 1705
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1709
    :cond_0
    const-string v0, "mNetworkController:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1710
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/NetworkController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1712
    :cond_1
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getRecentsLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .prologue
    .line 675
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, -0x1

    const/16 v3, 0x7e8

    const v4, 0x1820100

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 684
    const/16 v1, 0x53

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 685
    const-string v1, "RecentsPanel"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 686
    const v1, 0x10301e9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 687
    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 690
    return-object v0
.end method

.method protected getSearchLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 695
    .line 696
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e8

    const v4, 0x820100

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 704
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDisplay:Landroid/view/Display;

    invoke-static {v1}, Landroid/app/ActivityManager;->isHighEndGfx(Landroid/view/Display;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 705
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 710
    :goto_0
    const/16 v1, 0x53

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 711
    const-string v1, "SearchPanel"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 713
    const v1, 0x10301e9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 714
    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 716
    return-object v0

    .line 707
    :cond_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 708
    const v1, 0x3f333333

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    goto :goto_0
.end method

.method protected getStatusBarGravity()I
    .locals 1

    .prologue
    .line 756
    const/16 v0, 0x57

    return v0
.end method

.method public getStatusBarHeight()I
    .locals 2

    .prologue
    .line 750
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

.method protected haltTicker()V
    .locals 1

    .prologue
    .line 1722
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mTicker:Lcom/android/systemui/statusbar/tablet/TabletTicker;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->halt()V

    .line 1723
    return-void
.end method

.method public hideSearchPanel()V
    .locals 3

    .prologue
    .line 742
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideSearchPanel()V

    .line 743
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 745
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 746
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    invoke-virtual {v1, v2, v0}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 747
    return-void
.end method

.method protected isTopNotification(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    const/4 v0, 0x0

    .line 1716
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1717
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected loadDimens()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 448
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 450
    .local v6, "res":Landroid/content/res/Resources;
    const v7, 0x105000b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNaturalBarHeight:I

    .line 453
    const v7, 0x1050011

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 455
    .local v2, "newIconSize":I
    const v7, 0x7f0c0014

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 457
    .local v1, "newIconHPadding":I
    const v7, 0x7f0c0021

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 458
    .local v4, "newNavIconWidth":I
    const v7, 0x7f0c0022

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 460
    .local v3, "newMenuNavIconWidth":I
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationArea:Landroid/view/ViewGroup;

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavIconWidth:I

    if-eq v4, v7, :cond_0

    .line 461
    iput v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavIconWidth:I

    .line 463
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavIconWidth:I

    invoke-direct {v0, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 465
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBackButton:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 466
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHomeButton:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentButton:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 470
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationArea:Landroid/view/ViewGroup;

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMenuNavIconWidth:I

    if-eq v3, v7, :cond_1

    .line 471
    iput v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMenuNavIconWidth:I

    .line 473
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMenuNavIconWidth:I

    invoke-direct {v0, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 475
    .restart local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMenuButton:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 478
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconHPadding:I

    if-ne v1, v7, :cond_2

    iget v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconSize:I

    if-eq v2, v7, :cond_3

    .line 480
    :cond_2
    iput v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconHPadding:I

    .line 481
    iput v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconSize:I

    .line 482
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->reloadAllNotificationIcons()V

    .line 485
    :cond_3
    const/high16 v7, 0x7f0b0000

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 486
    .local v5, "numIcons":I
    iget v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMaxNotificationIcons:I

    if-eq v5, v7, :cond_4

    .line 487
    iput v5, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMaxNotificationIcons:I

    .line 489
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->reloadAllNotificationIcons()V

    .line 491
    :cond_4
    return-void
.end method

.method protected makeStatusBarView()Landroid/view/View;
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x3

    const-wide/16 v8, 0x0

    const/4 v7, 0x2

    .line 498
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 500
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mWindowManager:Landroid/view/IWindowManager;

    .line 503
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->loadDimens()V

    .line 505
    const v0, 0x7f030016

    invoke-static {v4, v0, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    .line 507
    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    .line 509
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->setHandler(Landroid/os/Handler;)V

    .line 514
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 515
    const-string v1, "TabletStatusBar"

    const-string v2, "Tablet device cannot show navigation bar and system bar"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    :cond_0
    :goto_0
    const v1, 0x7f0d006f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBarContents:Landroid/view/ViewGroup;

    .line 523
    const v1, 0x7f0d0072

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationArea:Landroid/view/View;

    .line 524
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationArea:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 527
    const v1, 0x7f0d008c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationTrigger:Landroid/view/View;

    .line 530
    const v1, 0x7f0d0024

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/tablet/NotificationIconArea;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationIconArea:Lcom/android/systemui/statusbar/tablet/NotificationIconArea;

    .line 533
    const v1, 0x7f0d0021

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    .line 535
    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 536
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekTapDuration:I

    .line 537
    const/16 v1, 0x12c

    iput v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationFlingVelocity:I

    .line 539
    new-instance v1, Lcom/android/systemui/statusbar/tablet/TabletTicker;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/tablet/TabletTicker;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mTicker:Lcom/android/systemui/statusbar/tablet/TabletTicker;

    .line 542
    new-instance v1, Lcom/android/systemui/statusbar/policy/LocationController;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/policy/LocationController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    .line 545
    new-instance v1, Lcom/android/systemui/statusbar/DoNotDisturb;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/DoNotDisturb;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mDoNotDisturb:Lcom/android/systemui/statusbar/DoNotDisturb;

    .line 547
    new-instance v1, Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/policy/BatteryController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 548
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    const v1, 0x7f0d0028

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->addIconView(Landroid/widget/ImageView;)V

    .line 549
    new-instance v1, Lcom/android/systemui/statusbar/policy/BluetoothController;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/policy/BluetoothController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 550
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    const v1, 0x7f0d004a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->addIconView(Landroid/widget/ImageView;)V

    .line 552
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 553
    const v1, 0x7f0d0027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/MSimSignalClusterView;

    .line 556
    new-instance v2, Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    move v2, v3

    .line 557
    :goto_1
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 558
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    invoke-virtual {v5, v1, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->addSignalCluster(Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimSignalCluster;I)V

    .line 557
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 561
    :cond_1
    const v1, 0x7f0d003b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/SignalClusterView;

    .line 564
    new-instance v2, Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/android/systemui/statusbar/policy/NetworkController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 565
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V

    .line 569
    :cond_2
    const v1, 0x7f0d002f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBackButton:Landroid/widget/ImageView;

    .line 570
    const v1, 0x7f0d0070

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationArea:Landroid/view/ViewGroup;

    .line 571
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationArea:Landroid/view/ViewGroup;

    const v2, 0x7f0d0030

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHomeButton:Landroid/view/View;

    .line 572
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationArea:Landroid/view/ViewGroup;

    const v2, 0x7f0d0032

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMenuButton:Landroid/view/View;

    .line 573
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationArea:Landroid/view/ViewGroup;

    const v2, 0x7f0d0031

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentButton:Landroid/view/View;

    .line 574
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 576
    new-instance v1, Landroid/animation/LayoutTransition;

    invoke-direct {v1}, Landroid/animation/LayoutTransition;-><init>()V

    .line 577
    const-wide/16 v5, 0xfa

    invoke-virtual {v1, v5, v6}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 579
    invoke-virtual {v1, v3, v8, v9}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 580
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v8, v9}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 581
    new-instance v2, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$3;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    invoke-virtual {v1, v2}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 591
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationArea:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 593
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationArea:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 596
    const v1, 0x7f0d0089

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mFeedbackIconArea:Landroid/view/ViewGroup;

    .line 597
    const v1, 0x7f0d008a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    .line 599
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 601
    const v1, 0x7f0d008b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/CompatModeButton;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModeButton:Lcom/android/systemui/statusbar/policy/CompatModeButton;

    .line 602
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModeButton:Lcom/android/systemui/statusbar/policy/CompatModeButton;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 603
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModeButton:Lcom/android/systemui/statusbar/policy/CompatModeButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 606
    const v1, 0x7f0d0071

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mFakeSpaceBar:Landroid/view/View;

    .line 609
    const v1, 0x7f0d0074

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mShadow:Landroid/view/View;

    .line 610
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mShadow:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$4;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 639
    new-instance v2, Landroid/animation/LayoutTransition;

    invoke-direct {v2}, Landroid/animation/LayoutTransition;-><init>()V

    .line 640
    const-string v1, "alpha"

    new-array v3, v7, [F

    fill-array-data v3, :array_0

    invoke-static {v11, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v2, v7, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 642
    const-wide/16 v5, 0xc8

    invoke-virtual {v2, v7, v5, v6}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 643
    invoke-virtual {v2, v7, v8, v9}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 644
    const-string v1, "alpha"

    new-array v3, v7, [F

    fill-array-data v3, :array_1

    invoke-static {v11, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v2, v10, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 646
    const-wide/16 v5, 0x2ee

    invoke-virtual {v2, v10, v5, v6}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 647
    invoke-virtual {v2, v10, v8, v9}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 648
    const v1, 0x7f0d006e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 650
    new-instance v2, Landroid/animation/LayoutTransition;

    invoke-direct {v2}, Landroid/animation/LayoutTransition;-><init>()V

    .line 651
    const-string v1, "alpha"

    new-array v3, v7, [F

    fill-array-data v3, :array_2

    invoke-static {v11, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v2, v7, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 653
    const-wide/16 v5, 0x2ee

    invoke-virtual {v2, v7, v5, v6}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 654
    invoke-virtual {v2, v7, v8, v9}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 655
    const-string v1, "alpha"

    new-array v3, v7, [F

    fill-array-data v3, :array_3

    invoke-static {v11, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v2, v10, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 657
    invoke-virtual {v2, v10, v8, v9}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 658
    invoke-virtual {v2, v10, v8, v9}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 659
    const v1, 0x7f0d0073

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 662
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->setAreThereNotifications()V

    .line 665
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 666
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 667
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 668
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 670
    return-object v0

    .line 517
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 640
    nop

    :array_0
    .array-data 4
        0x3f000000
        0x3f800000
    .end array-data

    .line 644
    :array_1
    .array-data 4
        0x3f800000
        0x0
    .end array-data

    .line 651
    :array_2
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    .line 655
    :array_3
    .array-data 4
        0x3f800000
        0x0
    .end array-data
.end method

.method public onClickCompatModeButton()V
    .locals 3

    .prologue
    .line 1321
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const/16 v0, 0x41a

    .line 1323
    .local v0, "msg":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1324
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1325
    return-void

    .line 1321
    .end local v0    # "msg":I
    :cond_0
    const/16 v0, 0x41b

    goto :goto_0
.end method

.method public onClickInputMethodSwitchButton()V
    .locals 3

    .prologue
    .line 1314
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const/16 v0, 0x410

    .line 1316
    .local v0, "msg":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1317
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1318
    return-void

    .line 1314
    .end local v0    # "msg":I
    :cond_0
    const/16 v0, 0x411

    goto :goto_0
.end method

.method public onClickRecentButton()V
    .locals 2

    .prologue
    .line 1304
    iget v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mDisabled:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 1305
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x3fd

    .line 1307
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1308
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1310
    :cond_0
    return-void

    .line 1305
    :cond_1
    const/16 v0, 0x3fc

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->loadDimens()V

    .line 437
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanelParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->getNotificationPanelHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 438
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanelParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 440
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->updateValuesFromResources()V

    .line 441
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mShowSearchHoldoff:I

    .line 443
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->updateSearchPanel()V

    .line 445
    return-void
.end method

.method public onHardKeyboardEnabledChange(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1268
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->setHardKeyboardEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1271
    :goto_0
    return-void

    .line 1269
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onRecentsPanelVisibilityChanged(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 1248
    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mAltBackButtonEnabledForIme:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1249
    .local v0, "altBack":Z
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationIconHints:I

    or-int/lit8 v1, v1, 0x8

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/CommandQueue;->setNavigationIconHints(I)V

    .line 1252
    return-void

    .line 1248
    .end local v0    # "altBack":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1249
    .restart local v0    # "altBack":Z
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationIconHints:I

    and-int/lit8 v1, v1, -0x9

    goto :goto_1
.end method

.method public removeIcon(Ljava/lang/String;II)V
    .locals 0
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "viewIndex"    # I

    .prologue
    .line 922
    return-void
.end method

.method public removeNotification(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "key"    # Landroid/os/IBinder;

    .prologue
    .line 948
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;

    .line 949
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mTicker:Lcom/android/systemui/statusbar/tablet/TabletTicker;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->remove(Landroid/os/IBinder;)V

    .line 950
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->setAreThereNotifications()V

    .line 951
    return-void
.end method

.method public resetNotificationPeekFadeTimer()V
    .locals 4

    .prologue
    const/16 v3, 0x3eb

    .line 1414
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1415
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1417
    return-void
.end method

.method protected setAreThereNotifications()V
    .locals 2

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    if-eqz v0, :cond_0

    .line 1286
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->hasClearableItems()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->setClearable(Z)V

    .line 1288
    :cond_0
    return-void

    .line 1286
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHardKeyboardStatus(ZZ)V
    .locals 1
    .param p1, "available"    # Z
    .param p2, "enabled"    # Z

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->setHardKeyboardStatus(Z)V

    .line 1261
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->updateNotificationIcons()V

    .line 1262
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->setHardKeyboardStatus(ZZ)V

    .line 1263
    return-void
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;II)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1227
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, p1, v1}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->setImeWindowStatus(Landroid/os/IBinder;Z)V

    .line 1229
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->updateNotificationIcons()V

    .line 1230
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->setImeToken(Landroid/os/IBinder;)V

    .line 1232
    const/4 v1, 0x2

    if-eq p3, v1, :cond_0

    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_2

    :cond_0
    move v0, v2

    .line 1234
    .local v0, "altBack":Z
    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mAltBackButtonEnabledForIme:Z

    .line 1236
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationIconHints:I

    or-int/lit8 v1, v1, 0x8

    :goto_2
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/CommandQueue;->setNavigationIconHints(I)V

    .line 1241
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mFakeSpaceBar:Landroid/view/View;

    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_4

    :goto_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1244
    return-void

    .end local v0    # "altBack":Z
    :cond_1
    move v1, v3

    .line 1227
    goto :goto_0

    :cond_2
    move v0, v3

    .line 1232
    goto :goto_1

    .line 1236
    .restart local v0    # "altBack":Z
    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationIconHints:I

    and-int/lit8 v1, v1, -0x9

    goto :goto_2

    .line 1241
    :cond_4
    const/16 v3, 0x8

    goto :goto_3
.end method

.method public setLightsOn(Z)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1152
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMenuButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    move p1, v0

    .line 1156
    :cond_0
    const-string v1, "TabletStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLightsOn("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    if-eqz p1, :cond_1

    .line 1158
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->setSystemUiVisibility(II)V

    .line 1162
    :goto_0
    return-void

    .line 1160
    :cond_1
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->setSystemUiVisibility(II)V

    goto :goto_0
.end method

.method public setNavigationIconHints(I)V
    .locals 4

    .prologue
    const/high16 v2, 0x3f800000

    const/high16 v1, 0x3f000000

    .line 1099
    iget v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationIconHints:I

    if-ne p1, v0, :cond_0

    .line 1120
    :goto_0
    return-void

    .line 1107
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationIconHints:I

    .line 1109
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBackButton:Landroid/widget/ImageView;

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1111
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHomeButton:Landroid/view/View;

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1113
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentButton:Landroid/view/View;

    and-int/lit8 v3, p1, 0x4

    if-eqz v3, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1116
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBackButton:Landroid/widget/ImageView;

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_4

    const v0, 0x7f020025

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1109
    goto :goto_1

    :cond_2
    move v0, v2

    .line 1111
    goto :goto_2

    :cond_3
    move v1, v2

    .line 1113
    goto :goto_3

    .line 1116
    :cond_4
    const v0, 0x7f020024

    goto :goto_4
.end method

.method public setStatusBarTransparent(Z)V
    .locals 0
    .param p1, "isTransparent"    # Z

    .prologue
    .line 1738
    return-void
.end method

.method public setSystemUiVisibility(II)V
    .locals 7
    .param p1, "vis"    # I
    .param p2, "mask"    # I

    .prologue
    const/16 v4, 0x407

    const/16 v3, 0x406

    .line 1131
    iget v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSystemUiVisibility:I

    .line 1132
    .local v2, "oldVal":I
    xor-int/lit8 v5, p2, -0x1

    and-int/2addr v5, v2

    and-int v6, p1, p2

    or-int v1, v5, v6

    .line 1133
    .local v1, "newVal":I
    xor-int v0, v1, v2

    .line 1135
    .local v0, "diff":I
    if-eqz v0, :cond_1

    .line 1136
    iput v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSystemUiVisibility:I

    .line 1138
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    .line 1139
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1140
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1141
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    and-int/lit8 v6, p1, 0x1

    if-nez v6, :cond_2

    :goto_0
    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1145
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->notifyUiVisibilityChanged()V

    .line 1147
    :cond_1
    return-void

    :cond_2
    move v3, v4

    .line 1141
    goto :goto_0
.end method

.method protected shouldDisableNavbarGestures()Z
    .locals 2

    .prologue
    .line 1731
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mDisabled:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showClock(Z)V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 954
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBarContents:Landroid/view/ViewGroup;

    const v3, 0x7f0d0029

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 955
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBarContents:Landroid/view/ViewGroup;

    const v4, 0x7f0d008d

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 956
    if-eqz v3, :cond_0

    .line 957
    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 959
    :cond_0
    if-eqz v4, :cond_1

    .line 960
    if-nez p1, :cond_3

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 962
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 957
    goto :goto_0

    :cond_3
    move v1, v2

    .line 960
    goto :goto_1
.end method

.method public showSearchPanel()V
    .locals 3

    .prologue
    .line 733
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->showSearchPanel()V

    .line 734
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 736
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x21

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 737
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    invoke-virtual {v1, v2, v0}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 738
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 431
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->start()V

    .line 432
    return-void
.end method

.method protected tick(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Z)V
    .locals 2

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1057
    :cond_0
    :goto_0
    return-void

    .line 1043
    :cond_1
    if-nez p3, :cond_2

    iget-object v0, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    .line 1050
    :cond_2
    iget-object v0, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->hasTicker(Landroid/app/Notification;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1051
    iget v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mDisabled:I

    const/high16 v1, 0xa0000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mTicker:Lcom/android/systemui/statusbar/tablet/TabletTicker;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->add(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V

    .line 1054
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mFeedbackIconArea:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public topAppWindowChanged(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1168
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMenuButton:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1171
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->setLightsOn(Z)V

    .line 1173
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModeButton:Lcom/android/systemui/statusbar/policy/CompatModeButton;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/CompatModeButton;->refresh()V

    .line 1174
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModeButton:Lcom/android/systemui/statusbar/policy/CompatModeButton;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 1175
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/Prefs;->read(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "shown_compat_mode_help"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1177
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->showCompatibilityHelp()V

    .line 1183
    :cond_1
    :goto_1
    return-void

    .line 1168
    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    .line 1180
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->hideCompatibilityHelp()V

    .line 1181
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->closePanel()V

    goto :goto_1
.end method

.method protected updateExpandedViewPos(I)V
    .locals 0
    .param p1, "expandedPosition"    # I

    .prologue
    .line 1727
    return-void
.end method

.method public updateIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "viewIndex"    # I
    .param p4, "old"    # Lcom/android/internal/statusbar/StatusBarIcon;
    .param p5, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 918
    return-void
.end method

.method protected updateNotificationIcons()V
    .locals 12

    .prologue
    const v4, 0x7f020015

    const/16 v5, 0x8

    const/4 v2, 0x0

    .line 1530
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    if-nez v0, :cond_1

    .line 1614
    :cond_0
    :goto_0
    return-void

    .line 1533
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->loadNotificationPanel()V

    .line 1535
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconSize:I

    iget v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconHPadding:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNaturalBarHeight:I

    invoke-direct {v8, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1539
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationDNDMode:Z

    if-eqz v0, :cond_2

    .line 1540
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1541
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v3, 0x7f0a007a

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v3, 0x7f0a007b

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v7

    .line 1548
    new-instance v9, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "_dnd"

    invoke-direct {v9, v0, v1, v7}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    .line 1550
    invoke-virtual {v9, v4}, Lcom/android/systemui/statusbar/AnimatedImageView;->setImageResource(I)V

    .line 1551
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1552
    iget v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconHPadding:I

    iget v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconHPadding:I

    invoke-virtual {v9, v0, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 1554
    new-instance v10, Lcom/android/systemui/statusbar/NotificationData$Entry;

    const/4 v11, 0x0

    new-instance v0, Lcom/android/internal/statusbar/StatusBarNotification;

    const-string v1, ""

    const-string v3, ""

    const/4 v6, 0x2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/statusbar/StatusBarNotification;-><init>(Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;)V

    invoke-direct {v10, v11, v0, v9}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    iput-object v10, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationDNDDummyEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 1559
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    invoke-virtual {v0, v9, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1563
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mDisabled:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 1569
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v3

    .line 1575
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1580
    iget v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMaxNotificationIcons:I

    .line 1581
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v5, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 1582
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModeButton:Lcom/android/systemui/statusbar/policy/CompatModeButton;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v5, :cond_4

    add-int/lit8 v0, v0, -0x1

    .line 1584
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isDeviceProvisioned()Z

    move-result v5

    move v1, v2

    .line 1586
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, v0, :cond_5

    .line 1587
    if-lt v1, v3, :cond_7

    .line 1595
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v0, v2

    .line 1596
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_b

    .line 1597
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1598
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1599
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1596
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1588
    :cond_7
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v7, v3, v1

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v6

    .line 1589
    if-eqz v5, :cond_8

    iget-object v7, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget v7, v7, Lcom/android/internal/statusbar/StatusBarNotification;->score:I

    const/16 v9, -0xa

    if-ge v7, v9, :cond_9

    :cond_8
    iget-object v7, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->showNotificationEvenIfUnprovisioned(Lcom/android/internal/statusbar/StatusBarNotification;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1591
    :cond_9
    iget-object v6, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1586
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1603
    :cond_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1604
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_3

    :cond_c
    move v1, v2

    .line 1607
    :goto_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1608
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1609
    iget v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconHPadding:I

    iget v5, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconHPadding:I

    invoke-virtual {v0, v3, v2, v5, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 1610
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_d

    .line 1611
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    invoke-virtual {v3, v0, v1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1607
    :cond_d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4
.end method

.method protected updateRecentsPanel()V
    .locals 2

    .prologue
    .line 720
    const v0, 0x7f030021

    invoke-super {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateRecentsPanel(I)V

    .line 721
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->setStatusBarView(Landroid/view/View;)V

    .line 722
    return-void
.end method

.method protected updateSearchPanel()V
    .locals 2

    .prologue
    .line 726
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateSearchPanel()V

    .line 727
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/SearchPanelView;->setStatusBarView(Landroid/view/View;)V

    .line 728
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->setDelegateView(Landroid/view/View;)V

    .line 729
    return-void
.end method

.method protected workAroundBadLayerDrawableOpacity(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1656
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1657
    .local v0, "bgd":Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    if-nez v2, :cond_0

    .line 1663
    :goto_0
    return-void

    :cond_0
    move-object v1, v0

    .line 1659
    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 1660
    .local v1, "d":Landroid/graphics/drawable/LayerDrawable;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1661
    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->setOpacity(I)V

    .line 1662
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
