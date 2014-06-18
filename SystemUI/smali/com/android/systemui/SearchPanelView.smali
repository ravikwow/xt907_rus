.class public Lcom/android/systemui/SearchPanelView;
.super Landroid/widget/FrameLayout;
.source "SearchPanelView.java"

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationStartedListener;
.implements Lcom/android/systemui/statusbar/StatusBarPanel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;
    }
.end annotation


# instance fields
.field private mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

.field private final mContext:Landroid/content/Context;

.field private mFirstTouchDown:Z

.field private mFirstValidTouchUp:Z

.field private mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

.field final mGlowPadViewListener:Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;

.field private mHasTSBFeature:Z

.field private mIsTouching:Z

.field private mLastMotionEvent:Landroid/view/MotionEvent;

.field private final mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mSearchTargetsContainer:Landroid/view/View;

.field private mShowing:Z

.field private mWm:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/SearchPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    iput-boolean v1, p0, Lcom/android/systemui/SearchPanelView;->mIsTouching:Z

    .line 79
    iput-boolean v1, p0, Lcom/android/systemui/SearchPanelView;->mHasTSBFeature:Z

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/SearchPanelView;->mFirstTouchDown:Z

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/SearchPanelView;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 83
    iput-boolean v1, p0, Lcom/android/systemui/SearchPanelView;->mFirstValidTouchUp:Z

    .line 177
    new-instance v0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;

    invoke-direct {v0, p0}, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;-><init>(Lcom/android/systemui/SearchPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadViewListener:Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;

    .line 238
    new-instance v0, Lcom/android/systemui/SearchPanelView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/SearchPanelView$2;-><init>(Lcom/android/systemui/SearchPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/SearchPanelView;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 92
    iput-object p1, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    .line 93
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SearchPanelView;->mWm:Landroid/view/IWindowManager;

    .line 95
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11100b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/SearchPanelView;->mHasTSBFeature:Z

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/SearchPanelView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/SearchPanelView;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/systemui/SearchPanelView;->mHasTSBFeature:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/SearchPanelView;)Lcom/android/systemui/statusbar/BaseStatusBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/SearchPanelView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/SearchPanelView;)Lcom/android/internal/widget/multiwaveview/GlowPadView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/SearchPanelView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/SearchPanelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/SearchPanelView;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->startAssistActivity()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/SearchPanelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/SearchPanelView;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->vibrate()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/systemui/SearchPanelView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/SearchPanelView;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/systemui/SearchPanelView;->mFirstTouchDown:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/systemui/SearchPanelView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/SearchPanelView;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/systemui/SearchPanelView;->mFirstValidTouchUp:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/SearchPanelView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/SearchPanelView;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/systemui/SearchPanelView;->injectFakeTouchEvent(I)V

    return-void
.end method

.method private createLayoutTransitioner()Landroid/animation/LayoutTransition;
    .locals 4

    .prologue
    .line 451
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 452
    .local v0, "transitioner":Landroid/animation/LayoutTransition;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 453
    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 454
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 455
    return-object v0
.end method

.method private injectFakeTouchEvent(I)V
    .locals 15
    .param p1, "action"    # I

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    .line 413
    .local v12, "wm":Landroid/view/WindowManager;
    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    .line 414
    .local v9, "display":Landroid/view/Display;
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    .line 415
    .local v10, "p":Landroid/graphics/Point;
    invoke-virtual {v9, v10}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 416
    const/16 v8, 0xa

    .line 417
    .local v8, "DELTA":I
    iget v0, v10, Landroid/graphics/Point;->x:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v13, v0, -0xa

    .line 419
    .local v13, "x":I
    iget v0, v10, Landroid/graphics/Point;->y:I

    add-int/lit8 v14, v0, -0xa

    .line 421
    .local v14, "y":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    int-to-float v5, v13

    int-to-float v6, v14

    const/4 v7, 0x0

    move/from16 v4, p1

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v11

    .line 423
    .local v11, "touchEvent":Landroid/view/MotionEvent;
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0, v11}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 424
    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    .line 425
    return-void
.end method

.method private maybeSwapSearchIcon()V
    .locals 6

    .prologue
    .line 214
    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    const-string v3, "search"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SearchManager;

    iget-object v3, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v1

    .line 216
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 217
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 218
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const-string v3, "com.android.systemui.action_assist_icon"

    const v4, 0x1080298

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->replaceTargetDrawablesIfPresent(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 224
    .end local v0    # "component":Landroid/content/ComponentName;
    :cond_0
    return-void
.end method

.method private pointInside(IILandroid/view/View;)Z
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "v"    # Landroid/view/View;

    .prologue
    .line 227
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 228
    .local v1, "l":I
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v2

    .line 229
    .local v2, "r":I
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v3

    .line 230
    .local v3, "t":I
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 231
    .local v0, "b":I
    if-lt p1, v1, :cond_0

    if-ge p1, v2, :cond_0

    if-lt p2, v3, :cond_0

    if-ge p2, v0, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private startAssistActivity()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x2

    .line 101
    iget-object v4, p0, Lcom/android/systemui/SearchPanelView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->isDeviceProvisioned()Z

    move-result v4

    if-nez v4, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/SearchPanelView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapsePanels(I)V

    .line 105
    const/4 v2, 0x0

    .line 107
    .local v2, "isKeyguardShowing":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/SearchPanelView;->mWm:Landroid/view/IWindowManager;

    invoke-interface {v4}, Landroid/view/IWindowManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    .line 112
    :goto_1
    if-eqz v2, :cond_2

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->showAssistant()V

    .line 115
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->onAnimationStarted()V

    goto :goto_0

    .line 118
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    const-string v5, "search"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SearchManager;

    iget-object v5, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v7, v6}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v1

    .line 120
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 123
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 129
    :goto_2
    :try_start_2
    iget-object v4, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    const v5, 0x7f050010

    const v6, 0x7f050011

    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-static {v4, v5, v6, v7, p0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v3

    .line 132
    .local v3, "opts":Landroid/app/ActivityOptions;
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 133
    iget-object v4, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    new-instance v6, Landroid/os/UserHandle;

    const/4 v7, -0x2

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 135
    .end local v3    # "opts":Landroid/app/ActivityOptions;
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v4, "SearchPanelView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Activity not found for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->onAnimationStarted()V

    goto :goto_0

    .line 124
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v4

    goto :goto_2

    .line 108
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_2
    move-exception v4

    goto :goto_1
.end method

.method private vibrate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 257
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 258
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_enabled"

    const/4 v3, -0x2

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    const/4 v1, 0x3

    invoke-virtual {p0, v4, v1}, Lcom/android/systemui/SearchPanelView;->performHapticFeedback(II)Z

    .line 266
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 323
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 324
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 325
    .local v1, "y":I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 326
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 328
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 333
    iget-boolean v6, p0, Lcom/android/systemui/SearchPanelView;->mHasTSBFeature:Z

    if-eqz v6, :cond_4

    .line 334
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 335
    .local v4, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 338
    .local v5, "y":I
    if-ltz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getWidth()I

    move-result v6

    if-ge v4, v6, :cond_1

    if-ltz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_1

    iget-boolean v6, p0, Lcom/android/systemui/SearchPanelView;->mFirstValidTouchUp:Z

    if-nez v6, :cond_1

    .line 339
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 340
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 378
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/SearchPanelView;->mSearchTargetsContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget-object v8, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v8}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getWidth()I

    move-result v8

    sub-int/2addr v6, v8

    int-to-float v1, v6

    .line 380
    .local v1, "deltaX":F
    iget-object v6, p0, Lcom/android/systemui/SearchPanelView;->mSearchTargetsContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    iget-object v8, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v8}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getHeight()I

    move-result v8

    sub-int/2addr v6, v8

    int-to-float v2, v6

    .line 382
    .local v2, "deltaY":F
    iget-object v6, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    const-string v8, "window"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 385
    .local v3, "display":Landroid/view/Display;
    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v6

    const/4 v8, 0x3

    if-ne v6, v8, :cond_3

    .line 386
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {p1, v6, v8}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 390
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v6, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .end local v0    # "action":I
    .end local v1    # "deltaX":F
    .end local v2    # "deltaY":F
    .end local v3    # "display":Landroid/view/Display;
    :cond_1
    move v6, v7

    .line 396
    .end local v4    # "x":I
    .end local v5    # "y":I
    :goto_2
    return v6

    .line 342
    .restart local v0    # "action":I
    .restart local v4    # "x":I
    .restart local v5    # "y":I
    :pswitch_0
    iput-boolean v7, p0, Lcom/android/systemui/SearchPanelView;->mIsTouching:Z

    .line 344
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/SearchPanelView;->mLastMotionEvent:Landroid/view/MotionEvent;

    move v6, v7

    .line 345
    goto :goto_2

    .line 347
    :pswitch_1
    iget-object v6, p0, Lcom/android/systemui/SearchPanelView;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/SearchPanelView;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_0

    .line 350
    iput-boolean v8, p0, Lcom/android/systemui/SearchPanelView;->mFirstTouchDown:Z

    .line 351
    iget-object v6, p0, Lcom/android/systemui/SearchPanelView;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    .line 352
    iput-object v9, p0, Lcom/android/systemui/SearchPanelView;->mLastMotionEvent:Landroid/view/MotionEvent;

    goto :goto_0

    .line 356
    :pswitch_2
    iput-boolean v8, p0, Lcom/android/systemui/SearchPanelView;->mIsTouching:Z

    .line 357
    iget-object v6, p0, Lcom/android/systemui/SearchPanelView;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/SearchPanelView;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_2

    .line 360
    iput-boolean v8, p0, Lcom/android/systemui/SearchPanelView;->mFirstTouchDown:Z

    .line 361
    iget-object v6, p0, Lcom/android/systemui/SearchPanelView;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    .line 362
    iput-object v9, p0, Lcom/android/systemui/SearchPanelView;->mLastMotionEvent:Landroid/view/MotionEvent;

    move v6, v7

    .line 363
    goto :goto_2

    .line 365
    :cond_2
    iput-boolean v7, p0, Lcom/android/systemui/SearchPanelView;->mFirstValidTouchUp:Z

    goto :goto_0

    .line 368
    :pswitch_3
    iput-boolean v8, p0, Lcom/android/systemui/SearchPanelView;->mIsTouching:Z

    .line 369
    iput-boolean v8, p0, Lcom/android/systemui/SearchPanelView;->mFirstTouchDown:Z

    .line 370
    iput-boolean v7, p0, Lcom/android/systemui/SearchPanelView;->mFirstValidTouchUp:Z

    .line 371
    iget-object v6, p0, Lcom/android/systemui/SearchPanelView;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v6, :cond_0

    .line 372
    iget-object v6, p0, Lcom/android/systemui/SearchPanelView;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    .line 373
    iput-object v9, p0, Lcom/android/systemui/SearchPanelView;->mLastMotionEvent:Landroid/view/MotionEvent;

    goto/16 :goto_0

    .line 388
    .restart local v1    # "deltaX":F
    .restart local v2    # "deltaY":F
    .restart local v3    # "display":Landroid/view/Display;
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v6, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float/2addr v8, v2

    invoke-virtual {p1, v6, v8}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_1

    .line 396
    .end local v0    # "action":I
    .end local v1    # "deltaX":F
    .end local v2    # "deltaY":F
    .end local v3    # "display":Landroid/view/Display;
    .end local v4    # "x":I
    .end local v5    # "y":I
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_2

    .line 340
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public isAssistantAvailable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 459
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    const-string v2, "search"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    const/4 v3, -0x2

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isInContentArea(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mSearchTargetsContainer:Landroid/view/View;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/SearchPanelView;->pointInside(IILandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 432
    iget-boolean v0, p0, Lcom/android/systemui/SearchPanelView;->mShowing:Z

    return v0
.end method

.method public isTouching()Z
    .locals 1

    .prologue
    .line 404
    iget-boolean v0, p0, Lcom/android/systemui/SearchPanelView;->mIsTouching:Z

    return v0
.end method

.method public onAnimationStarted()V
    .locals 3

    .prologue
    .line 181
    new-instance v0, Lcom/android/systemui/SearchPanelView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/SearchPanelView$1;-><init>(Lcom/android/systemui/SearchPanelView;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/SearchPanelView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 187
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    .line 191
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 192
    iget-object v3, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 193
    const v3, 0x7f08008b

    invoke-virtual {p0, v3}, Lcom/android/systemui/SearchPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/SearchPanelView;->mSearchTargetsContainer:Landroid/view/View;

    .line 195
    const v3, 0x7f08008d

    invoke-virtual {p0, v3}, Lcom/android/systemui/SearchPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iput-object v3, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    .line 196
    iget-object v3, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iget-object v4, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadViewListener:Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;)V

    .line 198
    iget-boolean v3, p0, Lcom/android/systemui/SearchPanelView;->mHasTSBFeature:Z

    if-eqz v3, :cond_0

    .line 199
    iget-object v3, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 201
    .local v0, "naviBarHeight":I
    iget-object v3, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 202
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v1, v3, Landroid/content/res/Configuration;->orientation:I

    .line 203
    .local v1, "orientation":I
    const/4 v3, 0x2

    if-ne v3, v1, :cond_1

    .line 204
    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 208
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    .end local v0    # "naviBarHeight":I
    .end local v1    # "orientation":I
    .end local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void

    .line 206
    .restart local v0    # "naviBarHeight":I
    .restart local v1    # "orientation":I
    .restart local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 314
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 316
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x2

    .line 442
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 443
    const v0, 0x8cd2

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 447
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 436
    iput-object p1, p0, Lcom/android/systemui/SearchPanelView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    .line 437
    return-void
.end method

.method public show(ZZ)V
    .locals 4
    .param p1, "show"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 269
    if-nez p1, :cond_0

    .line 270
    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->createLayoutTransitioner()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 271
    .local v0, "transitioner":Landroid/animation/LayoutTransition;
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/SearchPanelView;->mSearchTargetsContainer:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 273
    .end local v0    # "transitioner":Landroid/animation/LayoutTransition;
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/SearchPanelView;->mShowing:Z

    .line 274
    if-eqz p1, :cond_3

    .line 275
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->maybeSwapSearchIcon()V

    .line 276
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    invoke-virtual {p0, v2}, Lcom/android/systemui/SearchPanelView;->setVisibility(I)V

    .line 280
    iget-object v1, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->suspendAnimations()V

    .line 281
    iget-object v1, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->ping()V

    .line 282
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 283
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->vibrate()V

    .line 285
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/systemui/SearchPanelView;->setFocusable(Z)V

    .line 286
    invoke-virtual {p0, v3}, Lcom/android/systemui/SearchPanelView;->setFocusableInTouchMode(Z)V

    .line 287
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->requestFocus()Z

    .line 297
    :goto_1
    return-void

    .line 270
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 290
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/SearchPanelView;->mHasTSBFeature:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/SearchPanelView;->mFirstTouchDown:Z

    if-eqz v1, :cond_4

    .line 291
    iput-boolean v2, p0, Lcom/android/systemui/SearchPanelView;->mFirstValidTouchUp:Z

    .line 292
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/systemui/SearchPanelView;->injectFakeTouchEvent(I)V

    .line 295
    :cond_4
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/systemui/SearchPanelView;->setVisibility(I)V

    goto :goto_1
.end method
