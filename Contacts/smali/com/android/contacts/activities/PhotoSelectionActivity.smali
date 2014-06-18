.class public Lcom/android/contacts/activities/PhotoSelectionActivity;
.super Landroid/app/Activity;
.source "PhotoSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;,
        Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;
    }
.end annotation


# instance fields
.field private mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

.field private mAnimationPending:Z

.field private mBackdrop:Landroid/view/View;

.field private mCloseActivityWhenCameBackFromSubActivity:Z

.field private mCurrentPhotoUri:Landroid/net/Uri;

.field private mExpandPhoto:Z

.field private mExpandedPhotoSize:I

.field private mHeightOffset:I

.field private mIsDirectoryContact:Z

.field private mIsProfile:Z

.field mOriginalPos:Landroid/graphics/Rect;

.field private mPendingPhotoResult:Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;

.field private mPhotoAnimator:Landroid/animation/ObjectAnimator;

.field private mPhotoEndParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mPhotoHandler:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

.field private mPhotoStartParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mPhotoUri:Landroid/net/Uri;

.field private mPhotoView:Landroid/widget/ImageView;

.field private mSourceBounds:Landroid/graphics/Rect;

.field private mState:Lcom/android/contacts/model/RawContactDeltaList;

.field private mSubActivityInProgress:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 139
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    .line 566
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/PhotoSelectionActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/PhotoSelectionActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->displayPhoto()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/activities/PhotoSelectionActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PhotoSelectionActivity;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mAnimationPending:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/contacts/activities/PhotoSelectionActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/PhotoSelectionActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mAnimationPending:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/contacts/activities/PhotoSelectionActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/PhotoSelectionActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->animatePhotoOpen()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/contacts/activities/PhotoSelectionActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PhotoSelectionActivity;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mIsDirectoryContact:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/activities/PhotoSelectionActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PhotoSelectionActivity;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSubActivityInProgress:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/contacts/activities/PhotoSelectionActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/PhotoSelectionActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSubActivityInProgress:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/contacts/activities/PhotoSelectionActivity;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PhotoSelectionActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mCurrentPhotoUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/contacts/activities/PhotoSelectionActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/PhotoSelectionActivity;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mCurrentPhotoUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/contacts/activities/PhotoSelectionActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PhotoSelectionActivity;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mIsProfile:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/contacts/activities/PhotoSelectionActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PhotoSelectionActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/activities/PhotoSelectionActivity;)Landroid/animation/AnimatorListenerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PhotoSelectionActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/activities/PhotoSelectionActivity;)Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PhotoSelectionActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoHandler:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/activities/PhotoSelectionActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/PhotoSelectionActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->finishImmediatelyWithNoAnimation()V

    return-void
.end method

.method private animateAwayBackground()V
    .locals 5

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mBackdrop:Landroid/view/View;

    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 458
    return-void
.end method

.method private animateInBackground()V
    .locals 3

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mBackdrop:Landroid/view/View;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 453
    return-void

    .line 451
    :array_0
    .array-data 4
        0x0
        0x3f000000
    .end array-data
.end method

.method private animatePhoto(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "to"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 446
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mAnimationPending:Z

    .line 447
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    .line 448
    return-void
.end method

.method private animatePhotoOpen()V
    .locals 1

    .prologue
    .line 393
    new-instance v0, Lcom/android/contacts/activities/PhotoSelectionActivity$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/PhotoSelectionActivity$4;-><init>(Lcom/android/contacts/activities/PhotoSelectionActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    .line 415
    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->getPhotoEndParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->animatePhoto(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 416
    return-void
.end method

.method private attachPhotoHandler()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 493
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    const/4 v4, 0x4

    .line 498
    .local v4, "mode":I
    :goto_0
    and-int/lit8 v4, v4, -0x3

    .line 500
    new-instance v0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;-><init>(Lcom/android/contacts/activities/PhotoSelectionActivity;Landroid/content/Context;Landroid/view/View;ILcom/android/contacts/model/RawContactDeltaList;Lcom/android/contacts/activities/PhotoSelectionActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoHandler:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    .line 502
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPendingPhotoResult:Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;

    if-eqz v0, :cond_1

    .line 503
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoHandler:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    iget-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPendingPhotoResult:Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;

    # getter for: Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;->mRequestCode:I
    invoke-static {v1}, Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;->access$800(Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;)I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPendingPhotoResult:Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;

    # getter for: Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;->mResultCode:I
    invoke-static {v2}, Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;->access$900(Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;)I

    move-result v2

    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPendingPhotoResult:Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;

    # getter for: Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;->mData:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;->access$1000(Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;->handlePhotoActivityResult(IILandroid/content/Intent;)Z

    .line 505
    iput-object v6, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPendingPhotoResult:Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;

    .line 516
    :goto_1
    return-void

    .line 493
    .end local v4    # "mode":I
    :cond_0
    const/16 v4, 0xe

    goto :goto_0

    .line 509
    .restart local v4    # "mode":I
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mBackdrop:Landroid/view/View;

    new-instance v1, Lcom/android/contacts/activities/PhotoSelectionActivity$6;

    invoke-direct {v1, p0}, Lcom/android/contacts/activities/PhotoSelectionActivity$6;-><init>(Lcom/android/contacts/activities/PhotoSelectionActivity;)V

    invoke-static {v0, v1}, Lcom/android/contacts/util/SchedulingUtils;->doAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public static buildIntent(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Lcom/android/contacts/model/RawContactDeltaList;ZZZ)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 277
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/activities/PhotoSelectionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 279
    const-string v1, "photo_uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 281
    :cond_0
    invoke-virtual {v0, p4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 282
    const-string v1, "entity_delta_list"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 283
    const-string v1, "is_profile"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 284
    const-string v1, "is_directory_contact"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 285
    const-string v1, "expand_photo"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 286
    return-object v0
.end method

.method private closePhotoAndFinish()V
    .locals 1

    .prologue
    .line 419
    new-instance v0, Lcom/android/contacts/activities/PhotoSelectionActivity$5;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/PhotoSelectionActivity$5;-><init>(Lcom/android/contacts/activities/PhotoSelectionActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    .line 435
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoStartParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->animatePhoto(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 436
    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->animateAwayBackground()V

    .line 437
    return-void
.end method

.method private displayPhoto()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 308
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 309
    .local v2, "pos":[I
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mBackdrop:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 310
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 312
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSourceBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    aget v5, v2, v7

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 313
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSourceBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x1

    aget v5, v2, v5

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 314
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 315
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 316
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 318
    iput-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoStartParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 319
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->requestLayout()V

    .line 323
    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->getPhotoEndParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    iget v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 324
    .local v1, "photoWidth":I
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoUri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    .line 326
    invoke-static {p0}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v5, v1, v7}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZ)V

    .line 334
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/contacts/activities/PhotoSelectionActivity$3;

    invoke-direct {v4, p0}, Lcom/android/contacts/activities/PhotoSelectionActivity$3;-><init>(Lcom/android/contacts/activities/PhotoSelectionActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 358
    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->attachPhotoHandler()V

    .line 359
    return-void

    .line 330
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    invoke-static {p0, v1, v7}, Lcom/android/contacts/ContactPhotoManager;->getDefaultAvatarResId(Landroid/content/Context;IZ)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private finishImmediatelyWithNoAnimation()V
    .locals 0

    .prologue
    .line 290
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 291
    return-void
.end method

.method private getAdjustedExpandedPhotoSize(Landroid/view/View;I)I
    .locals 7
    .param p1, "enclosingView"    # Landroid/view/View;
    .param p2, "heightOffset"    # I

    .prologue
    .line 217
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 218
    .local v1, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 219
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 220
    .local v3, "boundsWidth":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int v2, v4, p2

    .line 223
    .local v2, "boundsHeight":I
    int-to-float v4, v2

    iget v5, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mExpandedPhotoSize:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    int-to-float v5, v3

    iget v6, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mExpandedPhotoSize:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 225
    .local v0, "alpha":F
    const/high16 v4, 0x3f800000

    cmpg-float v4, v0, v4

    if-gez v4, :cond_0

    .line 227
    iget v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mExpandedPhotoSize:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    .line 229
    :goto_0
    return v4

    :cond_0
    iget v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mExpandedPhotoSize:I

    goto :goto_0
.end method

.method private getPhotoEndParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 369
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoEndParams:Landroid/widget/FrameLayout$LayoutParams;

    if-nez v3, :cond_1

    .line 370
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoStartParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    iput-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoEndParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 371
    iget-boolean v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mExpandPhoto:Z

    if-eqz v3, :cond_1

    .line 372
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mBackdrop:Landroid/view/View;

    iget v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mHeightOffset:I

    invoke-direct {p0, v3, v4}, Lcom/android/contacts/activities/PhotoSelectionActivity;->getAdjustedExpandedPhotoSize(Landroid/view/View;I)I

    move-result v0

    .line 374
    .local v0, "adjustedPhotoSize":I
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoStartParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int v2, v0, v3

    .line 375
    .local v2, "widthDelta":I
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoStartParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int v1, v0, v3

    .line 376
    .local v1, "heightDelta":I
    if-ge v2, v6, :cond_0

    if-lt v1, v6, :cond_1

    .line 378
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoEndParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 379
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoEndParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 380
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoEndParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoStartParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 382
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoEndParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoStartParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 384
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoEndParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 385
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoEndParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 389
    .end local v0    # "adjustedPhotoSize":I
    .end local v1    # "heightDelta":I
    .end local v2    # "widthDelta":I
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoEndParams:Landroid/widget/FrameLayout$LayoutParams;

    return-object v3
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSubActivityInProgress:Z

    if-nez v0, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->closePhotoAndFinish()V

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->finishImmediatelyWithNoAnimation()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 469
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoHandler:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    if-eqz v0, :cond_2

    .line 470
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSubActivityInProgress:Z

    .line 471
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoHandler:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;->handlePhotoActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    iput-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPendingPhotoResult:Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;

    .line 487
    :goto_0
    return-void

    .line 476
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mCloseActivityWhenCameBackFromSubActivity:Z

    if-eqz v0, :cond_1

    .line 477
    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->finishImmediatelyWithNoAnimation()V

    goto :goto_0

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoHandler:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    iget-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 485
    :cond_2
    new-instance v0, Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;-><init>(IILandroid/content/Intent;Lcom/android/contacts/activities/PhotoSelectionActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPendingPhotoResult:Lcom/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult;

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 235
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 239
    iget-boolean v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSubActivityInProgress:Z

    if-nez v0, :cond_0

    .line 240
    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->finishImmediatelyWithNoAnimation()V

    .line 246
    :goto_0
    return-void

    .line 244
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mCloseActivityWhenCameBackFromSubActivity:Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 164
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 165
    const v1, 0x7f040079

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PhotoSelectionActivity;->setContentView(I)V

    .line 166
    if-eqz p1, :cond_0

    .line 167
    const-string v1, "currentphotouri"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mCurrentPhotoUri:Landroid/net/Uri;

    .line 168
    const-string v1, "subinprogress"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSubActivityInProgress:Z

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 173
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "photo_uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoUri:Landroid/net/Uri;

    .line 174
    const-string v1, "entity_delta_list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/RawContactDeltaList;

    iput-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    .line 175
    const-string v1, "is_profile"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mIsProfile:Z

    .line 176
    const-string v1, "is_directory_contact"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mIsDirectoryContact:Z

    .line 177
    const-string v1, "expand_photo"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mExpandPhoto:Z

    .line 180
    invoke-virtual {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mExpandedPhotoSize:I

    .line 182
    invoke-virtual {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mHeightOffset:I

    .line 185
    const v1, 0x7f060114

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PhotoSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mBackdrop:Landroid/view/View;

    .line 186
    const v1, 0x7f06004c

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PhotoSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    .line 187
    invoke-virtual {v0}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSourceBounds:Landroid/graphics/Rect;

    .line 190
    invoke-direct {p0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->animateInBackground()V

    .line 193
    iget-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mBackdrop:Landroid/view/View;

    new-instance v2, Lcom/android/contacts/activities/PhotoSelectionActivity$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/activities/PhotoSelectionActivity$1;-><init>(Lcom/android/contacts/activities/PhotoSelectionActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mBackdrop:Landroid/view/View;

    new-instance v2, Lcom/android/contacts/activities/PhotoSelectionActivity$2;

    invoke-direct {v2, p0}, Lcom/android/contacts/activities/PhotoSelectionActivity$2;-><init>(Lcom/android/contacts/activities/PhotoSelectionActivity;)V

    invoke-static {v1, v2}, Lcom/android/contacts/util/SchedulingUtils;->doAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 207
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 295
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 296
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 298
    iput-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoAnimator:Landroid/animation/ObjectAnimator;

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoHandler:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoHandler:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    invoke-virtual {v0}, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;->destroy()V

    .line 302
    iput-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoHandler:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    .line 304
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 462
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 463
    const-string v0, "currentphotouri"

    iget-object v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mCurrentPhotoUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 464
    const-string v0, "subinprogress"

    iget-boolean v1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity;->mSubActivityInProgress:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 465
    return-void
.end method
