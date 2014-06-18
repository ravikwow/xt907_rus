.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.super Lcom/android/systemui/statusbar/BaseStatusBar;
.source "PhoneStatusBar.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$FastColorDrawable;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;
    }
.end annotation


# instance fields
.field final FLIP_DURATION:I

.field final FLIP_DURATION_IN:I

.field final FLIP_DURATION_OUT:I

.field private isONSSupported:Z

.field mAbsPos:[I

.field final mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

.field private final mAutohide:Ljava/lang/Runnable;

.field private mAutohideSuspended:Z

.field mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCBEnableReceiver:Landroid/content/BroadcastReceiver;

.field private mCBInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mCarrierLabel:[Landroid/widget/TextView;

.field private mCarrierLabelShowInPanel:[Z

.field private mCarrierLabelVisible:[Z

.field private mCarrierLabel_SlotId:[Landroid/widget/TextView;

.field mCellBroadcastLabel:[Landroid/widget/TextView;

.field private final mCheckBarModes:Ljava/lang/Runnable;

.field mClearButton:Landroid/view/View;

.field mClearButtonAnim:Landroid/animation/Animator;

.field private mClearButtonListener:Landroid/view/View$OnClickListener;

.field private mClockClickListener:Landroid/view/View$OnClickListener;

.field private mCollapseAccelPx:F

.field private mCollapseMinDisplayFraction:F

.field mContentAreaView:Landroid/widget/FrameLayout;

.field mCurrentDisplaySize:Landroid/graphics/Point;

.field mDateTimeView:Landroid/view/View;

.field mDateView:Lcom/android/systemui/statusbar/policy/DateView;

.field final mDecelerateInterpolator:Landroid/animation/TimeInterpolator;

.field private mDemoMode:Z

.field private mDemoModeAllowed:Z

.field private mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

.field mDisabled:I

.field mDisplay:Landroid/view/Display;

.field mDisplayMetrics:Landroid/util/DisplayMetrics;

.field mEdgeBorder:I

.field private mEmergencyCallLabel:Landroid/widget/TextView;

.field private mExpandAccelPx:F

.field private mExpandMinDisplayFraction:F

.field mExpandedContents:Landroid/view/View;

.field mExpandedVisible:Z

.field private mFlingCollapseMinVelocityPx:F

.field private mFlingExpandMinVelocityPx:F

.field private mFlingGestureMaxOutputVelocityPx:F

.field private mFlingGestureMaxXVelocityPx:F

.field mFlipSettingsView:Landroid/view/View;

.field mFlipSettingsViewAnim:Landroid/animation/Animator;

.field mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private final mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

.field mHasFlipSettings:Z

.field mHasSettingsPanel:Z

.field private mHeadsUpNotificationDecay:I

.field private mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

.field private final mHeadsUpObserver:Landroid/database/ContentObserver;

.field private mHeadsUpVerticalOffset:F

.field private mHideSearchPanel:Ljava/lang/Runnable;

.field mHomeSearchActionListener:Landroid/view/View$OnTouchListener;

.field mIconHPadding:I

.field mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

.field mIconSize:I

.field private mInteractingWindows:I

.field private mIsCellBroadcastActive:[Z

.field private mIsCellBroadcastLabelPopulated:[Z

.field private mIsCellBroadcastSupported:[Z

.field private mIsMultiSimEnabled:Z

.field mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

.field mMSimContext:Landroid/content/Context;

.field mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

.field mMSimResources:[Landroid/content/res/Resources;

.field private final mMakeIconsInvisible:Landroid/animation/Animator$AnimatorListener;

.field private mMenuBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

.field mMoreIcon:Landroid/view/View;

.field mNaturalBarHeight:I

.field private mNavigationBarMode:I

.field private mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

.field private mNavigationBarWindowState:I

.field private mNavigationIconHints:I

.field mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field mNotificationButton:Landroid/widget/ImageView;

.field mNotificationButtonAnim:Landroid/animation/Animator;

.field private mNotificationButtonListener:Landroid/view/View$OnClickListener;

.field private mNotificationHeaderHeight:I

.field mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

.field mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field mNotificationPanelGravity:I

.field mNotificationPanelHeader:Landroid/view/View;

.field mNotificationPanelIsFullScreenWidth:Z

.field mNotificationPanelMarginBottomPx:I

.field mNotificationPanelMarginPx:I

.field mNotificationPanelMinHeightFrac:F

.field private mNumPhones:I

.field private mPilePosition:[I

.field mPixelFormat:I

.field mPositionTmp:[I

.field mPostCollapseCleanup:Ljava/lang/Runnable;

.field mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

.field mQueueLock:Ljava/lang/Object;

.field private mRecentsClickListener:Landroid/view/View$OnClickListener;

.field mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

.field private mScreenOn:Ljava/lang/Boolean;

.field mScrollView:Landroid/widget/ScrollView;

.field mScrollViewAnim:Landroid/animation/Animator;

.field private mSelfCollapseVelocityPx:F

.field private mSelfExpandVelocityPx:F

.field mSettingsButton:Landroid/widget/ImageView;

.field mSettingsButtonAnim:Landroid/animation/Animator;

.field private mSettingsButtonListener:Landroid/view/View$OnClickListener;

.field mSettingsContainer:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

.field mSettingsPanel:Lcom/android/systemui/statusbar/phone/SettingsPanelView;

.field mSettingsPanelGravity:I

.field private mShowCarrierInPanel:Z

.field private mShowSearchHoldoff:I

.field private mShowSearchPanel:Ljava/lang/Runnable;

.field mStartTracing:Ljava/lang/Runnable;

.field mStatusBarContents:Landroid/widget/LinearLayout;

.field private mStatusBarMode:I

.field mStatusBarOnsText:Landroid/widget/TextView;

.field mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

.field mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

.field private mStatusBarWindowState:I

.field mStatusIcons:Landroid/widget/LinearLayout;

.field mStopTracing:Ljava/lang/Runnable;

.field mSystemIconArea:Landroid/widget/LinearLayout;

.field mSystemUiVisibility:I

.field private mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

.field private mTickerView:Landroid/view/View;

.field private mTicking:Z

.field mTickingDoneListener:Landroid/view/animation/Animation$AnimationListener;

.field mTracking:Z

.field mTrackingPosition:I

.field private mUserSetup:Z

.field private mUserSetupObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v1, -0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 146
    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;-><init>()V

    .line 228
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    .line 229
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    .line 230
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconHPadding:I

    .line 232
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentDisplaySize:Landroid/graphics/Point;

    .line 234
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPilePosition:[I

    .line 238
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowState:I

    .line 241
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQueueLock:Ljava/lang/Object;

    .line 286
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsMultiSimEnabled:Z

    .line 287
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNumPhones:I

    .line 315
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowCarrierInPanel:Z

    .line 318
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPositionTmp:[I

    .line 335
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 336
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarWindowState:I

    .line 339
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMenuBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 355
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAbsPos:[I

    .line 356
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseCleanup:Ljava/lang/Runnable;

    .line 393
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    .line 396
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 398
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 401
    check-cast v0, Lcom/android/systemui/statusbar/GestureRecorder;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

    .line 406
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationIconHints:I

    .line 407
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMakeIconsInvisible:Landroid/animation/Animator$AnimatorListener;

    .line 419
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetup:Z

    .line 420
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$2;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetupObserver:Landroid/database/ContentObserver;

    .line 454
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$3;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$3;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpObserver:Landroid/database/ContentObserver;

    .line 479
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    .line 1795
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$14;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$14;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsClickListener:Landroid/view/View$OnClickListener;

    .line 1802
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSearchHoldoff:I

    .line 1803
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$15;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$15;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSearchPanel:Ljava/lang/Runnable;

    .line 1810
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHideSearchPanel:Ljava/lang/Runnable;

    .line 1827
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$17;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$17;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHomeSearchActionListener:Landroid/view/View$OnTouchListener;

    .line 3111
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 3226
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    .line 3227
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDecelerateInterpolator:Landroid/animation/TimeInterpolator;

    .line 3228
    const/16 v0, 0x7d

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->FLIP_DURATION_OUT:I

    .line 3229
    const/16 v0, 0xe1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->FLIP_DURATION_IN:I

    .line 3230
    const/16 v0, 0x15e

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->FLIP_DURATION:I

    .line 3688
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    .line 3861
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickingDoneListener:Landroid/view/animation/Animation$AnimationListener;

    .line 4092
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$29;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$29;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButtonListener:Landroid/view/View$OnClickListener;

    .line 4187
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$30;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$30;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButtonListener:Landroid/view/View$OnClickListener;

    .line 4198
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClockClickListener:Landroid/view/View$OnClickListener;

    .line 4205
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$32;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$32;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButtonListener:Landroid/view/View$OnClickListener;

    .line 4212
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$33;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$33;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCBInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 4288
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$34;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$34;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCBEnableReceiver:Landroid/content/BroadcastReceiver;

    .line 4345
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$35;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$35;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 4583
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStartTracing:Ljava/lang/Runnable;

    .line 4593
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$37;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$37;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStopTracing:Ljava/lang/Runnable;

    .line 4613
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 146
    iget v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetup:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # I

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyUiVisibilityChanged(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetup:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/MotionEvent;

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkUserAutohide(Landroid/view/View;Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->awakenDreams()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/SearchPanelView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSearchPanel:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHideSearchPanel:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 146
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSearchHoldoff:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUseHeadsUp:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setHeadsUpVisibility(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->escalateHeadsUp()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkBarModes()V

    return-void
.end method

.method static synthetic access$2702(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUseHeadsUp:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUseHeadsUp:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastSupported:[Z

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastActive:[Z

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastLabelPopulated:[Z

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCellBroadcastLabelVisibility()V

    return-void
.end method

.method static synthetic access$4402(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOn:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyNavigationBarScreenOn(Z)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyHeadsUpScreenOn(Z)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->finishBarAnimations()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->repositionNavigationBar()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->repositionMenuBar()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUseHeadsUp:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUseHeadsUp:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->removeHeadsUpView()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addHeadsUpView()V

    return-void
.end method

.method private addHeadsUpView()V
    .locals 6

    .prologue
    .line 1950
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x7de

    const v4, 0x820328

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1960
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1961
    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1962
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getStatusBarHeight()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1963
    const-string v1, "Heads Up"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1964
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1965
    const v1, 0x7f0f001f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1967
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1968
    return-void
.end method

.method private addMenuBar()V
    .locals 3

    .prologue
    .line 1866
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMenuBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v0, :cond_0

    .line 1871
    :goto_0
    return-void

    .line 1868
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->prepareMenuBarView()V

    .line 1870
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMenuBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private addNavigationBar()V
    .locals 3

    .prologue
    .line 1903
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->prepareNavigationBarView()V

    .line 1905
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v0, :cond_0

    .line 1909
    :goto_0
    return-void

    .line 1908
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private addStatusBarWindow()V
    .locals 6

    .prologue
    .line 4003
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getStatusBarHeight()I

    move-result v2

    .line 4008
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/16 v3, 0x7d0

    const v4, 0x840048

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 4018
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4020
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getStatusBarGravity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 4021
    const-string v1, "StatusBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 4022
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 4024
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 4025
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4026
    return-void
.end method

.method private areLightsOn()Z
    .locals 1

    .prologue
    .line 3745
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private awakenDreams()V
    .locals 1

    .prologue
    .line 1848
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v0, :cond_0

    .line 1850
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1855
    :cond_0
    :goto_0
    return-void

    .line 1851
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private barMode(III)I
    .locals 1
    .param p1, "vis"    # I
    .param p2, "transientFlag"    # I
    .param p3, "translucentFlag"    # I

    .prologue
    .line 3656
    and-int v0, p1, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    and-int v0, p1, p3

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelAutohide()V
    .locals 2

    .prologue
    .line 3721
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutohideSuspended:Z

    .line 3722
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3723
    return-void
.end method

.method private checkBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "windowState"    # I
    .param p3, "transitions"    # Lcom/android/systemui/statusbar/phone/BarTransitions;

    .prologue
    .line 3677
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOn:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOn:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v0, 0x1

    .line 3678
    .local v0, "anim":Z
    :goto_0
    invoke-virtual {p3, p1, v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    .line 3679
    return-void

    .line 3677
    .end local v0    # "anim":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkBarModes()V
    .locals 4

    .prologue
    .line 3663
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoMode:Z

    if-eqz v1, :cond_1

    .line 3674
    :cond_0
    :goto_0
    return-void

    .line 3664
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarMode:I

    .line 3665
    .local v0, "sbMode":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->panelsEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mInteractingWindows:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 3667
    const/4 v0, 0x0

    .line 3669
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowState:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;)V

    .line 3670
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v1, :cond_0

    .line 3671
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarMode:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarWindowState:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;)V

    goto :goto_0
.end method

.method private checkUserAutohide(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3731
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    const/high16 v1, 0xc000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 3735
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->userAutohide()V

    .line 3737
    :cond_0
    return-void
.end method

.method private computeBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;II)I
    .locals 2
    .param p1, "oldVis"    # I
    .param p2, "newVis"    # I
    .param p3, "transitions"    # Lcom/android/systemui/statusbar/phone/BarTransitions;
    .param p4, "transientFlag"    # I
    .param p5, "translucentFlag"    # I

    .prologue
    .line 3647
    invoke-direct {p0, p1, p4, p5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->barMode(III)I

    move-result v1

    .line 3648
    .local v1, "oldMode":I
    invoke-direct {p0, p2, p4, p5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->barMode(III)I

    move-result v0

    .line 3649
    .local v0, "newMode":I
    if-ne v1, v0, :cond_0

    .line 3650
    const/4 v0, -0x1

    .line 3652
    .end local v0    # "newMode":I
    :cond_0
    return v0
.end method

.method private dispatchDemoCommandToView(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "id"    # I

    .prologue
    .line 4714
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-nez v1, :cond_1

    .line 4719
    :cond_0
    :goto_0
    return-void

    .line 4715
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v1, p3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4716
    .local v0, "v":Landroid/view/View;
    instance-of v1, v0, Lcom/android/systemui/DemoMode;

    if-eqz v1, :cond_0

    .line 4717
    check-cast v0, Lcom/android/systemui/DemoMode;

    .end local v0    # "v":Landroid/view/View;
    invoke-interface {v0, p1, p2}, Lcom/android/systemui/DemoMode;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private static dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/BarTransitions;)V
    .locals 1

    .prologue
    .line 3992
    const-string v0, "  "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ".BarTransitions.mMode="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3993
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/BarTransitions;->getMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3994
    return-void
.end method

.method private escalateHeadsUp()V
    .locals 3

    .prologue
    .line 3093
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mInterruptingNotificationEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v2, :cond_0

    .line 3094
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mInterruptingNotificationEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 3095
    .local v1, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 3096
    .local v0, "notification":Landroid/app/Notification;
    iget-object v2, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    .line 3100
    :try_start_0
    iget-object v2, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3105
    .end local v0    # "notification":Landroid/app/Notification;
    .end local v1    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_0
    :goto_0
    return-void

    .line 3101
    .restart local v0    # "notification":Landroid/app/Notification;
    .restart local v1    # "sbn":Landroid/service/notification/StatusBarNotification;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private finishBarAnimations()V
    .locals 1

    .prologue
    .line 3682
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->finishAnimations()V

    .line 3683
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    .line 3684
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->finishAnimations()V

    .line 3686
    :cond_0
    return-void
.end method

.method private getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 1929
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e3

    const v4, 0x840068

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1940
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1941
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1944
    :cond_0
    const-string v1, "NavigationBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1945
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1946
    return-object v0
.end method

.method private loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "id"    # I
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 3872
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3873
    .local v0, "anim":Landroid/view/animation/Animation;
    if-eqz p2, :cond_0

    .line 3874
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3876
    :cond_0
    return-object v0
.end method

.method private loadNotificationShade()V
    .locals 12

    .prologue
    .line 2156
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    if-nez v10, :cond_1

    .line 2193
    :cond_0
    :goto_0
    return-void

    .line 2158
    :cond_1
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    .line 2160
    .local v0, "N":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2162
    .local v8, "toShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeviceProvisioned()Z

    move-result v5

    .line 2164
    .local v5, "provisioned":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_4

    .line 2165
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v11, v0, v3

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    .line 2166
    .local v2, "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v5, :cond_3

    iget-object v10, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showNotificationEvenIfUnprovisioned(Landroid/service/notification/StatusBarNotification;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 2164
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2167
    :cond_3
    iget-object v10, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notificationIsForCurrentUser(Landroid/service/notification/StatusBarNotification;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2168
    iget-object v10, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2171
    .end local v2    # "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2172
    .local v7, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v3, 0x0

    :goto_3
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildCount()I

    move-result v10

    if-ge v3, v10, :cond_6

    .line 2173
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v10, v3}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2174
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 2175
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2172
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2179
    .end local v1    # "child":Landroid/view/View;
    :cond_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 2180
    .local v6, "remove":Landroid/view/View;
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v10, v6}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->removeView(Landroid/view/View;)V

    goto :goto_4

    .line 2183
    .end local v6    # "remove":Landroid/view/View;
    :cond_7
    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_9

    .line 2184
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 2185
    .local v9, "v":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-nez v10, :cond_8

    .line 2186
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v10, v9, v3}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->addView(Landroid/view/View;I)V

    .line 2183
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 2190
    .end local v9    # "v":Landroid/view/View;
    :cond_9
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    .line 2191
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeviceProvisioned()Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method private notifyNavigationBarScreenOn(Z)V
    .locals 1
    .param p1, "screenOn"    # Z

    .prologue
    .line 1924
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v0, :cond_0

    .line 1926
    :goto_0
    return-void

    .line 1925
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyScreenOn(Z)V

    goto :goto_0
.end method

.method private notifyUiVisibilityChanged(I)V
    .locals 1
    .param p1, "vis"    # I

    .prologue
    .line 3759
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->statusBarVisibilityChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3762
    :goto_0
    return-void

    .line 3760
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private prepareMenuBarView()V
    .locals 1

    .prologue
    .line 1859
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMenuBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v0, :cond_0

    .line 1862
    :goto_0
    return-void

    .line 1861
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMenuBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reorient()V

    goto :goto_0
.end method

.method private prepareNavigationBarView()V
    .locals 2

    .prologue
    .line 1885
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    .line 1886
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reorient()V

    .line 1888
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1889
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecentsPreloadOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1890
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHomeSearchActionListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1891
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getSearchLight()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHomeSearchActionListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1894
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateSearchPanel()V

    .line 1895
    return-void
.end method

.method private refreshAllIconsForLayout(Landroid/widget/LinearLayout;)V
    .locals 4
    .param p1, "ll"    # Landroid/widget/LinearLayout;

    .prologue
    .line 1980
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 1981
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1982
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1983
    .local v0, "child":Landroid/view/View;
    instance-of v3, v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v3, :cond_0

    .line 1984
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDrawable()V

    .line 1981
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1987
    :cond_1
    return-void
.end method

.method private releaseFocus()V
    .locals 3

    .prologue
    .line 3153
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 3155
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3156
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3157
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3158
    return-void
.end method

.method private removeHeadsUpView()V
    .locals 2

    .prologue
    .line 1971
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1972
    return-void
.end method

.method private repositionMenuBar()V
    .locals 3

    .prologue
    .line 1875
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMenuBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMenuBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1880
    :cond_0
    :goto_0
    return-void

    .line 1877
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->prepareMenuBarView()V

    .line 1879
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMenuBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private repositionNavigationBar()V
    .locals 3

    .prologue
    .line 1912
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->prepareNavigationBarView()V

    .line 1917
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1921
    :cond_0
    :goto_0
    return-void

    .line 1920
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private resetUserSetupObserver()V
    .locals 5

    .prologue
    .line 4417
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetupObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 4418
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetupObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 4419
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetupObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 4423
    return-void
.end method

.method private resumeSuspendedAutohide()V
    .locals 4

    .prologue
    .line 3708
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutohideSuspended:Z

    if-eqz v0, :cond_0

    .line 3709
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->scheduleAutohide()V

    .line 3710
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3712
    :cond_0
    return-void
.end method

.method private scheduleAutohide()V
    .locals 4

    .prologue
    .line 3726
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->cancelAutohide()V

    .line 3727
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3728
    return-void
.end method

.method private setHeadsUpVisibility(Z)V
    .locals 2
    .param p1, "vis"    # Z

    .prologue
    .line 4428
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->setVisibility(I)V

    .line 4429
    if-nez p1, :cond_0

    .line 4431
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mInterruptingNotificationEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 4433
    :cond_0
    return-void

    .line 4428
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setNavigationIconHints(I)V
    .locals 1
    .param p1, "hints"    # I

    .prologue
    .line 3545
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationIconHints:I

    if-ne p1, v0, :cond_0

    .line 3553
    :goto_0
    return-void

    .line 3547
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationIconHints:I

    .line 3549
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_1

    .line 3550
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(I)V

    .line 3552
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkBarModes()V

    goto :goto_0
.end method

.method private suspendAutohide()V
    .locals 2

    .prologue
    .line 3715
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3716
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3717
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    const/high16 v1, 0xc000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutohideSuspended:Z

    .line 3718
    return-void

    .line 3717
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateCellBroadcastLabelVisibility()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2701
    const/4 v0, 0x0

    .line 2706
    .local v0, "isShow":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelVisible:[Z

    aget-boolean v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNumPhones:I

    if-le v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelVisible:[Z

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_1

    .line 2718
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNumPhones:I

    if-gt v1, v3, :cond_3

    .line 2719
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastSupported:[Z

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastActive:[Z

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastLabelPopulated:[Z

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_1

    .line 2726
    const/4 v0, 0x1

    .line 2751
    :cond_1
    :goto_0
    if-eqz v0, :cond_8

    .line 2752
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNumPhones:I

    if-gt v1, v3, :cond_6

    .line 2753
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastLabel:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    if-eqz v1, :cond_2

    .line 2754
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastLabel:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2755
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastLabel:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2850
    :cond_2
    :goto_1
    return-void

    .line 2729
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastSupported:[Z

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastActive:[Z

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastLabelPopulated:[Z

    aget-boolean v1, v1, v2

    if-nez v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastSupported:[Z

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastActive:[Z

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastLabelPopulated:[Z

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_1

    .line 2746
    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    .line 2762
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastLabel:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    if-eqz v1, :cond_7

    .line 2763
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastLabel:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2764
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastLabel:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2769
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastLabel:[Landroid/widget/TextView;

    aget-object v1, v1, v3

    if-eqz v1, :cond_2

    .line 2770
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastLabel:[Landroid/widget/TextView;

    aget-object v1, v1, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2771
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastLabel:[Landroid/widget/TextView;

    aget-object v1, v1, v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_1

    .line 2778
    :cond_8
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNumPhones:I

    if-gt v1, v3, :cond_9

    .line 2779
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastLabel:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    if-eqz v1, :cond_2

    .line 2780
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastLabel:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2781
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastLabel:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_1

    .line 2788
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastLabel:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    if-eqz v1, :cond_a

    .line 2789
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastLabel:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2790
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastLabel:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2795
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastLabel:[Landroid/widget/TextView;

    aget-object v1, v1, v3

    if-eqz v1, :cond_2

    .line 2796
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastLabel:[Landroid/widget/TextView;

    aget-object v1, v1, v3

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2797
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastLabel:[Landroid/widget/TextView;

    aget-object v1, v1, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_1
.end method

.method private updateShowSearchHoldoff()V
    .locals 2

    .prologue
    .line 2151
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSearchHoldoff:I

    .line 2153
    return-void
.end method

.method private userAutohide()V
    .locals 4

    .prologue
    .line 3740
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->cancelAutohide()V

    .line 3741
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3742
    return-void
.end method

.method public static viewInfo(Landroid/view/View;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 3880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 5
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "viewIndex"    # I
    .param p4, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 2002
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    .line 2003
    .local v0, "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v0, p4}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 2004
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, p3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2005
    return-void
.end method

.method public addNotification(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V
    .locals 4
    .param p1, "key"    # Landroid/os/IBinder;
    .param p2, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v3, 0x0

    .line 2043
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->createNotificationViews(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    .line 2044
    .local v1, "shadeEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v1, :cond_0

    .line 2087
    :goto_0
    return-void

    .line 2047
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUseHeadsUp:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->shouldInterrupt(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2049
    new-instance v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-direct {v0, p1, p2, v3}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 2050
    .local v0, "interruptionCandidate":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getHolder()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2051
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mInterruptingNotificationTime:J

    .line 2052
    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mInterruptingNotificationEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2053
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setInterruption()V

    .line 2056
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mInterruptingNotificationEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->setNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    .line 2059
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/16 v3, 0x402

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 2062
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->resetHeadsUpDecayTimer()V

    .line 2083
    .end local v0    # "interruptionCandidate":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 2085
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 2086
    const/16 v2, -0x2710

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    goto :goto_0

    .line 2064
    :cond_2
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_3

    .line 2067
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->awakenDreams()V

    .line 2072
    :try_start_0
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2073
    :catch_0
    move-exception v2

    goto :goto_1

    .line 2079
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mInterruptingNotificationEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-nez v2, :cond_1

    .line 2080
    const/4 v2, 0x1

    invoke-virtual {p0, v3, p2, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->tick(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;Z)V

    goto :goto_1
.end method

.method public animateCollapsePanels()V
    .locals 1

    .prologue
    .line 3161
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(I)V

    .line 3162
    return-void
.end method

.method public animateCollapsePanels(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    const/16 v2, 0x401

    const/16 v1, 0x3fd

    .line 3172
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->releaseFocus()V

    .line 3174
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    .line 3175
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 3176
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 3179
    :cond_0
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_1

    .line 3180
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 3181
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 3184
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->cancelExpandHelper()V

    .line 3185
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->collapseAllPanels(Z)V

    .line 3186
    return-void
.end method

.method public animateCollapseQuickSettings()V
    .locals 2

    .prologue
    .line 3390
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->collapseAllPanels(Z)V

    .line 3391
    return-void
.end method

.method public animateExpandNotificationsPanel()V
    .locals 1

    .prologue
    .line 3238
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3248
    :cond_0
    :goto_0
    return-void

    .line 3242
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expand()V

    .line 3243
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasFlipSettings:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3244
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->flipToNotifications()V

    goto :goto_0
.end method

.method public animateExpandSettingsPanel()V
    .locals 1

    .prologue
    .line 3300
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3317
    :cond_0
    :goto_0
    return-void

    .line 3305
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetup:Z

    if-eqz v0, :cond_0

    .line 3307
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasFlipSettings:Z

    if-eqz v0, :cond_2

    .line 3308
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expand()V

    .line 3309
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlipSettingsView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3310
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->flipToSettings()V

    goto :goto_0

    .line 3312
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/SettingsPanelView;

    if-eqz v0, :cond_0

    .line 3313
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/SettingsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->expand()V

    goto :goto_0
.end method

.method public animateHeadsUp(ZF)V
    .locals 3

    .prologue
    const/high16 v1, 0x3f800000

    .line 4436
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    if-nez v0, :cond_0

    .line 4444
    :goto_0
    return-void

    .line 4437
    :cond_0
    const v0, 0x3ecccccd

    div-float v0, p2, v0

    .line 4438
    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    .line 4439
    :goto_1
    sub-float/2addr v1, v0

    .line 4440
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpVerticalOffset:F

    mul-float/2addr v0, v2

    .line 4441
    if-eqz p1, :cond_2

    .line 4442
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->setAlpha(F)V

    .line 4443
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->setY(F)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 4438
    goto :goto_1

    .line 4441
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public createAndAddWindows()V
    .locals 0

    .prologue
    .line 3998
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addStatusBarWindow()V

    .line 3999
    return-void
.end method

.method protected createHandler()Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 2

    .prologue
    .line 3058
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;)V

    return-object v0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 4649
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->destroy()V

    .line 4650
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-eqz v0, :cond_0

    .line 4651
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 4653
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_1

    .line 4654
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 4656
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4657
    return-void
.end method

.method public disable(I)V
    .locals 9

    .prologue
    const/high16 v8, 0x80000

    const/high16 v7, 0x20000

    const/high16 v6, 0x10000

    const/high16 v5, 0x3fc00000

    const/4 v4, 0x0

    .line 2943
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    .line 2944
    xor-int v1, p1, v0

    .line 2945
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    .line 2953
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2954
    const-string v0, "disable: < "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2955
    and-int v0, p1, v6

    if-eqz v0, :cond_7

    const-string v0, "EXPAND"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2956
    and-int v0, v1, v6

    if-eqz v0, :cond_8

    const-string v0, "* "

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2957
    and-int v0, p1, v7

    if-eqz v0, :cond_9

    const-string v0, "ICONS"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2958
    and-int v0, v1, v7

    if-eqz v0, :cond_a

    const-string v0, "* "

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2959
    const/high16 v0, 0x40000

    and-int/2addr v0, p1

    if-eqz v0, :cond_b

    const-string v0, "ALERTS"

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2960
    const/high16 v0, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    const-string v0, "* "

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2961
    and-int v0, p1, v8

    if-eqz v0, :cond_d

    const-string v0, "TICKER"

    :goto_6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2962
    and-int v0, v1, v8

    if-eqz v0, :cond_e

    const-string v0, "* "

    :goto_7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2963
    const/high16 v0, 0x100000

    and-int/2addr v0, p1

    if-eqz v0, :cond_f

    const-string v0, "SYSTEM_INFO"

    :goto_8
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2964
    const/high16 v0, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    const-string v0, "* "

    :goto_9
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2965
    const/high16 v0, 0x400000

    and-int/2addr v0, p1

    if-eqz v0, :cond_11

    const-string v0, "BACK"

    :goto_a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2966
    const/high16 v0, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_12

    const-string v0, "* "

    :goto_b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2967
    const/high16 v0, 0x200000

    and-int/2addr v0, p1

    if-eqz v0, :cond_13

    const-string v0, "HOME"

    :goto_c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2968
    const/high16 v0, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_14

    const-string v0, "* "

    :goto_d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2969
    const/high16 v0, 0x1000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_15

    const-string v0, "RECENT"

    :goto_e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2970
    const/high16 v0, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_16

    const-string v0, "* "

    :goto_f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2971
    const/high16 v0, 0x800000

    and-int/2addr v0, p1

    if-eqz v0, :cond_17

    const-string v0, "CLOCK"

    :goto_10
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2972
    const/high16 v0, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_18

    const-string v0, "* "

    :goto_11
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2973
    const/high16 v0, 0x2000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_19

    const-string v0, "SEARCH"

    :goto_12
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2974
    const/high16 v0, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1a

    const-string v0, "* "

    :goto_13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2975
    const-string v0, ">"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2976
    const-string v0, "PhoneStatusBar"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2978
    const/high16 v0, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2979
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemIconArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2980
    const/high16 v0, 0x100000

    and-int/2addr v0, p1

    if-eqz v0, :cond_1b

    .line 2981
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemIconArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x3f000000

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xaf

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMakeIconsInvisible:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3000
    :cond_0
    :goto_14
    const/high16 v0, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 3001
    const/high16 v0, 0x800000

    and-int/2addr v0, p1

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    .line 3002
    :goto_15
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showClock(Z)V

    .line 3004
    :cond_1
    and-int v0, v1, v6

    if-eqz v0, :cond_2

    .line 3005
    and-int v0, p1, v6

    if-eqz v0, :cond_2

    .line 3006
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 3010
    :cond_2
    const/high16 v0, 0x3600000

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 3015
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "tsb_disable_flags"

    invoke-static {v0, v2, p1}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3017
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(I)V

    .line 3019
    :cond_3
    const/high16 v0, 0x1000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_4

    .line 3021
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/16 v2, 0x3fd

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 3022
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/16 v2, 0x3fd

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 3026
    :cond_4
    and-int v0, v1, v7

    if-eqz v0, :cond_1e

    .line 3027
    and-int v0, p1, v7

    if-eqz v0, :cond_1d

    .line 3028
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z

    if-eqz v0, :cond_5

    .line 3029
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->haltTicker()V

    .line 3032
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IconMerger;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xaf

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMakeIconsInvisible:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3054
    :cond_6
    :goto_16
    return-void

    .line 2955
    :cond_7
    const-string v0, "expand"

    goto/16 :goto_0

    .line 2956
    :cond_8
    const-string v0, " "

    goto/16 :goto_1

    .line 2957
    :cond_9
    const-string v0, "icons"

    goto/16 :goto_2

    .line 2958
    :cond_a
    const-string v0, " "

    goto/16 :goto_3

    .line 2959
    :cond_b
    const-string v0, "alerts"

    goto/16 :goto_4

    .line 2960
    :cond_c
    const-string v0, " "

    goto/16 :goto_5

    .line 2961
    :cond_d
    const-string v0, "ticker"

    goto/16 :goto_6

    .line 2962
    :cond_e
    const-string v0, " "

    goto/16 :goto_7

    .line 2963
    :cond_f
    const-string v0, "system_info"

    goto/16 :goto_8

    .line 2964
    :cond_10
    const-string v0, " "

    goto/16 :goto_9

    .line 2965
    :cond_11
    const-string v0, "back"

    goto/16 :goto_a

    .line 2966
    :cond_12
    const-string v0, " "

    goto/16 :goto_b

    .line 2967
    :cond_13
    const-string v0, "home"

    goto/16 :goto_c

    .line 2968
    :cond_14
    const-string v0, " "

    goto/16 :goto_d

    .line 2969
    :cond_15
    const-string v0, "recent"

    goto/16 :goto_e

    .line 2970
    :cond_16
    const-string v0, " "

    goto/16 :goto_f

    .line 2971
    :cond_17
    const-string v0, "clock"

    goto/16 :goto_10

    .line 2972
    :cond_18
    const-string v0, " "

    goto/16 :goto_11

    .line 2973
    :cond_19
    const-string v0, "search"

    goto/16 :goto_12

    .line 2974
    :cond_1a
    const-string v0, " "

    goto/16 :goto_13

    .line 2989
    :cond_1b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemIconArea:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2990
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemIconArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xaf

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_14

    .line 3001
    :cond_1c
    const/4 v0, 0x0

    goto/16 :goto_15

    .line 3040
    :cond_1d
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/IconMerger;->setVisibility(I)V

    .line 3041
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IconMerger;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xaf

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_16

    .line 3049
    :cond_1e
    and-int v0, v1, v8

    if-eqz v0, :cond_6

    .line 3050
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z

    if-eqz v0, :cond_6

    and-int v0, p1, v8

    if-eqz v0, :cond_6

    .line 3051
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->haltTicker()V

    goto/16 :goto_16
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4665
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoModeAllowed:Z

    if-nez v0, :cond_0

    .line 4666
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "sysui_demo_allowed"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoModeAllowed:Z

    .line 4669
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoModeAllowed:Z

    if-nez v0, :cond_3

    .line 4711
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 4666
    goto :goto_0

    .line 4670
    :cond_3
    const-string v0, "enter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4671
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoMode:Z

    .line 4679
    :cond_4
    :goto_2
    const-string v0, "enter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_5
    move v0, v1

    .line 4680
    :goto_3
    if-nez v0, :cond_6

    const-string v4, "clock"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4681
    :cond_6
    const v4, 0x7f08003b

    invoke-direct {p0, p1, p2, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dispatchDemoCommandToView(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 4683
    :cond_7
    if-nez v0, :cond_8

    const-string v4, "battery"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 4684
    :cond_8
    const v4, 0x7f08003a

    invoke-direct {p0, p1, p2, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dispatchDemoCommandToView(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 4686
    :cond_9
    if-nez v0, :cond_a

    const-string v4, "status"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 4687
    :cond_a
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    if-nez v4, :cond_b

    .line 4688
    new-instance v4, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;-><init>(Landroid/widget/LinearLayout;I)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    .line 4690
    :cond_b
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-virtual {v4, p1, p2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4692
    :cond_c
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    if-eqz v4, :cond_e

    if-nez v0, :cond_d

    const-string v0, "network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4693
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4695
    :cond_e
    const-string v0, "bars"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4696
    const-string v0, "mode"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4697
    const-string v4, "opaque"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 4701
    :goto_4
    if-eq v2, v3, :cond_1

    .line 4703
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_f

    .line 4704
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    .line 4706
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_1

    .line 4707
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    goto/16 :goto_1

    .line 4672
    :cond_10
    const-string v0, "exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4673
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoMode:Z

    .line 4674
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkBarModes()V

    goto/16 :goto_2

    .line 4675
    :cond_11
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoMode:Z

    if-nez v0, :cond_4

    .line 4677
    const-string v0, "enter"

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_2

    :cond_12
    move v0, v2

    .line 4679
    goto/16 :goto_3

    .line 4697
    :cond_13
    const-string v2, "translucent"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x2

    goto :goto_4

    :cond_14
    const-string v2, "semi-transparent"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    move v2, v1

    goto :goto_4

    :cond_15
    move v2, v3

    goto :goto_4
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 3885
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3886
    :try_start_0
    const-string v0, "Current Status Bar state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mExpandedVisible="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", mTrackingPosition="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingPosition:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mTicking="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mTracking="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTracking:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3891
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mDisplayMetrics="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mPile: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mTickerView: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerView:Landroid/view/View;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mScrollView: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " scroll "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3896
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3898
    const-string v0, "  mInteractingWindows="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mInteractingWindows:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3899
    const-string v0, "  mStatusBarWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3900
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowState:I

    invoke-static {v0}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3901
    const-string v0, "  mStatusBarMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3902
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarMode:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3903
    const-string v0, "mStatusBarView"

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v2

    invoke-static {p2, v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/BarTransitions;)V

    .line 3904
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    .line 3905
    const-string v0, "  mNavigationBarWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3906
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarWindowState:I

    invoke-static {v0}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3907
    const-string v0, "  mNavigationBarMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3908
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarMode:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3909
    const-string v0, "mNavigationBarView"

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v2

    invoke-static {p2, v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/BarTransitions;)V

    .line 3912
    :cond_0
    const-string v0, "  mNavigationBarView="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3913
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v0, :cond_3

    .line 3914
    const-string v0, "null"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3919
    :goto_0
    const-string v0, "  Panels: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3920
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v0, :cond_1

    .line 3921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mNotificationPanel="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " params="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$LayoutParams;->debug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3923
    const-string v0, "      "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3924
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3926
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/SettingsPanelView;

    if-eqz v0, :cond_2

    .line 3927
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mSettingsPanel="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/SettingsPanelView;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " params="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/SettingsPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$LayoutParams;->debug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3929
    const-string v0, "      "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3930
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/SettingsPanelView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3934
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    monitor-enter v2

    .line 3935
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v3

    .line 3936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  notification icons: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v0, v1

    .line 3937
    :goto_1
    if-ge v0, v3, :cond_4

    .line 3938
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v4

    .line 3939
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " icon="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3940
    iget-object v4, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 3941
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "         pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " score="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getScore()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3942
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "         notification="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3943
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "         tickerText=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3937
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 3896
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 3916
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3945
    :cond_4
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3947
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 3948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  system icons: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 3949
    :goto_2
    if-ge v2, v3, :cond_5

    .line 3950
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 3951
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] icon="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3949
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 3945
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 3974
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsMultiSimEnabled:Z

    if-eqz v0, :cond_6

    move v0, v1

    .line 3979
    :goto_3
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNumPhones:I

    if-ge v0, v1, :cond_7

    .line 3982
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    .line 3980
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 3987
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/NetworkController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3989
    :cond_7
    return-void
.end method

.method public flipToNotifications()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 3251
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlipSettingsViewAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlipSettingsViewAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 3252
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollViewAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollViewAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 3253
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButtonAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 3254
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButtonAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 3255
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButtonAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 3257
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 3258
    const/16 v0, 0x7d

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDecelerateInterpolator:Landroid/animation/TimeInterpolator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v8, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0xe1

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->interpolator(Landroid/animation/TimeInterpolator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startDelay(ILandroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollViewAnim:Landroid/animation/Animator;

    .line 3264
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlipSettingsView:Landroid/view/View;

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v8, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->interpolator(Landroid/animation/TimeInterpolator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v1, 0x7d

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlipSettingsView:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlipSettingsViewAnim:Landroid/animation/Animator;

    .line 3271
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v7, [F

    aput v6, v2, v5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1, v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButtonAnim:Landroid/animation/Animator;

    .line 3276
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3277
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v7, [F

    const/high16 v3, 0x3f800000

    aput v3, v2, v5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButtonAnim:Landroid/animation/Animator;

    .line 3280
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3281
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    .line 3282
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 3283
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3291
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.internal.policy.statusbar.NOTIFICATION_VIEW_FULLY_VISIBLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3292
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3295
    return-void

    .line 3258
    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    .line 3264
    :array_1
    .array-data 4
        0x3f800000
        0x0
    .end array-data
.end method

.method public flipToSettings()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x15e

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 3335
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetup:Z

    if-nez v0, :cond_0

    .line 3377
    :goto_0
    return-void

    .line 3337
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlipSettingsViewAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlipSettingsViewAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 3338
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollViewAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollViewAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 3339
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButtonAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 3340
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButtonAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 3341
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButtonAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 3343
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlipSettingsView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3344
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlipSettingsView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setScaleX(F)V

    .line 3345
    const/16 v0, 0x7d

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDecelerateInterpolator:Landroid/animation/TimeInterpolator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlipSettingsView:Landroid/view/View;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0xe1

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->interpolator(Landroid/animation/TimeInterpolator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startDelay(ILandroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlipSettingsViewAnim:Landroid/animation/Animator;

    .line 3351
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->interpolator(Landroid/animation/TimeInterpolator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v1, 0x7d

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p0, v0, v1, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollViewAnim:Landroid/animation/Animator;

    .line 3358
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v7, [F

    aput v6, v2, v5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p0, v0, v1, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButtonAnim:Landroid/animation/Animator;

    .line 3363
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3364
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v7, [F

    const/high16 v3, 0x3f800000

    aput v3, v2, v5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButtonAnim:Landroid/animation/Animator;

    .line 3367
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v7, [F

    aput v6, v2, v5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButtonAnim:Landroid/animation/Animator;

    .line 3372
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$24;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$24;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 3345
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    .line 3351
    :array_1
    .array-data 4
        0x3f800000
        0x0
    .end array-data
.end method

.method public getGestureRecorder()Lcom/android/systemui/statusbar/GestureRecorder;
    .locals 1

    .prologue
    .line 3541
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

    return-object v0
.end method

.method protected getSearchLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 1691
    .line 1692
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e8

    const v4, 0x820100

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1707
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1708
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1710
    :cond_0
    const v1, 0x800053

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1711
    const-string v1, "SearchPanel"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1713
    const v1, 0x10301f5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1714
    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1718
    return-object v0
.end method

.method protected getStatusBarGravity()I
    .locals 1

    .prologue
    .line 1783
    const/16 v0, 0x37

    return v0
.end method

.method public getStatusBarHeight()I
    .locals 2

    .prologue
    .line 1787
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    if-gez v0, :cond_0

    .line 1788
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1789
    const v1, 0x105000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    .line 1792
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    return v0
.end method

.method protected getStatusBarView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1686
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    return-object v0
.end method

.method protected haltTicker()V
    .locals 1

    .prologue
    .line 4603
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/Ticker;->halt()V

    .line 4604
    return-void
.end method

.method public hideHomeSearchAction()V
    .locals 4

    .prologue
    .line 1770
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideHomeSearchAction()V

    .line 1772
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSearchPanel:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1773
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHideSearchPanel:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1777
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHideSearchPanel:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSearchHoldoff:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1778
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->awakenDreams()V

    .line 1779
    return-void
.end method

.method public hideSearchPanel()V
    .locals 3

    .prologue
    .line 1747
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideSearchPanel()V

    .line 1748
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v1, :cond_0

    .line 1749
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1751
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1752
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1754
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public interceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3527
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowState:I

    if-nez v3, :cond_1

    .line 3528
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    :cond_0
    move v0, v2

    .line 3531
    .local v0, "upOrCancel":Z
    :goto_0
    if-eqz v0, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v3, :cond_3

    .line 3532
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setInteracting(IZ)V

    .line 3537
    .end local v0    # "upOrCancel":Z
    :cond_1
    :goto_1
    return v1

    :cond_2
    move v0, v1

    .line 3528
    goto :goto_0

    .line 3534
    .restart local v0    # "upOrCancel":Z
    :cond_3
    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setInteracting(IZ)V

    goto :goto_1
.end method

.method public interpolator(Landroid/animation/TimeInterpolator;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p1, "ti"    # Landroid/animation/TimeInterpolator;
    .param p2, "a"    # Landroid/animation/Animator;

    .prologue
    .line 3212
    invoke-virtual {p2, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3213
    return-object p2
.end method

.method protected loadDimens()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 4486
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4488
    const v1, 0x105000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    .line 4491
    const v1, 0x1050010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 4493
    const v2, 0x7f0d001e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 4496
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconHPadding:I

    if-ne v2, v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    if-eq v1, v3, :cond_1

    .line 4498
    :cond_0
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconHPadding:I

    .line 4499
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    .line 4503
    :cond_1
    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEdgeBorder:I

    .line 4505
    const v1, 0x7f0d0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSelfExpandVelocityPx:F

    .line 4506
    const v1, 0x7f0d0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSelfCollapseVelocityPx:F

    .line 4507
    const v1, 0x7f0d0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlingExpandMinVelocityPx:F

    .line 4508
    const v1, 0x7f0d0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlingCollapseMinVelocityPx:F

    .line 4510
    const v1, 0x7f0d0027

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCollapseMinDisplayFraction:F

    .line 4511
    const v1, 0x7f0d0028

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandMinDisplayFraction:F

    .line 4513
    const v1, 0x7f0d0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandAccelPx:F

    .line 4514
    const v1, 0x7f0d002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCollapseAccelPx:F

    .line 4516
    const v1, 0x7f0d0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlingGestureMaxXVelocityPx:F

    .line 4518
    const v1, 0x7f0d0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlingGestureMaxOutputVelocityPx:F

    .line 4521
    const v1, 0x7f0d0038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelMarginBottomPx:I

    .line 4523
    const v1, 0x7f0d0039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelMarginPx:I

    .line 4525
    const v1, 0x7f0c0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelGravity:I

    .line 4526
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelGravity:I

    if-gtz v1, :cond_2

    .line 4527
    const v1, 0x800033

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelGravity:I

    .line 4529
    :cond_2
    const v1, 0x7f0c0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsPanelGravity:I

    .line 4530
    const-string v1, "PhoneStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSettingsPanelGravity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsPanelGravity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4531
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsPanelGravity:I

    if-gtz v1, :cond_3

    .line 4532
    const v1, 0x800035

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsPanelGravity:I

    .line 4550
    :cond_3
    const v1, 0x7f0d0035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationHeaderHeight:I

    .line 4552
    const v1, 0x7f0d0040

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelMinHeightFrac:F

    .line 4555
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelMinHeightFrac:F

    cmpg-float v1, v1, v5

    if-ltz v1, :cond_4

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelMinHeightFrac:F

    const/high16 v2, 0x3f800000

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    .line 4560
    :cond_4
    iput v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelMinHeightFrac:F

    .line 4563
    :cond_5
    const v1, 0x7f0c000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationDecay:I

    .line 4564
    const v1, 0x7f0d001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRowHeight:I

    .line 4567
    return-void
.end method

.method makeExpandedInvisible()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/high16 v2, 0x3f800000

    const/16 v1, 0x8

    const/4 v3, 0x0

    .line 3401
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v0, :cond_0

    .line 3453
    :goto_0
    return-void

    .line 3406
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->collapseAllPanels(Z)V

    .line 3408
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasFlipSettings:Z

    if-eqz v0, :cond_6

    .line 3410
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlipSettingsViewAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlipSettingsViewAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 3411
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollViewAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollViewAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 3412
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButtonAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 3413
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButtonAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 3414
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButtonAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 3416
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setScaleX(F)V

    .line 3417
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 3418
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3419
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3420
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setVisibility(I)V

    .line 3421
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlipSettingsView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3422
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3423
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 3426
    :cond_6
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    .line 3427
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setLayoutTransitionsEnabled(Z)V

    .line 3428
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_7

    .line 3429
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setSlippery(Z)V

    .line 3430
    :cond_7
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->visibilityChanged(Z)V

    .line 3433
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 3435
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getStatusBarHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3436
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3437
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3438
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3440
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-nez v0, :cond_8

    .line 3441
    const/high16 v0, 0x10a0000

    invoke-virtual {p0, v4, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setNotificationIconVisibility(ZI)V

    .line 3445
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dismissPopups()V

    .line 3447
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseCleanup:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    .line 3448
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseCleanup:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3449
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseCleanup:Ljava/lang/Runnable;

    .line 3452
    :cond_9
    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setInteracting(IZ)V

    goto/16 :goto_0
.end method

.method makeExpandedInvisibleSoon()V
    .locals 4

    .prologue
    .line 3394
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3395
    return-void
.end method

.method makeExpandedVisible()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3125
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3150
    :cond_0
    :goto_0
    return-void

    .line 3129
    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    .line 3130
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setLayoutTransitionsEnabled(Z)V

    .line 3131
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_2

    .line 3132
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setSlippery(Z)V

    .line 3134
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCarrierLabelVisibility(Z)V

    .line 3136
    const/16 v0, -0x2710

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 3140
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 3142
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3143
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3144
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3145
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3147
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->visibilityChanged(Z)V

    .line 3149
    invoke-virtual {p0, v3, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setInteracting(IZ)V

    goto :goto_0
.end method

.method protected makeStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
    .locals 12

    .prologue
    const v11, 0x7f08006d

    const/4 v10, 0x0

    const/4 v1, 0x1

    const/16 v3, 0x8

    const/4 v6, 0x0

    .line 515
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 518
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v0

    if-le v0, v1, :cond_e

    .line 523
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsMultiSimEnabled:Z

    .line 525
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNumPhones:I

    .line 534
    :goto_0
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 536
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDisplaySize()V

    .line 537
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->loadDimens()V

    .line 539
    const v0, 0x1050010

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    .line 541
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsMultiSimEnabled:Z

    if-eqz v0, :cond_f

    .line 542
    const v0, 0x7f040009

    invoke-static {v7, v0, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 554
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iput-object p0, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 555
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 569
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0013

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 574
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1110067

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isONSSupported:Z

    .line 585
    :goto_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsMultiSimEnabled:Z

    if-eqz v0, :cond_11

    .line 586
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f080030

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 591
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 595
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsMultiSimEnabled:Z

    if-eqz v0, :cond_12

    .line 596
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f08003f

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/PanelHolder;

    .line 600
    :goto_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setPanelHolder(Lcom/android/systemui/statusbar/phone/PanelHolder;)V

    .line 602
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f080062

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 604
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 605
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_13

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelIsFullScreenWidth:Z

    .line 609
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const v2, 0x7f080071

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 617
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    if-nez v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 619
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$FastColorDrawable;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f090002

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v2, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$FastColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 628
    :cond_0
    const v0, 0x7f040004

    invoke-static {v7, v0, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    .line 630
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->setVisibility(I)V

    .line 631
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 639
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateShowSearchHoldoff()V

    .line 643
    const v0, 0x11100b3

    :try_start_0
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 645
    if-eqz v2, :cond_1

    .line 646
    const v0, 0x7f040006

    const/4 v5, 0x0

    invoke-static {v7, v0, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMenuBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 653
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v0

    .line 655
    if-eqz v0, :cond_2

    if-nez v2, :cond_2

    .line 656
    const v0, 0x7f04000a

    const/4 v2, 0x0

    invoke-static {v7, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 659
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(I)V

    .line 660
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 661
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    :cond_2
    :goto_6
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPixelFormat:I

    .line 675
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f080036

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemIconArea:Landroid/widget/LinearLayout;

    .line 676
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f080037

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    .line 677
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f080035

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IconMerger;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    .line 678
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f080034

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMoreIcon:Landroid/view/View;

    .line 679
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMoreIcon:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/IconMerger;->setOverflowIndicator(Landroid/view/View;)V

    .line 680
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f080032

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarContents:Landroid/widget/LinearLayout;

    .line 681
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f08003c

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerView:Landroid/view/View;

    .line 683
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f080067

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    .line 684
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setLayoutTransitionsEnabled(Z)V

    .line 685
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNotificationLongClicker()Landroid/view/View$OnLongClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setLongPressListener(Landroid/view/View$OnLongClickListener;)V

    .line 686
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedContents:Landroid/view/View;

    .line 688
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f080071

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelHeader:Landroid/view/View;

    .line 690
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f080075

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    .line 691
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 692
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 693
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 694
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 695
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f080073

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DateView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDateView:Lcom/android/systemui/statusbar/policy/DateView;

    .line 702
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsMultiSimEnabled:Z

    if-eqz v0, :cond_1e

    .line 703
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNumPhones:I

    new-array v0, v0, [Landroid/content/res/Resources;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMSimResources:[Landroid/content/res/Resources;

    .line 704
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNumPhones:I

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:[Landroid/widget/TextView;

    .line 705
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNumPhones:I

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel_SlotId:[Landroid/widget/TextView;

    .line 706
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNumPhones:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelVisible:[Z

    .line 707
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNumPhones:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelShowInPanel:[Z

    .line 708
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNumPhones:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastSupported:[Z

    .line 711
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNumPhones:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastActive:[Z

    .line 712
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNumPhones:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastLabelPopulated:[Z

    .line 714
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNumPhones:I

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastLabel:[Landroid/widget/TextView;

    .line 721
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f08006a

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 723
    if-eqz v0, :cond_3

    .line 724
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 726
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 728
    if-eqz v0, :cond_4

    .line 729
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_4
    move v2, v6

    .line 735
    :goto_7
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNumPhones:I

    if-ge v2, v0, :cond_24

    .line 738
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMSimResources:[Landroid/content/res/Resources;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMSimContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    aput-object v5, v0, v2

    .line 740
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelVisible:[Z

    aput-boolean v6, v0, v2

    .line 741
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelShowInPanel:[Z

    aput-boolean v6, v0, v2

    .line 744
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMSimResources:[Landroid/content/res/Resources;

    aget-object v0, v0, v2

    const v5, 0x7f0a0013

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 749
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastSupported:[Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMSimResources:[Landroid/content/res/Resources;

    aget-object v0, v0, v2

    const v8, 0x7f0a001b

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "br"

    const-string v8, "gsm.sim.operator.iso-country"

    const-string v9, ""

    invoke-static {v8, v2, v9}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_5
    move v0, v1

    :goto_8
    aput-boolean v0, v5, v2

    .line 768
    :goto_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastActive:[Z

    aput-boolean v6, v0, v2

    .line 769
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastLabelPopulated:[Z

    aput-boolean v6, v0, v2

    .line 774
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNumPhones:I

    if-le v0, v1, :cond_8

    .line 784
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastSupported:[Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastSupported:[Z

    aget-boolean v0, v0, v6

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastSupported:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_16

    :cond_6
    move v0, v1

    :goto_a
    aput-boolean v0, v5, v6

    .line 788
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastSupported:[Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastSupported:[Z

    aget-boolean v0, v0, v6

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastSupported:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_17

    :cond_7
    move v0, v1

    :goto_b
    aput-boolean v0, v5, v1

    .line 794
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastActive:[Z

    aput-boolean v6, v0, v6

    .line 795
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastActive:[Z

    aput-boolean v6, v0, v1

    .line 796
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastLabelPopulated:[Z

    aput-boolean v6, v0, v6

    .line 797
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastLabelPopulated:[Z

    aput-boolean v6, v0, v1

    .line 805
    :cond_8
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNumPhones:I

    if-gt v0, v1, :cond_c

    .line 807
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f08006f

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 809
    if-eqz v0, :cond_9

    .line 810
    const-string v5, ""

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 811
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 813
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f08006e

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 814
    if-eqz v0, :cond_a

    .line 815
    const-string v5, ""

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 816
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 818
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f080070

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 819
    if-eqz v0, :cond_b

    .line 820
    const-string v5, ""

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 821
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 823
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 825
    if-eqz v0, :cond_c

    .line 826
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 831
    :cond_c
    packed-switch v2, :pswitch_data_0

    .line 1005
    const-string v0, "PhoneStatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "makeStatusBarView: Attempt to initialize subscription "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", only sybscriptions 0 & 1 are allowed."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_d
    :goto_c
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_7

    .line 527
    :cond_e
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsMultiSimEnabled:Z

    .line 529
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNumPhones:I

    goto/16 :goto_0

    .line 548
    :cond_f
    const v0, 0x7f040024

    invoke-static {v7, v0, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    goto/16 :goto_1

    .line 577
    :cond_10
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isONSSupported:Z

    goto/16 :goto_2

    .line 589
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f08005f

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    goto/16 :goto_3

    .line 598
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f080091

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/PanelHolder;

    goto/16 :goto_4

    :cond_13
    move v0, v6

    .line 605
    goto/16 :goto_5

    :cond_14
    move v0, v6

    .line 749
    goto/16 :goto_8

    .line 762
    :cond_15
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastSupported:[Z

    aput-boolean v6, v0, v2

    goto/16 :goto_9

    :cond_16
    move v0, v6

    .line 784
    goto/16 :goto_a

    :cond_17
    move v0, v6

    .line 788
    goto/16 :goto_b

    .line 833
    :pswitch_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:[Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v8, 0x7f080006

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v5, v2

    .line 835
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:[Landroid/widget/TextView;

    aget-object v5, v0, v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelVisible:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_19

    move v0, v6

    :goto_d
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 855
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel_SlotId:[Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v8, 0x7f08006b

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v5, v2

    .line 857
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel_SlotId:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    const-string v5, "1"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 858
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel_SlotId:[Landroid/widget/TextView;

    aget-object v5, v0, v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelVisible:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_1a

    move v0, v6

    :goto_e
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 868
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastLabel:[Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v8, 0x7f08006c

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v5, v2

    .line 870
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastLabel:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    if-eqz v0, :cond_18

    .line 871
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastLabel:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    const-string v5, ""

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 872
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastLabel:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 908
    :cond_18
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f08006a

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 910
    if-eqz v0, :cond_d

    .line 911
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_c

    :cond_19
    move v0, v3

    .line 835
    goto :goto_d

    :cond_1a
    move v0, v3

    .line 858
    goto :goto_e

    .line 917
    :pswitch_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:[Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v8, 0x7f08006f

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v5, v2

    .line 919
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:[Landroid/widget/TextView;

    aget-object v5, v0, v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelVisible:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_1c

    move v0, v6

    :goto_f
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 939
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel_SlotId:[Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v8, 0x7f08006e

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v5, v2

    .line 941
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel_SlotId:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    const-string v5, "2"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 942
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel_SlotId:[Landroid/widget/TextView;

    aget-object v5, v0, v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelVisible:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_1d

    move v0, v6

    :goto_10
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 951
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastLabel:[Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v8, 0x7f080070

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v5, v2

    .line 953
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastLabel:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    if-eqz v0, :cond_1b

    .line 954
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastLabel:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    const-string v5, ""

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 957
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastLabel:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 991
    :cond_1b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 993
    if-eqz v0, :cond_d

    .line 994
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_c

    :cond_1c
    move v0, v3

    .line 919
    goto :goto_f

    :cond_1d
    move v0, v3

    .line 942
    goto :goto_10

    .line 1017
    :cond_1e
    new-array v0, v1, [Landroid/content/res/Resources;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMSimResources:[Landroid/content/res/Resources;

    .line 1018
    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:[Landroid/widget/TextView;

    .line 1019
    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel_SlotId:[Landroid/widget/TextView;

    .line 1020
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelVisible:[Z

    .line 1021
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelShowInPanel:[Z

    .line 1022
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastSupported:[Z

    .line 1025
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastActive:[Z

    .line 1026
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastLabelPopulated:[Z

    .line 1027
    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastLabel:[Landroid/widget/TextView;

    .line 1029
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMSimResources:[Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    aput-object v2, v0, v6

    .line 1031
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelVisible:[Z

    aput-boolean v6, v0, v6

    .line 1032
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:[Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f080006

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v2, v6

    .line 1034
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:[Landroid/widget/TextView;

    aget-object v2, v0, v6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelVisible:[Z

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_29

    move v0, v6

    :goto_11
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1052
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelShowInPanel:[Z

    aput-boolean v6, v0, v6

    .line 1054
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel_SlotId:[Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f08006b

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v2, v6

    .line 1056
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel_SlotId:[Landroid/widget/TextView;

    aget-object v0, v0, v6

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1057
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel_SlotId:[Landroid/widget/TextView;

    aget-object v0, v0, v6

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1063
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMSimResources:[Landroid/content/res/Resources;

    aget-object v0, v0, v6

    const v2, 0x7f0a0013

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1068
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastSupported:[Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMSimResources:[Landroid/content/res/Resources;

    aget-object v0, v0, v6

    const v5, 0x7f0a001b

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "br"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_1f
    move v0, v1

    :goto_12
    aput-boolean v0, v2, v6

    .line 1078
    :goto_13
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastActive:[Z

    aput-boolean v6, v0, v6

    .line 1079
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastLabelPopulated:[Z

    aput-boolean v6, v0, v6

    .line 1087
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastLabel:[Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f08006c

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v2, v6

    .line 1089
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastLabel:[Landroid/widget/TextView;

    aget-object v0, v0, v6

    if-eqz v0, :cond_20

    .line 1090
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastLabel:[Landroid/widget/TextView;

    aget-object v0, v0, v6

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1091
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastLabel:[Landroid/widget/TextView;

    aget-object v0, v0, v6

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1121
    :cond_20
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f08006f

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1122
    if-eqz v0, :cond_21

    .line 1123
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1124
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1126
    :cond_21
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f08006e

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1127
    if-eqz v0, :cond_22

    .line 1128
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1129
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1131
    :cond_22
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f080070

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1132
    if-eqz v0, :cond_23

    .line 1133
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1134
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1136
    :cond_23
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1138
    if-eqz v0, :cond_24

    .line 1139
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1155
    :cond_24
    const v0, 0x7f0a000a

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasSettingsPanel:Z

    .line 1156
    const v0, 0x7f0a000b

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasFlipSettings:Z

    .line 1158
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelHeader:Landroid/view/View;

    const v2, 0x7f080072

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDateTimeView:Landroid/view/View;

    .line 1159
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDateTimeView:Landroid/view/View;

    if-eqz v0, :cond_25

    .line 1160
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDateTimeView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClockClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1161
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDateTimeView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1164
    :cond_25
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f080077

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    .line 1165
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_26

    .line 1166
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1167
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasSettingsPanel:Z

    if-eqz v0, :cond_2d

    .line 1168
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->hasFullWidthNotifications()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1170
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    const v2, 0x7f02001e

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1171
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1186
    :cond_26
    :goto_14
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasFlipSettings:Z

    if-eqz v0, :cond_27

    .line 1187
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f080078

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    .line 1189
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_27

    .line 1190
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1194
    :cond_27
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f080066

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    .line 1195
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f080064

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContentAreaView:Landroid/widget/FrameLayout;

    .line 1196
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v6}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 1197
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelIsFullScreenWidth:Z

    if-nez v0, :cond_28

    .line 1198
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    const/high16 v2, 0x8a0000

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setSystemUiVisibility(I)V

    .line 1204
    :cond_28
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-direct {v0, p0, v7, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    .line 1206
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f08003e

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/TickerView;

    .line 1207
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/TickerView;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    .line 1209
    const/high16 v0, 0x7f0d0000

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEdgeBorder:I

    .line 1212
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 1215
    new-instance v0, Lcom/android/systemui/statusbar/policy/LocationController;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/policy/LocationController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    .line 1216
    new-instance v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/policy/BatteryController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 1220
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsMultiSimEnabled:Z

    if-eqz v0, :cond_3f

    .line 1221
    new-instance v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    .line 1224
    new-instance v0, Lcom/android/systemui/statusbar/policy/BluetoothController;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/policy/BluetoothController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 1225
    new-instance v0, Lcom/android/systemui/statusbar/policy/RotationLockController;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/policy/RotationLockController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    .line 1226
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f080039

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/MSimSignalClusterView;

    move v2, v6

    .line 1230
    :goto_15
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNumPhones:I

    if-ge v2, v4, :cond_2e

    .line 1233
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    invoke-virtual {v4, v0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->addSignalCluster(Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimSignalCluster;I)V

    .line 1231
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_29
    move v0, v3

    .line 1034
    goto/16 :goto_11

    :cond_2a
    move v0, v6

    .line 1068
    goto/16 :goto_12

    .line 1074
    :cond_2b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastSupported:[Z

    aput-boolean v6, v0, v6

    goto/16 :goto_13

    .line 1174
    :cond_2c
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f080076

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1176
    if-eqz v0, :cond_26

    .line 1177
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_14

    .line 1182
    :cond_2d
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1183
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    const v2, 0x7f020020

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_14

    .line 1237
    :cond_2e
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->setNetworkController(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)V

    .line 1239
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f080063

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyCallLabel:Landroid/widget/TextView;

    .line 1241
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyCallLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_2f

    .line 1242
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyCallLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->addEmergencyLabelView(Landroid/widget/TextView;)V

    .line 1243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyCallLabel:Landroid/widget/TextView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$8;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1245
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyCallLabel:Landroid/widget/TextView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$9;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$9;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_2f
    move v0, v6

    .line 1264
    :goto_16
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNumPhones:I

    if-ge v0, v2, :cond_35

    .line 1267
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelShowInPanel:[Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    if-eqz v2, :cond_31

    move v2, v1

    :goto_17
    aput-boolean v2, v4, v0

    .line 1278
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelShowInPanel:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_30

    .line 1280
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:[Landroid/widget/TextView;

    aget-object v4, v2, v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelVisible:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_32

    move v2, v6

    :goto_18
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1285
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel_SlotId:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1286
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel_SlotId:[Landroid/widget/TextView;

    aget-object v4, v2, v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelVisible:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_33

    move v2, v6

    :goto_19
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1309
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->hasMobileDataFeature()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1310
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    invoke-virtual {v2, v4, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->addMobileLabelView(Landroid/widget/TextView;I)V

    .line 1322
    :goto_1a
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setOnSizeChangedListener(Lcom/android/systemui/statusbar/policy/OnSizeChangedListener;)V

    .line 1265
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_31
    move v2, v6

    .line 1267
    goto :goto_17

    .line 1280
    :cond_32
    const/4 v2, 0x4

    goto :goto_18

    :cond_33
    move v2, v3

    .line 1286
    goto :goto_19

    .line 1315
    :cond_34
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    invoke-virtual {v2, v4, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->addCombinedLabelView(Landroid/widget/TextView;I)V

    goto :goto_1a

    .line 1336
    :cond_35
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v1, 0x7f080060

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarOnsText:Landroid/widget/TextView;

    .line 1337
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isONSSupported:Z

    if-eqz v0, :cond_3e

    .line 1338
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarOnsText:Landroid/widget/TextView;

    if-eqz v0, :cond_37

    .line 1339
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarOnsText:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->addMobileLabelShortFormView(Landroid/widget/TextView;I)V

    .line 1345
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarOnsText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarOnsText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarOnsText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3d

    .line 1353
    :cond_36
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarOnsText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1548
    :cond_37
    :goto_1b
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasSettingsPanel:Z

    if-eqz v0, :cond_3b

    .line 1551
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasFlipSettings:Z

    if-eqz v0, :cond_48

    .line 1553
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v1, 0x7f080065

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1554
    if-eqz v0, :cond_38

    .line 1555
    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlipSettingsView:Landroid/view/View;

    .line 1556
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlipSettingsView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1557
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlipSettingsView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 1583
    :cond_38
    :goto_1c
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v1, 0x7f080007

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsContainer:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    .line 1585
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsContainer:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    if-eqz v0, :cond_4b

    .line 1586
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettings;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsContainer:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettings;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

    .line 1590
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelIsFullScreenWidth:Z

    if-nez v0, :cond_39

    .line 1591
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsContainer:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    const/high16 v1, 0x180000

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->setSystemUiVisibility(I)V

    .line 1596
    :cond_39
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/SettingsPanelView;

    if-eqz v0, :cond_3a

    .line 1597
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/SettingsPanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->setQuickSettings(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    .line 1599
    :cond_3a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->setService(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 1600
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V

    .line 1601
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsMultiSimEnabled:Z

    if-eqz v0, :cond_4a

    .line 1602
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/QuickSettings;->setup(Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/RotationLockController;)V

    .line 1623
    :cond_3b
    :goto_1d
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1624
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_4c

    const-string v0, "android.intent.action.SCREEN_ON"

    :goto_1e
    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1628
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1629
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1630
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1631
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1632
    const-string v1, "com.android.systemui.demo"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1639
    :goto_1f
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNumPhones:I

    if-ge v6, v1, :cond_4d

    .line 1642
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastSupported:[Z

    aget-boolean v1, v1, v6

    if-eqz v1, :cond_3c

    .line 1643
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCBEnableReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.motorola.cellbroadcastreceiver.CB_INFO_ON_SYSTEMUI"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "com.motorola.permission.CB_ENABLE"

    invoke-virtual {v7, v1, v2, v3, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1650
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCBInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {v7, v1, v2, v3, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1640
    :cond_3c
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    .line 1355
    :cond_3d
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarOnsText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1b

    .line 1378
    :cond_3e
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarOnsText:Landroid/widget/TextView;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarOnsText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1b

    .line 1385
    :cond_3f
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 1386
    new-instance v0, Lcom/android/systemui/statusbar/policy/BluetoothController;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/policy/BluetoothController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 1387
    new-instance v0, Lcom/android/systemui/statusbar/policy/RotationLockController;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/policy/RotationLockController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    .line 1388
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f080061

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SignalClusterView;

    .line 1392
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V

    .line 1393
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    .line 1395
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasVoiceCallingFeature()Z

    move-result v0

    .line 1396
    if-eqz v0, :cond_40

    .line 1397
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f080063

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyCallLabel:Landroid/widget/TextView;

    .line 1399
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyCallLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_40

    .line 1400
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyCallLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->addEmergencyLabelView(Landroid/widget/TextView;)V

    .line 1402
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyCallLabel:Landroid/widget/TextView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$11;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$11;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1408
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyCallLabel:Landroid/widget/TextView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$12;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$12;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1427
    :cond_40
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelShowInPanel:[Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:[Landroid/widget/TextView;

    aget-object v2, v2, v6

    if-eqz v2, :cond_43

    :goto_20
    aput-boolean v1, v0, v6

    .line 1436
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelShowInPanel:[Z

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_41

    .line 1447
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:[Landroid/widget/TextView;

    aget-object v1, v0, v6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelVisible:[Z

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_44

    move v0, v6

    :goto_21
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1452
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel_SlotId:[Landroid/widget/TextView;

    aget-object v0, v0, v6

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1456
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel_SlotId:[Landroid/widget/TextView;

    aget-object v0, v0, v6

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1465
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasMobileDataFeature()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1468
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:[Landroid/widget/TextView;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addMobileLabelView(Landroid/widget/TextView;)V

    .line 1480
    :goto_22
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$13;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$13;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setOnSizeChangedListener(Lcom/android/systemui/statusbar/policy/OnSizeChangedListener;)V

    .line 1498
    :cond_41
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v1, 0x7f080060

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarOnsText:Landroid/widget/TextView;

    .line 1499
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isONSSupported:Z

    if-eqz v0, :cond_47

    .line 1500
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarOnsText:Landroid/widget/TextView;

    if-eqz v0, :cond_37

    .line 1501
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarOnsText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addMobileLabelShortFormView(Landroid/widget/TextView;)V

    .line 1506
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarOnsText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarOnsText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarOnsText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_46

    .line 1514
    :cond_42
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarOnsText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1b

    :cond_43
    move v1, v6

    .line 1427
    goto/16 :goto_20

    :cond_44
    move v0, v3

    .line 1447
    goto :goto_21

    .line 1474
    :cond_45
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:[Landroid/widget/TextView;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCombinedLabelView(Landroid/widget/TextView;)V

    goto :goto_22

    .line 1516
    :cond_46
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarOnsText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1b

    .line 1539
    :cond_47
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarOnsText:Landroid/widget/TextView;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarOnsText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1b

    .line 1561
    :cond_48
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v1, 0x7f080040

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1562
    if-eqz v0, :cond_49

    .line 1563
    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/SettingsPanelView;

    .line 1569
    :goto_23
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/SettingsPanelView;

    if-eqz v0, :cond_38

    .line 1570
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    if-nez v0, :cond_38

    .line 1571
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/SettingsPanelView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$FastColorDrawable;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$FastColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1c

    .line 1565
    :cond_49
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v1, 0x7f080047

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/SettingsPanelView;

    goto :goto_23

    .line 1610
    :cond_4a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/QuickSettings;->setup(Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/RotationLockController;)V

    goto/16 :goto_1d

    .line 1619
    :cond_4b
    iput-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

    goto/16 :goto_1d

    .line 1624
    :cond_4c
    const-string v0, "android.intent.action.SCREEN_OFF"

    goto/16 :goto_1e

    .line 1662
    :cond_4d
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1665
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->resetUserSetupObserver()V

    .line 1667
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    return-object v0

    .line 668
    :catch_0
    move-exception v0

    goto/16 :goto_6

    .line 831
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 4394
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4399
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 4401
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateResources()V

    .line 4402
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->repositionNavigationBar()V

    .line 4403
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->repositionMenuBar()V

    .line 4404
    const/16 v0, -0x2710

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 4405
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateShowSearchHoldoff()V

    .line 4406
    return-void
.end method

.method public onHeadsUpDismissed()V
    .locals 4

    .prologue
    .line 4447
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mInterruptingNotificationEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-nez v0, :cond_1

    .line 4459
    :cond_0
    :goto_0
    return-void

    .line 4448
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/16 v1, 0x403

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 4449
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->isClearable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4451
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mInterruptingNotificationEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mInterruptingNotificationEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mInterruptingNotificationEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v3, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClear(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4455
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onHideSearchPanel()V
    .locals 2

    .prologue
    .line 1679
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    .line 1680
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/BarTransitions;->setContentVisible(Z)V

    .line 1682
    :cond_0
    return-void
.end method

.method protected onShowSearchPanel()V
    .locals 2

    .prologue
    .line 1672
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    .line 1673
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/BarTransitions;->setContentVisible(Z)V

    .line 1675
    :cond_0
    return-void
.end method

.method panelsEnabled()Z
    .locals 2

    .prologue
    .line 3120
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshAllStatusBarIcons()V
    .locals 1

    .prologue
    .line 1975
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->refreshAllIconsForLayout(Landroid/widget/LinearLayout;)V

    .line 1976
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->refreshAllIconsForLayout(Landroid/widget/LinearLayout;)V

    .line 1977
    return-void
.end method

.method protected refreshLayout(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2125
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    .line 2126
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLayoutDirection(I)V

    .line 2129
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 2131
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2132
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02001b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2135
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 2137
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2138
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    const v1, 0x7f02001e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2141
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 2143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2144
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    const v1, 0x7f020019

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2147
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->refreshAllStatusBarIcons()V

    .line 2148
    return-void
.end method

.method public removeIcon(Ljava/lang/String;II)V
    .locals 1
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "viewIndex"    # I

    .prologue
    .line 2038
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 2039
    return-void
.end method

.method public removeNotification(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "key"    # Landroid/os/IBinder;

    .prologue
    .line 2099
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->removeNotificationViews(Landroid/os/IBinder;)Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 2102
    .local v0, "old":Landroid/service/notification/StatusBarNotification;
    if-eqz v0, :cond_1

    .line 2104
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/Ticker;->removeEntry(Landroid/service/notification/StatusBarNotification;)V

    .line 2107
    const/16 v1, -0x2710

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 2109
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mInterruptingNotificationEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mInterruptingNotificationEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    if-ne v0, v1, :cond_0

    .line 2111
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/16 v2, 0x403

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 2114
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isTracking()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2116
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 2120
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 2121
    return-void
.end method

.method public resetHeadsUpDecayTimer()V
    .locals 4

    .prologue
    const/16 v3, 0x403

    .line 2091
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUseHeadsUp:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationDecay:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->isClearable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2093
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 2094
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationDecay:I

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessageDelayed(IJ)Z

    .line 2096
    :cond_0
    return-void
.end method

.method protected setAreThereNotifications()V
    .locals 10

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2856
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    if-lez v0, :cond_3

    move v7, v1

    .line 2858
    :goto_0
    if-eqz v7, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->hasClearableItems()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 2869
    :goto_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasFlipSettings:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlipSettingsView:Landroid/view/View;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlipSettingsView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_5

    .line 2879
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2905
    :cond_0
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 2907
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v3, 0x7f080031

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 2908
    if-eqz v7, :cond_b

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->areLightsOn()Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    .line 2909
    :goto_3
    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v3

    cmpl-float v3, v3, v4

    if-nez v3, :cond_c

    :goto_4
    if-eq v0, v1, :cond_2

    .line 2910
    if-eqz v0, :cond_1

    .line 2911
    invoke-virtual {v6, v5}, Landroid/view/View;->setAlpha(F)V

    .line 2912
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2914
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz v0, :cond_d

    :goto_5
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz v0, :cond_e

    const-wide/16 v3, 0x2ee

    :goto_6
    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v4, 0x40000000

    invoke-direct {v3, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2927
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCarrierLabelVisibility(Z)V

    .line 2929
    return-void

    :cond_3
    move v7, v2

    .line 2856
    goto :goto_0

    :cond_4
    move v0, v2

    .line 2858
    goto :goto_1

    .line 2880
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2881
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    cmpl-float v3, v3, v4

    if-nez v3, :cond_6

    move v3, v1

    :goto_8
    if-eq v0, v3, :cond_0

    .line 2882
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    const-string v8, "alpha"

    new-array v9, v1, [F

    if-eqz v0, :cond_7

    move v3, v4

    :goto_9
    aput v3, v9, v2

    invoke-static {v6, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v8, 0xfa

    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 2884
    new-instance v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$18;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$18;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v3, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2899
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_2

    :cond_6
    move v3, v2

    .line 2881
    goto :goto_8

    :cond_7
    move v3, v5

    .line 2882
    goto :goto_9

    .line 2902
    :cond_8
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    if-eqz v0, :cond_9

    move v3, v4

    :goto_a
    invoke-virtual {v8, v3}, Landroid/view/View;->setAlpha(F)V

    .line 2903
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    if-eqz v0, :cond_a

    move v3, v2

    :goto_b
    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_9
    move v3, v5

    .line 2902
    goto :goto_a

    :cond_a
    move v3, v6

    .line 2903
    goto :goto_b

    :cond_b
    move v0, v2

    .line 2908
    goto/16 :goto_3

    :cond_c
    move v1, v2

    .line 2909
    goto/16 :goto_4

    :cond_d
    move v4, v5

    .line 2914
    goto/16 :goto_5

    :cond_e
    const-wide/16 v3, 0xfa

    goto :goto_6

    :cond_f
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$19;

    invoke-direct {v0, p0, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$19;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/View;)V

    goto :goto_7
.end method

.method public setHardKeyboardStatus(ZZ)V
    .locals 0
    .param p1, "available"    # Z
    .param p2, "enabled"    # Z

    .prologue
    .line 3794
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

    .line 3784
    const/4 v1, 0x2

    if-eq p3, v1, :cond_0

    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_2

    :cond_0
    move v0, v2

    .line 3787
    .local v0, "altBack":Z
    :goto_0
    if-eqz v0, :cond_3

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationIconHints:I

    or-int/lit8 v1, v1, 0x1

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setNavigationIconHints(I)V

    .line 3790
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

    if-lez p2, :cond_4

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->setImeWindowStatus(Z)V

    .line 3791
    :cond_1
    return-void

    .end local v0    # "altBack":Z
    :cond_2
    move v0, v3

    .line 3784
    goto :goto_0

    .line 3787
    .restart local v0    # "altBack":Z
    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationIconHints:I

    and-int/lit8 v1, v1, -0x2

    goto :goto_1

    :cond_4
    move v1, v3

    .line 3790
    goto :goto_2
.end method

.method public setInteracting(IZ)V
    .locals 2
    .param p1, "barWindow"    # I
    .param p2, "interacting"    # Z

    .prologue
    .line 3696
    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mInteractingWindows:I

    or-int/2addr v0, p1

    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mInteractingWindows:I

    .line 3699
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mInteractingWindows:I

    if-eqz v0, :cond_1

    .line 3700
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->suspendAutohide()V

    .line 3704
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkBarModes()V

    .line 3705
    return-void

    .line 3696
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mInteractingWindows:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    goto :goto_0

    .line 3702
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->resumeSuspendedAutohide()V

    goto :goto_1
.end method

.method public setLightsOn(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3749
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLightsOn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3750
    if-eqz p1, :cond_0

    .line 3751
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setSystemUiVisibility(II)V

    .line 3755
    :goto_0
    return-void

    .line 3753
    :cond_0
    invoke-virtual {p0, v3, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setSystemUiVisibility(II)V

    goto :goto_0
.end method

.method setNotificationIconVisibility(ZI)V
    .locals 4
    .param p1, "visible"    # Z
    .param p2, "anim"    # I

    .prologue
    .line 4029
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/IconMerger;->getVisibility()I

    move-result v0

    .line 4030
    .local v0, "old":I
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 4031
    .local v1, "v":I
    :goto_0
    if-eq v0, v1, :cond_0

    .line 4032
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/IconMerger;->setVisibility(I)V

    .line 4033
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/IconMerger;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4035
    :cond_0
    return-void

    .line 4030
    .end local v1    # "v":I
    :cond_1
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public setSystemUiVisibility(II)V
    .locals 10

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3577
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 3578
    xor-int/lit8 v0, p2, -0x1

    and-int/2addr v0, v1

    and-int v2, p1, p2

    or-int/2addr v2, v0

    .line 3579
    xor-int v0, v2, v1

    .line 3585
    if-eqz v0, :cond_9

    .line 3586
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 3589
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 3590
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_a

    move v0, v6

    .line 3591
    :goto_0
    if-eqz v0, :cond_0

    .line 3592
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 3593
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z

    if-eqz v0, :cond_0

    .line 3594
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->haltTicker()V

    .line 3598
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 3602
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v3

    const/high16 v4, 0x4000000

    const/high16 v5, 0x40000000

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->computeBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;II)I

    move-result v9

    .line 3606
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v0, :cond_b

    move v3, v8

    .line 3609
    :goto_1
    if-eq v9, v8, :cond_c

    move v2, v6

    .line 3610
    :goto_2
    if-eq v3, v8, :cond_d

    move v1, v6

    .line 3612
    :goto_3
    if-eqz v2, :cond_f

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarMode:I

    if-eq v9, v0, :cond_f

    .line 3613
    iput v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarMode:I

    move v0, v6

    .line 3616
    :goto_4
    if-eqz v1, :cond_2

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarMode:I

    if-eq v3, v4, :cond_2

    .line 3617
    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarMode:I

    move v0, v6

    .line 3620
    :cond_2
    if-eqz v0, :cond_3

    .line 3621
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkBarModes()V

    .line 3623
    :cond_3
    if-nez v2, :cond_4

    if-eqz v1, :cond_6

    .line 3625
    :cond_4
    if-eq v9, v6, :cond_5

    if-ne v3, v6, :cond_e

    .line 3626
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->scheduleAutohide()V

    .line 3633
    :cond_6
    :goto_5
    const/high16 v0, 0x10000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    .line 3634
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 3636
    :cond_7
    const/high16 v0, 0x20000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_8

    .line 3637
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    const v1, -0x20000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 3641
    :cond_8
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyUiVisibilityChanged(I)V

    .line 3643
    :cond_9
    return-void

    :cond_a
    move v0, v7

    .line 3590
    goto :goto_0

    .line 3606
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v3

    const/high16 v4, 0x8000000

    const/high16 v5, -0x80000000

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->computeBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;II)I

    move-result v0

    move v3, v0

    goto :goto_1

    :cond_c
    move v2, v7

    .line 3609
    goto :goto_2

    :cond_d
    move v1, v7

    .line 3610
    goto :goto_3

    .line 3628
    :cond_e
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->cancelAutohide()V

    goto :goto_5

    :cond_f
    move v0, v7

    goto :goto_4
.end method

.method public setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;
    .locals 1
    .param p1, "a"    # Landroid/animation/Animator;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "vis"    # I

    .prologue
    .line 3202
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$22;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$22;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/View;I)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3208
    return-object p1
.end method

.method public setWindowState(II)V
    .locals 4
    .param p1, "window"    # I
    .param p2, "state"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3557
    if-nez p2, :cond_2

    move v0, v1

    .line 3558
    .local v0, "showing":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-eqz v3, :cond_0

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowState:I

    if-eq v1, p2, :cond_0

    .line 3561
    iput p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowState:I

    .line 3563
    if-nez v0, :cond_0

    .line 3564
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->collapseAllPanels(Z)V

    .line 3567
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarWindowState:I

    if-eq v1, p2, :cond_1

    .line 3570
    iput p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarWindowState:I

    .line 3573
    :cond_1
    return-void

    .end local v0    # "showing":Z
    :cond_2
    move v0, v2

    .line 3557
    goto :goto_0
.end method

.method protected shouldDisableNavbarGestures()Z
    .locals 2

    .prologue
    .line 4608
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const/high16 v1, 0x2000000

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
    .locals 2

    .prologue
    .line 2932
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-nez v0, :cond_1

    .line 2937
    :cond_0
    :goto_0
    return-void

    .line 2933
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v1, 0x7f08003b

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2934
    if-eqz v1, :cond_0

    .line 2935
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public showHomeSearchAction()V
    .locals 2

    .prologue
    .line 1759
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->showHomeSearchAction()V

    .line 1761
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->shouldDisableNavbarGestures()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1762
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSearchPanel:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1764
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSearchPanel:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 1766
    :cond_0
    return-void
.end method

.method public showSearchPanel()V
    .locals 3

    .prologue
    .line 1731
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->showSearchPanel()V

    .line 1732
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSearchPanel:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1735
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/SearchPanelView;->setSystemUiVisibility(I)V

    .line 1737
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v1, :cond_0

    .line 1738
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1740
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x21

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1741
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1743
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public start(Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p1, "a"    # Landroid/animation/Animator;

    .prologue
    .line 3222
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 3223
    return-object p1
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 490
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    .line 492
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDisplaySize()V

    .line 494
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->start()V

    .line 496
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addNavigationBar()V

    .line 498
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addMenuBar()V

    .line 501
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .line 503
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 505
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "heads_up_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 509
    return-void
.end method

.method public startActivityDismissingKeyguard(Landroid/content/Intent;Z)V
    .locals 3

    .prologue
    .line 4176
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4185
    :goto_0
    return-void

    .line 4179
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4182
    :goto_1
    const/high16 v0, 0x14000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4183
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4184
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    goto :goto_0

    .line 4180
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public startDelay(ILandroid/animation/Animator;)Landroid/animation/Animator;
    .locals 2
    .param p1, "d"    # I
    .param p2, "a"    # Landroid/animation/Animator;

    .prologue
    .line 3217
    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 3218
    return-object p2
.end method

.method public switchToSettings()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000

    const/16 v2, 0x8

    .line 3321
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetup:Z

    if-nez v0, :cond_0

    .line 3331
    :goto_0
    return-void

    .line 3323
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlipSettingsView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 3324
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlipSettingsView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3325
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3326
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 3327
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setScaleX(F)V

    .line 3328
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3329
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3330
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected tick(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;Z)V
    .locals 2

    .prologue
    .line 3799
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->areLightsOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3817
    :cond_0
    :goto_0
    return-void

    .line 3802
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3805
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notificationIsForCurrentUser(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3811
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3812
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const/high16 v1, 0xa0000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 3814
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/Ticker;->addEntry(Landroid/service/notification/StatusBarNotification;)V

    goto :goto_0
.end method

.method public topAppWindowChanged(Z)V
    .locals 1
    .param p1, "showMenu"    # Z

    .prologue
    .line 3768
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    .line 3769
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(Z)V

    .line 3773
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMenuBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_1

    .line 3774
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMenuBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(Z)V

    .line 3779
    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setLightsOn(Z)V

    .line 3780
    :cond_2
    return-void
.end method

.method protected updateCarrierLabelVisibility(Z)V
    .locals 2
    .param p1, "force"    # Z

    .prologue
    .line 2257
    const/4 v0, 0x0

    .line 2258
    .local v0, "subscription":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 2261
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCarrierLabelVisibility(ZI)V

    .line 2259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2265
    :cond_0
    return-void
.end method

.method protected updateCarrierLabelVisibility(ZI)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2270
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelShowInPanel:[Z

    aget-boolean v0, v0, p2

    if-nez v0, :cond_1

    .line 2696
    :cond_0
    :goto_0
    return-void

    .line 2285
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyCallLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    move v3, v1

    .line 2286
    :goto_1
    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getHeight()I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationHeaderHeight:I

    sub-int/2addr v4, v5

    if-ge v0, v4, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 2291
    :goto_2
    if-nez p1, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelVisible:[Z

    aget-boolean v4, v4, p2

    if-eq v4, v0, :cond_4

    .line 2292
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelVisible:[Z

    aput-boolean v0, v4, p2

    .line 2296
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:[Landroid/widget/TextView;

    aget-object v4, v4, p2

    invoke-virtual {v4}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2297
    if-eqz v0, :cond_4

    .line 2298
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:[Landroid/widget/TextView;

    aget-object v0, v0, p2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2319
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsMultiSimEnabled:Z

    if-eqz v0, :cond_b

    .line 2320
    if-eqz v3, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->isEmergencyOnly()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    .line 2555
    :goto_3
    if-nez p1, :cond_6

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelVisible:[Z

    aget-boolean v3, v3, p2

    if-eq v3, v0, :cond_0

    .line 2560
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelVisible:[Z

    aput-boolean v0, v3, p2

    .line 2575
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:[Landroid/widget/TextView;

    aget-object v3, v3, p2

    invoke-virtual {v3}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2576
    if-eqz v0, :cond_12

    .line 2577
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:[Landroid/widget/TextView;

    aget-object v0, v0, p2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2582
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsMultiSimEnabled:Z

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNumPhones:I

    if-le v0, v1, :cond_11

    .line 2588
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel_SlotId:[Landroid/widget/TextView;

    aget-object v0, v0, p2

    add-int/lit8 v1, p2, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2589
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel_SlotId:[Landroid/widget/TextView;

    aget-object v0, v0, p2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2630
    :goto_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCellBroadcastLabelVisibility()V

    .line 2654
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:[Landroid/widget/TextView;

    aget-object v0, v0, p2

    if-eqz v0, :cond_7

    .line 2672
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastLabel:[Landroid/widget/TextView;

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_8
    move v3, v2

    .line 2285
    goto/16 :goto_1

    :cond_9
    move v0, v2

    .line 2286
    goto/16 :goto_2

    :cond_a
    move v0, v2

    .line 2320
    goto :goto_3

    .line 2407
    :cond_b
    if-eqz v3, :cond_c

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastSupported:[Z

    aget-boolean v0, v0, p2

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNumPhones:I

    if-le v0, v1, :cond_e

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastActive:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastLabelPopulated:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastLabel:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    if-nez v0, :cond_f

    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastActive:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastLabelPopulated:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastLabel:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    if-nez v0, :cond_f

    :cond_e
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNumPhones:I

    if-gt v0, v1, :cond_10

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastActive:[Z

    aget-boolean v0, v0, p2

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastLabelPopulated:[Z

    aget-boolean v0, v0, p2

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastLabel:[Landroid/widget/TextView;

    aget-object v0, v0, p2

    if-eqz v0, :cond_10

    :cond_f
    move v0, v1

    goto/16 :goto_3

    :cond_10
    move v0, v2

    goto/16 :goto_3

    .line 2600
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel_SlotId:[Landroid/widget/TextView;

    aget-object v0, v0, p2

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2601
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel_SlotId:[Landroid/widget/TextView;

    aget-object v0, v0, p2

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 2614
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:[Landroid/widget/TextView;

    aget-object v0, v0, p2

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2615
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel_SlotId:[Landroid/widget/TextView;

    aget-object v0, v0, p2

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method updateDisplaySize()V
    .locals 2

    .prologue
    .line 4081
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 4082
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 4090
    return-void
.end method

.method public updateExpandedViewPos(I)V
    .locals 4
    .param p1, "thingy"    # I

    .prologue
    .line 4055
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelMinHeightFrac:F

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentDisplaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setMinimumHeight(I)V

    .line 4058
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 4059
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelGravity:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4060
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelMarginPx:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 4061
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4063
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/SettingsPanelView;

    if-eqz v1, :cond_0

    .line 4064
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/SettingsPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 4065
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsPanelGravity:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4066
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelMarginPx:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 4067
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/SettingsPanelView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4070
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    if-eqz v1, :cond_1

    .line 4071
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelMarginPx:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->setMargin(I)V

    .line 4072
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPilePosition:[I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getLocationOnScreen([I)V

    .line 4073
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPilePosition:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpVerticalOffset:F

    .line 4076
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCarrierLabelVisibility(Z)V

    .line 4077
    return-void
.end method

.method public updateIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 2
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "viewIndex"    # I
    .param p4, "old"    # Lcom/android/internal/statusbar/StatusBarIcon;
    .param p5, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 2023
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 2024
    .local v0, "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v0, p5}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 2025
    return-void
.end method

.method protected updateNotificationIcons()V
    .locals 13

    .prologue
    .line 2197
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    if-nez v11, :cond_1

    .line 2251
    :cond_0
    return-void

    .line 2199
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->loadNotificationShade()V

    .line 2201
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    iget v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconHPadding:I

    mul-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    iget v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    invoke-direct {v5, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2204
    .local v5, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    .line 2215
    .local v0, "N":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2217
    .local v9, "toShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeviceProvisioned()Z

    move-result v6

    .line 2219
    .local v6, "provisioned":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_5

    .line 2220
    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v12, v0, v3

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    .line 2221
    .local v2, "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-eqz v6, :cond_2

    iget-object v11, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getScore()I

    move-result v11

    const/16 v12, -0xa

    if-ge v11, v12, :cond_4

    :cond_2
    iget-object v11, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showNotificationEvenIfUnprovisioned(Landroid/service/notification/StatusBarNotification;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 2219
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2229
    :cond_4
    iget-object v11, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notificationIsForCurrentUser(Landroid/service/notification/StatusBarNotification;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2230
    iget-object v11, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2233
    .end local v2    # "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_5
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2234
    .local v8, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v3, 0x0

    :goto_2
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v11

    if-ge v3, v11, :cond_7

    .line 2235
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v11, v3}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2236
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 2237
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2234
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2241
    .end local v1    # "child":Landroid/view/View;
    :cond_7
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 2242
    .local v7, "remove":Landroid/view/View;
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v11, v7}, Lcom/android/systemui/statusbar/phone/IconMerger;->removeView(Landroid/view/View;)V

    goto :goto_3

    .line 2245
    .end local v7    # "remove":Landroid/view/View;
    :cond_8
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v3, v11, :cond_0

    .line 2246
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 2247
    .local v10, "v":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-nez v11, :cond_9

    .line 2248
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v11, v10, v3, v5}, Lcom/android/systemui/statusbar/phone/IconMerger;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2245
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4
.end method

.method updateResources()V
    .locals 3

    .prologue
    .line 4469
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 4470
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4472
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 4473
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0b0004

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4480
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->updateResources()V

    .line 4482
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->loadDimens()V

    .line 4483
    return-void
.end method

.method protected updateSearchPanel()V
    .locals 2

    .prologue
    .line 1723
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateSearchPanel()V

    .line 1724
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    .line 1725
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDelegateView(Landroid/view/View;)V

    .line 1727
    :cond_0
    return-void
.end method

.method public userSwitched(I)V
    .locals 0
    .param p1, "newUserId"    # I

    .prologue
    .line 4411
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 4412
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationIcons()V

    .line 4413
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->resetUserSetupObserver()V

    .line 4414
    return-void
.end method

.method vibrate()V
    .locals 3

    .prologue
    .line 4578
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 4580
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 4581
    return-void
.end method
