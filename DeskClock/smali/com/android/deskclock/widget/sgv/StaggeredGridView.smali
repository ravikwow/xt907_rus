.class public Lcom/android/deskclock/widget/sgv/StaggeredGridView;
.super Landroid/view/ViewGroup;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/widget/sgv/StaggeredGridView$4;,
        Lcom/android/deskclock/widget/sgv/StaggeredGridView$ReorderListener;,
        Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollListener;,
        Lcom/android/deskclock/widget/sgv/StaggeredGridView$OnSizeChangedListener;,
        Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;,
        Lcom/android/deskclock/widget/sgv/StaggeredGridView$ViewRectPair;,
        Lcom/android/deskclock/widget/sgv/StaggeredGridView$SavedState;,
        Lcom/android/deskclock/widget/sgv/StaggeredGridView$AdapterDataSetObserver;,
        Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;,
        Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;,
        Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final SCROLL_RESTORE_WINDOW_SIZE:I

.field private mActivePointerId:I

.field private mAdapter:Lcom/android/deskclock/widget/sgv/GridAdapter;

.field private mAnimationInMode:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

.field private mAnimationOutMode:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;

.field private final mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mCachedDragViewRect:Landroid/graphics/Rect;

.field private final mChildRectsForAnimation:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/deskclock/widget/sgv/StaggeredGridView$ViewRectPair;",
            ">;"
        }
    .end annotation
.end field

.field private mColCount:I

.field private mColCountSetting:I

.field private mCurrentRunningAnimatorSet:Landroid/animation/AnimatorSet;

.field private mCurrentScrollState:Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;

.field private mDataChanged:Z

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private final mDragScroller:Ljava/lang/Runnable;

.field private mDragState:I

.field private mDragView:Landroid/widget/ImageView;

.field private mEmptyView:Landroid/view/View;

.field private mFastChildLayout:Z

.field private mFirstChangedPosition:I

.field private mFirstPosition:I

.field private final mFlingVelocity:I

.field private mFocusedChildIdToScrollIntoView:J

.field private mGuardAgainstJaggedEdges:Z

.field private mHasStableIds:Z

.field private mHeight:I

.field private mHorizontalReorderingAreaSize:I

.field private mInLayout:Z

.field mIsCurrentAnimationCanceled:Z

.field private mIsDragReorderingEnabled:Z

.field private mIsDragScrollerRunning:Z

.field private mIsRtlLayout:Z

.field private mItemBottoms:[I

.field private mItemCount:I

.field private mItemMargin:I

.field private mItemTops:[I

.field private mLastTouchY:F

.field private final mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mLowerScrollBound:I

.field private final mMaximumVelocity:I

.field private mMinColWidth:I

.field private final mObserver:Lcom/android/deskclock/widget/sgv/StaggeredGridView$AdapterDataSetObserver;

.field private mOffsetToAbsoluteX:I

.field private mOffsetToAbsoluteY:I

.field private mOnSizeChangedListener:Lcom/android/deskclock/widget/sgv/StaggeredGridView$OnSizeChangedListener;

.field private final mOverscrollDistance:I

.field private mPopulating:Z

.field private final mRecycler:Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;

.field private mReorderHelper:Lcom/android/deskclock/widget/sgv/ReorderHelper;

.field private mScrollHandler:Landroid/os/Handler;

.field private mScrollListener:Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollListener;

.field private final mScroller:Lcom/android/deskclock/widget/sgv/OverScrollerSGV;

.field private mSmoothScrollbarEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mTouchDownForDragStartX:I

.field private mTouchDownForDragStartY:I

.field private mTouchMode:I

.field private mTouchOffsetToChildLeft:I

.field private mTouchOffsetToChildTop:I

.field private mTouchRemainderY:F

.field private final mTouchSlop:I

.field private mUpperScrollBound:I

.field private final mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mViewsToAnimateOut:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clock-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 388
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 389
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 392
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 393
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 396
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    const/16 v2, 0xa

    iput v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->SCROLL_RESTORE_WINDOW_SIZE:I

    .line 134
    sget-object v2, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;->NONE:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

    iput-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mAnimationInMode:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

    .line 135
    sget-object v2, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;->NONE:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;

    iput-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mAnimationOutMode:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;

    .line 137
    iput-object v4, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mCurrentRunningAnimatorSet:Landroid/animation/AnimatorSet;

    .line 144
    iput-boolean v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mIsCurrentAnimationCanceled:Z

    .line 146
    iput v5, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCountSetting:I

    .line 147
    iput v5, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    .line 148
    iput v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mMinColWidth:I

    .line 149
    iput v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemMargin:I

    .line 154
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTempRect:Landroid/graphics/Rect;

    .line 162
    new-instance v2, Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;

    invoke-direct {v2, p0, v4}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;-><init>(Lcom/android/deskclock/widget/sgv/StaggeredGridView;Lcom/android/deskclock/widget/sgv/StaggeredGridView$1;)V

    iput-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mRecycler:Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;

    .line 164
    new-instance v2, Lcom/android/deskclock/widget/sgv/StaggeredGridView$AdapterDataSetObserver;

    invoke-direct {v2, p0, v4}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$AdapterDataSetObserver;-><init>(Lcom/android/deskclock/widget/sgv/StaggeredGridView;Lcom/android/deskclock/widget/sgv/StaggeredGridView$1;)V

    iput-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mObserver:Lcom/android/deskclock/widget/sgv/StaggeredGridView$AdapterDataSetObserver;

    .line 186
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mViewsToAnimateOut:Ljava/util/List;

    .line 196
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mLastTouchY:F

    .line 209
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 278
    iput-boolean v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mSmoothScrollbarEnabled:Z

    .line 340
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mChildRectsForAnimation:Ljava/util/Map;

    .line 343
    new-instance v2, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v2}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    .line 357
    new-instance v2, Lcom/android/deskclock/widget/sgv/StaggeredGridView$1;

    invoke-direct {v2, p0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$1;-><init>(Lcom/android/deskclock/widget/sgv/StaggeredGridView;)V

    iput-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mDragScroller:Ljava/lang/Runnable;

    .line 398
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 399
    .local v1, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTouchSlop:I

    .line 400
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mMaximumVelocity:I

    .line 401
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mFlingVelocity:I

    .line 402
    new-instance v2, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;

    invoke-direct {v2, p1}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mScroller:Lcom/android/deskclock/widget/sgv/OverScrollerSGV;

    .line 404
    new-instance v2, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v2, p1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 405
    new-instance v2, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v2, p1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 406
    invoke-virtual {p0, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 407
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 409
    invoke-static {p1}, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;->initialize(Landroid/content/Context;)V

    .line 411
    iput v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mDragState:I

    .line 412
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mIsDragReorderingEnabled:Z

    .line 413
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mWindowManager:Landroid/view/WindowManager;

    .line 414
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 415
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v2

    iput v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mOverscrollDistance:I

    .line 417
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 418
    return-void
.end method

.method static synthetic access$1002(Lcom/android/deskclock/widget/sgv/StaggeredGridView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/widget/sgv/StaggeredGridView;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mCurrentRunningAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/deskclock/widget/sgv/StaggeredGridView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->resetAnimationMode()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/deskclock/widget/sgv/StaggeredGridView;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mChildRectsForAnimation:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/deskclock/widget/sgv/StaggeredGridView;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/widget/sgv/StaggeredGridView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->recycleView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/deskclock/widget/sgv/StaggeredGridView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/widget/sgv/StaggeredGridView;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mDataChanged:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/deskclock/widget/sgv/StaggeredGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    .prologue
    .line 80
    iget v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemCount:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/deskclock/widget/sgv/StaggeredGridView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/widget/sgv/StaggeredGridView;
    .param p1, "x1"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemCount:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/deskclock/widget/sgv/StaggeredGridView;)Lcom/android/deskclock/widget/sgv/GridAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mAdapter:Lcom/android/deskclock/widget/sgv/GridAdapter;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/deskclock/widget/sgv/StaggeredGridView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/widget/sgv/StaggeredGridView;
    .param p1, "x1"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mFirstChangedPosition:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/deskclock/widget/sgv/StaggeredGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    .prologue
    .line 80
    iget v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mFirstPosition:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/deskclock/widget/sgv/StaggeredGridView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/widget/sgv/StaggeredGridView;
    .param p1, "x1"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mFirstPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/deskclock/widget/sgv/StaggeredGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    .prologue
    .line 80
    iget v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mDragState:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/deskclock/widget/sgv/StaggeredGridView;Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;)Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/widget/sgv/StaggeredGridView;
    .param p1, "x1"    # Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mCurrentScrollState:Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/deskclock/widget/sgv/StaggeredGridView;)Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mRecycler:Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/deskclock/widget/sgv/StaggeredGridView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mHasStableIds:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/deskclock/widget/sgv/StaggeredGridView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->cacheChildRects()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/deskclock/widget/sgv/StaggeredGridView;)Landroid/support/v4/util/SparseArrayCompat;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/deskclock/widget/sgv/StaggeredGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    .prologue
    .line 80
    iget v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/deskclock/widget/sgv/StaggeredGridView;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemBottoms:[I

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/deskclock/widget/sgv/StaggeredGridView;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemTops:[I

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/deskclock/widget/sgv/StaggeredGridView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->updateEmptyStatus()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/deskclock/widget/sgv/StaggeredGridView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    .prologue
    .line 80
    iget v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mLastTouchY:F

    return v0
.end method

.method static synthetic access$400(Lcom/android/deskclock/widget/sgv/StaggeredGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    .prologue
    .line 80
    iget v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mLowerScrollBound:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/deskclock/widget/sgv/StaggeredGridView;IZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/widget/sgv/StaggeredGridView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->trackMotionScroll(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/deskclock/widget/sgv/StaggeredGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    .prologue
    .line 80
    iget v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mUpperScrollBound:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/deskclock/widget/sgv/StaggeredGridView;)Lcom/android/deskclock/widget/sgv/ReorderHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mReorderHelper:Lcom/android/deskclock/widget/sgv/ReorderHelper;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/deskclock/widget/sgv/StaggeredGridView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mScrollHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addFlyInAllViewsAnimators(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1867
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .line 1868
    if-nez v7, :cond_1

    .line 1869
    const/4 v0, 0x0

    .line 1897
    :cond_0
    return-object v0

    .line 1872
    :cond_1
    if-nez p1, :cond_3

    .line 1873
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    move v6, v2

    .line 1876
    :goto_1
    if-ge v6, v7, :cond_0

    .line 1877
    mul-int/lit8 v5, v6, 0x32

    .line 1878
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1883
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 1884
    const/high16 v4, 0x41c80000

    .line 1885
    iget-boolean v8, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mIsCurrentAnimationCanceled:Z

    if-eqz v8, :cond_2

    .line 1889
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    .line 1890
    invoke-virtual {v1}, Landroid/view/View;->getRotation()F

    move-result v4

    .line 1893
    :cond_2
    float-to-int v3, v3

    invoke-static/range {v0 .. v5}, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;->addTranslationRotationAnimators(Ljava/util/List;Landroid/view/View;IIFI)V

    .line 1876
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_1

    :cond_3
    move-object v0, p1

    goto :goto_0
.end method

.method private addInAnimators(Ljava/util/List;Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;",
            "I)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1767
    sget-object v0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;->NONE:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

    if-ne p2, v0, :cond_0

    .line 1804
    :goto_0
    return-void

    .line 1771
    :cond_0
    sget-object v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$4;->$SwitchMap$com$android$deskclock$widget$sgv$SgvAnimationHelper$AnimationIn:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1802
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown animationInMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mAnimationInMode:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1773
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->addFlyInAllViewsAnimators(Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 1777
    :pswitch_1
    sget-object v0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;->EXPAND_NEW_VIEWS:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

    invoke-direct {p0, p1, v2, v0, p3}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->addUpdateViewPositionsAnimators(Ljava/util/List;ZLcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;I)Ljava/util/List;

    goto :goto_0

    .line 1782
    :pswitch_2
    const/4 v0, 0x0

    sget-object v1, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;->EXPAND_NEW_VIEWS_NO_CASCADE:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->addUpdateViewPositionsAnimators(Ljava/util/List;ZLcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;I)Ljava/util/List;

    goto :goto_0

    .line 1787
    :pswitch_3
    sget-object v0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;->SLIDE_IN_NEW_VIEWS:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

    invoke-direct {p0, p1, v2, v0, p3}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->addUpdateViewPositionsAnimators(Ljava/util/List;ZLcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;I)Ljava/util/List;

    goto :goto_0

    .line 1792
    :pswitch_4
    sget-object v0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;->FLY_IN_NEW_VIEWS:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

    invoke-direct {p0, p1, v2, v0, p3}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->addUpdateViewPositionsAnimators(Ljava/util/List;ZLcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;I)Ljava/util/List;

    goto :goto_0

    .line 1797
    :pswitch_5
    sget-object v0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;->FADE:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

    invoke-direct {p0, p1, v2, v0, p3}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->addUpdateViewPositionsAnimators(Ljava/util/List;ZLcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;I)Ljava/util/List;

    goto :goto_0

    .line 1771
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private addOutAnimatorsForStaleViews(Ljava/util/List;Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1812
    sget-object v0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;->NONE:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;

    if-ne p2, v0, :cond_1

    .line 1859
    :cond_0
    return-void

    .line 1816
    :cond_1
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mViewsToAnimateOut:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1820
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1822
    sget-object v1, Lcom/android/deskclock/widget/sgv/StaggeredGridView$4;->$SwitchMap$com$android$deskclock$widget$sgv$SgvAnimationHelper$AnimationOut:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1850
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown animationOutMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1824
    :pswitch_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;

    .line 1827
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-double v5, v2

    const-wide/high16 v7, 0x3ff8000000000000L

    mul-double/2addr v5, v7

    double-to-int v2, v5

    .line 1828
    iget v1, v1, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->column:I

    iget v5, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    div-int/lit8 v5, v5, 0x2

    if-ge v1, v5, :cond_3

    .line 1829
    neg-int v1, v2

    .line 1831
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v4, v0, v2, v1}, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;->addSlideOutAnimators(Ljava/util/List;Landroid/view/View;II)V

    .line 1854
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1855
    invoke-direct {p0, v0, v4}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->addStaleViewAnimationEndListener(Landroid/view/View;Ljava/util/List;)V

    .line 1856
    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1836
    :pswitch_1
    invoke-static {v4, v0}, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;->addCollapseOutAnimators(Ljava/util/List;Landroid/view/View;)V

    goto :goto_2

    .line 1840
    :pswitch_2
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v4, v0, v1, v2}, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;->addFlyOutAnimators(Ljava/util/List;Landroid/view/View;II)V

    goto :goto_2

    .line 1845
    :pswitch_3
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v4, v0, v1, v2}, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;->addFadeAnimators(Ljava/util/List;Landroid/view/View;FF)V

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_1

    .line 1822
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private addStaleViewAnimationEndListener(Landroid/view/View;Ljava/util/List;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2042
    .local p2, "viewAnimators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    if-nez p2, :cond_1

    .line 2064
    :cond_0
    return-void

    .line 2046
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 2047
    .local v0, "animator":Landroid/animation/Animator;
    new-instance v2, Lcom/android/deskclock/widget/sgv/StaggeredGridView$3;

    invoke-direct {v2, p0, p1}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$3;-><init>(Lcom/android/deskclock/widget/sgv/StaggeredGridView;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method private addUpdateViewPositionsAnimators(Ljava/util/List;ZLcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;Z",
            "Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1906
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    .line 1907
    if-nez v8, :cond_1

    .line 1908
    const/4 v0, 0x0

    .line 2038
    :cond_0
    return-object v0

    .line 1911
    :cond_1
    if-nez p1, :cond_a

    .line 1912
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1915
    :goto_0
    const/4 v6, 0x0

    .line 1916
    const/4 v1, 0x0

    move v7, v1

    :goto_1
    if-ge v7, v8, :cond_0

    .line 1917
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1919
    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mViewsToAnimateOut:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v6

    .line 1916
    :goto_2
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    move v6, v1

    goto :goto_1

    .line 1929
    :cond_2
    if-eqz p2, :cond_3

    mul-int/lit8 v2, v6, 0x32

    :goto_3
    add-int v5, p4, v2

    .line 1933
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;

    .line 1935
    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mChildRectsForAnimation:Ljava/util/Map;

    iget-wide v9, v4, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/deskclock/widget/sgv/StaggeredGridView$ViewRectPair;

    .line 1942
    if-eqz v2, :cond_6

    iget-object v3, v2, Lcom/android/deskclock/widget/sgv/StaggeredGridView$ViewRectPair;->rect:Landroid/graphics/Rect;

    if-eqz v3, :cond_6

    .line 1945
    sget-object v3, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;->FADE:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

    if-ne p3, v3, :cond_4

    .line 1946
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000

    invoke-static {v0, v1, v2, v3, v5}, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;->addFadeAnimators(Ljava/util/List;Landroid/view/View;FFI)V

    move v1, v6

    .line 1948
    goto :goto_2

    .line 1929
    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .line 1951
    :cond_4
    iget-object v3, v2, Lcom/android/deskclock/widget/sgv/StaggeredGridView$ViewRectPair;->rect:Landroid/graphics/Rect;

    .line 1958
    iget v2, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v2, v4

    .line 1959
    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1960
    invoke-virtual {v1}, Landroid/view/View;->getRotation()F

    move-result v4

    .line 1963
    int-to-float v9, v2

    invoke-virtual {v1, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 1964
    int-to-float v9, v3

    invoke-virtual {v1, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 1966
    if-nez v2, :cond_5

    if-nez v3, :cond_5

    const/4 v9, 0x0

    cmpl-float v9, v4, v9

    if-nez v9, :cond_5

    move v1, v6

    .line 1968
    goto :goto_2

    .line 1971
    :cond_5
    invoke-static/range {v0 .. v5}, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;->addTranslationRotationAnimators(Ljava/util/List;Landroid/view/View;IIFI)V

    .line 2035
    :goto_4
    add-int/lit8 v1, v6, 0x1

    goto :goto_2

    .line 1976
    :cond_6
    const/4 v2, 0x0

    .line 1977
    sget-object v3, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;->FLY_IN_NEW_VIEWS:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

    if-ne p3, v3, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1981
    :goto_5
    invoke-static {}, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;->getDefaultAnimationDuration()I

    move-result v9

    add-int/2addr v5, v9

    .line 1983
    int-to-float v9, v2

    invoke-virtual {v1, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 1984
    int-to-float v9, v3

    invoke-virtual {v1, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 1986
    sget-object v9, Lcom/android/deskclock/widget/sgv/StaggeredGridView$4;->$SwitchMap$com$android$deskclock$widget$sgv$SgvAnimationHelper$AnimationIn:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    move v1, v6

    .line 2031
    goto/16 :goto_2

    .line 1977
    :cond_7
    const/4 v3, 0x0

    goto :goto_5

    .line 1988
    :pswitch_0
    const/high16 v4, 0x41c80000

    invoke-static/range {v0 .. v5}, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;->addTranslationRotationAnimators(Ljava/util/List;Landroid/view/View;IIFI)V

    goto :goto_4

    .line 1996
    :pswitch_1
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v9, 0x3ff8000000000000L

    mul-double/2addr v2, v9

    double-to-int v2, v2

    .line 1997
    iget v3, v4, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->column:I

    iget v4, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    div-int/lit8 v4, v4, 0x2

    if-ge v3, v4, :cond_8

    .line 1998
    neg-int v2, v2

    .line 2001
    :cond_8
    invoke-static {v0, v1, v2, v5}, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;->addSlideInFromRightAnimators(Ljava/util/List;Landroid/view/View;II)V

    goto :goto_4

    .line 2008
    :pswitch_2
    if-nez v7, :cond_9

    .line 2010
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2014
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, -0x1

    .line 2015
    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v5}, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;->addXYTranslationAnimators(Ljava/util/List;Landroid/view/View;III)V

    .line 2018
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000

    invoke-static {v0, v1, v2, v3, v5}, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;->addFadeAnimators(Ljava/util/List;Landroid/view/View;FFI)V

    goto :goto_4

    .line 2021
    :cond_9
    invoke-static {v0, v1, v5}, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;->addExpandInAnimators(Ljava/util/List;Landroid/view/View;I)V

    goto :goto_4

    .line 2026
    :pswitch_3
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000

    invoke-static {v0, v1, v2, v3, v5}, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;->addFadeAnimators(Ljava/util/List;Landroid/view/View;FFI)V

    goto :goto_4

    :cond_a
    move-object v0, p1

    goto/16 :goto_0

    .line 1986
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private cacheChildRects()V
    .locals 17

    .prologue
    .line 2478
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 2479
    .local v3, "childCount":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mChildRectsForAnimation:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->clear()V

    .line 2481
    const-wide/16 v9, -0x1

    .line 2482
    .local v9, "originalDraggedChildId":J
    invoke-direct/range {p0 .. p0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->isDragReorderingSupported()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 2483
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mReorderHelper:Lcom/android/deskclock/widget/sgv/ReorderHelper;

    invoke-virtual {v12}, Lcom/android/deskclock/widget/sgv/ReorderHelper;->getDraggedChildId()J

    move-result-wide v9

    .line 2484
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mCachedDragViewRect:Landroid/graphics/Rect;

    if-eqz v12, :cond_0

    const-wide/16 v12, -0x1

    cmp-long v12, v9, v12

    if-eqz v12, :cond_0

    .line 2487
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mChildRectsForAnimation:Ljava/util/Map;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    new-instance v14, Lcom/android/deskclock/widget/sgv/StaggeredGridView$ViewRectPair;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mDragView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mCachedDragViewRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$ViewRectPair;-><init>(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2489
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mCachedDragViewRect:Landroid/graphics/Rect;

    .line 2493
    :cond_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v3, :cond_2

    .line 2494
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2495
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;

    .line 2498
    .local v8, "lp":Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;
    iget-wide v12, v8, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->id:J

    cmp-long v12, v12, v9

    if-eqz v12, :cond_1

    .line 2499
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v12

    float-to-int v6, v12

    .line 2500
    .local v6, "childTop":I
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int v2, v6, v12

    .line 2501
    .local v2, "childBottom":I
    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v12

    float-to-int v4, v12

    .line 2502
    .local v4, "childLeft":I
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int v5, v4, v12

    .line 2503
    .local v5, "childRight":I
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v4, v6, v5, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2504
    .local v11, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mChildRectsForAnimation:Ljava/util/Map;

    iget-wide v13, v8, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->id:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    new-instance v14, Lcom/android/deskclock/widget/sgv/StaggeredGridView$ViewRectPair;

    invoke-direct {v14, v1, v11}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$ViewRectPair;-><init>(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2493
    .end local v2    # "childBottom":I
    .end local v4    # "childLeft":I
    .end local v5    # "childRight":I
    .end local v6    # "childTop":I
    .end local v11    # "rect":Landroid/graphics/Rect;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2507
    .end local v1    # "child":Landroid/view/View;
    .end local v8    # "lp":Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;
    :cond_2
    return-void
.end method

.method private calculateLayoutStartOffsets(I)V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/high16 v12, 0x40000000

    const/4 v11, 0x1

    const/4 v3, 0x0

    .line 2082
    iget v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mFirstPosition:I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mGuardAgainstJaggedEdges:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mFirstPosition:I

    iget v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mFirstChangedPosition:I

    if-ge v0, v1, :cond_2

    .line 2090
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemTops:[I

    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemBottoms:[I

    iget v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2214
    :cond_1
    return-void

    .line 2094
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemMargin:I

    iget v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    div-int v7, v0, v1

    .line 2097
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemTops:[I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 2098
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemBottoms:[I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 2107
    iget-boolean v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mDataChanged:Z

    if-eqz v0, :cond_3

    .line 2108
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    :cond_3
    move v2, v3

    .line 2111
    :goto_0
    iget v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mFirstPosition:I

    if-ge v2, v0, :cond_11

    .line 2112
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;

    .line 2114
    iget-boolean v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mDataChanged:Z

    if-nez v1, :cond_4

    if-nez v0, :cond_6

    .line 2115
    :cond_4
    invoke-virtual {p0, v2, v13}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->obtainView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v5

    .line 2116
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;

    .line 2119
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v6, -0x2

    if-ne v4, v6, :cond_9

    .line 2120
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 2125
    :goto_1
    iget v6, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    iget v8, v1, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->span:I

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 2126
    mul-int v8, v7, v6

    iget v9, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemMargin:I

    add-int/lit8 v10, v6, -0x1

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    .line 2127
    invoke-static {v8, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 2129
    invoke-virtual {v5, v8, v4}, Landroid/view/View;->measure(II)V

    .line 2130
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 2132
    if-nez v0, :cond_5

    .line 2133
    new-instance v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;

    invoke-direct {v0, v13}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;-><init>(Lcom/android/deskclock/widget/sgv/StaggeredGridView$1;)V

    .line 2134
    iget-object v8, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v8, v2, v0}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 2137
    :cond_5
    iput v4, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->height:I

    .line 2138
    iget-wide v8, v1, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->id:J

    iput-wide v8, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->id:J

    .line 2139
    iput v6, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->span:I

    .line 2142
    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mRecycler:Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;

    invoke-virtual {v1, v5}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;->addScrap(Landroid/view/View;)V

    .line 2145
    :cond_6
    invoke-virtual {p0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->getNextColumnDown()I

    move-result v1

    .line 2149
    iget v4, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->span:I

    if-le v4, v11, :cond_7

    .line 2150
    iget-boolean v4, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mIsRtlLayout:Z

    if-eqz v4, :cond_a

    .line 2151
    add-int/lit8 v4, v1, 0x1

    iget v5, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->span:I

    if-ge v4, v5, :cond_7

    .line 2152
    iget v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    add-int/lit8 v1, v1, -0x1

    .line 2160
    :cond_7
    :goto_2
    iput v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->column:I

    .line 2168
    iget-object v4, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemBottoms:[I

    aget v4, v4, v1

    iget v5, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemMargin:I

    add-int/2addr v4, v5

    .line 2169
    iget v5, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->span:I

    if-le v5, v11, :cond_c

    move v5, v4

    move v4, v3

    .line 2170
    :goto_3
    iget v6, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->span:I

    if-ge v4, v6, :cond_d

    .line 2171
    iget-boolean v6, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mIsRtlLayout:Z

    if-eqz v6, :cond_b

    sub-int v6, v1, v4

    .line 2173
    :goto_4
    iget-object v8, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemBottoms:[I

    aget v6, v8, v6

    iget v8, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemMargin:I

    add-int/2addr v6, v8

    .line 2174
    if-le v6, v5, :cond_8

    move v5, v6

    .line 2170
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2122
    :cond_9
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v4, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_1

    .line 2155
    :cond_a
    iget v4, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    sub-int/2addr v4, v1

    iget v5, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->span:I

    if-ge v4, v5, :cond_7

    move v1, v3

    .line 2156
    goto :goto_2

    .line 2171
    :cond_b
    add-int v6, v1, v4

    goto :goto_4

    :cond_c
    move v5, v4

    :cond_d
    move v4, v3

    .line 2180
    :goto_5
    iget v6, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->span:I

    if-ge v4, v6, :cond_10

    .line 2181
    iget-boolean v6, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mIsRtlLayout:Z

    if-eqz v6, :cond_e

    sub-int v6, v1, v4

    .line 2182
    :goto_6
    iget-object v8, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemBottoms:[I

    iget v9, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->height:I

    add-int/2addr v9, v5

    aput v9, v8, v6

    .line 2184
    sget-object v6, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->TAG:Ljava/lang/String;

    const/4 v8, 0x2

    invoke-static {v6, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 2185
    sget-object v6, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " position: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bottoms: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v3

    .line 2186
    :goto_7
    iget v8, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    if-ge v6, v8, :cond_f

    .line 2187
    sget-object v8, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "    mItemBottoms["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemBottoms:[I

    aget v10, v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2186
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 2181
    :cond_e
    add-int v6, v1, v4

    goto :goto_6

    .line 2180
    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 2111
    :cond_10
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 2197
    :cond_11
    const v0, 0x7fffffff

    move v1, v0

    move v0, v3

    .line 2198
    :goto_8
    iget v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    if-ge v0, v2, :cond_13

    .line 2199
    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemBottoms:[I

    aget v2, v2, v0

    if-ge v2, v1, :cond_12

    .line 2200
    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemBottoms:[I

    aget v1, v1, v0

    .line 2198
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 2208
    :cond_13
    :goto_9
    iget v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    if-ge v3, v0, :cond_1

    .line 2209
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemBottoms:[I

    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemBottoms:[I

    aget v2, v2, v3

    sub-int/2addr v2, v1

    add-int/2addr v2, p1

    aput v2, v0, v3

    .line 2210
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemTops:[I

    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemBottoms:[I

    aget v2, v2, v3

    aput v2, v0, v3

    .line 2208
    add-int/lit8 v3, v3, 0x1

    goto :goto_9
.end method

.method private clearAllState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3191
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 3192
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3194
    iput-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemTops:[I

    .line 3195
    iput-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemBottoms:[I

    .line 3197
    invoke-virtual {p0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->setSelectionToTop()V

    .line 3200
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mRecycler:Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;

    invoke-virtual {v0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;->clear()V

    .line 3203
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mLastTouchY:F

    .line 3206
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mFirstChangedPosition:I

    .line 3207
    return-void
.end method

.method private createDraggedChildBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 672
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 673
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 675
    .local v1, "cache":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 676
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 678
    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 685
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 686
    invoke-virtual {p1, v5}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 688
    return-object v0

    .line 679
    :catch_0
    move-exception v2

    .line 680
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    sget-object v3, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->TAG:Ljava/lang/String;

    const-string v4, "Failed to copy bitmap from Drawing cache"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 681
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getChildAtCoordinate(II)Landroid/view/View;
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v4, 0x0

    .line 552
    if-gez p2, :cond_1

    .line 570
    :cond_0
    :goto_0
    return-object v4

    .line 558
    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 559
    .local v2, "frame":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 560
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 562
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 563
    .local v0, "childView":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 564
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 565
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    .line 560
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private getItemWidth(I)I
    .locals 4
    .param p1, "itemColumnSpan"    # I

    .prologue
    .line 2981
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemMargin:I

    iget v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    div-int v0, v1, v2

    .line 2983
    .local v0, "colWidth":I
    mul-int v1, v0, p1

    iget v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemMargin:I

    add-int/lit8 v3, p1, -0x1

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    return v1
.end method

.method private handleDrag(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 808
    iget v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mDragState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 823
    :cond_0
    :goto_0
    return-void

    .line 815
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->updateDraggedBitmapLocation(II)V

    .line 817
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mCurrentRunningAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mReorderHelper:Lcom/android/deskclock/widget/sgv/ReorderHelper;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/deskclock/widget/sgv/ReorderHelper;->handleDrag(Landroid/graphics/Point;)V

    goto :goto_0
.end method

.method private handleDrop(II)V
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v8, 0x0

    .line 839
    iget-object v5, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mReorderHelper:Lcom/android/deskclock/widget/sgv/ReorderHelper;

    invoke-virtual {v5}, Lcom/android/deskclock/widget/sgv/ReorderHelper;->hasReorderListener()Z

    move-result v5

    if-nez v5, :cond_0

    .line 840
    invoke-direct {p0, v8}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->updateReorderStates(I)V

    .line 892
    :goto_0
    return-void

    .line 844
    :cond_0
    iget-object v5, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mReorderHelper:Lcom/android/deskclock/widget/sgv/ReorderHelper;

    invoke-virtual {v5}, Lcom/android/deskclock/widget/sgv/ReorderHelper;->isOverReorderingArea()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 852
    iget-object v5, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v6, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mOffsetToAbsoluteX:I

    sub-int v0, v5, v6

    .line 853
    .local v0, "left":I
    iget-object v5, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v6, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mOffsetToAbsoluteY:I

    sub-int v3, v5, v6

    .line 855
    .local v3, "top":I
    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v0

    iget-object v7, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v7, v3

    invoke-direct {v5, v0, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mCachedDragViewRect:Landroid/graphics/Rect;

    .line 857
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 858
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 859
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;

    .line 860
    .local v1, "lp":Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;
    iget v5, v1, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->position:I

    iget-object v6, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mReorderHelper:Lcom/android/deskclock/widget/sgv/ReorderHelper;

    invoke-virtual {v6}, Lcom/android/deskclock/widget/sgv/ReorderHelper;->getDraggedChildPosition()I

    move-result v6

    if-le v5, v6, :cond_1

    .line 877
    iget v5, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mFirstPosition:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mFirstPosition:I

    .line 883
    .end local v1    # "lp":Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->getScrollState()Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;

    move-result-object v5

    iput-object v5, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mCurrentScrollState:Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;

    .line 886
    .end local v0    # "left":I
    .end local v3    # "top":I
    :cond_2
    iget-object v5, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mReorderHelper:Lcom/android/deskclock/widget/sgv/ReorderHelper;

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v5, v6}, Lcom/android/deskclock/widget/sgv/ReorderHelper;->handleDrop(Landroid/graphics/Point;)Z

    move-result v2

    .line 887
    .local v2, "reordered":Z
    if-eqz v2, :cond_3

    .line 888
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->updateReorderStates(I)V

    goto :goto_0

    .line 890
    :cond_3
    invoke-direct {p0, v8}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->updateReorderStates(I)V

    goto :goto_0
.end method

.method private handleLayoutAnimation()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1698
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1703
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1704
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1705
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1707
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mAnimationOutMode:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;

    invoke-direct {p0, v1, v0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->addOutAnimatorsForStaleViews(Ljava/util/List;Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;)V

    .line 1710
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;->getDefaultAnimationDuration()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 1712
    :goto_0
    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mAnimationInMode:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

    invoke-direct {p0, v1, v2, v0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->addInAnimators(Ljava/util/List;Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;I)V

    .line 1714
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1715
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1716
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1717
    new-instance v1, Lcom/android/deskclock/widget/sgv/StaggeredGridView$2;

    invoke-direct {v1, p0, v0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$2;-><init>(Lcom/android/deskclock/widget/sgv/StaggeredGridView;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1743
    sget-object v1, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->TAG:Ljava/lang/String;

    const-string v2, "starting"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1749
    :goto_1
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mViewsToAnimateOut:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1750
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mChildRectsForAnimation:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1751
    return-void

    .line 1710
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1746
    :cond_1
    invoke-direct {p0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->resetAnimationMode()V

    goto :goto_1

    .line 1703
    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method private handleOverfling()V
    .locals 17

    .prologue
    .line 1404
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mScroller:Lcom/android/deskclock/widget/sgv/OverScrollerSGV;

    invoke-virtual {v1}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1405
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v5

    .line 1406
    .local v5, "scrollY":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mScroller:Lcom/android/deskclock/widget/sgv/OverScrollerSGV;

    invoke-virtual {v1}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->getCurrY()I

    move-result v15

    .line 1407
    .local v15, "currY":I
    sub-int v3, v15, v5

    .line 1408
    .local v3, "deltaY":I
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mOverscrollDistance:I

    const/4 v10, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v10}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1409
    if-gtz v5, :cond_2

    if-lez v15, :cond_2

    const/4 v13, 0x1

    .line 1410
    .local v13, "crossDown":Z
    :goto_0
    if-ltz v5, :cond_3

    if-gez v15, :cond_3

    const/4 v14, 0x1

    .line 1411
    .local v14, "crossUp":Z
    :goto_1
    if-nez v13, :cond_0

    if-eqz v14, :cond_4

    .line 1412
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mScroller:Lcom/android/deskclock/widget/sgv/OverScrollerSGV;

    invoke-virtual {v1}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->getCurrVelocity()F

    move-result v1

    float-to-int v0, v1

    move/from16 v16, v0

    .line 1413
    .local v16, "velocity":I
    if-eqz v14, :cond_1

    .line 1414
    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    .line 1419
    :cond_1
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTouchMode:I

    .line 1420
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mScroller:Lcom/android/deskclock/widget/sgv/OverScrollerSGV;

    invoke-virtual {v1}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->abortAnimation()V

    .line 1440
    .end local v3    # "deltaY":I
    .end local v5    # "scrollY":I
    .end local v13    # "crossDown":Z
    .end local v14    # "crossUp":Z
    .end local v15    # "currY":I
    .end local v16    # "velocity":I
    :goto_2
    return-void

    .line 1409
    .restart local v3    # "deltaY":I
    .restart local v5    # "scrollY":I
    .restart local v15    # "currY":I
    :cond_2
    const/4 v13, 0x0

    goto :goto_0

    .line 1410
    .restart local v13    # "crossDown":Z
    :cond_3
    const/4 v14, 0x0

    goto :goto_1

    .line 1423
    .restart local v14    # "crossUp":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mScroller:Lcom/android/deskclock/widget/sgv/OverScrollerSGV;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v8, v5

    invoke-virtual/range {v6 .. v12}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->springBack(IIIIII)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1424
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTouchMode:I

    .line 1425
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_2

    .line 1428
    :cond_5
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTouchMode:I

    goto :goto_2

    .line 1433
    .end local v13    # "crossDown":Z
    .end local v14    # "crossUp":Z
    :cond_6
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_2

    .line 1437
    .end local v3    # "deltaY":I
    .end local v5    # "scrollY":I
    .end local v15    # "currY":I
    :cond_7
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTouchMode:I

    .line 1438
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mScroller:Lcom/android/deskclock/widget/sgv/OverScrollerSGV;

    invoke-virtual {v1}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->abortAnimation()V

    goto :goto_2
.end method

.method private initializeDragScrollParameters(I)V
    .locals 2
    .param p1, "y"    # I

    .prologue
    .line 611
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mHeight:I

    .line 612
    iget v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTouchSlop:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mHeight:I

    div-int/lit8 v1, v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mUpperScrollBound:I

    .line 613
    iget v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTouchSlop:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mHeight:I

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mLowerScrollBound:I

    .line 614
    return-void
.end method

.method private isDragReorderingSupported()Z
    .locals 1

    .prologue
    .line 601
    iget-boolean v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mIsDragReorderingEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mReorderHelper:Lcom/android/deskclock/widget/sgv/ReorderHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mReorderHelper:Lcom/android/deskclock/widget/sgv/ReorderHelper;

    invoke-virtual {v0}, Lcom/android/deskclock/widget/sgv/ReorderHelper;->hasReorderListener()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLayoutRtl()Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 430
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    .line 431
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 433
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 431
    goto :goto_0

    :cond_1
    move v0, v1

    .line 433
    goto :goto_0
.end method

.method private isSelectionAtTop()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3230
    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mCurrentScrollState:Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mCurrentScrollState:Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;

    invoke-virtual {v1}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;->getAdapterPosition()I

    move-result v1

    if-nez v1, :cond_0

    .line 3235
    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mCurrentScrollState:Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;

    invoke-virtual {v1}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;->getVerticalOffset()I

    move-result v1

    iget v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemMargin:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 3238
    :cond_0
    return v0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .locals 2
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "delta"    # I
    .param p3, "height"    # I

    .prologue
    .line 3398
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3399
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3401
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    add-int/2addr v1, p3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private offsetChildren(I)V
    .locals 8
    .param p1, "offset"    # I

    .prologue
    .line 1668
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1669
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1670
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1672
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1676
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;

    .line 1677
    .local v4, "lp":Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;
    invoke-direct {p0, v4}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->setReorderingArea(Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;)V

    .line 1669
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1680
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "lp":Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;
    :cond_0
    iget v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    .line 1681
    .local v2, "colCount":I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    .line 1682
    iget-object v5, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemTops:[I

    aget v6, v5, v3

    add-int/2addr v6, p1

    aput v6, v5, v3

    .line 1683
    iget-object v5, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemBottoms:[I

    aget v6, v5, v3

    add-int/2addr v6, p1

    aput v6, v5, v3

    .line 1681
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1686
    :cond_1
    iget-object v5, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mScrollListener:Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollListener;

    if-eqz v5, :cond_2

    .line 1687
    iget-object v5, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mScrollListener:Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollListener;

    invoke-virtual {p0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->computeVerticalScrollOffset()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->computeVerticalScrollRange()I

    move-result v7

    invoke-interface {v5, p1, v6, v7}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollListener;->onScrollChanged(III)V

    .line 1690
    :cond_2
    return-void
.end method

.method private populate()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1580
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mAdapter:Lcom/android/deskclock/widget/sgv/GridAdapter;

    if-nez v3, :cond_1

    .line 1656
    :cond_0
    :goto_0
    return-void

    .line 1584
    :cond_1
    iget v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 1585
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mMinColWidth:I

    div-int v0, v3, v4

    .line 1586
    .local v0, "colCount":I
    iget v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    if-eq v0, v3, :cond_2

    .line 1587
    iput v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    .line 1591
    .end local v0    # "colCount":I
    :cond_2
    iget v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    .line 1592
    .restart local v0    # "colCount":I
    iget-object v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemTops:[I

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemBottoms:[I

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemTops:[I

    array-length v3, v3

    if-ne v3, v0, :cond_3

    iget-object v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemBottoms:[I

    array-length v3, v3

    if-eq v3, v0, :cond_4

    .line 1594
    :cond_3
    new-array v3, v0, [I

    iput-object v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemTops:[I

    .line 1595
    new-array v3, v0, [I

    iput-object v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemBottoms:[I

    .line 1597
    iget-object v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 1598
    iget-boolean v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mInLayout:Z

    if-eqz v3, :cond_c

    .line 1599
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 1608
    :cond_4
    :goto_1
    iget-boolean v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mDataChanged:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mCurrentRunningAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_5

    .line 1609
    iget-object v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mCurrentRunningAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1610
    iput-object v6, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mCurrentRunningAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1613
    :cond_5
    invoke-direct {p0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->isSelectionAtTop()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1614
    iput-object v6, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mCurrentScrollState:Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;

    .line 1617
    :cond_6
    iget-object v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mCurrentScrollState:Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;

    if-eqz v3, :cond_d

    .line 1618
    iget-object v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mCurrentScrollState:Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;

    invoke-direct {p0, v3}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->restoreScrollPosition(Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;)V

    .line 1623
    :goto_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mPopulating:Z

    .line 1625
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mFocusedChildIdToScrollIntoView:J

    .line 1626
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 1627
    .local v1, "focusedChild":Landroid/view/View;
    if-eqz v1, :cond_7

    .line 1628
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;

    .line 1629
    .local v2, "lp":Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;
    iget-wide v3, v2, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->id:J

    iput-wide v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mFocusedChildIdToScrollIntoView:J

    .line 1632
    .end local v2    # "lp":Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;
    :cond_7
    iget-boolean v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mDataChanged:Z

    invoke-virtual {p0, v3}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->layoutChildren(Z)V

    .line 1633
    iget v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v3, v5}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->fillDown(II)I

    .line 1634
    iget v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mFirstPosition:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3, v5}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->fillUp(II)I

    .line 1636
    invoke-direct {p0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->isDragReorderingSupported()Z

    move-result v3

    if-eqz v3, :cond_8

    iget v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mDragState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_9

    :cond_8
    iget v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mDragState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_a

    .line 1642
    :cond_9
    iget-object v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mReorderHelper:Lcom/android/deskclock/widget/sgv/ReorderHelper;

    invoke-virtual {v3}, Lcom/android/deskclock/widget/sgv/ReorderHelper;->clearDraggedChildId()V

    .line 1643
    invoke-direct {p0, v5}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->updateReorderStates(I)V

    .line 1646
    :cond_a
    iget-boolean v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mDataChanged:Z

    if-eqz v3, :cond_b

    .line 1649
    invoke-direct {p0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->handleLayoutAnimation()V

    .line 1652
    :cond_b
    invoke-direct {p0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->recycleOffscreenViews()V

    .line 1654
    iput-boolean v5, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mPopulating:Z

    .line 1655
    iput-boolean v5, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mDataChanged:Z

    goto/16 :goto_0

    .line 1601
    .end local v1    # "focusedChild":Landroid/view/View;
    :cond_c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_1

    .line 1620
    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->calculateLayoutStartOffsets(I)V

    goto :goto_2
.end method

.method private recreateLayoutRecord(ILandroid/view/View;Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;)Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;
    .locals 3
    .param p1, "position"    # I
    .param p2, "child"    # Landroid/view/View;
    .param p3, "lp"    # Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;

    .prologue
    .line 1342
    new-instance v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;-><init>(Lcom/android/deskclock/widget/sgv/StaggeredGridView$1;)V

    .line 1343
    .local v0, "rec":Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;
    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 1344
    iget v1, p3, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->column:I

    iput v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->column:I

    .line 1345
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->height:I

    .line 1346
    iget-wide v1, p3, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->id:J

    iput-wide v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->id:J

    .line 1347
    iget v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    iget v2, p3, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->span:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->span:I

    .line 1348
    return-object v0
.end method

.method private recycleOffscreenViews()V
    .locals 20

    .prologue
    .line 1245
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v18

    if-nez v18, :cond_0

    .line 1339
    :goto_0
    return-void

    .line 1249
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 1250
    .local v11, "height":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemMargin:I

    move/from16 v18, v0

    move/from16 v0, v18

    neg-int v6, v0

    .line 1251
    .local v6, "clearAbove":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemMargin:I

    move/from16 v18, v0

    add-int v7, v11, v18

    .line 1252
    .local v7, "clearBelow":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v18

    add-int/lit8 v12, v18, -0x1

    .local v12, "i":I
    :goto_1
    if-ltz v12, :cond_1

    .line 1253
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1254
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v18

    move/from16 v0, v18

    if-gt v0, v7, :cond_6

    .line 1270
    .end local v4    # "child":Landroid/view/View;
    :cond_1
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v18

    if-lez v18, :cond_2

    .line 1271
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1272
    .restart local v4    # "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v18

    move/from16 v0, v18

    if-lt v0, v6, :cond_8

    .line 1289
    .end local v4    # "child":Landroid/view/View;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 1290
    .local v5, "childCount":I
    if-lez v5, :cond_e

    .line 1292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemTops:[I

    move-object/from16 v18, v0

    const v19, 0x7fffffff

    invoke-static/range {v18 .. v19}, Ljava/util/Arrays;->fill([II)V

    .line 1293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v18, v0

    const/high16 v19, -0x80000000

    invoke-static/range {v18 .. v19}, Ljava/util/Arrays;->fill([II)V

    .line 1294
    const/4 v12, 0x0

    :goto_3
    if-ge v12, v5, :cond_c

    .line 1295
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1296
    .restart local v4    # "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;

    .line 1297
    .local v13, "lp":Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemMargin:I

    move/from16 v19, v0

    sub-int v17, v18, v19

    .line 1298
    .local v17, "top":I
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1299
    .local v3, "bottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mFirstPosition:I

    move/from16 v19, v0

    add-int v19, v19, v12

    invoke-virtual/range {v18 .. v19}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;

    .line 1304
    .local v14, "rec":Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;
    if-nez v14, :cond_3

    .line 1305
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mFirstPosition:I

    move/from16 v18, v0

    add-int v18, v18, v12

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v4, v13}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->recreateLayoutRecord(ILandroid/view/View;Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;)Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;

    move-result-object v14

    .line 1313
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    move/from16 v18, v0

    iget v0, v13, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->span:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 1314
    .local v15, "span":I
    const/16 v16, 0x0

    .local v16, "spanIndex":I
    :goto_4
    move/from16 v0, v16

    if-ge v0, v15, :cond_b

    .line 1315
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mIsRtlLayout:Z

    move/from16 v18, v0

    if-eqz v18, :cond_a

    iget v0, v13, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->column:I

    move/from16 v18, v0

    sub-int v8, v18, v16

    .line 1317
    .local v8, "col":I
    :goto_5
    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->getMarginAbove(I)I

    move-result v18

    sub-int v10, v17, v18

    .line 1318
    .local v10, "colTop":I
    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->getMarginBelow(I)I

    move-result v18

    add-int v9, v3, v18

    .line 1319
    .local v9, "colBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemTops:[I

    move-object/from16 v18, v0

    aget v18, v18, v8

    move/from16 v0, v18

    if-ge v10, v0, :cond_4

    .line 1320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemTops:[I

    move-object/from16 v18, v0

    aput v10, v18, v8

    .line 1322
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v18, v0

    aget v18, v18, v8

    move/from16 v0, v18

    if-le v9, v0, :cond_5

    .line 1323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v18, v0

    aput v9, v18, v8

    .line 1314
    :cond_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 1260
    .end local v3    # "bottom":I
    .end local v5    # "childCount":I
    .end local v8    # "col":I
    .end local v9    # "colBottom":I
    .end local v10    # "colTop":I
    .end local v13    # "lp":Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;
    .end local v14    # "rec":Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;
    .end local v15    # "span":I
    .end local v16    # "spanIndex":I
    .end local v17    # "top":I
    :cond_6
    invoke-virtual {v4}, Landroid/view/View;->clearFocus()V

    .line 1261
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mInLayout:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 1262
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    .line 1267
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mRecycler:Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;->addScrap(Landroid/view/View;)V

    .line 1252
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_1

    .line 1264
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_6

    .line 1278
    :cond_8
    invoke-virtual {v4}, Landroid/view/View;->clearFocus()V

    .line 1279
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mInLayout:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .line 1280
    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    .line 1285
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mRecycler:Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;->addScrap(Landroid/view/View;)V

    .line 1286
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mFirstPosition:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mFirstPosition:I

    goto/16 :goto_2

    .line 1282
    :cond_9
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_7

    .line 1315
    .restart local v3    # "bottom":I
    .restart local v5    # "childCount":I
    .restart local v13    # "lp":Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;
    .restart local v14    # "rec":Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;
    .restart local v15    # "span":I
    .restart local v16    # "spanIndex":I
    .restart local v17    # "top":I
    :cond_a
    iget v0, v13, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->column:I

    move/from16 v18, v0

    add-int v8, v18, v16

    goto/16 :goto_5

    .line 1294
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 1328
    .end local v3    # "bottom":I
    .end local v4    # "child":Landroid/view/View;
    .end local v13    # "lp":Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;
    .end local v14    # "rec":Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;
    .end local v15    # "span":I
    .end local v16    # "spanIndex":I
    .end local v17    # "top":I
    :cond_c
    const/4 v8, 0x0

    .restart local v8    # "col":I
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_e

    .line 1329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemTops:[I

    move-object/from16 v18, v0

    aget v18, v18, v8

    const v19, 0x7fffffff

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 1331
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v17

    .line 1332
    .restart local v17    # "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemTops:[I

    move-object/from16 v18, v0

    aput v17, v18, v8

    .line 1333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v18, v0

    aput v17, v18, v8

    .line 1328
    .end local v17    # "top":I
    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 1338
    .end local v8    # "col":I
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->getScrollState()Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mCurrentScrollState:Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;

    goto/16 :goto_0
.end method

.method private recycleView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1225
    if-nez p1, :cond_0

    .line 1237
    :goto_0
    return-void

    .line 1229
    :cond_0
    iget-boolean v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mInLayout:Z

    if-eqz v0, :cond_1

    .line 1230
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 1231
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1236
    :goto_1
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mRecycler:Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;->addScrap(Landroid/view/View;)V

    goto :goto_0

    .line 1233
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method private recycleViewsInRange(II)V
    .locals 3
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 1209
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-lt v1, p1, :cond_1

    .line 1210
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1212
    .local v0, "child":Landroid/view/View;
    iget-boolean v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mInLayout:Z

    if-eqz v2, :cond_0

    .line 1213
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    .line 1218
    :goto_1
    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mRecycler:Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;

    invoke-virtual {v2, v0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;->addScrap(Landroid/view/View;)V

    .line 1209
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1215
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_1

    .line 1220
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private resetAnimationMode()V
    .locals 1

    .prologue
    .line 1757
    sget-object v0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;->NONE:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

    iput-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mAnimationInMode:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

    .line 1758
    sget-object v0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;->NONE:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;

    iput-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mAnimationOutMode:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;

    .line 1759
    return-void
.end method

.method private resetScroller()V
    .locals 1

    .prologue
    .line 1013
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTouchMode:I

    .line 1014
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    .line 1015
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    .line 1016
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mScroller:Lcom/android/deskclock/widget/sgv/OverScrollerSGV;

    invoke-virtual {v0}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->abortAnimation()V

    .line 1017
    return-void
.end method

.method private restoreScrollPosition(Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;)V
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    const/4 v0, 0x0

    .line 3263
    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mAdapter:Lcom/android/deskclock/widget/sgv/GridAdapter;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mAdapter:Lcom/android/deskclock/widget/sgv/GridAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 3315
    :cond_0
    :goto_0
    return-void

    .line 3267
    :cond_1
    sget-object v1, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[restoreScrollPosition] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3272
    invoke-virtual {p1}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;->getAdapterPosition()I

    move-result v2

    .line 3273
    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mAdapter:Lcom/android/deskclock/widget/sgv/GridAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v3

    move v1, v0

    .line 3283
    :goto_1
    const/16 v4, 0xa

    if-ge v1, v4, :cond_2

    .line 3284
    add-int v4, v2, v1

    if-ge v4, v3, :cond_4

    .line 3285
    iget-object v4, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mAdapter:Lcom/android/deskclock/widget/sgv/GridAdapter;

    add-int v5, v2, v1

    invoke-virtual {v4, v5}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v4

    .line 3286
    cmp-long v6, v4, v8

    if-eqz v6, :cond_4

    invoke-virtual {p1}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;->getItemId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    .line 3287
    add-int v0, v2, v1

    .line 3308
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;->getVerticalOffset()I

    move-result v1

    iget v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemMargin:I

    sub-int/2addr v1, v2

    .line 3309
    if-nez v0, :cond_3

    .line 3310
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    .line 3313
    :cond_3
    invoke-virtual {p0, v0, v1}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->setFirstPositionAndOffsets(II)V

    .line 3314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mCurrentScrollState:Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;

    goto :goto_0

    .line 3292
    :cond_4
    sub-int v4, v2, v1

    if-ltz v4, :cond_5

    sub-int v4, v2, v1

    if-ge v4, v3, :cond_5

    .line 3293
    iget-object v4, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mAdapter:Lcom/android/deskclock/widget/sgv/GridAdapter;

    sub-int v5, v2, v1

    invoke-virtual {v4, v5}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v4

    .line 3294
    cmp-long v6, v4, v8

    if-eqz v6, :cond_5

    invoke-virtual {p1}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;->getItemId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    .line 3295
    sub-int v0, v2, v1

    .line 3296
    goto :goto_2

    .line 3283
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 3357
    invoke-virtual {p0, p1}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 3358
    .local v0, "delta":I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 3359
    .local v1, "scroll":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 3361
    invoke-virtual {p0, v2, v0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->scrollBy(II)V

    .line 3363
    :cond_0
    return v1

    .end local v1    # "scroll":Z
    :cond_1
    move v1, v2

    .line 3358
    goto :goto_0
.end method

.method private setReorderingArea(Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;)V
    .locals 3
    .param p1, "childLayoutParams"    # Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;

    .prologue
    .line 2450
    iget v1, p1, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->column:I

    iget v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 2451
    .local v0, "isLastColumn":Z
    :goto_0
    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mAdapter:Lcom/android/deskclock/widget/sgv/GridAdapter;

    iget v2, p1, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->position:I

    invoke-virtual {v1, v2, v0}, Lcom/android/deskclock/widget/sgv/GridAdapter;->getReorderingArea(IZ)I

    move-result v1

    iput v1, p1, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->reorderingArea:I

    .line 2453
    return-void

    .line 2450
    .end local v0    # "isLastColumn":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startDragging(Landroid/view/View;II)V
    .locals 10
    .param p1, "draggedChild"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v9, -0x2

    .line 629
    invoke-direct {p0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->isDragReorderingSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 669
    :goto_0
    return-void

    .line 633
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->createDraggedChildBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 634
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mDragBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 639
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mReorderHelper:Lcom/android/deskclock/widget/sgv/ReorderHelper;

    invoke-virtual {v0, p1}, Lcom/android/deskclock/widget/sgv/ReorderHelper;->handleDragCancelled(Landroid/view/View;)V

    goto :goto_0

    .line 642
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v0, p2, v0

    iput v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTouchOffsetToChildLeft:I

    .line 643
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v0, p3, v0

    iput v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTouchOffsetToChildTop:I

    .line 644
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->updateReorderStates(I)V

    .line 646
    invoke-direct {p0, p3}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->initializeDragScrollParameters(I)V

    .line 648
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;

    .line 649
    .local v7, "params":Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mReorderHelper:Lcom/android/deskclock/widget/sgv/ReorderHelper;

    iget v2, v7, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->position:I

    iget-wide v3, v7, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->id:J

    new-instance v5, Landroid/graphics/Point;

    iget v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTouchDownForDragStartX:I

    iget v8, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTouchDownForDragStartY:I

    invoke-direct {v5, v1, v8}, Landroid/graphics/Point;-><init>(II)V

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/deskclock/widget/sgv/ReorderHelper;->handleDragStart(Landroid/view/View;IJLandroid/graphics/Point;)V

    .line 654
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 655
    .local v6, "context":Landroid/content/Context;
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mDragView:Landroid/widget/ImageView;

    .line 656
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mDragView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 657
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mDragView:Landroid/widget/ImageView;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 659
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 660
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 662
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v9, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 663
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v9, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 664
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x398

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 665
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 667
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mDragView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 668
    invoke-direct {p0, p2, p3}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->updateDraggedBitmapLocation(II)V

    goto/16 :goto_0
.end method

.method private trackMotionScroll(IZ)Z
    .locals 12
    .param p1, "deltaY"    # I
    .param p2, "allowOverScroll"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 1133
    invoke-virtual {p0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->contentFits()Z

    move-result v1

    .line 1134
    .local v1, "contentFits":Z
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1137
    .local v0, "allowOverhang":I
    if-nez v1, :cond_6

    .line 1140
    iput-boolean v10, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mPopulating:Z

    .line 1141
    if-lez p1, :cond_3

    .line 1142
    iget v8, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mFirstPosition:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p0, v8, v0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->fillUp(II)I

    move-result v6

    .line 1143
    .local v6, "overhang":I
    const/4 v7, 0x1

    .line 1157
    .local v7, "up":Z
    :goto_0
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1158
    .local v3, "movedBy":I
    if-eqz v7, :cond_5

    move v8, v3

    :goto_1
    invoke-direct {p0, v8}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->offsetChildren(I)V

    .line 1159
    invoke-direct {p0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->recycleOffscreenViews()V

    .line 1160
    iput-boolean v9, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mPopulating:Z

    .line 1161
    sub-int v5, v0, v6

    .line 1167
    .end local v6    # "overhang":I
    .end local v7    # "up":Z
    .local v5, "overScrolledBy":I
    :goto_2
    if-eqz p2, :cond_1

    .line 1168
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v4

    .line 1170
    .local v4, "overScrollMode":I
    if-eqz v4, :cond_0

    if-ne v4, v10, :cond_1

    if-nez v1, :cond_1

    .line 1173
    :cond_0
    if-lez v5, :cond_1

    .line 1174
    if-lez p1, :cond_7

    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1175
    .local v2, "edge":Landroid/support/v4/widget/EdgeEffectCompat;
    :goto_3
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v8, v11

    invoke-virtual {v2, v8}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    .line 1176
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1181
    .end local v2    # "edge":Landroid/support/v4/widget/EdgeEffectCompat;
    .end local v4    # "overScrollMode":I
    :cond_1
    invoke-virtual {p0, v9, v10}, Landroid/view/View;->awakenScrollBars(IZ)Z

    .line 1182
    if-eqz p1, :cond_2

    if-eqz v3, :cond_8

    :cond_2
    move v8, v10

    :goto_4
    return v8

    .line 1145
    .end local v3    # "movedBy":I
    .end local v5    # "overScrolledBy":I
    :cond_3
    iget v8, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    add-int/2addr v8, v11

    invoke-virtual {p0, v8, v0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->fillDown(II)I

    move-result v6

    .line 1147
    .restart local v6    # "overhang":I
    if-gez v6, :cond_4

    .line 1151
    const/4 v6, 0x0

    .line 1154
    :cond_4
    const/4 v7, 0x0

    .restart local v7    # "up":Z
    goto :goto_0

    .line 1158
    .restart local v3    # "movedBy":I
    :cond_5
    neg-int v8, v3

    goto :goto_1

    .line 1163
    .end local v3    # "movedBy":I
    .end local v6    # "overhang":I
    .end local v7    # "up":Z
    :cond_6
    move v5, v0

    .line 1164
    .restart local v5    # "overScrolledBy":I
    const/4 v3, 0x0

    .restart local v3    # "movedBy":I
    goto :goto_2

    .line 1174
    .restart local v4    # "overScrollMode":I
    :cond_7
    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    goto :goto_3

    .end local v4    # "overScrollMode":I
    :cond_8
    move v8, v9

    .line 1182
    goto :goto_4
.end method

.method private updateDraggedBitmapLocation(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 770
    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mAdapter:Lcom/android/deskclock/widget/sgv/GridAdapter;

    invoke-virtual {v1}, Lcom/android/deskclock/widget/sgv/GridAdapter;->getReorderingDirection()I

    move-result v0

    .line 771
    .local v0, "direction":I
    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 773
    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 778
    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mOffsetToAbsoluteX:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 789
    :goto_0
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 791
    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTouchOffsetToChildTop:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mOffsetToAbsoluteY:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 796
    :goto_1
    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mDragView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 797
    return-void

    .line 783
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTouchOffsetToChildLeft:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mOffsetToAbsoluteX:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    .line 786
    :cond_1
    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mOffsetToAbsoluteX:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    .line 793
    :cond_2
    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mOffsetToAbsoluteY:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1
.end method

.method private updateEmptyStatus()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1513
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mAdapter:Lcom/android/deskclock/widget/sgv/GridAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mAdapter:Lcom/android/deskclock/widget/sgv/GridAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1514
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1515
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1516
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1526
    :goto_0
    return-void

    .line 1518
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1521
    :cond_2
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1522
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1524
    :cond_3
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateReorderStates(I)V
    .locals 5
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 696
    const/4 v1, 0x0

    .line 697
    .local v1, "resetDraggedChildView":Z
    const/4 v0, 0x0

    .line 699
    .local v0, "resetDragProperties":Z
    iput p1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mDragState:I

    .line 701
    packed-switch p1, :pswitch_data_0

    .line 723
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal drag state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mDragState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 705
    :pswitch_0
    const/4 v1, 0x1

    .line 706
    const/4 v0, 0x1

    .line 726
    :goto_0
    :pswitch_1
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mReorderHelper:Lcom/android/deskclock/widget/sgv/ReorderHelper;

    invoke-virtual {v2}, Lcom/android/deskclock/widget/sgv/ReorderHelper;->getDraggedChild()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 734
    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mReorderHelper:Lcom/android/deskclock/widget/sgv/ReorderHelper;

    invoke-virtual {v2}, Lcom/android/deskclock/widget/sgv/ReorderHelper;->clearDraggedChildId()V

    .line 735
    iput-object v4, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mCachedDragViewRect:Landroid/graphics/Rect;

    .line 738
    :cond_0
    if-eqz v0, :cond_2

    .line 739
    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mDragView:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 740
    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mDragView:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 741
    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mDragView:Landroid/widget/ImageView;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 742
    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 743
    iput-object v4, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mDragView:Landroid/widget/ImageView;

    .line 745
    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 746
    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 747
    iput-object v4, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 753
    :cond_1
    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mReorderHelper:Lcom/android/deskclock/widget/sgv/ReorderHelper;

    invoke-virtual {v2}, Lcom/android/deskclock/widget/sgv/ReorderHelper;->clearDraggedChild()V

    .line 754
    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mReorderHelper:Lcom/android/deskclock/widget/sgv/ReorderHelper;

    invoke-virtual {v2}, Lcom/android/deskclock/widget/sgv/ReorderHelper;->clearDraggedOverChild()V

    .line 756
    :cond_2
    return-void

    .line 719
    :pswitch_2
    const/4 v0, 0x1

    .line 720
    goto :goto_0

    .line 701
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 3635
    instance-of v0, p1, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;

    return v0
.end method

.method public computeScroll()V
    .locals 20

    .prologue
    .line 1353
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTouchMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1354
    invoke-direct/range {p0 .. p0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->handleOverfling()V

    .line 1400
    :cond_0
    :goto_0
    return-void

    .line 1355
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mScroller:Lcom/android/deskclock/widget/sgv/OverScrollerSGV;

    invoke-virtual {v1}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1356
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v16

    .line 1357
    .local v16, "overScrollMode":I
    const/4 v1, 0x2

    move/from16 v0, v16

    if-eq v0, v1, :cond_2

    const/16 v18, 0x1

    .line 1358
    .local v18, "supportsOverscroll":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mScroller:Lcom/android/deskclock/widget/sgv/OverScrollerSGV;

    invoke-virtual {v1}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->getCurrY()I

    move-result v19

    .line 1359
    .local v19, "y":I
    move/from16 v0, v19

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mLastTouchY:F

    sub-float/2addr v1, v2

    float-to-int v11, v1

    .line 1363
    .local v11, "dy":I
    move/from16 v0, v19

    int-to-float v1, v0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mLastTouchY:F

    .line 1366
    if-eqz v18, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1368
    .local v13, "motionView":Landroid/view/View;
    :goto_2
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v14

    .line 1369
    .local v14, "motionViewPrevTop":I
    :goto_3
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v1}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->trackMotionScroll(IZ)Z

    move-result v1

    if-nez v1, :cond_5

    const/16 v17, 0x1

    .line 1370
    .local v17, "stopped":Z
    :goto_4
    if-nez v17, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mScroller:Lcom/android/deskclock/widget/sgv/OverScrollerSGV;

    invoke-virtual {v1}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->isFinished()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1371
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTouchMode:I

    .line 1372
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0

    .line 1357
    .end local v11    # "dy":I
    .end local v13    # "motionView":Landroid/view/View;
    .end local v14    # "motionViewPrevTop":I
    .end local v17    # "stopped":Z
    .end local v18    # "supportsOverscroll":Z
    .end local v19    # "y":I
    :cond_2
    const/16 v18, 0x0

    goto :goto_1

    .line 1366
    .restart local v11    # "dy":I
    .restart local v18    # "supportsOverscroll":Z
    .restart local v19    # "y":I
    :cond_3
    const/4 v13, 0x0

    goto :goto_2

    .line 1368
    .restart local v13    # "motionView":Landroid/view/View;
    :cond_4
    const/4 v14, 0x0

    goto :goto_3

    .line 1369
    .restart local v14    # "motionViewPrevTop":I
    :cond_5
    const/16 v17, 0x0

    goto :goto_4

    .line 1373
    .restart local v17    # "stopped":Z
    :cond_6
    if-eqz v17, :cond_a

    if-eqz v11, :cond_a

    if-eqz v18, :cond_a

    .line 1375
    if-eqz v13, :cond_7

    .line 1376
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v15

    .line 1378
    .local v15, "motionViewRealTop":I
    neg-int v1, v11

    sub-int v2, v15, v14

    sub-int v3, v1, v2

    .line 1379
    .local v3, "overscroll":I
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mOverscrollDistance:I

    const/4 v10, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v10}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    .line 1383
    .end local v3    # "overscroll":I
    .end local v15    # "motionViewRealTop":I
    :cond_7
    if-lez v11, :cond_9

    .line 1384
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1385
    .local v12, "edge":Landroid/support/v4/widget/EdgeEffectCompat;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    .line 1390
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mScroller:Lcom/android/deskclock/widget/sgv/OverScrollerSGV;

    invoke-virtual {v1}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v12, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    .line 1391
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mScroller:Lcom/android/deskclock/widget/sgv/OverScrollerSGV;

    invoke-virtual {v1}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1392
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mScroller:Lcom/android/deskclock/widget/sgv/OverScrollerSGV;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mOverscrollDistance:I

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->notifyVerticalEdgeReached(III)V

    .line 1394
    :cond_8
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTouchMode:I

    .line 1395
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1387
    .end local v12    # "edge":Landroid/support/v4/widget/EdgeEffectCompat;
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1388
    .restart local v12    # "edge":Landroid/support/v4/widget/EdgeEffectCompat;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    goto :goto_5

    .line 1397
    .end local v12    # "edge":Landroid/support/v4/widget/EdgeEffectCompat;
    :cond_a
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTouchMode:I

    goto/16 :goto_0
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 7
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 3573
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-nez v5, :cond_1

    .line 3574
    const/4 v4, 0x0

    .line 3620
    :cond_0
    :goto_0
    return v4

    .line 3577
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 3578
    .local v1, "height":I
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 3580
    .local v0, "fadingEdge":I
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    .line 3581
    .local v3, "screenTop":I
    add-int v2, v3, v1

    .line 3584
    .local v2, "screenBottom":I
    iget v5, p1, Landroid/graphics/Rect;->top:I

    if-lez v5, :cond_2

    .line 3585
    add-int/2addr v3, v0

    .line 3589
    :cond_2
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 3590
    sub-int/2addr v2, v0

    .line 3593
    :cond_3
    const/4 v4, 0x0

    .line 3595
    .local v4, "scrollYDelta":I
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    if-le v5, v2, :cond_5

    iget v5, p1, Landroid/graphics/Rect;->top:I

    if-le v5, v3, :cond_5

    .line 3600
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v5, v1, :cond_4

    .line 3602
    iget v5, p1, Landroid/graphics/Rect;->top:I

    sub-int v4, v3, v5

    goto :goto_0

    .line 3605
    :cond_4
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v2, v5

    goto :goto_0

    .line 3607
    :cond_5
    iget v5, p1, Landroid/graphics/Rect;->top:I

    if-ge v5, v3, :cond_0

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v5, v2, :cond_0

    .line 3612
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v5, v1, :cond_6

    .line 3614
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v2, v5

    goto :goto_0

    .line 3617
    :cond_6
    iget v5, p1, Landroid/graphics/Rect;->top:I

    sub-int v4, v3, v5

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 3421
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 3422
    .local v1, "count":I
    if-lez v1, :cond_3

    .line 3423
    iget-boolean v8, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_2

    .line 3424
    iget v8, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    add-int/2addr v8, v1

    add-int/lit8 v8, v8, -0x1

    iget v9, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    div-int v4, v8, v9

    .line 3425
    .local v4, "rowCount":I
    mul-int/lit8 v2, v4, 0x64

    .line 3427
    .local v2, "extent":I
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3428
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    .line 3429
    .local v5, "top":I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 3430
    .local v3, "height":I
    if-lez v3, :cond_0

    .line 3431
    mul-int/lit8 v7, v5, 0x64

    div-int/2addr v7, v3

    add-int/2addr v2, v7

    .line 3434
    :cond_0
    add-int/lit8 v7, v1, -0x1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3435
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 3436
    .local v0, "bottom":I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 3437
    if-lez v3, :cond_1

    .line 3438
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int v7, v0, v7

    mul-int/lit8 v7, v7, 0x64

    div-int/2addr v7, v3

    sub-int/2addr v2, v7

    .line 3446
    .end local v0    # "bottom":I
    .end local v2    # "extent":I
    .end local v3    # "height":I
    .end local v4    # "rowCount":I
    .end local v5    # "top":I
    .end local v6    # "view":Landroid/view/View;
    :cond_1
    :goto_0
    return v2

    .line 3443
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v7

    .line 3446
    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 3466
    iget v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mFirstPosition:I

    .line 3467
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 3468
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 3470
    if-ltz v2, :cond_4

    if-lez v3, :cond_4

    .line 3471
    iget-boolean v4, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mSmoothScrollbarEnabled:Z

    if-eqz v4, :cond_1

    .line 3472
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3473
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    .line 3474
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 3475
    if-lez v3, :cond_4

    .line 3495
    mul-int/lit8 v5, v2, 0x64

    iget v6, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    div-int/2addr v5, v6

    mul-int/lit8 v6, v4, 0x64

    div-int v3, v6, v3

    sub-int v3, v5, v3

    .line 3499
    iget v5, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemCount:I

    iget v6, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    div-int/2addr v5, v6

    .line 3500
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    int-to-float v5, v5

    mul-float/2addr v5, v6

    const/high16 v6, 0x42c80000

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 3503
    add-int/2addr v3, v5

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3508
    if-nez v2, :cond_0

    if-lez v1, :cond_0

    .line 3509
    sub-int/2addr v1, v4

    iget v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemMargin:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 3527
    :cond_0
    :goto_0
    return v0

    .line 3515
    :cond_1
    iget v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemCount:I

    .line 3516
    if-nez v2, :cond_2

    .line 3523
    :goto_1
    int-to-float v2, v2

    int-to-float v3, v3

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    .line 3518
    :cond_2
    add-int v0, v2, v3

    if-ne v0, v1, :cond_3

    move v0, v1

    .line 3519
    goto :goto_1

    .line 3521
    :cond_3
    div-int/lit8 v0, v3, 0x2

    add-int/2addr v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    .line 3527
    goto :goto_0
.end method

.method protected computeVerticalScrollRange()I
    .locals 4

    .prologue
    .line 3546
    iget v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemCount:I

    iget v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    div-int v1, v0, v1

    .line 3547
    mul-int/lit8 v0, v1, 0x64

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3549
    iget-boolean v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mSmoothScrollbarEnabled:Z

    if-eqz v2, :cond_1

    .line 3550
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    if-eqz v2, :cond_0

    .line 3552
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v1, v1

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 3559
    :cond_0
    :goto_0
    return v0

    .line 3556
    :cond_1
    iget v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemCount:I

    goto :goto_0
.end method

.method public final contentFits()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1186
    iget v4, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mFirstPosition:I

    if-nez v4, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    iget v5, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemCount:I

    if-eq v4, v5, :cond_1

    .line 1201
    :cond_0
    :goto_0
    return v3

    .line 1190
    :cond_1
    const v2, 0x7fffffff

    .line 1191
    .local v2, "topmost":I
    const/high16 v0, -0x80000000

    .line 1192
    .local v0, "bottommost":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v4, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    if-ge v1, v4, :cond_4

    .line 1193
    iget-object v4, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemTops:[I

    aget v4, v4, v1

    if-ge v4, v2, :cond_2

    .line 1194
    iget-object v4, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemTops:[I

    aget v2, v4, v1

    .line 1196
    :cond_2
    iget-object v4, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemBottoms:[I

    aget v4, v4, v1

    if-le v4, v0, :cond_3

    .line 1197
    iget-object v4, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemBottoms:[I

    aget v0, v4, v1

    .line 1192
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1201
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    if-lt v2, v4, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    if-gt v0, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v1, 0x1

    .line 1021
    invoke-direct {p0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->isDragReorderingSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1024
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v1

    .line 1067
    :goto_0
    return v1

    .line 1027
    :cond_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1067
    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v1

    goto :goto_0

    .line 1031
    :pswitch_1
    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mReorderHelper:Lcom/android/deskclock/widget/sgv/ReorderHelper;

    invoke-virtual {v2}, Lcom/android/deskclock/widget/sgv/ReorderHelper;->hasReorderListener()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mIsDragReorderingEnabled:Z

    if-eqz v2, :cond_1

    .line 1032
    iget v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTouchDownForDragStartX:I

    iget v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTouchDownForDragStartY:I

    invoke-direct {p0, v2, v3}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->getChildAtCoordinate(II)Landroid/view/View;

    move-result-object v0

    .line 1034
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1038
    iget v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTouchDownForDragStartX:I

    iget v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTouchDownForDragStartY:I

    invoke-direct {p0, v0, v2, v3}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->startDragging(Landroid/view/View;II)V

    goto :goto_0

    .line 1047
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1051
    :pswitch_2
    iget v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mDragState:I

    if-ne v2, v1, :cond_2

    .line 1052
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->handleDrop(II)V

    .line 1062
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v1

    goto :goto_0

    .line 1027
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 1451
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1453
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_1

    .line 1454
    const/4 v0, 0x0

    .line 1455
    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1456
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 1457
    invoke-virtual {p1, v5, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1458
    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    .line 1459
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    move v0, v1

    .line 1462
    :cond_0
    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1463
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 1464
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 1465
    neg-int v3, v2

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1466
    const/high16 v3, 0x43340000

    int-to-float v2, v2

    invoke-virtual {p1, v3, v2, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1467
    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    .line 1468
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1472
    :goto_0
    if-eqz v1, :cond_1

    .line 1473
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1476
    :cond_1
    return-void

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method final fillDown(II)I
    .locals 23

    .prologue
    .line 2669
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    .line 2670
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    .line 2671
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemMargin:I

    .line 2672
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, v7

    sub-int/2addr v2, v8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v3, v9

    sub-int/2addr v2, v3

    .line 2674
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    div-int v10, v2, v3

    .line 2677
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    rem-int v11, v2, v3

    .line 2678
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int v12, v2, v3

    .line 2679
    add-int v13, v12, p2

    .line 2680
    invoke-virtual/range {p0 .. p0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->getNextColumnDown()I

    move-result v5

    .line 2683
    :goto_0
    if-ltz v5, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemBottoms:[I

    aget v2, v2, v5

    if-ge v2, v13, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemCount:I

    move/from16 v0, p1

    if-ge v0, v2, :cond_12

    .line 2684
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->obtainView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v14

    .line 2685
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;

    .line 2686
    invoke-virtual {v14}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object/from16 v0, p0

    if-eq v3, v0, :cond_0

    .line 2687
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mInLayout:Z

    if-eqz v3, :cond_7

    .line 2688
    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3, v2}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 2694
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    iget v4, v2, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->span:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 2697
    const/4 v3, 0x1

    if-le v15, v3, :cond_8

    .line 2698
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->getNextRecordDown(II)Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;

    move-result-object v4

    .line 2699
    iget v5, v4, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->column:I

    .line 2704
    :goto_2
    const/4 v3, 0x0

    .line 2705
    if-nez v4, :cond_9

    .line 2706
    new-instance v4, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;-><init>(Lcom/android/deskclock/widget/sgv/StaggeredGridView$1;)V

    .line 2707
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    move/from16 v0, p1

    invoke-virtual {v6, v0, v4}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 2708
    iput v5, v4, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->column:I

    .line 2709
    iput v15, v4, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->span:I

    .line 2718
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mHasStableIds:Z

    if-eqz v6, :cond_1

    .line 2719
    iget-wide v0, v2, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v4, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->id:J

    .line 2722
    :cond_1
    iput v5, v2, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->column:I

    .line 2723
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->setReorderingArea(Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;)V

    .line 2726
    mul-int v6, v10, v15

    add-int/lit8 v16, v15, -0x1

    mul-int v16, v16, v9

    add-int v6, v6, v16

    .line 2730
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mIsRtlLayout:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2

    add-int/lit8 v16, v5, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mIsRtlLayout:Z

    move/from16 v16, v0

    if-nez v16, :cond_4

    add-int v16, v15, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    .line 2732
    :cond_3
    add-int/2addr v6, v11

    .line 2734
    :cond_4
    const/high16 v16, 0x40000000

    move/from16 v0, v16

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 2736
    iget v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v17, -0x2

    move/from16 v0, v17

    if-ne v6, v0, :cond_b

    .line 2737
    const/4 v6, 0x0

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 2741
    :goto_4
    move/from16 v0, v16

    invoke-virtual {v14, v0, v6}, Landroid/view/View;->measure(II)V

    .line 2743
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    .line 2744
    if-nez v3, :cond_5

    iget v3, v4, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->height:I

    move/from16 v0, v16

    if-eq v0, v3, :cond_6

    iget v3, v4, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->height:I

    if-lez v3, :cond_6

    .line 2745
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->invalidateLayoutRecordsAfterPosition(I)V

    .line 2748
    :cond_6
    move/from16 v0, v16

    iput v0, v4, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->height:I

    .line 2755
    const/4 v3, 0x0

    move v6, v3

    :goto_5
    if-ge v6, v15, :cond_d

    .line 2756
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mIsRtlLayout:Z

    if-eqz v3, :cond_c

    sub-int v3, v5, v6

    .line 2757
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v17, v0

    aget v18, v17, v3

    invoke-virtual {v4, v6}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->getMarginAbove(I)I

    move-result v19

    add-int v18, v18, v19

    aput v18, v17, v3

    .line 2755
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_5

    .line 2690
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 2701
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;

    move-object v4, v3

    goto/16 :goto_2

    .line 2710
    :cond_9
    iget v6, v4, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->span:I

    if-eq v15, v6, :cond_a

    .line 2711
    iput v15, v4, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->span:I

    .line 2712
    iput v5, v4, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->column:I

    .line 2713
    const/4 v3, 0x1

    goto/16 :goto_3

    .line 2715
    :cond_a
    iget v5, v4, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->column:I

    goto/16 :goto_3

    .line 2739
    :cond_b
    iget v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v17, 0x40000000

    move/from16 v0, v17

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_4

    .line 2756
    :cond_c
    add-int v3, v5, v6

    goto :goto_6

    .line 2760
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemBottoms:[I

    aget v3, v3, v5

    .line 2761
    add-int v17, v3, v9

    .line 2762
    add-int v18, v17, v16

    .line 2765
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mIsRtlLayout:Z

    if-eqz v3, :cond_e

    .line 2766
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v3, v8

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    sub-int/2addr v6, v5

    add-int/lit8 v6, v6, -0x1

    add-int v19, v10, v9

    mul-int v6, v6, v19

    sub-int/2addr v3, v6

    .line 2768
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int v6, v3, v6

    .line 2774
    :goto_7
    sget-object v19, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[fillDown] position: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " id: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-wide v0, v2, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->id:J

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " childLeft: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " childTop: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " column: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v4, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->column:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " childHeight:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2778
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v6, v0, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 2782
    const/4 v3, 0x0

    move v6, v3

    :goto_8
    if-ge v6, v15, :cond_10

    .line 2783
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mIsRtlLayout:Z

    if-eqz v3, :cond_f

    sub-int v3, v5, v6

    .line 2784
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v16, v0

    invoke-virtual {v4, v6}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->getMarginBelow(I)I

    move-result v17

    add-int v17, v17, v18

    aput v17, v16, v3

    .line 2782
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_8

    .line 2770
    :cond_e
    add-int v3, v10, v9

    mul-int/2addr v3, v5

    add-int v6, v7, v3

    .line 2771
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v6

    goto/16 :goto_7

    .line 2783
    :cond_f
    add-int v3, v5, v6

    goto :goto_9

    .line 2787
    :cond_10
    iget-wide v2, v2, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->id:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mFocusedChildIdToScrollIntoView:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_11

    .line 2788
    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    .line 2791
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->getNextColumnDown()I

    move-result v5

    .line 2792
    add-int/lit8 p1, p1, 0x1

    .line 2793
    goto/16 :goto_0

    .line 2795
    :cond_12
    const/4 v3, 0x0

    .line 2796
    const/4 v2, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    if-ge v2, v4, :cond_15

    .line 2797
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mIsRtlLayout:Z

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    add-int/lit8 v5, v2, 0x1

    sub-int/2addr v4, v5

    .line 2798
    :goto_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemBottoms:[I

    aget v5, v5, v4

    if-le v5, v3, :cond_13

    .line 2799
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemBottoms:[I

    aget v3, v3, v4

    .line 2796
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_14
    move v4, v2

    .line 2797
    goto :goto_b

    .line 2803
    :cond_15
    sub-int v2, v3, v12

    return v2
.end method

.method final fillUp(II)I
    .locals 22

    .prologue
    .line 2517
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    .line 2518
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    .line 2519
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemMargin:I

    .line 2520
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v3, v8

    sub-int/2addr v3, v9

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v4, v10

    sub-int/2addr v3, v4

    .line 2522
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    div-int v11, v3, v4

    .line 2525
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    rem-int v12, v3, v4

    .line 2526
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v13

    .line 2527
    move/from16 v0, p2

    neg-int v14, v0

    .line 2528
    invoke-virtual/range {p0 .. p0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->getNextColumnUp()I

    move-result v6

    .line 2531
    :goto_0
    if-ltz v6, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemTops:[I

    aget v3, v3, v6

    if-le v3, v14, :cond_12

    if-ltz p1, :cond_12

    .line 2532
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->obtainView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v15

    .line 2533
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;

    .line 2535
    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    move-object/from16 v0, p0

    if-eq v4, v0, :cond_0

    .line 2536
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mInLayout:Z

    if-eqz v4, :cond_7

    .line 2537
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v4, v3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 2543
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    iget v5, v3, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->span:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 2546
    const/4 v4, 0x1

    move/from16 v0, v16

    if-le v0, v4, :cond_8

    .line 2547
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->getNextRecordUp(II)Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;

    move-result-object v5

    .line 2548
    iget v6, v5, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->column:I

    .line 2553
    :goto_2
    const/4 v4, 0x0

    .line 2554
    if-nez v5, :cond_9

    .line 2555
    new-instance v5, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;-><init>(Lcom/android/deskclock/widget/sgv/StaggeredGridView$1;)V

    .line 2556
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    move/from16 v0, p1

    invoke-virtual {v7, v0, v5}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 2557
    iput v6, v5, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->column:I

    .line 2558
    move/from16 v0, v16

    iput v0, v5, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->span:I

    .line 2567
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mHasStableIds:Z

    if-eqz v7, :cond_1

    .line 2568
    iget-wide v0, v3, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->id:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    iput-wide v0, v5, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->id:J

    .line 2571
    :cond_1
    iput v6, v3, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->column:I

    .line 2572
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->setReorderingArea(Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;)V

    .line 2574
    mul-int v7, v11, v16

    add-int/lit8 v17, v16, -0x1

    mul-int v17, v17, v10

    add-int v7, v7, v17

    .line 2578
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mIsRtlLayout:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    add-int/lit8 v17, v6, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mIsRtlLayout:Z

    move/from16 v17, v0

    if-nez v17, :cond_4

    add-int v17, v16, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 2580
    :cond_3
    add-int/2addr v7, v12

    .line 2582
    :cond_4
    const/high16 v17, 0x40000000

    move/from16 v0, v17

    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    .line 2584
    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v18, -0x2

    move/from16 v0, v18

    if-ne v7, v0, :cond_b

    .line 2585
    const/4 v7, 0x0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 2589
    :goto_4
    move/from16 v0, v17

    invoke-virtual {v15, v0, v7}, Landroid/view/View;->measure(II)V

    .line 2591
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    .line 2592
    if-nez v4, :cond_5

    iget v4, v5, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->height:I

    move/from16 v0, v17

    if-eq v0, v4, :cond_6

    iget v4, v5, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->height:I

    if-lez v4, :cond_6

    .line 2593
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->invalidateLayoutRecordsBeforePosition(I)V

    .line 2595
    :cond_6
    move/from16 v0, v17

    iput v0, v5, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->height:I

    .line 2604
    const/4 v4, 0x0

    move v7, v4

    :goto_5
    move/from16 v0, v16

    if-ge v7, v0, :cond_d

    .line 2605
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mIsRtlLayout:Z

    if-eqz v4, :cond_c

    sub-int v4, v6, v7

    .line 2606
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemTops:[I

    move-object/from16 v18, v0

    aget v19, v18, v4

    invoke-virtual {v5, v7}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->getMarginBelow(I)I

    move-result v20

    add-int v19, v19, v20

    aput v19, v18, v4

    .line 2604
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_5

    .line 2539
    :cond_7
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto/16 :goto_1

    .line 2550
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;

    move-object v5, v4

    goto/16 :goto_2

    .line 2559
    :cond_9
    iget v7, v5, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->span:I

    move/from16 v0, v16

    if-eq v0, v7, :cond_a

    .line 2560
    move/from16 v0, v16

    iput v0, v5, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->span:I

    .line 2561
    iput v6, v5, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->column:I

    .line 2562
    const/4 v4, 0x1

    goto/16 :goto_3

    .line 2564
    :cond_a
    iget v6, v5, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->column:I

    goto/16 :goto_3

    .line 2587
    :cond_b
    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v18, 0x40000000

    move/from16 v0, v18

    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_4

    .line 2605
    :cond_c
    add-int v4, v6, v7

    goto :goto_6

    .line 2609
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemTops:[I

    aget v18, v4, v6

    .line 2611
    sub-int v19, v18, v17

    .line 2620
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mIsRtlLayout:Z

    if-eqz v4, :cond_e

    .line 2621
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v4, v9

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    sub-int/2addr v7, v6

    add-int/lit8 v7, v7, -0x1

    add-int v20, v11, v10

    mul-int v7, v7, v20

    sub-int/2addr v4, v7

    .line 2623
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int v7, v4, v7

    .line 2628
    :goto_7
    move/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v15, v7, v0, v4, v1}, Landroid/view/View;->layout(IIII)V

    .line 2630
    sget-object v4, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[fillUp] position: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " id: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-wide v0, v3, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->id:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " childLeft: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v18, " childTop: "

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v18, " column: "

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v0, v5, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->column:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v18, " childHeight:"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2639
    const/4 v4, 0x0

    move v7, v4

    :goto_8
    move/from16 v0, v16

    if-ge v7, v0, :cond_10

    .line 2640
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mIsRtlLayout:Z

    if-eqz v4, :cond_f

    sub-int v4, v6, v7

    .line 2641
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemTops:[I

    move-object/from16 v17, v0

    invoke-virtual {v5, v7}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->getMarginAbove(I)I

    move-result v18

    sub-int v18, v19, v18

    sub-int v18, v18, v10

    aput v18, v17, v4

    .line 2639
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_8

    .line 2625
    :cond_e
    add-int v4, v11, v10

    mul-int/2addr v4, v6

    add-int v7, v8, v4

    .line 2626
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v7

    goto/16 :goto_7

    .line 2640
    :cond_f
    add-int v4, v6, v7

    goto :goto_9

    .line 2644
    :cond_10
    iget-wide v3, v3, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->id:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mFocusedChildIdToScrollIntoView:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_11

    .line 2645
    invoke-virtual {v15}, Landroid/view/View;->requestFocus()Z

    .line 2648
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->getNextColumnUp()I

    move-result v6

    .line 2649
    add-int/lit8 v3, p1, -0x1

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mFirstPosition:I

    move/from16 p1, v3

    .line 2650
    goto/16 :goto_0

    .line 2652
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 2653
    const/4 v3, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    if-ge v3, v5, :cond_14

    .line 2654
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemTops:[I

    aget v5, v5, v3

    if-ge v5, v4, :cond_13

    .line 2655
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemTops:[I

    aget v4, v4, v3

    .line 2653
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 2658
    :cond_14
    sub-int v3, v13, v4

    return v3
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->generateDefaultLayoutParams()Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;
    .locals 2

    .prologue
    .line 3625
    new-instance v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;-><init>(I)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 3640
    new-instance v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 3630
    new-instance v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method final getNextColumnDown()I
    .locals 7

    .prologue
    .line 2899
    const v5, 0x7fffffff

    .line 2900
    .local v5, "topMost":I
    const/4 v4, 0x0

    .line 2901
    .local v4, "result":I
    iget v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    .line 2903
    .local v1, "colCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 2904
    iget-boolean v6, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mIsRtlLayout:Z

    if-eqz v6, :cond_1

    add-int/lit8 v6, v2, 0x1

    sub-int v3, v1, v6

    .line 2905
    .local v3, "index":I
    :goto_1
    iget-object v6, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemBottoms:[I

    aget v0, v6, v3

    .line 2906
    .local v0, "bottom":I
    if-ge v0, v5, :cond_0

    .line 2907
    move v5, v0

    .line 2908
    move v4, v3

    .line 2903
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "bottom":I
    .end local v3    # "index":I
    :cond_1
    move v3, v2

    .line 2904
    goto :goto_1

    .line 2912
    :cond_2
    return v4
.end method

.method final getNextColumnUp()I
    .locals 7

    .prologue
    .line 2811
    const/4 v4, -0x1

    .line 2812
    .local v4, "result":I
    const/high16 v0, -0x80000000

    .line 2814
    .local v0, "bottomMost":I
    iget v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    .line 2815
    .local v1, "colCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 2816
    iget-boolean v6, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mIsRtlLayout:Z

    if-eqz v6, :cond_1

    add-int/lit8 v6, v2, 0x1

    sub-int v3, v1, v6

    .line 2817
    .local v3, "index":I
    :goto_1
    iget-object v6, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemTops:[I

    aget v5, v6, v3

    .line 2818
    .local v5, "top":I
    if-le v5, v0, :cond_0

    .line 2819
    move v0, v5

    .line 2820
    move v4, v3

    .line 2815
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .end local v3    # "index":I
    .end local v5    # "top":I
    :cond_1
    move v3, v2

    .line 2816
    goto :goto_1

    .line 2824
    :cond_2
    return v4
.end method

.method final getNextRecordDown(II)Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/high16 v8, -0x80000000

    .line 2916
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;

    .line 2917
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->span:I

    if-eq v1, p2, :cond_2

    .line 2918
    :cond_0
    iget v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    if-le p2, v0, :cond_1

    .line 2919
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Span larger than column count! Span:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ColumnCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2923
    :cond_1
    new-instance v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;-><init>(Lcom/android/deskclock/widget/sgv/StaggeredGridView$1;)V

    .line 2924
    iput p2, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->span:I

    .line 2925
    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 2928
    :cond_2
    const/4 v5, -0x1

    .line 2929
    const v3, 0x7fffffff

    .line 2931
    iget v9, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    .line 2936
    iget-boolean v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mIsRtlLayout:Z

    if-eqz v1, :cond_4

    .line 2937
    add-int/lit8 v4, v9, -0x1

    :goto_0
    add-int/lit8 v1, p2, -0x1

    if-lt v4, v1, :cond_6

    move v7, v4

    move v2, v8

    .line 2939
    :goto_1
    sub-int v1, v4, p2

    if-le v7, v1, :cond_3

    .line 2940
    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemBottoms:[I

    aget v1, v1, v7

    .line 2941
    if-le v1, v2, :cond_c

    .line 2939
    :goto_2
    add-int/lit8 v2, v7, -0x1

    move v7, v2

    move v2, v1

    goto :goto_1

    .line 2945
    :cond_3
    if-ge v2, v3, :cond_b

    move v1, v4

    .line 2937
    :goto_3
    add-int/lit8 v4, v4, -0x1

    move v3, v2

    move v5, v1

    goto :goto_0

    :cond_4
    move v4, v6

    .line 2951
    :goto_4
    sub-int v1, v9, p2

    if-gt v4, v1, :cond_6

    move v7, v4

    move v2, v8

    .line 2953
    :goto_5
    add-int v1, v4, p2

    if-ge v7, v1, :cond_5

    .line 2954
    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemBottoms:[I

    aget v1, v1, v7

    .line 2955
    if-le v1, v2, :cond_a

    .line 2953
    :goto_6
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    move v2, v1

    goto :goto_5

    .line 2959
    :cond_5
    if-ge v2, v3, :cond_9

    move v1, v4

    .line 2951
    :goto_7
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    move v5, v1

    goto :goto_4

    .line 2966
    :cond_6
    iput v5, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->column:I

    move v2, v6

    .line 2972
    :goto_8
    if-ge v2, p2, :cond_8

    .line 2973
    iget-boolean v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mIsRtlLayout:Z

    if-eqz v1, :cond_7

    sub-int v1, v5, v2

    .line 2974
    :goto_9
    iget-object v4, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemBottoms:[I

    aget v1, v4, v1

    sub-int v1, v3, v1

    invoke-virtual {v0, v2, v1}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->setMarginAbove(II)V

    .line 2972
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_8

    .line 2973
    :cond_7
    add-int v1, v5, v2

    goto :goto_9

    .line 2977
    :cond_8
    return-object v0

    :cond_9
    move v2, v3

    move v1, v5

    goto :goto_7

    :cond_a
    move v1, v2

    goto :goto_6

    :cond_b
    move v2, v3

    move v1, v5

    goto :goto_3

    :cond_c
    move v1, v2

    goto :goto_2
.end method

.method final getNextRecordUp(II)Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;
    .locals 9

    .prologue
    const v7, 0x7fffffff

    .line 2834
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;

    .line 2835
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->span:I

    if-eq v1, p2, :cond_2

    .line 2836
    :cond_0
    iget v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    if-le p2, v0, :cond_1

    .line 2837
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Span larger than column count! Span:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ColumnCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2840
    :cond_1
    new-instance v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;-><init>(Lcom/android/deskclock/widget/sgv/StaggeredGridView$1;)V

    .line 2841
    iput p2, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->span:I

    .line 2842
    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 2844
    :cond_2
    const/4 v5, -0x1

    .line 2845
    const/high16 v3, -0x80000000

    .line 2849
    iget v8, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    .line 2850
    iget-boolean v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mIsRtlLayout:Z

    if-eqz v1, :cond_4

    .line 2851
    add-int/lit8 v4, p2, -0x1

    :goto_0
    if-ge v4, v8, :cond_6

    move v6, v4

    move v2, v7

    .line 2853
    :goto_1
    sub-int v1, v4, p2

    if-le v6, v1, :cond_3

    .line 2854
    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemTops:[I

    aget v1, v1, v6

    .line 2855
    if-ge v1, v2, :cond_c

    .line 2853
    :goto_2
    add-int/lit8 v2, v6, -0x1

    move v6, v2

    move v2, v1

    goto :goto_1

    .line 2859
    :cond_3
    if-le v2, v3, :cond_b

    move v1, v4

    .line 2851
    :goto_3
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    move v5, v1

    goto :goto_0

    .line 2865
    :cond_4
    sub-int v4, v8, p2

    :goto_4
    if-ltz v4, :cond_6

    move v6, v4

    move v2, v7

    .line 2867
    :goto_5
    add-int v1, v4, p2

    if-ge v6, v1, :cond_5

    .line 2868
    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemTops:[I

    aget v1, v1, v6

    .line 2869
    if-ge v1, v2, :cond_a

    .line 2867
    :goto_6
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v2, v1

    goto :goto_5

    .line 2873
    :cond_5
    if-le v2, v3, :cond_9

    move v1, v4

    .line 2865
    :goto_7
    add-int/lit8 v4, v4, -0x1

    move v3, v2

    move v5, v1

    goto :goto_4

    .line 2880
    :cond_6
    iput v5, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->column:I

    .line 2886
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, p2, :cond_8

    .line 2887
    iget-boolean v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mIsRtlLayout:Z

    if-eqz v1, :cond_7

    sub-int v1, v5, v2

    .line 2888
    :goto_9
    iget-object v4, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemTops:[I

    aget v1, v4, v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->setMarginBelow(II)V

    .line 2886
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_8

    .line 2887
    :cond_7
    add-int v1, v5, v2

    goto :goto_9

    .line 2891
    :cond_8
    return-object v0

    :cond_9
    move v2, v3

    move v1, v5

    goto :goto_7

    :cond_a
    move v1, v2

    goto :goto_6

    :cond_b
    move v2, v3

    move v1, v5

    goto :goto_3

    :cond_c
    move v1, v2

    goto :goto_2
.end method

.method public getScrollState()Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;
    .locals 7

    .prologue
    .line 3322
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3323
    .local v2, "v":Landroid/view/View;
    if-nez v2, :cond_0

    .line 3324
    const/4 v3, 0x0

    .line 3331
    :goto_0
    return-object v3

    .line 3327
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;

    .line 3330
    .local v0, "lp":Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;
    iget v3, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->position:I

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int v1, v3, v4

    .line 3331
    .local v1, "offset":I
    :goto_1
    new-instance v3, Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;

    iget-wide v4, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->id:J

    iget v6, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->position:I

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;-><init>(JII)V

    goto :goto_0

    .line 3330
    .end local v1    # "offset":I
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_1
.end method

.method final invalidateLayoutRecordsAfterPosition(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 2464
    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 2465
    .local v0, "beginAt":I
    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v1

    if-le v1, p1, :cond_0

    .line 2466
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2468
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 2469
    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/SparseArrayCompat;->removeAtRange(II)V

    .line 2470
    return-void
.end method

.method final invalidateLayoutRecordsBeforePosition(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 2456
    const/4 v0, 0x0

    .line 2457
    .local v0, "endAt":I
    :goto_0
    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v1

    if-ge v1, p1, :cond_0

    .line 2458
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2460
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/util/SparseArrayCompat;->removeAtRange(II)V

    .line 2461
    return-void
.end method

.method public isChildReorderable(I)Z
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 830
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mAdapter:Lcom/android/deskclock/widget/sgv/GridAdapter;

    iget v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mFirstPosition:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/android/deskclock/widget/sgv/GridAdapter;->isDraggable(I)Z

    move-result v0

    return v0
.end method

.method final layoutChildren(Z)V
    .locals 23

    .prologue
    .line 2222
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    .line 2223
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v12

    .line 2224
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemMargin:I

    .line 2225
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, v11

    sub-int/2addr v2, v12

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v3, v13

    sub-int/2addr v2, v3

    .line 2227
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    div-int v14, v2, v3

    .line 2230
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    rem-int v15, v2, v3

    .line 2232
    const/4 v2, 0x0

    .line 2235
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mAnimationOutMode:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;

    sget-object v4, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;->NONE:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;

    if-eq v3, v4, :cond_2

    const/4 v3, 0x1

    move v10, v3

    .line 2237
    :goto_0
    if-nez v10, :cond_4

    .line 2238
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 2242
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemCount:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mFirstPosition:I

    if-gt v3, v5, :cond_3

    const/4 v3, 0x0

    .line 2245
    :goto_1
    if-le v4, v3, :cond_0

    .line 2248
    add-int/lit8 v2, v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->recycleViewsInRange(II)V

    .line 2249
    const/4 v2, 0x1

    .line 2255
    :cond_0
    :goto_2
    const/4 v3, 0x0

    move v4, v2

    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v3, v2, :cond_1c

    .line 2256
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mFirstPosition:I

    add-int v16, v2, v3

    .line 2257
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemBottoms:[I

    invoke-virtual/range {p0 .. p0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->getNextColumnDown()I

    move-result v5

    aget v2, v2, v5

    .line 2260
    if-eqz v10, :cond_5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemCount:I

    move/from16 v0, v16

    if-ge v0, v5, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    if-lt v2, v5, :cond_5

    .line 2266
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mViewsToAnimateOut:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2255
    :goto_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    .line 2235
    :cond_2
    const/4 v3, 0x0

    move v10, v3

    goto :goto_0

    .line 2242
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemCount:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mFirstPosition:I

    sub-int/2addr v3, v5

    goto :goto_1

    .line 2252
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mViewsToAnimateOut:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_2

    .line 2270
    :cond_5
    const/4 v5, 0x0

    .line 2271
    const/4 v2, -0x1

    .line 2273
    if-eqz v6, :cond_6

    .line 2274
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;

    .line 2275
    iget v5, v2, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->column:I

    move/from16 v22, v5

    move-object v5, v2

    move/from16 v2, v22

    .line 2278
    :cond_6
    if-nez p1, :cond_7

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/view/View;->isLayoutRequested()Z

    move-result v7

    if-eqz v7, :cond_10

    :cond_7
    const/4 v7, 0x1

    move v8, v7

    .line 2279
    :goto_5
    if-eqz p1, :cond_20

    .line 2281
    if-eqz v10, :cond_11

    .line 2286
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->obtainView(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    .line 2292
    :goto_6
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;

    .line 2294
    if-eq v5, v6, :cond_9

    .line 2295
    if-eqz v6, :cond_8

    if-nez v10, :cond_8

    .line 2296
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mRecycler:Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;

    invoke-virtual {v4, v6}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;->addScrap(Landroid/view/View;)V

    .line 2297
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 2298
    const/4 v4, 0x1

    .line 2304
    :cond_8
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    move-object/from16 v0, p0

    if-ne v6, v0, :cond_12

    .line 2305
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->detachViewFromParent(Landroid/view/View;)V

    .line 2306
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v2}, Landroid/view/ViewGroup;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2318
    :cond_9
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->getNextColumnDown()I

    move-result v6

    iput v6, v2, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->column:I

    .line 2319
    iget v6, v2, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->column:I

    move/from16 v22, v6

    move v6, v4

    move-object v4, v2

    move/from16 v2, v22

    .line 2322
    :goto_8
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->setReorderingArea(Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;)V

    .line 2324
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    iget v9, v4, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->span:I

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 2328
    const/4 v7, 0x1

    move/from16 v0, v17

    if-le v0, v7, :cond_b

    .line 2329
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mIsRtlLayout:Z

    if-eqz v7, :cond_13

    .line 2337
    add-int/lit8 v7, v2, 0x1

    move/from16 v0, v17

    if-ge v7, v0, :cond_a

    .line 2338
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    add-int/lit8 v2, v2, -0x1

    .line 2347
    :cond_a
    :goto_9
    iput v2, v4, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->column:I

    .line 2350
    :cond_b
    mul-int v7, v14, v17

    add-int/lit8 v9, v17, -0x1

    mul-int/2addr v9, v13

    add-int/2addr v7, v9

    .line 2354
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mIsRtlLayout:Z

    if-eqz v9, :cond_c

    add-int/lit8 v9, v2, 0x1

    move/from16 v0, v17

    if-eq v0, v9, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mIsRtlLayout:Z

    if-nez v9, :cond_e

    add-int v9, v17, v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v9, v0, :cond_e

    .line 2356
    :cond_d
    add-int/2addr v7, v15

    .line 2358
    :cond_e
    if-eqz v8, :cond_f

    .line 2359
    const/high16 v8, 0x40000000

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 2362
    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v9, -0x2

    if-ne v7, v9, :cond_14

    .line 2363
    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 2368
    :goto_a
    invoke-virtual {v5, v8, v7}, Landroid/view/View;->measure(II)V

    .line 2377
    :cond_f
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemBottoms:[I

    aget v7, v7, v2

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemMargin:I

    add-int/2addr v8, v7

    .line 2378
    const/4 v7, 0x1

    move/from16 v0, v17

    if-le v0, v7, :cond_16

    .line 2380
    const/4 v7, 0x0

    move v9, v7

    :goto_b
    move/from16 v0, v17

    if-ge v9, v0, :cond_16

    .line 2381
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mIsRtlLayout:Z

    if-eqz v7, :cond_15

    sub-int v7, v2, v9

    .line 2382
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v18, v0

    aget v7, v18, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemMargin:I

    move/from16 v18, v0

    add-int v7, v7, v18

    .line 2383
    if-le v7, v8, :cond_1f

    .line 2380
    :goto_d
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    move v8, v7

    goto :goto_b

    .line 2278
    :cond_10
    const/4 v7, 0x0

    move v8, v7

    goto/16 :goto_5

    .line 2288
    :cond_11
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v6}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->obtainView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    goto/16 :goto_6

    .line 2308
    :cond_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v2}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto/16 :goto_7

    .line 2341
    :cond_13
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    sub-int/2addr v7, v2

    move/from16 v0, v17

    if-ge v7, v0, :cond_a

    .line 2343
    const/4 v2, 0x0

    goto/16 :goto_9

    .line 2365
    :cond_14
    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v9, 0x40000000

    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_a

    .line 2381
    :cond_15
    add-int v7, v2, v9

    goto :goto_c

    .line 2391
    :cond_16
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    .line 2392
    add-int v19, v8, v18

    .line 2395
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mIsRtlLayout:Z

    if-eqz v7, :cond_18

    .line 2396
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v7, v12

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    sub-int/2addr v9, v2

    add-int/lit8 v9, v9, -0x1

    add-int v20, v14, v13

    mul-int v9, v9, v20

    sub-int/2addr v7, v9

    .line 2398
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int v9, v7, v9

    .line 2411
    :goto_e
    move/from16 v0, v19

    invoke-virtual {v5, v9, v8, v7, v0}, Landroid/view/View;->layout(IIII)V

    .line 2412
    iget-wide v7, v4, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->id:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mFocusedChildIdToScrollIntoView:J

    move-wide/from16 v20, v0

    cmp-long v7, v7, v20

    if-nez v7, :cond_17

    .line 2413
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 2416
    :cond_17
    const/4 v5, 0x0

    move v7, v5

    :goto_f
    move/from16 v0, v17

    if-ge v7, v0, :cond_1a

    .line 2417
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mIsRtlLayout:Z

    if-eqz v5, :cond_19

    sub-int v5, v2, v7

    .line 2418
    :goto_10
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemBottoms:[I

    aput v19, v8, v5

    .line 2416
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_f

    .line 2400
    :cond_18
    add-int v7, v14, v13

    mul-int/2addr v7, v2

    add-int v9, v11, v7

    .line 2401
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v9

    goto :goto_e

    .line 2417
    :cond_19
    add-int v5, v2, v7

    goto :goto_10

    .line 2427
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;

    .line 2428
    if-nez v2, :cond_1b

    .line 2429
    new-instance v2, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;-><init>(Lcom/android/deskclock/widget/sgv/StaggeredGridView$1;)V

    .line 2430
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    move/from16 v0, v16

    invoke-virtual {v5, v0, v2}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 2433
    :cond_1b
    iget v5, v4, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->column:I

    iput v5, v2, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->column:I

    .line 2434
    move/from16 v0, v18

    iput v0, v2, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->height:I

    .line 2435
    iget-wide v4, v4, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->id:J

    iput-wide v4, v2, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->id:J

    .line 2436
    move/from16 v0, v17

    iput v0, v2, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutRecord;->span:I

    move v4, v6

    goto/16 :goto_4

    .line 2441
    :cond_1c
    if-nez v4, :cond_1d

    if-eqz v10, :cond_1e

    .line 2442
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 2444
    :cond_1e
    return-void

    :cond_1f
    move v7, v8

    goto/16 :goto_d

    :cond_20
    move-object/from16 v22, v5

    move-object v5, v6

    move v6, v4

    move-object/from16 v4, v22

    goto/16 :goto_8
.end method

.method final obtainView(I)Landroid/view/View;
    .locals 18
    .param p1, "position"    # I

    .prologue
    .line 3004
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mAdapter:Lcom/android/deskclock/widget/sgv/GridAdapter;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 3006
    .local v2, "item":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 3007
    .local v4, "scrap":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mAdapter:Lcom/android/deskclock/widget/sgv/GridAdapter;

    move/from16 v0, p1

    invoke-virtual {v1, v2, v0}, Lcom/android/deskclock/widget/sgv/GridAdapter;->getItemViewType(Ljava/lang/Object;I)I

    move-result v11

    .line 3009
    .local v11, "positionViewType":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mAdapter:Lcom/android/deskclock/widget/sgv/GridAdapter;

    move/from16 v0, p1

    invoke-virtual {v1, v2, v0}, Lcom/android/deskclock/widget/sgv/GridAdapter;->getItemId(Ljava/lang/Object;I)J

    move-result-wide v7

    .line 3010
    .local v7, "id":J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mChildRectsForAnimation:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/deskclock/widget/sgv/StaggeredGridView$ViewRectPair;

    .line 3011
    .local v15, "viewRectPair":Lcom/android/deskclock/widget/sgv/StaggeredGridView$ViewRectPair;
    if-eqz v15, :cond_0

    .line 3012
    iget-object v4, v15, Lcom/android/deskclock/widget/sgv/StaggeredGridView$ViewRectPair;->view:Landroid/view/View;

    .line 3021
    :cond_0
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;

    if-eqz v1, :cond_7

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;

    iget v12, v1, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->viewType:I

    .line 3025
    .local v12, "scrapViewType":I
    :goto_0
    if-eqz v4, :cond_1

    if-eq v12, v11, :cond_3

    .line 3029
    :cond_1
    if-eqz v4, :cond_2

    .line 3032
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->recycleView(Landroid/view/View;)V

    .line 3035
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mRecycler:Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;

    invoke-virtual {v1, v11}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v4

    .line 3038
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mAdapter:Lcom/android/deskclock/widget/sgv/GridAdapter;

    move/from16 v0, p1

    invoke-virtual {v1, v2, v0}, Lcom/android/deskclock/widget/sgv/GridAdapter;->getItemColumnSpan(Ljava/lang/Object;I)I

    move-result v9

    .line 3039
    .local v9, "itemColumnSpan":I
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->getItemWidth(I)I

    move-result v6

    .line 3040
    .local v6, "itemWidth":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mAdapter:Lcom/android/deskclock/widget/sgv/GridAdapter;

    move/from16 v3, p1

    move-object/from16 v5, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/deskclock/widget/sgv/GridAdapter;->getView(Ljava/lang/Object;ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v14

    .line 3042
    .local v14, "view":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 3043
    .local v10, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v14}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object/from16 v0, p0

    if-eq v1, v0, :cond_5

    .line 3044
    if-nez v10, :cond_8

    .line 3045
    invoke-virtual/range {p0 .. p0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->generateDefaultLayoutParams()Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;

    move-result-object v10

    .line 3050
    :cond_4
    :goto_1
    invoke-virtual {v14, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3053
    :cond_5
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;

    .line 3054
    .local v13, "sglp":Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;
    move/from16 v0, p1

    iput v0, v13, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->position:I

    .line 3055
    iput v11, v13, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->viewType:I

    .line 3056
    iput-wide v7, v13, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->id:J

    .line 3057
    iput v9, v13, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->span:I

    .line 3063
    invoke-direct/range {p0 .. p0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->isDragReorderingSupported()Z

    move-result v1

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mReorderHelper:Lcom/android/deskclock/widget/sgv/ReorderHelper;

    invoke-virtual {v1}, Lcom/android/deskclock/widget/sgv/ReorderHelper;->getDraggedChildId()J

    move-result-wide v16

    cmp-long v1, v16, v7

    if-nez v1, :cond_6

    .line 3064
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mReorderHelper:Lcom/android/deskclock/widget/sgv/ReorderHelper;

    invoke-virtual {v1, v14}, Lcom/android/deskclock/widget/sgv/ReorderHelper;->updateDraggedChildView(Landroid/view/View;)V

    .line 3065
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mReorderHelper:Lcom/android/deskclock/widget/sgv/ReorderHelper;

    invoke-virtual {v1, v14}, Lcom/android/deskclock/widget/sgv/ReorderHelper;->updateDraggedOverChildView(Landroid/view/View;)V

    .line 3067
    :cond_6
    return-object v14

    .line 3021
    .end local v6    # "itemWidth":I
    .end local v9    # "itemColumnSpan":I
    .end local v10    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v12    # "scrapViewType":I
    .end local v13    # "sglp":Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;
    .end local v14    # "view":Landroid/view/View;
    :cond_7
    const/4 v12, -0x1

    goto :goto_0

    .line 3046
    .restart local v6    # "itemWidth":I
    .restart local v9    # "itemColumnSpan":I
    .restart local v10    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v12    # "scrapViewType":I
    .restart local v14    # "view":Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 3047
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;

    move-result-object v10

    goto :goto_1
.end method

.method final obtainView(ILandroid/view/View;)Landroid/view/View;
    .locals 17
    .param p1, "position"    # I
    .param p2, "optScrap"    # Landroid/view/View;

    .prologue
    .line 3079
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mRecycler:Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    move-result-object v14

    .line 3080
    .local v14, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mAdapter:Lcom/android/deskclock/widget/sgv/GridAdapter;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 3081
    .local v2, "item":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mAdapter:Lcom/android/deskclock/widget/sgv/GridAdapter;

    move/from16 v0, p1

    invoke-virtual {v1, v2, v0}, Lcom/android/deskclock/widget/sgv/GridAdapter;->getItemViewType(Ljava/lang/Object;I)I

    move-result v12

    .line 3083
    .local v12, "positionViewType":I
    if-nez v14, :cond_2

    .line 3085
    if-eqz p2, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;

    iget v11, v1, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->viewType:I

    .line 3088
    .local v11, "optType":I
    :goto_0
    if-ne v11, v12, :cond_5

    move-object/from16 v4, p2

    .line 3091
    .local v4, "scrap":Landroid/view/View;
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mAdapter:Lcom/android/deskclock/widget/sgv/GridAdapter;

    move/from16 v0, p1

    invoke-virtual {v1, v2, v0}, Lcom/android/deskclock/widget/sgv/GridAdapter;->getItemColumnSpan(Ljava/lang/Object;I)I

    move-result v9

    .line 3092
    .local v9, "itemColumnSpan":I
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->getItemWidth(I)I

    move-result v6

    .line 3093
    .local v6, "itemWidth":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mAdapter:Lcom/android/deskclock/widget/sgv/GridAdapter;

    move/from16 v3, p1

    move-object/from16 v5, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/deskclock/widget/sgv/GridAdapter;->getView(Ljava/lang/Object;ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v14

    .line 3095
    if-eq v14, v4, :cond_0

    if-eqz v4, :cond_0

    .line 3097
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mRecycler:Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;

    invoke-virtual {v1, v4}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;->addScrap(Landroid/view/View;)V

    .line 3100
    :cond_0
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 3102
    .local v10, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v14}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object/from16 v0, p0

    if-eq v1, v0, :cond_2

    .line 3103
    if-nez v10, :cond_6

    .line 3104
    invoke-virtual/range {p0 .. p0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->generateDefaultLayoutParams()Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;

    move-result-object v10

    .line 3109
    :cond_1
    :goto_2
    invoke-virtual {v14, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3113
    .end local v4    # "scrap":Landroid/view/View;
    .end local v6    # "itemWidth":I
    .end local v9    # "itemColumnSpan":I
    .end local v10    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v11    # "optType":I
    :cond_2
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;

    .line 3114
    .local v13, "sglp":Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;
    move/from16 v0, p1

    iput v0, v13, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->position:I

    .line 3115
    iput v12, v13, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->viewType:I

    .line 3116
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mAdapter:Lcom/android/deskclock/widget/sgv/GridAdapter;

    move/from16 v0, p1

    invoke-virtual {v1, v14, v0}, Lcom/android/deskclock/widget/sgv/GridAdapter;->getItemIdFromView(Landroid/view/View;I)J

    move-result-wide v7

    .line 3117
    .local v7, "id":J
    iput-wide v7, v13, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->id:J

    .line 3118
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mAdapter:Lcom/android/deskclock/widget/sgv/GridAdapter;

    move/from16 v0, p1

    invoke-virtual {v1, v2, v0}, Lcom/android/deskclock/widget/sgv/GridAdapter;->getItemColumnSpan(Ljava/lang/Object;I)I

    move-result v1

    iput v1, v13, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->span:I

    .line 3124
    invoke-direct/range {p0 .. p0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->isDragReorderingSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mReorderHelper:Lcom/android/deskclock/widget/sgv/ReorderHelper;

    invoke-virtual {v1}, Lcom/android/deskclock/widget/sgv/ReorderHelper;->getDraggedChildId()J

    move-result-wide v15

    cmp-long v1, v15, v7

    if-nez v1, :cond_3

    .line 3125
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mReorderHelper:Lcom/android/deskclock/widget/sgv/ReorderHelper;

    invoke-virtual {v1, v14}, Lcom/android/deskclock/widget/sgv/ReorderHelper;->updateDraggedChildView(Landroid/view/View;)V

    .line 3126
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mReorderHelper:Lcom/android/deskclock/widget/sgv/ReorderHelper;

    invoke-virtual {v1, v14}, Lcom/android/deskclock/widget/sgv/ReorderHelper;->updateDraggedOverChildView(Landroid/view/View;)V

    .line 3129
    :cond_3
    return-object v14

    .line 3085
    .end local v7    # "id":J
    .end local v13    # "sglp":Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;
    :cond_4
    const/4 v11, -0x1

    goto/16 :goto_0

    .line 3088
    .restart local v11    # "optType":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mRecycler:Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;

    invoke-virtual {v1, v12}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v4

    goto/16 :goto_1

    .line 3105
    .restart local v4    # "scrap":Landroid/view/View;
    .restart local v6    # "itemWidth":I
    .restart local v9    # "itemColumnSpan":I
    .restart local v10    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3106
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;

    move-result-object v10

    goto :goto_2
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/DragEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1072
    invoke-direct {p0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->isDragReorderingSupported()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1124
    :goto_0
    return v2

    .line 1078
    :cond_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v4

    float-to-int v0, v4

    .line 1079
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v4

    float-to-int v1, v4

    .line 1081
    .local v1, "y":I
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 1083
    :pswitch_0
    iget v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mDragState:I

    if-ne v2, v3, :cond_1

    .line 1084
    invoke-direct {p0, v0, v1}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->handleDrag(II)V

    .line 1085
    int-to-float v2, v1

    iput v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mLastTouchY:F

    .line 1090
    :cond_1
    iget-boolean v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mIsDragScrollerRunning:Z

    if-nez v2, :cond_4

    iget v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTouchDownForDragStartX:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v4, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTouchSlop:I

    mul-int/lit8 v4, v4, 0x4

    if-ge v2, v4, :cond_2

    iget v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTouchDownForDragStartY:I

    sub-int v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v4, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTouchSlop:I

    mul-int/lit8 v4, v4, 0x4

    if-lt v2, v4, :cond_4

    .line 1095
    :cond_2
    iput-boolean v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mIsDragScrollerRunning:Z

    .line 1097
    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mScrollHandler:Landroid/os/Handler;

    if-nez v2, :cond_3

    .line 1098
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mScrollHandler:Landroid/os/Handler;

    .line 1100
    :cond_3
    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mScrollHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mDragScroller:Ljava/lang/Runnable;

    const-wide/16 v5, 0x5

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    move v2, v3

    .line 1103
    goto :goto_0

    .line 1115
    :pswitch_1
    iget-object v4, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mScrollHandler:Landroid/os/Handler;

    if-eqz v4, :cond_5

    .line 1116
    iget-object v4, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mScrollHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mDragScroller:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1118
    iput-boolean v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mIsDragScrollerRunning:Z

    :cond_5
    move v2, v3

    .line 1121
    goto :goto_0

    .line 1081
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 896
    iget-object v7, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 897
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    and-int/lit16 v0, v7, 0xff

    .line 898
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v5, v6

    .line 941
    :goto_0
    return v5

    .line 900
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mOffsetToAbsoluteX:I

    .line 901
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mOffsetToAbsoluteY:I

    .line 906
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTouchDownForDragStartX:I

    .line 907
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTouchDownForDragStartY:I

    .line 909
    iget-object v7, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->clear()V

    .line 910
    iget-object v7, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mScroller:Lcom/android/deskclock/widget/sgv/OverScrollerSGV;

    invoke-virtual {v7}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->abortAnimation()V

    .line 911
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mLastTouchY:F

    .line 912
    invoke-static {p1, v6}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    iput v7, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mActivePointerId:I

    .line 913
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTouchRemainderY:F

    .line 914
    iget v7, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTouchMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 916
    iput v5, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTouchMode:I

    goto :goto_0

    .line 922
    :pswitch_2
    iget v7, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mActivePointerId:I

    invoke-static {p1, v7}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 923
    .local v3, "index":I
    if-gez v3, :cond_1

    .line 924
    sget-object v5, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onInterceptTouchEvent could not find pointer with id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mActivePointerId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - did StaggeredGridView receive an inconsistent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "event stream?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 927
    goto :goto_0

    .line 929
    :cond_1
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 930
    .local v4, "y":F
    iget v7, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mLastTouchY:F

    sub-float v7, v4, v7

    iget v8, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTouchRemainderY:F

    add-float v2, v7, v8

    .line 931
    .local v2, "dy":F
    float-to-int v1, v2

    .line 932
    .local v1, "deltaY":I
    int-to-float v7, v1

    sub-float v7, v2, v7

    iput v7, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTouchRemainderY:F

    .line 934
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTouchSlop:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    .line 935
    iput v5, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTouchMode:I

    goto/16 :goto_0

    .line 898
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1568
    invoke-direct {p0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->isLayoutRtl()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mIsRtlLayout:Z

    .line 1570
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mInLayout:Z

    .line 1571
    invoke-direct {p0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->populate()V

    .line 1572
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mInLayout:Z

    .line 1573
    sub-int v1, p4, p2

    .line 1574
    .local v1, "width":I
    sub-int v0, p5, p3

    .line 1575
    .local v0, "height":I
    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 1576
    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 1577
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000

    .line 1530
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1531
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1532
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1533
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 1535
    if-eq v0, v6, :cond_0

    .line 1536
    sget-object v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMeasure: must have an exact width or match_parent! Using fallback spec of EXACTLY "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    :cond_0
    if-eq v1, v6, :cond_1

    .line 1541
    sget-object v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMeasure: must have an exact height or match_parent! Using fallback spec of EXACTLY "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    :cond_1
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 1548
    iget v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCountSetting:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1549
    iget v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mMinColWidth:I

    div-int v0, v2, v0

    .line 1550
    iget v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    if-eq v0, v1, :cond_2

    .line 1551
    iput v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    .line 1555
    :cond_2
    iget v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mHorizontalReorderingAreaSize:I

    if-nez v0, :cond_3

    .line 1556
    iget v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    .line 1557
    iget v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemMargin:I

    iget v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    .line 1558
    sub-int v0, v2, v0

    iget v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    div-int/2addr v0, v1

    .line 1559
    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mHorizontalReorderingAreaSize:I

    .line 1564
    :cond_3
    :goto_0
    return-void

    .line 1561
    :cond_4
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mHorizontalReorderingAreaSize:I

    goto :goto_0
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 1
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 1444
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 1445
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Landroid/view/View;->scrollTo(II)V

    .line 1447
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 3663
    move-object v0, p1

    check-cast v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$SavedState;

    .line 3664
    .local v0, "ss":Lcom/android/deskclock/widget/sgv/StaggeredGridView$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3665
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mDataChanged:Z

    .line 3666
    iget v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$SavedState;->position:I

    iput v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mFirstPosition:I

    .line 3667
    new-instance v1, Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;

    iget-wide v2, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$SavedState;->firstId:J

    iget v4, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$SavedState;->position:I

    iget v5, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$SavedState;->topOffset:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;-><init>(JII)V

    iput-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mCurrentScrollState:Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;

    .line 3668
    invoke-virtual {p0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->requestLayout()V

    .line 3669
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3645
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 3646
    .local v2, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/android/deskclock/widget/sgv/StaggeredGridView$SavedState;

    invoke-direct {v1, v2}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3647
    .local v1, "ss":Lcom/android/deskclock/widget/sgv/StaggeredGridView$SavedState;
    iget v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mFirstPosition:I

    .line 3648
    .local v0, "position":I
    iput v0, v1, Lcom/android/deskclock/widget/sgv/StaggeredGridView$SavedState;->position:I

    .line 3649
    if-ltz v0, :cond_0

    iget-object v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mAdapter:Lcom/android/deskclock/widget/sgv/GridAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mAdapter:Lcom/android/deskclock/widget/sgv/GridAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 3650
    iget-object v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mAdapter:Lcom/android/deskclock/widget/sgv/GridAdapter;

    invoke-virtual {v3, v0}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/deskclock/widget/sgv/StaggeredGridView$SavedState;->firstId:J

    .line 3652
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 3655
    if-nez v0, :cond_2

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    :goto_0
    iput v3, v1, Lcom/android/deskclock/widget/sgv/StaggeredGridView$SavedState;->topOffset:I

    .line 3658
    :cond_1
    return-object v1

    .line 3655
    :cond_2
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v2, 0x0

    .line 3368
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 3370
    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mOnSizeChangedListener:Lcom/android/deskclock/widget/sgv/StaggeredGridView$OnSizeChangedListener;

    if-eqz v1, :cond_0

    .line 3371
    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mOnSizeChangedListener:Lcom/android/deskclock/widget/sgv/StaggeredGridView$OnSizeChangedListener;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$OnSizeChangedListener;->onSizeChanged(IIII)V

    .line 3375
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 3376
    .local v0, "currentFocused":Landroid/view/View;
    if-eqz v0, :cond_1

    if-ne p0, v0, :cond_2

    .line 3388
    :cond_1
    :goto_0
    return-void

    .line 3383
    :cond_2
    invoke-direct {p0, v0, v2, p4}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3384
    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3385
    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3386
    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v1

    invoke-virtual {p0, v2, v1}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->scrollBy(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 946
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 947
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v10, v1, 0xff

    .line 948
    .local v10, "action":I
    packed-switch v10, :pswitch_data_0

    .line 1009
    :cond_0
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 950
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->resetScroller()V

    .line 951
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 952
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mScroller:Lcom/android/deskclock/widget/sgv/OverScrollerSGV;

    invoke-virtual {v1}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->abortAnimation()V

    .line 953
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mLastTouchY:F

    .line 954
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mActivePointerId:I

    .line 955
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTouchRemainderY:F

    goto :goto_0

    .line 959
    :pswitch_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v13

    .line 960
    .local v13, "index":I
    if-gez v13, :cond_1

    .line 961
    sget-object v1, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInterceptTouchEvent could not find pointer with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mActivePointerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - did StaggeredGridView receive an inconsistent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "event stream?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const/4 v1, 0x0

    goto :goto_1

    .line 967
    :cond_1
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v15

    .line 968
    .local v15, "y":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mLastTouchY:F

    sub-float v1, v15, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTouchRemainderY:F

    add-float v12, v1, v2

    .line 969
    .local v12, "dy":F
    float-to-int v11, v12

    .line 970
    .local v11, "deltaY":I
    int-to-float v1, v11

    sub-float v1, v12, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTouchRemainderY:F

    .line 972
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 973
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTouchMode:I

    .line 976
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTouchMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 977
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mLastTouchY:F

    .line 978
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v1}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->trackMotionScroll(IZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 980
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_0

    .line 987
    .end local v11    # "deltaY":I
    .end local v12    # "dy":F
    .end local v13    # "index":I
    .end local v15    # "y":F
    :pswitch_2
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTouchMode:I

    goto/16 :goto_0

    .line 992
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mMaximumVelocity:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 993
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mActivePointerId:I

    invoke-static {v1, v2}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v14

    .line 995
    .local v14, "velocity":F
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mFlingVelocity:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 996
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTouchMode:I

    .line 997
    invoke-direct/range {p0 .. p0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->resetScroller()V

    .line 998
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mScroller:Lcom/android/deskclock/widget/sgv/OverScrollerSGV;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    float-to-int v5, v14

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    invoke-virtual/range {v1 .. v9}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->fling(IIIIIIII)V

    .line 1000
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mLastTouchY:F

    .line 1001
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1003
    :cond_3
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mTouchMode:I

    goto/16 :goto_0

    .line 948
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 3341
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 3344
    invoke-direct {p0, p2, p3}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1489
    iget-boolean v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mPopulating:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mFastChildLayout:Z

    if-nez v0, :cond_0

    .line 1490
    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    .line 1492
    :cond_0
    return-void
.end method

.method public scrollBy(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1660
    if-eqz p2, :cond_0

    .line 1663
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->trackMotionScroll(IZ)Z

    .line 1665
    :cond_0
    return-void
.end method

.method public setAdapter(Lcom/android/deskclock/widget/sgv/GridAdapter;)V
    .locals 3
    .param p1, "adapter"    # Lcom/android/deskclock/widget/sgv/GridAdapter;

    .prologue
    const/4 v1, 0x0

    .line 3156
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mAdapter:Lcom/android/deskclock/widget/sgv/GridAdapter;

    if-eqz v0, :cond_0

    .line 3157
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mAdapter:Lcom/android/deskclock/widget/sgv/GridAdapter;

    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mObserver:Lcom/android/deskclock/widget/sgv/StaggeredGridView$AdapterDataSetObserver;

    invoke-virtual {v0, v2}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3160
    :cond_0
    invoke-direct {p0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->clearAllState()V

    .line 3162
    iput-object p1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mAdapter:Lcom/android/deskclock/widget/sgv/GridAdapter;

    .line 3163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mDataChanged:Z

    .line 3164
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemCount:I

    .line 3166
    if-eqz p1, :cond_3

    .line 3167
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mObserver:Lcom/android/deskclock/widget/sgv/StaggeredGridView$AdapterDataSetObserver;

    invoke-virtual {p1, v0}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3168
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mRecycler:Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;->setViewTypeCount(I)V

    .line 3169
    invoke-virtual {p1}, Lcom/android/deskclock/widget/sgv/GridAdapter;->hasStableIds()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mHasStableIds:Z

    .line 3174
    :goto_1
    invoke-direct {p0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->isDragReorderingSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3175
    invoke-direct {p0, v1}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->updateReorderStates(I)V

    .line 3178
    :cond_1
    invoke-direct {p0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->updateEmptyStatus()V

    .line 3179
    return-void

    :cond_2
    move v0, v1

    .line 3164
    goto :goto_0

    .line 3171
    :cond_3
    iput-boolean v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mHasStableIds:Z

    goto :goto_1
.end method

.method public setAnimationMode(Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;)V
    .locals 0
    .param p1, "animationIn"    # Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;
    .param p2, "animationOut"    # Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;

    .prologue
    .line 3139
    iput-object p1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mAnimationInMode:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;

    .line 3140
    iput-object p2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mAnimationOutMode:Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;

    .line 3141
    return-void
.end method

.method public setColumnCount(I)V
    .locals 4
    .param p1, "colCount"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 447
    if-ge p1, v0, :cond_0

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 448
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Column count must be at least 1 - received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 451
    :cond_0
    iget v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    if-eq p1, v2, :cond_2

    .line 452
    .local v0, "needsPopulate":Z
    :goto_0
    iput p1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCountSetting:I

    iput p1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    .line 453
    if-eqz v0, :cond_1

    .line 456
    invoke-direct {p0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->clearAllState()V

    .line 458
    iput v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mHorizontalReorderingAreaSize:I

    .line 459
    invoke-direct {p0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->populate()V

    .line 461
    :cond_1
    return-void

    .end local v0    # "needsPopulate":Z
    :cond_2
    move v0, v1

    .line 451
    goto :goto_0
.end method

.method public setFirstPositionAndOffsets(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 3249
    iput p1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mFirstPosition:I

    .line 3250
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemTops:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemBottoms:[I

    if-nez v0, :cond_1

    .line 3251
    :cond_0
    iget v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemTops:[I

    .line 3252
    iget v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemBottoms:[I

    .line 3255
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->calculateLayoutStartOffsets(I)V

    .line 3256
    return-void
.end method

.method public setGuardAgainstJaggedEdges(Z)V
    .locals 0
    .param p1, "guardAgainstJaggedEdges"    # Z

    .prologue
    .line 481
    iput-boolean p1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mGuardAgainstJaggedEdges:Z

    .line 482
    return-void
.end method

.method public setSelectionToTop()V
    .locals 2

    .prologue
    .line 3213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mCurrentScrollState:Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;

    .line 3214
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->setFirstPositionAndOffsets(II)V

    .line 3215
    return-void
.end method
