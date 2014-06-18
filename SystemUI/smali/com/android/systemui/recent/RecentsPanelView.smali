.class public Lcom/android/systemui/recent/RecentsPanelView;
.super Landroid/widget/FrameLayout;
.source "RecentsPanelView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/systemui/recent/RecentsCallback;
.implements Lcom/android/systemui/statusbar/StatusBarPanel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;,
        Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;,
        Lcom/android/systemui/recent/RecentsPanelView$OnLongClickDelegate;,
        Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;
    }
.end annotation


# instance fields
.field private mAnimateIconOfFirstTask:Z

.field private mCallUiHiddenBeforeNextReload:Z

.field private mFitThumbnailToXY:Z

.field private mHighEndGfx:Z

.field private mItemToAnimateInWhenWindowAnimationIsFinished:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

.field private mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

.field private mPopup:Landroid/widget/PopupMenu;

.field private mPopupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/PopupMenu;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentItemLayoutId:I

.field private mRecentTaskDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

.field private mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

.field private mRecentsNoApps:Landroid/view/View;

.field private mRecentsScrim:Landroid/view/View;

.field private mShowing:Z

.field private mThumbnailWidth:I

.field private mWaitingForWindowAnimation:Z

.field private mWaitingToShow:Z

.field private mWindowAnimationStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 267
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recent/RecentsPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 268
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 271
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 272
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->updateValuesFromResources()V

    .line 274
    sget-object v1, Lcom/android/systemui/R$styleable;->RecentsPanelView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 277
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentItemLayoutId:I

    .line 278
    invoke-static {p1}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    .line 279
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 280
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/RecentsPanelView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/RecentsPanelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 71
    iget v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentItemLayoutId:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/recent/RecentsPanelView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RecentsPanelView;->startApplicationDetailsActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/systemui/recent/RecentsPanelView;Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;
    .param p1, "x1"    # Landroid/widget/PopupMenu;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/recent/RecentsPanelView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopupList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentTasksLoader;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;
    .param p1, "x1"    # Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    .param p2, "x2"    # Landroid/graphics/drawable/Drawable;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/recent/RecentsPanelView;->updateThumbnail(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;
    .param p1, "x1"    # Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    .param p2, "x2"    # Landroid/graphics/drawable/Drawable;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/recent/RecentsPanelView;->updateIcon(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/recent/RecentsPanelView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mAnimateIconOfFirstTask:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mItemToAnimateInWhenWindowAnimationIsFinished:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;)Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;
    .param p1, "x1"    # Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mItemToAnimateInWhenWindowAnimationIsFinished:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/systemui/recent/RecentsPanelView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingForWindowAnimation:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/recent/RecentsPanelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->animateInIconOfFirstTask()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    return-object v0
.end method

.method private animateInIconOfFirstTask()V
    .locals 15

    .prologue
    .line 569
    iget-object v11, p0, Lcom/android/systemui/recent/RecentsPanelView;->mItemToAnimateInWhenWindowAnimationIsFinished:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v11}, Lcom/android/systemui/recent/RecentTasksLoader;->isFirstScreenful()Z

    move-result v11

    if-nez v11, :cond_2

    .line 571
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-wide v13, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWindowAnimationStartTime:J

    sub-long/2addr v11, v13

    long-to-int v8, v11

    .line 573
    .local v8, "timeSinceWindowAnimation":I
    const/16 v6, 0x96

    .line 574
    .local v6, "minStartDelay":I
    const/4 v11, 0x0

    rsub-int v12, v8, 0x96

    const/16 v13, 0x96

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 576
    .local v7, "startDelay":I
    const/16 v2, 0xfa

    .line 577
    .local v2, "duration":I
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mItemToAnimateInWhenWindowAnimationIsFinished:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    .line 578
    .local v3, "holder":Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v11, 0x3fc00000

    invoke-direct {v1, v11}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 579
    .local v1, "cubic":Landroid/animation/TimeInterpolator;
    iget-object v11, v3, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-static {v11}, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->initializeDrawListener(Landroid/view/View;)V

    .line 581
    const/4 v11, 0x3

    new-array v0, v11, [Landroid/view/View;

    const/4 v11, 0x0

    iget-object v12, v3, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    aput-object v12, v0, v11

    const/4 v11, 0x1

    iget-object v12, v3, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->labelView:Landroid/widget/TextView;

    aput-object v12, v0, v11

    const/4 v11, 0x2

    iget-object v12, v3, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->calloutLine:Landroid/view/View;

    aput-object v12, v0, v11

    .local v0, "arr$":[Landroid/view/View;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v9, v0, v4

    .line 582
    .local v9, "v":Landroid/view/View;
    if-eqz v9, :cond_0

    .line 583
    invoke-virtual {v9}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const/high16 v12, 0x3f800000

    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    int-to-long v12, v7

    invoke-virtual {v11, v12, v13}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const-wide/16 v12, 0xfa

    invoke-virtual {v11, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    .line 586
    .local v10, "vpa":Landroid/view/ViewPropertyAnimator;
    new-instance v11, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;

    invoke-direct {v11, v10, v9}, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;-><init>(Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    .line 581
    .end local v10    # "vpa":Landroid/view/ViewPropertyAnimator;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 589
    .end local v9    # "v":Landroid/view/View;
    :cond_1
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/systemui/recent/RecentsPanelView;->mItemToAnimateInWhenWindowAnimationIsFinished:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    .line 590
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/systemui/recent/RecentsPanelView;->mAnimateIconOfFirstTask:Z

    .line 592
    .end local v0    # "arr$":[Landroid/view/View;
    .end local v1    # "cubic":Landroid/animation/TimeInterpolator;
    .end local v2    # "duration":I
    .end local v3    # "holder":Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "minStartDelay":I
    .end local v7    # "startDelay":I
    .end local v8    # "timeSinceWindowAnimation":I
    :cond_2
    return-void
.end method

.method private createCustomAnimations(Landroid/animation/LayoutTransition;)V
    .locals 3
    .param p1, "transitioner"    # Landroid/animation/LayoutTransition;

    .prologue
    .line 487
    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 488
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 489
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 490
    return-void
.end method

.method private pointInside(IILandroid/view/View;)Z
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "v"    # Landroid/view/View;

    .prologue
    .line 287
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 288
    .local v1, "l":I
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v2

    .line 289
    .local v2, "r":I
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v3

    .line 290
    .local v3, "t":I
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 291
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

.method private refreshRecentTasksList(Ljava/util/ArrayList;Z)V
    .locals 1
    .param p2, "firstScreenful"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 630
    .local p1, "recentTasksList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 631
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recent/RecentsPanelView;->onTasksLoaded(Ljava/util/ArrayList;Z)V

    .line 635
    :goto_0
    return-void

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentTasksLoader;->loadTasksInBackground()V

    goto :goto_0
.end method

.method static sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 331
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 334
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showIfReady()V
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingToShow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 326
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->showImpl(Z)V

    .line 328
    :cond_0
    return-void
.end method

.method private showImpl(Z)V
    .locals 5
    .param p1, "show"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 340
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    const-string v4, "recentapps"

    invoke-static {v3, v4}, Lcom/android/systemui/recent/RecentsPanelView;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 342
    iput-boolean p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    .line 344
    if-eqz p1, :cond_2

    .line 346
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 348
    .local v0, "noApps":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsNoApps:Landroid/view/View;

    const/high16 v4, 0x3f800000

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 349
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsNoApps:Landroid/view/View;

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 351
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 352
    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->setFocusable(Z)V

    .line 353
    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->setFocusableInTouchMode(Z)V

    .line 354
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->requestFocus()Z

    .line 360
    .end local v0    # "noApps":Z
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 346
    goto :goto_0

    .line 349
    .restart local v0    # "noApps":Z
    :cond_1
    const/4 v2, 0x4

    goto :goto_1

    .line 356
    .end local v0    # "noApps":Z
    :cond_2
    iput-boolean v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingToShow:Z

    .line 358
    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mCallUiHiddenBeforeNextReload:Z

    goto :goto_2
.end method

.method private startApplicationDetailsActivity(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 771
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 773
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 774
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/TaskStackBuilder;->startActivities()V

    .line 776
    return-void
.end method

.method private updateIcon(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 3
    .param p1, "h"    # Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "show"    # Z
    .param p4, "anim"    # Z

    .prologue
    .line 493
    if-eqz p2, :cond_1

    .line 494
    iget-object v0, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 495
    if-eqz p3, :cond_1

    iget-object v0, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 496
    if-eqz p4, :cond_0

    .line 497
    iget-object v0, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    const v2, 0x7f05000b

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 500
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 503
    :cond_1
    return-void
.end method

.method private updateThumbnail(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 5
    .param p1, "h"    # Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    .param p2, "thumbnail"    # Landroid/graphics/drawable/Drawable;
    .param p3, "show"    # Z
    .param p4, "anim"    # Z

    .prologue
    .line 506
    if-eqz p2, :cond_4

    .line 510
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 514
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 517
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mFitThumbnailToXY:Z

    if-eqz v2, :cond_5

    .line 518
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 527
    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    .line 528
    if-eqz p4, :cond_2

    .line 529
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    const v4, 0x7f05000b

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 532
    :cond_2
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 534
    :cond_3
    iput-object p2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewDrawable:Landroid/graphics/drawable/Drawable;

    .line 536
    :cond_4
    return-void

    .line 520
    :cond_5
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 521
    .local v1, "scaleMatrix":Landroid/graphics/Matrix;
    iget v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mThumbnailWidth:I

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 522
    .local v0, "scale":F
    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 523
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 524
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method private updateUiElements()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 649
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 652
    .local v0, "items":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    check-cast v3, Landroid/view/View;

    if-lez v0, :cond_1

    move v5, v4

    :goto_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 655
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 658
    .local v1, "numRecentApps":I
    :goto_2
    if-nez v1, :cond_3

    .line 659
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 665
    .local v2, "recentAppsAccessibilityDescription":Ljava/lang/String;
    :goto_3
    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 666
    return-void

    .end local v0    # "items":I
    .end local v1    # "numRecentApps":I
    .end local v2    # "recentAppsAccessibilityDescription":Ljava/lang/String;
    :cond_0
    move v0, v4

    .line 649
    goto :goto_0

    .line 652
    .restart local v0    # "items":I
    :cond_1
    const/16 v5, 0x8

    goto :goto_1

    :cond_2
    move v1, v4

    .line 655
    goto :goto_2

    .line 662
    .restart local v1    # "numRecentApps":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v5, 0x7f0e0000

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v3, v5, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "recentAppsAccessibilityDescription":Ljava/lang/String;
    goto :goto_3
.end method


# virtual methods
.method public clearRecentTasksList()V
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recent/RecentTasksLoader;->cancelLoadingThumbnailsAndIcons(Lcom/android/systemui/recent/RecentsPanelView;)V

    .line 604
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->onTaskLoadingCancelled()V

    .line 606
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/systemui/recent/RecentsActivity;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsActivity;->dismissAndGoHome()V

    .line 397
    return-void
.end method

.method public dismissAndGoBack()V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/systemui/recent/RecentsActivity;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsActivity;->dismissAndGoBack()V

    .line 401
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 836
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 838
    iget v7, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPaddingLeft:I

    .line 839
    .local v7, "paddingLeft":I
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->isPaddingOffsetRequired()Z

    move-result v6

    .line 840
    .local v6, "offsetRequired":Z
    if-eqz v6, :cond_0

    .line 841
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getLeftPaddingOffset()I

    move-result v0

    add-int/2addr v7, v0

    .line 844
    :cond_0
    iget v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mScrollX:I

    add-int v2, v0, v7

    .line 845
    .local v2, "left":I
    iget v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRight:I

    add-int/2addr v0, v2

    iget v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPaddingRight:I

    sub-int/2addr v0, v1

    sub-int v3, v0, v7

    .line 846
    .local v3, "right":I
    iget v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mScrollY:I

    invoke-virtual {p0, v6}, Lcom/android/systemui/recent/RecentsPanelView;->getFadeTop(Z)I

    move-result v1

    add-int v4, v0, v1

    .line 847
    .local v4, "top":I
    invoke-virtual {p0, v6}, Lcom/android/systemui/recent/RecentsPanelView;->getFadeHeight(Z)I

    move-result v0

    add-int v5, v4, v0

    .line 849
    .local v5, "bottom":I
    if-eqz v6, :cond_1

    .line 850
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getRightPaddingOffset()I

    move-result v0

    add-int/2addr v3, v0

    .line 851
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getBottomPaddingOffset()I

    move-result v0

    add-int/2addr v5, v0

    .line 853
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->drawFadedEdges(Landroid/graphics/Canvas;IIII)V

    .line 854
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 427
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 428
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 429
    .local v1, "y":I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 430
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 432
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public handleLongPress(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "anchorView"    # Landroid/view/View;
    .param p3, "thumbnailView"    # Landroid/view/View;

    .prologue
    .line 788
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/view/View;->setSelected(Z)V

    .line 790
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopupList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 791
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopupList:Ljava/util/ArrayList;

    .line 794
    :cond_0
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    if-nez p2, :cond_1

    move-object p2, p1

    .end local p2    # "anchorView":Landroid/view/View;
    :cond_1
    invoke-direct {v0, v1, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 796
    .local v0, "popup":Landroid/widget/PopupMenu;
    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    .line 797
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f100001

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 798
    new-instance v1, Lcom/android/systemui/recent/RecentsPanelView$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recent/RecentsPanelView$2;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 817
    new-instance v1, Lcom/android/systemui/recent/RecentsPanelView$3;

    invoke-direct {v1, p0, p3}, Lcom/android/systemui/recent/RecentsPanelView$3;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 829
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopupList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 831
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 832
    return-void
.end method

.method public handleOnClick(Landroid/view/View;)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 678
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    .line 679
    .local v5, "holder":Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    iget-object v0, v5, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    .line 680
    .local v0, "ad":Lcom/android/systemui/recent/TaskDescription;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 681
    .local v3, "context":Landroid/content/Context;
    const-string v9, "activity"

    invoke-virtual {v3, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 684
    .local v1, "am":Landroid/app/ActivityManager;
    const/4 v2, 0x0

    .line 685
    .local v2, "bm":Landroid/graphics/Bitmap;
    const/4 v8, 0x1

    .line 686
    .local v8, "usingDrawingCache":Z
    iget-object v9, v5, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v9, v9, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v9, :cond_0

    .line 687
    iget-object v9, v5, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 688
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    iget-object v10, v5, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getWidth()I

    move-result v10

    if-ne v9, v10, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    iget-object v10, v5, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getHeight()I

    move-result v10

    if-ne v9, v10, :cond_0

    .line 690
    const/4 v8, 0x0

    .line 693
    :cond_0
    if-eqz v8, :cond_1

    .line 694
    iget-object v9, v5, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 695
    iget-object v9, v5, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 697
    :cond_1
    if-nez v2, :cond_3

    .line 702
    .local v7, "opts":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {p0, v12}, Lcom/android/systemui/recent/RecentsPanelView;->show(Z)V

    .line 703
    iget v9, v0, Lcom/android/systemui/recent/TaskDescription;->taskId:I

    if-ltz v9, :cond_4

    .line 705
    iget v9, v0, Lcom/android/systemui/recent/TaskDescription;->taskId:I

    invoke-virtual {v1, v9, v11, v7}, Landroid/app/ActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 722
    :goto_1
    if-eqz v8, :cond_2

    .line 723
    iget-object v9, v5, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-virtual {v9, v12}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 725
    :cond_2
    return-void

    .line 697
    .end local v7    # "opts":Landroid/os/Bundle;
    :cond_3
    iget-object v9, v5, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-static {v9, v2, v12, v12, v7}, Landroid/app/ActivityOptions;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    goto :goto_0

    .line 708
    .restart local v7    # "opts":Landroid/os/Bundle;
    :cond_4
    iget-object v6, v0, Lcom/android/systemui/recent/TaskDescription;->intent:Landroid/content/Intent;

    .line 709
    .local v6, "intent":Landroid/content/Intent;
    const v9, 0x10104000

    invoke-virtual {v6, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 714
    :try_start_0
    new-instance v9, Landroid/os/UserHandle;

    const/4 v10, -0x2

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v6, v7, v9}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 716
    :catch_0
    move-exception v4

    .line 717
    .local v4, "e":Ljava/lang/SecurityException;
    const-string v9, "RecentsPanelView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Recents does not have the permission to launch "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 718
    .end local v4    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v4

    .line 719
    .local v4, "e":Landroid/content/ActivityNotFoundException;
    const-string v9, "RecentsPanelView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error launching activity "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public handleSwipe(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 732
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    iget-object v0, v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    .line 733
    .local v0, "ad":Lcom/android/systemui/recent/TaskDescription;
    if-nez v0, :cond_1

    .line 734
    const-string v2, "RecentsPanelView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not able to find activity description for swiped task; view="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :cond_0
    :goto_0
    return-void

    .line 740
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 741
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 744
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v2, v0}, Lcom/android/systemui/recent/RecentTasksLoader;->remove(Lcom/android/systemui/recent/TaskDescription;)V

    .line 749
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 751
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->dismissAndGoBack()V

    .line 757
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 759
    .local v1, "am":Landroid/app/ActivityManager;
    if-eqz v1, :cond_0

    .line 760
    iget v2, v0, Lcom/android/systemui/recent/TaskDescription;->persistentTaskId:I

    invoke-virtual {v1, v2, v4}, Landroid/app/ActivityManager;->removeTask(II)Z

    .line 763
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    const v3, 0x7f0b007c

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/android/systemui/recent/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 765
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->sendAccessibilityEvent(I)V

    .line 766
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public isInContentArea(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recent/RecentsPanelView;->pointInside(IILandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 440
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    return v0
.end method

.method public numItemsInOneScreenful()I
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    invoke-interface {v0}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->numItemsInOneScreenful()I

    move-result v0

    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 404
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 407
    iget-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    if-eqz v1, :cond_0

    .line 408
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 409
    .local v0, "transitioner":Landroid/animation/LayoutTransition;
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 410
    invoke-direct {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->createCustomAnimations(Landroid/animation/LayoutTransition;)V

    .line 414
    .end local v0    # "transitioner":Landroid/animation/LayoutTransition;
    :goto_0
    return-void

    .line 412
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 417
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 420
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 363
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 364
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 365
    .local v0, "root":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 366
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->setDrawDuringWindowsAnimating(Z)V

    .line 368
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 455
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 457
    const v0, 0x7f080088

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    .line 458
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    new-instance v1, Lcom/android/systemui/recent/RecentsPanelView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recent/RecentsPanelView$1;-><init>(Lcom/android/systemui/recent/RecentsPanelView;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->setOnScrollListener(Ljava/lang/Runnable;)V

    .line 464
    new-instance v0, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    .line 465
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-interface {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->setAdapter(Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;)V

    .line 466
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    invoke-interface {v0, p0}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->setCallback(Lcom/android/systemui/recent/RecentsCallback;)V

    .line 468
    const v0, 0x7f080087

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    .line 469
    const v0, 0x7f08008a

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsNoApps:Landroid/view/View;

    .line 471
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 472
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mHighEndGfx:Z

    .line 473
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mHighEndGfx:Z

    if-nez v0, :cond_1

    .line 474
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 779
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 780
    const/4 v0, 0x1

    .line 782
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 728
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p2}, Lcom/android/systemui/recent/RecentsPanelView;->handleOnClick(Landroid/view/View;)V

    .line 729
    return-void
.end method

.method public onTaskLoadingCancelled()V
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 613
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    .line 614
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->notifyDataSetInvalidated()V

    .line 616
    :cond_0
    return-void
.end method

.method onTaskThumbnailLoaded(Lcom/android/systemui/recent/TaskDescription;)V
    .locals 7
    .param p1, "td"    # Lcom/android/systemui/recent/TaskDescription;

    .prologue
    .line 539
    monitor-enter p1

    .line 540
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    if-eqz v5, :cond_2

    .line 541
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    check-cast v1, Landroid/view/ViewGroup;

    .line 542
    .local v1, "container":Landroid/view/ViewGroup;
    instance-of v5, v1, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    if-eqz v5, :cond_0

    .line 543
    const v5, 0x7f080089

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "container":Landroid/view/ViewGroup;
    check-cast v1, Landroid/view/ViewGroup;

    .line 547
    .restart local v1    # "container":Landroid/view/ViewGroup;
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 548
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 549
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    if-eqz v5, :cond_1

    .line 550
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    .line 551
    .local v2, "h":Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    iget-boolean v5, v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->loadedThumbnailAndIcon:Z

    if-nez v5, :cond_1

    iget-object v5, v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    if-ne v5, p1, :cond_1

    .line 556
    const/4 v0, 0x0

    .line 557
    .local v0, "animateShow":Z
    invoke-virtual {p1}, Lcom/android/systemui/recent/TaskDescription;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v2, v5, v6, v0}, Lcom/android/systemui/recent/RecentsPanelView;->updateIcon(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V

    .line 558
    invoke-virtual {p1}, Lcom/android/systemui/recent/TaskDescription;->getThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v2, v5, v6, v0}, Lcom/android/systemui/recent/RecentsPanelView;->updateThumbnail(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V

    .line 559
    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->loadedThumbnailAndIcon:Z

    .line 547
    .end local v0    # "animateShow":Z
    .end local v2    # "h":Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 564
    .end local v1    # "container":Landroid/view/ViewGroup;
    .end local v3    # "i":I
    .end local v4    # "v":Landroid/view/View;
    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->showIfReady()V

    .line 566
    return-void

    .line 564
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public onTasksLoaded(Ljava/util/ArrayList;Z)V
    .locals 1
    .param p2, "firstScreenful"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 638
    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 639
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    .line 643
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/systemui/recent/RecentsActivity;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsActivity;->isActivityShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->refreshViews()V

    .line 646
    :cond_0
    return-void

    .line 641
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public onUiHidden()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 371
    iput-boolean v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mCallUiHiddenBeforeNextReload:Z

    .line 372
    iget-boolean v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 373
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/systemui/recent/RecentsPanelView;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 374
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->clearRecentTasksList()V

    .line 377
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopupList:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 378
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopupList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 379
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 380
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopupList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 384
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopupList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/PopupMenu;

    .line 385
    .local v1, "pop":Landroid/widget/PopupMenu;
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->dismiss()V

    .line 379
    .end local v1    # "pop":Landroid/widget/PopupMenu;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    .end local v0    # "i":I
    .end local v2    # "size":I
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    if-eqz v3, :cond_3

    .line 390
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->dismiss()V

    .line 393
    :cond_3
    return-void
.end method

.method public onWindowAnimationStart()V
    .locals 2

    .prologue
    .line 595
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingForWindowAnimation:Z

    .line 596
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWindowAnimationStartTime:J

    .line 597
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->animateInIconOfFirstTask()V

    .line 598
    return-void
.end method

.method public refreshRecentTasksList()V
    .locals 2

    .prologue
    .line 625
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->refreshRecentTasksList(Ljava/util/ArrayList;Z)V

    .line 626
    return-void
.end method

.method public refreshViews()V
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->notifyDataSetInvalidated()V

    .line 620
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->updateUiElements()V

    .line 621
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->showIfReady()V

    .line 622
    return-void
.end method

.method public setMinSwipeAlpha(F)V
    .locals 1
    .param p1, "minAlpha"    # F

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    invoke-interface {v0, p1}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->setMinSwipeAlpha(F)V

    .line 484
    return-void
.end method

.method public show(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    const/4 v1, 0x0

    .line 299
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/android/systemui/recent/RecentsPanelView;->show(ZLjava/util/ArrayList;ZZ)V

    .line 300
    return-void
.end method

.method public show(ZLjava/util/ArrayList;ZZ)V
    .locals 2
    .param p1, "show"    # Z
    .param p3, "firstScreenful"    # Z
    .param p4, "animateIconOfFirstTask"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .local p2, "recentTaskDescriptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    const/4 v1, 0x0

    .line 304
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mCallUiHiddenBeforeNextReload:Z

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->onUiHidden()V

    .line 306
    const/4 p2, 0x0

    .line 307
    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mAnimateIconOfFirstTask:Z

    .line 308
    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingForWindowAnimation:Z

    .line 313
    :goto_0
    if-eqz p1, :cond_1

    .line 314
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingToShow:Z

    .line 315
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/recent/RecentsPanelView;->refreshRecentTasksList(Ljava/util/ArrayList;Z)V

    .line 316
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->showIfReady()V

    .line 320
    :goto_1
    return-void

    .line 310
    :cond_0
    iput-boolean p4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mAnimateIconOfFirstTask:Z

    .line 311
    iput-boolean p4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingForWindowAnimation:Z

    goto :goto_0

    .line 318
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->showImpl(Z)V

    goto :goto_1
.end method

.method public simulateClick(I)Z
    .locals 2
    .param p1, "persistentTaskId"    # I

    .prologue
    .line 669
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    invoke-interface {v1, p1}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->findViewForTask(I)Landroid/view/View;

    move-result-object v0

    .line 670
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 671
    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->handleOnClick(Landroid/view/View;)V

    .line 672
    const/4 v1, 0x1

    .line 674
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateValuesFromResources()V
    .locals 2

    .prologue
    .line 448
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 449
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0d0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mThumbnailWidth:I

    .line 450
    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mFitThumbnailToXY:Z

    .line 451
    return-void
.end method
