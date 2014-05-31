.class public Lcom/android/settings/wifi/TouchInterceptor;
.super Landroid/widget/ListView;
.source "TouchInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/TouchInterceptor$StartListener;,
        Lcom/android/settings/wifi/TouchInterceptor$RemoveListener;,
        Lcom/android/settings/wifi/TouchInterceptor$DropListener;,
        Lcom/android/settings/wifi/TouchInterceptor$DragListener;
    }
.end annotation


# instance fields
.field private mCoordOffset:I

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragListener:Lcom/android/settings/wifi/TouchInterceptor$DragListener;

.field private mDragPoint:I

.field private mDragPos:I

.field private mDragView:Landroid/view/View;

.field private mDropListener:Lcom/android/settings/wifi/TouchInterceptor$DropListener;

.field private mFirstDragPos:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHeight:I

.field private mLastExpIndex:I

.field private mLowerBound:I

.field private mRemoveListener:Lcom/android/settings/wifi/TouchInterceptor$RemoveListener;

.field private mRemoveMode:I

.field private mStartListener:Lcom/android/settings/wifi/TouchInterceptor$StartListener;

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchSlop:I

.field private mUpperBound:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private viewHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, -0x1

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    iput v1, p0, Lcom/android/settings/wifi/TouchInterceptor;->mRemoveMode:I

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;

    .line 66
    iput v1, p0, Lcom/android/settings/wifi/TouchInterceptor;->mLastExpIndex:I

    .line 71
    iput v1, p0, Lcom/android/settings/wifi/TouchInterceptor;->mRemoveMode:I

    .line 72
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/TouchInterceptor;->mTouchSlop:I

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/TouchInterceptor;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/TouchInterceptor;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/TouchInterceptor;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/TouchInterceptor;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/wifi/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/TouchInterceptor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/TouchInterceptor;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/wifi/TouchInterceptor;->stopDragging()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/TouchInterceptor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/TouchInterceptor;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/settings/wifi/TouchInterceptor;->mFirstDragPos:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/TouchInterceptor;)Lcom/android/settings/wifi/TouchInterceptor$RemoveListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/TouchInterceptor;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/wifi/TouchInterceptor;->mRemoveListener:Lcom/android/settings/wifi/TouchInterceptor$RemoveListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/TouchInterceptor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/TouchInterceptor;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/TouchInterceptor;->unExpandViews(Z)V

    return-void
.end method

.method private adjustScrollBounds(I)V
    .locals 1
    .param p1, "y"    # I

    .prologue
    .line 174
    iget v0, p0, Lcom/android/settings/wifi/TouchInterceptor;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    if-lt p1, v0, :cond_0

    .line 175
    iget v0, p0, Lcom/android/settings/wifi/TouchInterceptor;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/settings/wifi/TouchInterceptor;->mUpperBound:I

    .line 177
    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/TouchInterceptor;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    if-gt p1, v0, :cond_1

    .line 178
    iget v0, p0, Lcom/android/settings/wifi/TouchInterceptor;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/settings/wifi/TouchInterceptor;->mLowerBound:I

    .line 180
    :cond_1
    return-void
.end method

.method private doExpansion()V
    .locals 9

    .prologue
    .line 223
    iget v7, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragPos:I

    invoke-virtual {p0}, Lcom/android/settings/wifi/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v8

    sub-int v0, v7, v8

    .line 224
    .local v0, "childnum":I
    iget v7, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragPos:I

    iget v8, p0, Lcom/android/settings/wifi/TouchInterceptor;->mFirstDragPos:I

    if-le v7, v8, :cond_0

    .line 225
    add-int/lit8 v0, v0, 0x1

    .line 228
    :cond_0
    iget v7, p0, Lcom/android/settings/wifi/TouchInterceptor;->mFirstDragPos:I

    invoke-virtual {p0}, Lcom/android/settings/wifi/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 230
    .local v1, "first":Landroid/view/View;
    const/4 v3, 0x2

    .line 231
    .local v3, "i":I
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 232
    .local v6, "vv":Landroid/view/View;
    if-nez v6, :cond_1

    .line 262
    return-void

    .line 235
    :cond_1
    iget v2, p0, Lcom/android/settings/wifi/TouchInterceptor;->viewHeight:I

    .line 236
    .local v2, "height":I
    const/4 v5, 0x0

    .line 237
    .local v5, "visibility":I
    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 239
    iget v7, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragPos:I

    iget v8, p0, Lcom/android/settings/wifi/TouchInterceptor;->mFirstDragPos:I

    if-ne v7, v8, :cond_3

    .line 241
    const/4 v5, 0x4

    .line 257
    :cond_2
    :goto_1
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 258
    .local v4, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 259
    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 230
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 244
    .end local v4    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 246
    :cond_4
    if-ne v3, v0, :cond_2

    .line 247
    iget v7, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragPos:I

    invoke-virtual {p0}, Lcom/android/settings/wifi/TouchInterceptor;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v7, v8, :cond_2

    .line 250
    mul-int/lit8 v2, v2, 0x2

    goto :goto_1
.end method

.method private dragView(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 388
    iget v2, p0, Lcom/android/settings/wifi/TouchInterceptor;->mRemoveMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 389
    const/high16 v0, 0x3f800000

    .line 390
    .local v0, "alpha":F
    iget-object v2, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 391
    .local v1, "width":I
    div-int/lit8 v2, v1, 0x2

    if-le p1, v2, :cond_0

    .line 392
    sub-int v2, v1, p1

    int-to-float v2, v2

    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 394
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 396
    .end local v0    # "alpha":F
    .end local v1    # "width":I
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt p2, v2, :cond_2

    .line 397
    iget-object v2, p0, Lcom/android/settings/wifi/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragPoint:I

    sub-int v3, p2, v3

    iget v4, p0, Lcom/android/settings/wifi/TouchInterceptor;->mCoordOffset:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 403
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/TouchInterceptor;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/settings/wifi/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    return-void

    .line 400
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/settings/wifi/TouchInterceptor;->mCoordOffset:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0
.end method

.method private getItemForPosition(II)I
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 161
    iget v2, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragPoint:I

    sub-int v2, p2, v2

    add-int/lit8 v0, v2, -0x20

    .line 162
    .local v0, "adjustedy":I
    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/TouchInterceptor;->myPointToPosition(II)I

    move-result v1

    .line 163
    .local v1, "pos":I
    if-ltz v1, :cond_1

    .line 164
    iget v2, p0, Lcom/android/settings/wifi/TouchInterceptor;->mFirstDragPos:I

    if-gt v1, v2, :cond_0

    .line 165
    add-int/lit8 v1, v1, 0x1

    .line 170
    :cond_0
    :goto_0
    return v1

    .line 167
    :cond_1
    if-gez v0, :cond_0

    .line 168
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private myPointToPosition(II)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 148
    iget-object v2, p0, Lcom/android/settings/wifi/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;

    .line 149
    .local v2, "frame":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/settings/wifi/TouchInterceptor;->getChildCount()I

    move-result v1

    .line 150
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 151
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 152
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 153
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/wifi/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v4

    add-int/2addr v4, v3

    .line 157
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return v4

    .line 150
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 157
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v4, -0x1

    goto :goto_1
.end method

.method private startDragging(Landroid/graphics/Bitmap;II)V
    .locals 7
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 355
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v2, p0, Lcom/android/settings/wifi/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 356
    iget-object v2, p0, Lcom/android/settings/wifi/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x30

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 357
    iget-object v2, p0, Lcom/android/settings/wifi/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 358
    iget-object v2, p0, Lcom/android/settings/wifi/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragPoint:I

    sub-int v3, p3, v3

    iget v4, p0, Lcom/android/settings/wifi/TouchInterceptor;->mCoordOffset:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 360
    iget-object v2, p0, Lcom/android/settings/wifi/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 361
    iget-object v2, p0, Lcom/android/settings/wifi/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 362
    iget-object v2, p0, Lcom/android/settings/wifi/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x198

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 366
    iget-object v2, p0, Lcom/android/settings/wifi/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 367
    iget-object v2, p0, Lcom/android/settings/wifi/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 369
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/wifi/TouchInterceptor;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 370
    .local v1, "v":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/android/settings/wifi/TouchInterceptor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 371
    .local v0, "backGroundColor":I
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 372
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 374
    iget-object v2, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 375
    iget-object v2, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 376
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 378
    :cond_0
    iput-object p1, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 380
    iget-object v2, p0, Lcom/android/settings/wifi/TouchInterceptor;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/settings/wifi/TouchInterceptor;->mWindowManager:Landroid/view/WindowManager;

    .line 381
    iget-object v2, p0, Lcom/android/settings/wifi/TouchInterceptor;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/settings/wifi/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v1, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    iput-object v1, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragView:Landroid/view/View;

    .line 383
    iget-object v2, p0, Lcom/android/settings/wifi/TouchInterceptor;->mStartListener:Lcom/android/settings/wifi/TouchInterceptor$StartListener;

    if-eqz v2, :cond_1

    .line 384
    iget-object v2, p0, Lcom/android/settings/wifi/TouchInterceptor;->mStartListener:Lcom/android/settings/wifi/TouchInterceptor$StartListener;

    invoke-interface {v2, p2, p3}, Lcom/android/settings/wifi/TouchInterceptor$StartListener;->startDrag(II)V

    .line 385
    :cond_1
    return-void
.end method

.method private stopDragging()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 407
    iget-object v1, p0, Lcom/android/settings/wifi/TouchInterceptor;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 408
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 409
    iget-object v1, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 410
    iput-object v3, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 413
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 414
    iget-object v1, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 415
    iget-object v1, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragView:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 416
    iget-object v1, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 417
    iput-object v3, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragView:Landroid/view/View;

    .line 420
    :cond_1
    return-void
.end method

.method private unExpandViews(Z)V
    .locals 7
    .param p1, "deletion"    # Z

    .prologue
    const/4 v6, 0x0

    .line 186
    const/4 v0, 0x2

    .line 187
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 188
    .local v3, "v":Landroid/view/View;
    if-nez v3, :cond_1

    .line 189
    if-eqz p1, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/wifi/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v2

    .line 192
    .local v2, "position":I
    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 193
    .local v4, "y":I
    invoke-virtual {p0}, Lcom/android/settings/wifi/TouchInterceptor;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/TouchInterceptor;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 194
    invoke-virtual {p0, v2, v4}, Lcom/android/settings/wifi/TouchInterceptor;->setSelectionFromTop(II)V

    .line 197
    .end local v2    # "position":I
    .end local v4    # "y":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/TouchInterceptor;->layoutChildren()V

    .line 198
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 199
    if-nez v3, :cond_1

    .line 208
    return-void

    .line 203
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 204
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 205
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method cancelDragging()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 422
    iget-object v1, p0, Lcom/android/settings/wifi/TouchInterceptor;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 423
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 424
    iget-object v1, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 425
    iput-object v3, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 428
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 429
    iget-object v1, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 430
    iget-object v1, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragView:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 431
    iget-object v1, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 432
    iput-object v3, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragView:Landroid/view/View;

    .line 434
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/TouchInterceptor;->unExpandViews(Z)V

    .line 435
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 77
    iget-object v8, p0, Lcom/android/settings/wifi/TouchInterceptor;->mRemoveListener:Lcom/android/settings/wifi/TouchInterceptor$RemoveListener;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/settings/wifi/TouchInterceptor;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v8, :cond_0

    .line 78
    iget v8, p0, Lcom/android/settings/wifi/TouchInterceptor;->mRemoveMode:I

    if-nez v8, :cond_0

    .line 79
    new-instance v8, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/android/settings/wifi/TouchInterceptor;->getContext()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Lcom/android/settings/wifi/TouchInterceptor$1;

    invoke-direct {v10, p0}, Lcom/android/settings/wifi/TouchInterceptor$1;-><init>(Lcom/android/settings/wifi/TouchInterceptor;)V

    invoke-direct {v8, v9, v10}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v8, p0, Lcom/android/settings/wifi/TouchInterceptor;->mGestureDetector:Landroid/view/GestureDetector;

    .line 102
    :cond_0
    iget-object v8, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragListener:Lcom/android/settings/wifi/TouchInterceptor$DragListener;

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDropListener:Lcom/android/settings/wifi/TouchInterceptor$DropListener;

    if-eqz v8, :cond_2

    .line 103
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 140
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    :goto_1
    return v8

    .line 105
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v6, v8

    .line 106
    .local v6, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    .line 107
    .local v7, "y":I
    invoke-direct {p0, v6, v7}, Lcom/android/settings/wifi/TouchInterceptor;->myPointToPosition(II)I

    move-result v3

    .line 108
    .local v3, "itemnum":I
    const/4 v8, -0x1

    if-eq v3, v8, :cond_2

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/wifi/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, v3, v8

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 112
    .local v2, "item":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v8

    sub-int v8, v7, v8

    iput v8, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragPoint:I

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v8, v8

    sub-int/2addr v8, v7

    iput v8, p0, Lcom/android/settings/wifi/TouchInterceptor;->mCoordOffset:I

    .line 114
    const v8, 0x7f080104

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 115
    .local v1, "dragger":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 117
    iget-object v4, p0, Lcom/android/settings/wifi/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;

    .line 119
    .local v4, "r":Landroid/graphics/Rect;
    invoke-virtual {v1, v4}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 120
    iget v8, v4, Landroid/graphics/Rect;->right:I

    if-ge v6, v8, :cond_3

    .line 121
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 124
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 125
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, v0, v6, v7}, Lcom/android/settings/wifi/TouchInterceptor;->startDragging(Landroid/graphics/Bitmap;II)V

    .line 126
    iput v3, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragPos:I

    .line 127
    iget v8, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragPos:I

    iput v8, p0, Lcom/android/settings/wifi/TouchInterceptor;->mFirstDragPos:I

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/wifi/TouchInterceptor;->getHeight()I

    move-result v8

    iput v8, p0, Lcom/android/settings/wifi/TouchInterceptor;->mHeight:I

    .line 129
    iget v5, p0, Lcom/android/settings/wifi/TouchInterceptor;->mTouchSlop:I

    .line 131
    .local v5, "touchSlop":I
    sub-int v8, v7, v5

    iget v9, p0, Lcom/android/settings/wifi/TouchInterceptor;->mHeight:I

    div-int/lit8 v9, v9, 0x3

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/android/settings/wifi/TouchInterceptor;->mUpperBound:I

    .line 132
    add-int v8, v7, v5

    iget v9, p0, Lcom/android/settings/wifi/TouchInterceptor;->mHeight:I

    mul-int/lit8 v9, v9, 0x2

    div-int/lit8 v9, v9, 0x3

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Lcom/android/settings/wifi/TouchInterceptor;->mLowerBound:I

    .line 133
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v8

    iput v8, p0, Lcom/android/settings/wifi/TouchInterceptor;->viewHeight:I

    .line 134
    const/4 v8, 0x0

    goto :goto_1

    .line 136
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "touchSlop":I
    :cond_3
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragView:Landroid/view/View;

    goto/16 :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 266
    iget-object v9, p0, Lcom/android/settings/wifi/TouchInterceptor;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v9, :cond_0

    .line 267
    iget-object v9, p0, Lcom/android/settings/wifi/TouchInterceptor;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v9, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 269
    :cond_0
    iget-object v9, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragListener:Lcom/android/settings/wifi/TouchInterceptor$DragListener;

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDropListener:Lcom/android/settings/wifi/TouchInterceptor$DropListener;

    if-eqz v9, :cond_16

    :cond_1
    iget-object v9, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragView:Landroid/view/View;

    if-eqz v9, :cond_16

    .line 270
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 271
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 349
    :cond_2
    :goto_0
    const/4 v9, 0x1

    .line 351
    .end local v0    # "action":I
    :goto_1
    return v9

    .line 274
    .restart local v0    # "action":I
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/wifi/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;

    .line 275
    .local v3, "r":Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragView:Landroid/view/View;

    invoke-virtual {v9, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 276
    invoke-direct {p0}, Lcom/android/settings/wifi/TouchInterceptor;->stopDragging()V

    .line 277
    iget v9, p0, Lcom/android/settings/wifi/TouchInterceptor;->mRemoveMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iget v10, v3, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v10, v10, 0x3

    div-int/lit8 v10, v10, 0x4

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_4

    .line 278
    iget-object v9, p0, Lcom/android/settings/wifi/TouchInterceptor;->mRemoveListener:Lcom/android/settings/wifi/TouchInterceptor$RemoveListener;

    if-eqz v9, :cond_3

    .line 279
    iget-object v9, p0, Lcom/android/settings/wifi/TouchInterceptor;->mRemoveListener:Lcom/android/settings/wifi/TouchInterceptor$RemoveListener;

    iget v10, p0, Lcom/android/settings/wifi/TouchInterceptor;->mFirstDragPos:I

    invoke-interface {v9, v10}, Lcom/android/settings/wifi/TouchInterceptor$RemoveListener;->remove(I)V

    .line 281
    :cond_3
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/settings/wifi/TouchInterceptor;->unExpandViews(Z)V

    goto :goto_0

    .line 283
    :cond_4
    const-string v9, "TouchInterceptor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "About to call onDrop listener "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragPos:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v9, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDropListener:Lcom/android/settings/wifi/TouchInterceptor$DropListener;

    if-eqz v9, :cond_5

    iget v9, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragPos:I

    if-ltz v9, :cond_5

    iget v9, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragPos:I

    invoke-virtual {p0}, Lcom/android/settings/wifi/TouchInterceptor;->getCount()I

    move-result v10

    if-gt v9, v10, :cond_5

    .line 286
    const-string v9, "TouchInterceptor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "calling drop "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/settings/wifi/TouchInterceptor;->mFirstDragPos:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragPos:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v9, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDropListener:Lcom/android/settings/wifi/TouchInterceptor$DropListener;

    iget v10, p0, Lcom/android/settings/wifi/TouchInterceptor;->mFirstDragPos:I

    iget v11, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragPos:I

    invoke-interface {v9, v10, v11}, Lcom/android/settings/wifi/TouchInterceptor$DropListener;->drop(II)V

    .line 289
    :cond_5
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/settings/wifi/TouchInterceptor;->unExpandViews(Z)V

    goto/16 :goto_0

    .line 295
    .end local v3    # "r":Landroid/graphics/Rect;
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    .line 296
    .local v7, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 301
    .local v8, "y":I
    invoke-direct {p0, v7, v8}, Lcom/android/settings/wifi/TouchInterceptor;->dragView(II)V

    .line 302
    invoke-direct {p0, v7, v8}, Lcom/android/settings/wifi/TouchInterceptor;->getItemForPosition(II)I

    move-result v1

    .line 303
    .local v1, "itemnum":I
    if-ltz v1, :cond_2

    .line 304
    if-eqz v0, :cond_6

    iget v9, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragPos:I

    if-eq v1, v9, :cond_8

    .line 305
    :cond_6
    iget-object v9, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragListener:Lcom/android/settings/wifi/TouchInterceptor$DragListener;

    if-eqz v9, :cond_7

    .line 306
    iget-object v9, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragListener:Lcom/android/settings/wifi/TouchInterceptor$DragListener;

    iget v10, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragPos:I

    invoke-interface {v9, v10, v1}, Lcom/android/settings/wifi/TouchInterceptor$DragListener;->drag(II)V

    .line 308
    :cond_7
    iput v1, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragPos:I

    .line 309
    invoke-direct {p0}, Lcom/android/settings/wifi/TouchInterceptor;->doExpansion()V

    .line 311
    :cond_8
    const/4 v5, 0x0

    .line 312
    .local v5, "speed":I
    invoke-direct {p0, v8}, Lcom/android/settings/wifi/TouchInterceptor;->adjustScrollBounds(I)V

    .line 313
    iget v9, p0, Lcom/android/settings/wifi/TouchInterceptor;->mLowerBound:I

    if-le v8, v9, :cond_f

    .line 315
    iget v9, p0, Lcom/android/settings/wifi/TouchInterceptor;->mHeight:I

    add-int/lit8 v10, v8, 0x4

    if-gt v9, v10, :cond_d

    .line 316
    iget v9, p0, Lcom/android/settings/wifi/TouchInterceptor;->mHeight:I

    iget v10, p0, Lcom/android/settings/wifi/TouchInterceptor;->mLowerBound:I

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    if-le v8, v9, :cond_c

    const/16 v5, 0x80

    .line 326
    :cond_9
    :goto_2
    if-eqz v5, :cond_2

    .line 327
    invoke-direct {p0, v7, v8}, Lcom/android/settings/wifi/TouchInterceptor;->myPointToPosition(II)I

    move-result v4

    .line 328
    .local v4, "ref":I
    const/4 v9, -0x1

    if-ne v4, v9, :cond_b

    .line 330
    const/16 v9, -0x80

    if-eq v5, v9, :cond_a

    const/16 v9, -0x40

    if-ne v5, v9, :cond_13

    .line 331
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/wifi/TouchInterceptor;->getDividerHeight()I

    move-result v9

    add-int/2addr v9, v8

    add-int/lit8 v9, v9, 0x10

    invoke-direct {p0, v7, v9}, Lcom/android/settings/wifi/TouchInterceptor;->myPointToPosition(II)I

    move-result v4

    .line 338
    :cond_b
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 339
    .local v6, "v":Landroid/view/View;
    if-eqz v6, :cond_2

    iget v9, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDragPos:I

    add-int/lit8 v9, v9, 0x2

    invoke-virtual {p0}, Lcom/android/settings/wifi/TouchInterceptor;->getCount()I

    move-result v10

    if-ge v9, v10, :cond_2

    .line 340
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v2

    .line 341
    .local v2, "pos":I
    sub-int v9, v2, v5

    invoke-virtual {p0, v4, v9}, Lcom/android/settings/wifi/TouchInterceptor;->setSelectionFromTop(II)V

    goto/16 :goto_0

    .line 316
    .end local v2    # "pos":I
    .end local v4    # "ref":I
    .end local v6    # "v":Landroid/view/View;
    :cond_c
    const/16 v5, 0x40

    goto :goto_2

    .line 318
    :cond_d
    iget v9, p0, Lcom/android/settings/wifi/TouchInterceptor;->mHeight:I

    iget v10, p0, Lcom/android/settings/wifi/TouchInterceptor;->mLowerBound:I

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    if-le v8, v9, :cond_e

    const/16 v5, 0x10

    :goto_4
    goto :goto_2

    :cond_e
    const/4 v5, 0x4

    goto :goto_4

    .line 319
    :cond_f
    iget v9, p0, Lcom/android/settings/wifi/TouchInterceptor;->mUpperBound:I

    if-ge v8, v9, :cond_9

    .line 321
    add-int/lit8 v9, v8, -0x4

    if-gtz v9, :cond_11

    .line 322
    iget v9, p0, Lcom/android/settings/wifi/TouchInterceptor;->mUpperBound:I

    div-int/lit8 v9, v9, 0x2

    if-ge v8, v9, :cond_10

    const/16 v5, -0x80

    :goto_5
    goto :goto_2

    :cond_10
    const/16 v5, -0x40

    goto :goto_5

    .line 324
    :cond_11
    iget v9, p0, Lcom/android/settings/wifi/TouchInterceptor;->mUpperBound:I

    div-int/lit8 v9, v9, 0x2

    if-ge v8, v9, :cond_12

    const/16 v5, -0x10

    :goto_6
    goto :goto_2

    :cond_12
    const/4 v5, -0x4

    goto :goto_6

    .line 332
    .restart local v4    # "ref":I
    :cond_13
    const/16 v9, 0x80

    if-eq v5, v9, :cond_14

    const/16 v9, 0x40

    if-ne v5, v9, :cond_15

    .line 333
    :cond_14
    invoke-virtual {p0}, Lcom/android/settings/wifi/TouchInterceptor;->getDividerHeight()I

    move-result v9

    sub-int v9, v8, v9

    add-int/lit8 v9, v9, -0x10

    invoke-direct {p0, v7, v9}, Lcom/android/settings/wifi/TouchInterceptor;->myPointToPosition(II)I

    move-result v4

    goto :goto_3

    .line 335
    :cond_15
    iget v9, p0, Lcom/android/settings/wifi/TouchInterceptor;->mHeight:I

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {p0}, Lcom/android/settings/wifi/TouchInterceptor;->getDividerHeight()I

    move-result v10

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x40

    invoke-direct {p0, v7, v9}, Lcom/android/settings/wifi/TouchInterceptor;->myPointToPosition(II)I

    move-result v4

    goto :goto_3

    .line 351
    .end local v0    # "action":I
    .end local v1    # "itemnum":I
    .end local v4    # "ref":I
    .end local v5    # "speed":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    :cond_16
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    goto/16 :goto_1

    .line 271
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDropListener(Lcom/android/settings/wifi/TouchInterceptor$DropListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/settings/wifi/TouchInterceptor$DropListener;

    .prologue
    .line 442
    iput-object p1, p0, Lcom/android/settings/wifi/TouchInterceptor;->mDropListener:Lcom/android/settings/wifi/TouchInterceptor$DropListener;

    .line 443
    return-void
.end method

.method public setStartListener(Lcom/android/settings/wifi/TouchInterceptor$StartListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/settings/wifi/TouchInterceptor$StartListener;

    .prologue
    .line 450
    iput-object p1, p0, Lcom/android/settings/wifi/TouchInterceptor;->mStartListener:Lcom/android/settings/wifi/TouchInterceptor$StartListener;

    .line 451
    return-void
.end method
