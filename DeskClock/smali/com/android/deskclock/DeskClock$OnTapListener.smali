.class public abstract Lcom/android/deskclock/DeskClock$OnTapListener;
.super Ljava/lang/Object;
.source "DeskClock.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/DeskClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnTapListener"
.end annotation


# instance fields
.field private final MAX_MOVEMENT_ALLOWED:F

.field private final MAX_TIME_ALLOWED:J

.field private final mGrayColor:I

.field private mLastTouchTime:J

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private final mMakePressedTextView:Landroid/widget/TextView;

.field private final mPressedColor:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/TextView;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "makePressedView"    # Landroid/widget/TextView;

    .prologue
    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    const/high16 v0, 0x41a00000

    iput v0, p0, Lcom/android/deskclock/DeskClock$OnTapListener;->MAX_MOVEMENT_ALLOWED:F

    .line 509
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/android/deskclock/DeskClock$OnTapListener;->MAX_TIME_ALLOWED:J

    .line 512
    iput-object p2, p0, Lcom/android/deskclock/DeskClock$OnTapListener;->mMakePressedTextView:Landroid/widget/TextView;

    .line 513
    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/android/deskclock/Utils;->getPressedColorId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/DeskClock$OnTapListener;->mPressedColor:I

    .line 514
    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/android/deskclock/Utils;->getGrayColorId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/DeskClock$OnTapListener;->mGrayColor:I

    .line 515
    return-void
.end method

.method private resetValues()V
    .locals 2

    .prologue
    const/high16 v0, -0x3e680000

    .line 557
    iput v0, p0, Lcom/android/deskclock/DeskClock$OnTapListener;->mLastTouchX:F

    .line 558
    iput v0, p0, Lcom/android/deskclock/DeskClock$OnTapListener;->mLastTouchY:F

    .line 559
    const-wide/16 v0, -0x1f3

    iput-wide v0, p0, Lcom/android/deskclock/DeskClock$OnTapListener;->mLastTouchTime:J

    .line 560
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$OnTapListener;->mMakePressedTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$OnTapListener;->mMakePressedTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/deskclock/DeskClock$OnTapListener;->mGrayColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 563
    :cond_0
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v8, 0x41a00000

    .line 519
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 551
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock$OnTapListener;->resetValues()V

    .line 553
    :cond_0
    :goto_0
    const/4 v4, 0x0

    :goto_1
    return v4

    .line 521
    :pswitch_0
    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/deskclock/DeskClock$OnTapListener;->mLastTouchTime:J

    .line 522
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/android/deskclock/DeskClock$OnTapListener;->mLastTouchX:F

    .line 523
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/android/deskclock/DeskClock$OnTapListener;->mLastTouchY:F

    .line 524
    iget-object v4, p0, Lcom/android/deskclock/DeskClock$OnTapListener;->mMakePressedTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 525
    iget-object v4, p0, Lcom/android/deskclock/DeskClock$OnTapListener;->mMakePressedTextView:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/deskclock/DeskClock$OnTapListener;->mPressedColor:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 529
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/android/deskclock/DeskClock$OnTapListener;->mLastTouchX:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 530
    .local v2, "xDiff":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/android/deskclock/DeskClock$OnTapListener;->mLastTouchY:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 531
    .local v3, "yDiff":F
    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/deskclock/DeskClock$OnTapListener;->mLastTouchTime:J

    sub-long v0, v4, v6

    .line 532
    .local v0, "timeDiff":J
    cmpg-float v4, v2, v8

    if-gez v4, :cond_2

    cmpg-float v4, v3, v8

    if-gez v4, :cond_2

    const-wide/16 v4, 0x1f4

    cmp-long v4, v0, v4

    if-gez v4, :cond_2

    .line 534
    iget-object v4, p0, Lcom/android/deskclock/DeskClock$OnTapListener;->mMakePressedTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 535
    iget-object p1, p0, Lcom/android/deskclock/DeskClock$OnTapListener;->mMakePressedTextView:Landroid/widget/TextView;

    .line 537
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/deskclock/DeskClock$OnTapListener;->processClick(Landroid/view/View;)V

    .line 538
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock$OnTapListener;->resetValues()V

    .line 539
    const/4 v4, 0x1

    goto :goto_1

    .line 541
    :cond_2
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock$OnTapListener;->resetValues()V

    goto :goto_0

    .line 544
    .end local v0    # "timeDiff":J
    .end local v2    # "xDiff":F
    .end local v3    # "yDiff":F
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/android/deskclock/DeskClock$OnTapListener;->mLastTouchX:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 545
    .restart local v2    # "xDiff":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/android/deskclock/DeskClock$OnTapListener;->mLastTouchY:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 546
    .restart local v3    # "yDiff":F
    cmpl-float v4, v2, v8

    if-gez v4, :cond_3

    cmpl-float v4, v3, v8

    if-ltz v4, :cond_0

    .line 547
    :cond_3
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock$OnTapListener;->resetValues()V

    goto :goto_0

    .line 519
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected abstract processClick(Landroid/view/View;)V
.end method
