.class public Lcom/android/systemui/recent/RecentsPanelView;
.super Landroid/widget/FrameLayout;
.source "RecentsPanelView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/systemui/recent/RecentsCallback;
.implements Lcom/android/systemui/statusbar/tablet/StatusBarPanel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;,
        Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;,
        Lcom/android/systemui/recent/RecentsPanelView$OnLongClickDelegate;,
        Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;,
        Lcom/android/systemui/recent/RecentsPanelView$OnRecentsPanelVisibilityChangedListener;
    }
.end annotation


# instance fields
.field private mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

.field private mChoreo:Lcom/android/systemui/recent/Choreographer;

.field private mContext:Landroid/content/Context;

.field private mFirstScreenful:Z

.field private mFitThumbnailToXY:Z

.field mHideRecentsAfterThumbnailScaleUpStarted:Z

.field private mHighEndGfx:Z

.field private mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

.field private mNumItemsWaitingForThumbnailsAndIcons:I

.field mPlaceholderThumbnail:Landroid/widget/ImageView;

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

.field private mPreloadTasksRunnable:Ljava/lang/Runnable;

.field private mReadyToShow:Z

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

.field private mRecentTasksDirty:Z

.field private mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

.field private mRecentsContainer:Landroid/view/ViewGroup;

.field private mRecentsNoApps:Landroid/view/View;

.field private mRecentsScrim:Landroid/view/View;

.field private mShowing:Z

.field private mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

.field mThumbnailScaleUpStarted:Z

.field private mThumbnailWidth:I

.field mTransitionBg:Landroid/view/View;

.field mVisibilityChangedListener:Lcom/android/systemui/recent/RecentsPanelView$OnRecentsPanelVisibilityChangedListener;

.field private mWaitingToShow:Z

.field private mWaitingToShowAnimated:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 230
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recent/RecentsPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 231
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 234
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksDirty:Z

    .line 102
    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mFirstScreenful:Z

    .line 235
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    .line 236
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->updateValuesFromResources()V

    .line 238
    sget-object v1, Lcom/android/systemui/R$styleable;->RecentsPanelView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 241
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentItemLayoutId:I

    .line 242
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 243
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/RecentsPanelView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/RecentsPanelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 70
    iget v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentItemLayoutId:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/statusbar/BaseStatusBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/recent/RecentsPanelView;Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;
    .param p1, "x1"    # Landroid/widget/PopupMenu;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/recent/RecentsPanelView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopupList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentTasksLoader;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/Bitmap;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;
    .param p1, "x1"    # Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    .param p2, "x2"    # Landroid/graphics/Bitmap;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/recent/RecentsPanelView;->updateThumbnail(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/Bitmap;ZZ)V

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
    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/recent/RecentsPanelView;->updateIcon(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V

    return-void
.end method

.method static synthetic access$510(Lcom/android/systemui/recent/RecentsPanelView;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 70
    iget v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mNumItemsWaitingForThumbnailsAndIcons:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mNumItemsWaitingForThumbnailsAndIcons:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/recent/RecentsPanelView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/recent/RecentsPanelView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mHighEndGfx:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/recent/RecentsPanelView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RecentsPanelView;->startApplicationDetailsActivity(Ljava/lang/String;)V

    return-void
.end method

.method private createCustomAnimations(Landroid/animation/LayoutTransition;)V
    .locals 3
    .param p1, "transitioner"    # Landroid/animation/LayoutTransition;

    .prologue
    .line 540
    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 541
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 542
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 543
    return-void
.end method

.method private pointInside(IILandroid/view/View;)Z
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "v"    # Landroid/view/View;

    .prologue
    .line 265
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 266
    .local v1, "l":I
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v2

    .line 267
    .local v2, "r":I
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v3

    .line 268
    .local v3, "t":I
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 269
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
    .locals 2
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
    .local p1, "recentTasksList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    const/4 v1, 0x1

    .line 669
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksDirty:Z

    if-eqz v0, :cond_0

    .line 670
    if-eqz p1, :cond_1

    .line 671
    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mFirstScreenful:Z

    .line 672
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentsPanelView;->onTasksLoaded(Ljava/util/ArrayList;)V

    .line 677
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksDirty:Z

    .line 679
    :cond_0
    return-void

    .line 674
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mFirstScreenful:Z

    .line 675
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentTasksLoader;->loadTasksInBackground()V

    goto :goto_0
.end method

.method static sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 303
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 306
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showIfReady()V
    .locals 4

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingToShow:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mReadyToShow:Z

    if-eqz v0, :cond_0

    .line 298
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingToShowAnimated:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/recent/RecentsPanelView;->show(ZZLjava/util/ArrayList;Z)V

    .line 300
    :cond_0
    return-void
.end method

.method private startApplicationDetailsActivity(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 864
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 866
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 867
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 868
    return-void
.end method

.method private updateIcon(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 3
    .param p1, "h"    # Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "show"    # Z
    .param p4, "anim"    # Z

    .prologue
    .line 546
    if-eqz p2, :cond_1

    .line 547
    iget-object v0, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 548
    if-eqz p3, :cond_1

    iget-object v0, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 549
    if-eqz p4, :cond_0

    .line 550
    iget-object v0, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    const v2, 0x7f04000d

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 553
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 556
    :cond_1
    return-void
.end method

.method private updateThumbnail(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/Bitmap;ZZ)V
    .locals 5
    .param p1, "h"    # Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    .param p2, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p3, "show"    # Z
    .param p4, "anim"    # Z

    .prologue
    .line 559
    if-eqz p2, :cond_4

    .line 563
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 567
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImageBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 570
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mFitThumbnailToXY:Z

    if-eqz v2, :cond_5

    .line 571
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 580
    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    .line 581
    if-eqz p4, :cond_2

    .line 582
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    const v4, 0x7f04000d

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 585
    :cond_2
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 587
    :cond_3
    iput-object p2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImageBitmap:Landroid/graphics/Bitmap;

    .line 589
    :cond_4
    return-void

    .line 573
    :cond_5
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 574
    .local v1, "scaleMatrix":Landroid/graphics/Matrix;
    iget v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mThumbnailWidth:I

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 575
    .local v0, "scale":F
    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 576
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 577
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method private updateUiElements(Landroid/content/res/Configuration;)V
    .locals 8
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v4, 0x0

    .line 709
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 711
    .local v0, "items":I
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    if-lez v0, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 714
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 716
    .local v1, "numRecentApps":I
    if-nez v1, :cond_1

    .line 717
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 723
    .local v2, "recentAppsAccessibilityDescription":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 724
    return-void

    .line 711
    .end local v1    # "numRecentApps":I
    .end local v2    # "recentAppsAccessibilityDescription":Ljava/lang/String;
    :cond_0
    const/16 v3, 0x8

    goto :goto_0

    .line 720
    .restart local v1    # "numRecentApps":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v5, 0x7f0d0000

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v3, v5, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "recentAppsAccessibilityDescription":Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public clearRecentTasksList()V
    .locals 1

    .prologue
    .line 655
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentTasksLoader;->cancelLoadingThumbnailsAndIcons()V

    .line 657
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 658
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->notifyDataSetInvalidated()V

    .line 659
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksDirty:Z

    .line 661
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->hide(Z)V

    .line 389
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 436
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 437
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 438
    .local v1, "y":I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 439
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 441
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getFirstScreenful()Z
    .locals 1

    .prologue
    .line 705
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mFirstScreenful:Z

    return v0
.end method

.method public getRecentTasksList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public handleLongPress(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 4

    .prologue
    .line 880
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/view/View;->setSelected(Z)V

    .line 882
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopupList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 883
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopupList:Ljava/util/ArrayList;

    .line 886
    :cond_0
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    if-nez p2, :cond_1

    move-object p2, p1

    :cond_1
    invoke-direct {v0, v1, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 888
    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    .line 889
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0f0001

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 890
    new-instance v1, Lcom/android/systemui/recent/RecentsPanelView$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recent/RecentsPanelView$3;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 909
    new-instance v1, Lcom/android/systemui/recent/RecentsPanelView$4;

    invoke-direct {v1, p0, p3}, Lcom/android/systemui/recent/RecentsPanelView$4;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 921
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopupList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 923
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 924
    return-void
.end method

.method public handleOnClick(Landroid/view/View;)V
    .locals 23
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 729
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    .line 730
    .local v10, "holder":Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    iget-object v4, v10, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    .line 731
    .local v4, "ad":Lcom/android/systemui/recent/TaskDescription;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 732
    .local v8, "context":Landroid/content/Context;
    const-string v19, "activity"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    .line 734
    .local v5, "am":Landroid/app/ActivityManager;
    iget-object v7, v10, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImageBitmap:Landroid/graphics/Bitmap;

    .line 736
    .local v7, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    iget-object v0, v10, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getWidth()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    iget-object v0, v10, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getHeight()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 738
    const/16 v17, 0x0

    .line 745
    .local v17, "usingDrawingCache":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mPlaceholderThumbnail:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 746
    const v19, 0x7f0c0064

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mPlaceholderThumbnail:Landroid/widget/ImageView;

    .line 749
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mTransitionBg:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 750
    const v19, 0x7f0c0062

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mTransitionBg:Landroid/view/View;

    .line 752
    const-string v19, "window"

    invoke-static/range {v19 .. v19}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v18

    .line 755
    .local v18, "wm":Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface/range {v18 .. v18}, Landroid/view/IWindowManager;->hasSystemNavBar()Z

    move-result v19

    if-nez v19, :cond_1

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mTransitionBg:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 758
    .local v12, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/RecentsPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x105000a

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 760
    .local v16, "statusBarHeight":I
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v16

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mTransitionBg:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    .end local v12    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v16    # "statusBarHeight":I
    .end local v18    # "wm":Landroid/view/IWindowManager;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recent/RecentsPanelView;->mPlaceholderThumbnail:Landroid/widget/ImageView;

    .line 769
    .local v14, "placeholderThumbnail":Landroid/widget/ImageView;
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mHideRecentsAfterThumbnailScaleUpStarted:Z

    .line 770
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 771
    if-nez v17, :cond_4

    .line 772
    invoke-virtual {v14, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 777
    :goto_2
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 778
    .local v15, "r":Landroid/graphics/Rect;
    iget-object v0, v10, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 780
    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 781
    iget v0, v15, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 783
    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/RecentsPanelView;->show(ZZ)V

    .line 785
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/recent/RecentsPanelView;->mThumbnailScaleUpStarted:Z

    .line 786
    iget-object v0, v10, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    new-instance v22, Lcom/android/systemui/recent/RecentsPanelView$2;

    invoke-direct/range {v22 .. v23}, Lcom/android/systemui/recent/RecentsPanelView$2;-><init>(Lcom/android/systemui/recent/RecentsPanelView;)V

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-static {v0, v7, v1, v2, v3}, Landroid/app/ActivityOptions;->makeDelayedThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v13

    .line 799
    .local v13, "opts":Landroid/app/ActivityOptions;
    iget v0, v4, Lcom/android/systemui/recent/TaskDescription;->taskId:I

    move/from16 v19, v0

    if-ltz v19, :cond_5

    .line 801
    iget v0, v4, Lcom/android/systemui/recent/TaskDescription;->taskId:I

    move/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual {v13}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v21

    move/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v5, v0, v1, v2}, Landroid/app/ActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 811
    :goto_3
    if-eqz v17, :cond_2

    .line 812
    iget-object v0, v10, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 814
    :cond_2
    return-void

    .line 740
    .end local v13    # "opts":Landroid/app/ActivityOptions;
    .end local v14    # "placeholderThumbnail":Landroid/widget/ImageView;
    .end local v15    # "r":Landroid/graphics/Rect;
    .end local v17    # "usingDrawingCache":Z
    :cond_3
    iget-object v0, v10, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 741
    iget-object v0, v10, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 742
    const/16 v17, 0x1

    .restart local v17    # "usingDrawingCache":Z
    goto/16 :goto_0

    .line 763
    .restart local v18    # "wm":Landroid/view/IWindowManager;
    :catch_0
    move-exception v9

    .line 764
    .local v9, "e":Landroid/os/RemoteException;
    const-string v19, "RecentsPanelView"

    const-string v20, "Failing checking whether status bar is visible"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 774
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v18    # "wm":Landroid/view/IWindowManager;
    .restart local v14    # "placeholderThumbnail":Landroid/widget/ImageView;
    :cond_4
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 775
    .local v6, "b2":Landroid/graphics/Bitmap;
    invoke-virtual {v14, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 804
    .end local v6    # "b2":Landroid/graphics/Bitmap;
    .restart local v13    # "opts":Landroid/app/ActivityOptions;
    .restart local v15    # "r":Landroid/graphics/Rect;
    :cond_5
    iget-object v11, v4, Lcom/android/systemui/recent/TaskDescription;->intent:Landroid/content/Intent;

    .line 805
    .local v11, "intent":Landroid/content/Intent;
    const v19, 0x10104000

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 809
    invoke-virtual {v13}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v11, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_3
.end method

.method public handleSwipe(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 832
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    iget-object v0, v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    .line 833
    .local v0, "ad":Lcom/android/systemui/recent/TaskDescription;
    if-nez v0, :cond_1

    .line 834
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

    .line 861
    :cond_0
    :goto_0
    return-void

    .line 839
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 844
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 845
    invoke-virtual {p0, v6}, Lcom/android/systemui/recent/RecentsPanelView;->hide(Z)V

    .line 850
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 852
    .local v1, "am":Landroid/app/ActivityManager;
    if-eqz v1, :cond_0

    .line 853
    iget v2, v0, Lcom/android/systemui/recent/TaskDescription;->persistentTaskId:I

    invoke-virtual {v1, v2, v4}, Landroid/app/ActivityManager;->removeTask(II)Z

    .line 856
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    const v3, 0x7f09006c

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/systemui/recent/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 858
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->sendAccessibilityEvent(I)V

    .line 859
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public hide(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 392
    if-nez p1, :cond_0

    .line 393
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->setVisibility(I)V

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapse(I)V

    .line 399
    :cond_1
    return-void
.end method

.method public hideWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 817
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mThumbnailScaleUpStarted:Z

    if-nez v0, :cond_0

    .line 818
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mHideRecentsAfterThumbnailScaleUpStarted:Z

    .line 825
    :goto_0
    return-void

    .line 820
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->setVisibility(I)V

    .line 821
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mTransitionBg:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 822
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPlaceholderThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 823
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mHideRecentsAfterThumbnailScaleUpStarted:Z

    goto :goto_0
.end method

.method public isInContentArea(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, 0x1

    .line 273
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, p1, p2, v1}, Lcom/android/systemui/recent/RecentsPanelView;->pointInside(IILandroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    :cond_0
    :goto_0
    return v0

    .line 275
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    invoke-direct {p0, p1, p2, v1}, Lcom/android/systemui/recent/RecentsPanelView;->pointInside(IILandroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 279
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 449
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    return v0
.end method

.method public numItemsInOneScreenful()I
    .locals 3

    .prologue
    .line 246
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    instance-of v1, v1, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    if-eqz v1, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    .line 249
    .local v0, "scrollView":Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;
    invoke-interface {v0}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->numItemsInOneScreenful()I

    move-result v1

    return v1

    .line 251
    .end local v0    # "scrollView":Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "missing Recents[Horizontal]ScrollView"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 402
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 405
    iget-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    if-eqz v1, :cond_0

    .line 406
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 407
    .local v0, "transitioner":Landroid/animation/LayoutTransition;
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 408
    invoke-direct {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->createCustomAnimations(Landroid/animation/LayoutTransition;)V

    .line 413
    .end local v0    # "transitioner":Landroid/animation/LayoutTransition;
    :goto_0
    return-void

    .line 410
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 411
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->clearRecentTasksList()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 416
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 419
    return-void
.end method

.method protected onFinishInflate()V
    .locals 8

    .prologue
    .line 487
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 489
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 490
    const v0, 0x7f0c0065

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    .line 491
    const v0, 0x7f0c0095

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/StatusBarTouchProxy;

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    .line 492
    new-instance v0, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    .line 493
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    if-eqz v0, :cond_1

    .line 494
    iget-object v7, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    check-cast v7, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    .line 496
    .local v7, "scrollView":Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-interface {v7, v0}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->setAdapter(Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;)V

    .line 497
    invoke-interface {v7, p0}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->setCallback(Lcom/android/systemui/recent/RecentsCallback;)V

    .line 502
    const v0, 0x7f0c0063

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    .line 503
    const v0, 0x7f0c0067

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsNoApps:Landroid/view/View;

    .line 504
    new-instance v0, Lcom/android/systemui/recent/Choreographer;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsNoApps:Landroid/view/View;

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recent/Choreographer;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mChoreo:Lcom/android/systemui/recent/Choreographer;

    .line 506
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 509
    .local v6, "d":Landroid/view/Display;
    invoke-static {v6}, Landroid/app/ActivityManager;->isHighEndGfx(Landroid/view/Display;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mHighEndGfx:Z

    .line 510
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mHighEndGfx:Z

    if-nez v0, :cond_2

    .line 511
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 518
    .end local v6    # "d":Landroid/view/Display;
    :cond_0
    :goto_0
    new-instance v0, Lcom/android/systemui/recent/RecentsPanelView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/RecentsPanelView$1;-><init>(Lcom/android/systemui/recent/RecentsPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPreloadTasksRunnable:Ljava/lang/Runnable;

    .line 529
    return-void

    .line 499
    .end local v7    # "scrollView":Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "missing Recents[Horizontal]ScrollView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 512
    .restart local v6    # "d":Landroid/view/Display;
    .restart local v7    # "scrollView":Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 514
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
    .line 871
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 872
    const/4 v0, 0x1

    .line 874
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
    .line 828
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p2}, Lcom/android/systemui/recent/RecentsPanelView;->handleOnClick(Landroid/view/View;)V

    .line 829
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 257
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/recent/RecentsPanelView;->show(ZZ)V

    .line 259
    const/4 v0, 0x1

    .line 261
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 427
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 428
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mChoreo:Lcom/android/systemui/recent/Choreographer;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/Choreographer;->setPanelHeight(I)V

    .line 429
    return-void
.end method

.method onTaskThumbnailLoaded(Lcom/android/systemui/recent/TaskDescription;)V
    .locals 7
    .param p1, "td"    # Lcom/android/systemui/recent/TaskDescription;

    .prologue
    .line 592
    monitor-enter p1

    .line 593
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 594
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    .line 595
    .local v1, "container":Landroid/view/ViewGroup;
    instance-of v5, v1, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    if-eqz v5, :cond_0

    .line 596
    const v5, 0x7f0c0066

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "container":Landroid/view/ViewGroup;
    check-cast v1, Landroid/view/ViewGroup;

    .line 600
    .restart local v1    # "container":Landroid/view/ViewGroup;
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 601
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 602
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    if-eqz v5, :cond_1

    .line 603
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    .line 604
    .local v2, "h":Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    iget-boolean v5, v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->loadedThumbnailAndIcon:Z

    if-nez v5, :cond_1

    iget-object v5, v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    if-ne v5, p1, :cond_1

    .line 609
    const/4 v0, 0x0

    .line 610
    .local v0, "animateShow":Z
    invoke-virtual {p1}, Lcom/android/systemui/recent/TaskDescription;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v2, v5, v6, v0}, Lcom/android/systemui/recent/RecentsPanelView;->updateIcon(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V

    .line 611
    invoke-virtual {p1}, Lcom/android/systemui/recent/TaskDescription;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v2, v5, v6, v0}, Lcom/android/systemui/recent/RecentsPanelView;->updateThumbnail(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/Bitmap;ZZ)V

    .line 612
    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->loadedThumbnailAndIcon:Z

    .line 613
    iget v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mNumItemsWaitingForThumbnailsAndIcons:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mNumItemsWaitingForThumbnailsAndIcons:I

    .line 600
    .end local v0    # "animateShow":Z
    .end local v2    # "h":Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 618
    .end local v1    # "container":Landroid/view/ViewGroup;
    .end local v3    # "i":I
    .end local v4    # "v":Landroid/view/View;
    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 619
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->showIfReady()V

    .line 620
    return-void

    .line 618
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public onTasksLoaded(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    const/4 v1, 0x0

    .line 682
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mFirstScreenful:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 698
    :goto_0
    return-void

    .line 685
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mFirstScreenful:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mNumItemsWaitingForThumbnailsAndIcons:I

    .line 688
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 689
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    .line 693
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->notifyDataSetInvalidated()V

    .line 694
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->updateUiElements(Landroid/content/res/Configuration;)V

    .line 695
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mReadyToShow:Z

    .line 696
    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mFirstScreenful:Z

    .line 697
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->showIfReady()V

    goto :goto_0

    .line 685
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_1

    .line 691
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v2, 0x8

    .line 626
    iget-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    if-nez v1, :cond_0

    .line 627
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 628
    .local v0, "action":I
    if-nez v0, :cond_1

    .line 629
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPreloadTasksRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->post(Ljava/lang/Runnable;)Z

    .line 644
    .end local v0    # "action":I
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 630
    .restart local v0    # "action":I
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 631
    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->setVisibility(I)V

    .line 632
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->clearRecentTasksList()V

    .line 634
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPreloadTasksRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 635
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 637
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPreloadTasksRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 638
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 639
    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->setVisibility(I)V

    .line 640
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->clearRecentTasksList()V

    goto :goto_0
.end method

.method public preloadRecentTasksList()V
    .locals 1

    .prologue
    .line 648
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    if-nez v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPreloadTasksRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 651
    :cond_0
    return-void
.end method

.method public refreshRecentTasksList()V
    .locals 2

    .prologue
    .line 664
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->refreshRecentTasksList(Ljava/util/ArrayList;Z)V

    .line 665
    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 453
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    .line 455
    return-void
.end method

.method public setMinSwipeAlpha(F)V
    .locals 2
    .param p1, "minAlpha"    # F

    .prologue
    .line 532
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    instance-of v1, v1, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    if-eqz v1, :cond_0

    .line 533
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    .line 535
    .local v0, "scrollView":Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;
    invoke-interface {v0, p1}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->setMinSwipeAlpha(F)V

    .line 537
    .end local v0    # "scrollView":Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;
    :cond_0
    return-void
.end method

.method public setOnVisibilityChangedListener(Lcom/android/systemui/recent/RecentsPanelView$OnRecentsPanelVisibilityChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/systemui/recent/RecentsPanelView$OnRecentsPanelVisibilityChangedListener;

    .prologue
    .line 468
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mVisibilityChangedListener:Lcom/android/systemui/recent/RecentsPanelView$OnRecentsPanelVisibilityChangedListener;

    .line 470
    return-void
.end method

.method public setRecentTasksLoader(Lcom/android/systemui/recent/RecentTasksLoader;)V
    .locals 0
    .param p1, "loader"    # Lcom/android/systemui/recent/RecentTasksLoader;

    .prologue
    .line 464
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    .line 465
    return-void
.end method

.method public setStatusBarView(Landroid/view/View;)V
    .locals 1
    .param p1, "statusBarView"    # Landroid/view/View;

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recent/StatusBarTouchProxy;->setStatusBar(Landroid/view/View;)V

    .line 461
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mVisibilityChangedListener:Lcom/android/systemui/recent/RecentsPanelView$OnRecentsPanelVisibilityChangedListener;

    if-eqz v0, :cond_0

    .line 474
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mVisibilityChangedListener:Lcom/android/systemui/recent/RecentsPanelView$OnRecentsPanelVisibilityChangedListener;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/systemui/recent/RecentsPanelView$OnRecentsPanelVisibilityChangedListener;->onRecentsPanelVisibilityChanged(Z)V

    .line 476
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 477
    return-void

    .line 474
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show(ZZ)V
    .locals 2
    .param p1, "show"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 284
    if-eqz p1, :cond_0

    .line 285
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/recent/RecentsPanelView;->refreshRecentTasksList(Ljava/util/ArrayList;Z)V

    .line 286
    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingToShow:Z

    .line 287
    iput-boolean p2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingToShowAnimated:Z

    .line 288
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->showIfReady()V

    .line 292
    :goto_0
    return-void

    .line 290
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/systemui/recent/RecentsPanelView;->show(ZZLjava/util/ArrayList;Z)V

    goto :goto_0
.end method

.method public show(ZZLjava/util/ArrayList;Z)V
    .locals 8
    .param p1, "show"    # Z
    .param p2, "animate"    # Z
    .param p4, "firstScreenful"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p3, "recentTaskDescriptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 313
    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    const-string v7, "recentapps"

    invoke-static {v6, v7}, Lcom/android/systemui/recent/RecentsPanelView;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 315
    if-eqz p1, :cond_7

    .line 318
    invoke-direct {p0, p3, p4}, Lcom/android/systemui/recent/RecentsPanelView;->refreshRecentTasksList(Ljava/util/ArrayList;Z)V

    .line 322
    iget-boolean v6, p0, Lcom/android/systemui/recent/RecentsPanelView;->mFirstScreenful:Z

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_4

    move v1, v4

    .line 323
    .local v1, "noApps":Z
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsNoApps:Landroid/view/View;

    if-eqz v6, :cond_6

    .line 324
    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsNoApps:Landroid/view/View;

    const/high16 v7, 0x3f800000

    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    .line 325
    iget-object v7, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsNoApps:Landroid/view/View;

    if-eqz v1, :cond_5

    move v6, v5

    :goto_1
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 362
    .end local v1    # "noApps":Z
    :cond_0
    :goto_2
    if-eqz p2, :cond_a

    .line 363
    iget-boolean v6, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    if-eq v6, p1, :cond_2

    .line 364
    iput-boolean p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    .line 365
    if-eqz p1, :cond_1

    .line 366
    invoke-virtual {p0, v5}, Lcom/android/systemui/recent/RecentsPanelView;->setVisibility(I)V

    .line 368
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mChoreo:Lcom/android/systemui/recent/Choreographer;

    invoke-virtual {v5, p1}, Lcom/android/systemui/recent/Choreographer;->startAnimation(Z)V

    .line 376
    :cond_2
    :goto_3
    if-eqz p1, :cond_c

    .line 377
    invoke-virtual {p0, v4}, Lcom/android/systemui/recent/RecentsPanelView;->setFocusable(Z)V

    .line 378
    invoke-virtual {p0, v4}, Lcom/android/systemui/recent/RecentsPanelView;->setFocusableInTouchMode(Z)V

    .line 379
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->requestFocus()Z

    .line 385
    :cond_3
    :goto_4
    return-void

    :cond_4
    move v1, v5

    .line 322
    goto :goto_0

    .line 325
    .restart local v1    # "noApps":Z
    :cond_5
    const/4 v6, 0x4

    goto :goto_1

    .line 327
    :cond_6
    if-eqz v1, :cond_0

    .line 331
    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v6}, Lcom/android/systemui/recent/RecentTasksLoader;->cancelLoadingThumbnailsAndIcons()V

    .line 332
    iput-boolean v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksDirty:Z

    .line 334
    iput-boolean v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingToShow:Z

    .line 335
    iput-boolean v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mReadyToShow:Z

    goto :goto_4

    .line 341
    .end local v1    # "noApps":Z
    :cond_7
    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopupList:Ljava/util/ArrayList;

    if-eqz v6, :cond_9

    .line 342
    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopupList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 343
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v3, :cond_9

    .line 344
    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopupList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    .line 348
    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopupList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/PopupMenu;

    .line 349
    .local v2, "pop":Landroid/widget/PopupMenu;
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->dismiss()V

    .line 343
    .end local v2    # "pop":Landroid/widget/PopupMenu;
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 357
    .end local v0    # "i":I
    .end local v3    # "size":I
    :cond_9
    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v6}, Lcom/android/systemui/recent/RecentTasksLoader;->cancelLoadingThumbnailsAndIcons()V

    .line 358
    iput-boolean v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksDirty:Z

    .line 359
    iput-boolean v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingToShow:Z

    .line 360
    iput-boolean v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mReadyToShow:Z

    goto :goto_2

    .line 371
    :cond_a
    iput-boolean p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    .line 372
    if-eqz p1, :cond_b

    :goto_6
    invoke-virtual {p0, v5}, Lcom/android/systemui/recent/RecentsPanelView;->setVisibility(I)V

    .line 373
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mChoreo:Lcom/android/systemui/recent/Choreographer;

    invoke-virtual {v5, p1}, Lcom/android/systemui/recent/Choreographer;->jumpTo(Z)V

    .line 374
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/systemui/recent/RecentsPanelView;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_3

    .line 372
    :cond_b
    const/16 v5, 0x8

    goto :goto_6

    .line 381
    :cond_c
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    if-eqz v4, :cond_3

    .line 382
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v4}, Landroid/widget/PopupMenu;->dismiss()V

    goto :goto_4
.end method

.method public updateValuesFromResources()V
    .locals 2

    .prologue
    .line 480
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 481
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0b0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mThumbnailWidth:I

    .line 482
    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mFitThumbnailToXY:Z

    .line 483
    return-void
.end method
