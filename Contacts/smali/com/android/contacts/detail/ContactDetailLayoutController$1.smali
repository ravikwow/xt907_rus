.class Lcom/android/contacts/detail/ContactDetailLayoutController$1;
.super Ljava/lang/Object;
.source "ContactDetailLayoutController.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailLayoutController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mTabCarouselAnimator:Landroid/animation/ObjectAnimator;

.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailLayoutController;)V
    .locals 0

    .prologue
    .line 529
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private cancelTabCarouselAnimator()V
    .locals 2

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->mTabCarouselAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->mTabCarouselAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 620
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->mTabCarouselAnimator:Landroid/animation/ObjectAnimator;

    .line 621
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    const/4 v1, 0x0

    # setter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselIsAnimating:Z
    invoke-static {v0, v1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$702(Lcom/android/contacts/detail/ContactDetailLayoutController;Z)Z

    .line 623
    :cond_0
    return-void
.end method

.method private createTabCarouselAnimator(F)V
    .locals 4
    .param p1, "desiredValue"    # F

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    # getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$100(Lcom/android/contacts/detail/ContactDetailLayoutController;)Lcom/android/contacts/detail/ContactDetailTabCarousel;

    move-result-object v0

    const-string v1, "y"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x4b

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->mTabCarouselAnimator:Landroid/animation/ObjectAnimator;

    .line 612
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->mTabCarouselAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    # getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$500(Lcom/android/contacts/detail/ContactDetailLayoutController;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x10a0004

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 614
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->mTabCarouselAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    # getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselAnimatorListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$600(Lcom/android/contacts/detail/ContactDetailLayoutController;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 615
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 7
    .param p1, "state"    # I

    .prologue
    .line 555
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    # getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerState:I
    invoke-static {v5}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$200(Lcom/android/contacts/detail/ContactDetailLayoutController;)I

    move-result v5

    if-nez v5, :cond_1

    .line 559
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->cancelTabCarouselAnimator()V

    .line 563
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    # getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v6}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$000(Lcom/android/contacts/detail/ContactDetailLayoutController;)Landroid/support/v4/view/ViewPager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v6

    # invokes: Lcom/android/contacts/detail/ContactDetailLayoutController;->syncScrollStateBetweenLists(I)V
    invoke-static {v5, v6}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$300(Lcom/android/contacts/detail/ContactDetailLayoutController;I)V

    .line 606
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    # setter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerState:I
    invoke-static {v5, p1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$202(Lcom/android/contacts/detail/ContactDetailLayoutController;I)I

    .line 607
    return-void

    .line 565
    :cond_1
    if-nez p1, :cond_0

    .line 569
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    # getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v5}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$000(Lcom/android/contacts/detail/ContactDetailLayoutController;)Landroid/support/v4/view/ViewPager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 570
    .local v0, "currentPageIndex":I
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    # getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;
    invoke-static {v5}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$100(Lcom/android/contacts/detail/ContactDetailLayoutController;)Lcom/android/contacts/detail/ContactDetailTabCarousel;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 574
    .local v4, "tabCarouselOffset":I
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    # invokes: Lcom/android/contacts/detail/ContactDetailLayoutController;->getOffsetOfFirstItemInList(I)I
    invoke-static {v5, v0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$400(Lcom/android/contacts/detail/ContactDetailLayoutController;I)I

    move-result v2

    .line 578
    .local v2, "listOffset":I
    if-ne v2, v4, :cond_2

    .line 579
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    # getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;
    invoke-static {v5}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$100(Lcom/android/contacts/detail/ContactDetailLayoutController;)Lcom/android/contacts/detail/ContactDetailTabCarousel;

    move-result-object v5

    int-to-float v6, v4

    invoke-virtual {v5, v0, v6}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->storeYCoordinate(IF)V

    .line 580
    const/4 v3, 0x0

    .line 598
    .local v3, "shouldAnimateTabCarousel":Z
    :goto_1
    if-eqz v3, :cond_0

    .line 599
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    # getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;
    invoke-static {v5}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$100(Lcom/android/contacts/detail/ContactDetailLayoutController;)Lcom/android/contacts/detail/ContactDetailTabCarousel;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->getStoredYCoordinateForTab(I)F

    move-result v1

    .line 600
    .local v1, "desiredOffset":F
    int-to-float v5, v4

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_0

    .line 601
    invoke-direct {p0, v1}, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->createTabCarouselAnimator(F)V

    .line 602
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->mTabCarouselAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 581
    .end local v1    # "desiredOffset":F
    .end local v3    # "shouldAnimateTabCarousel":Z
    :cond_2
    const/high16 v5, -0x80000000

    if-ne v2, v5, :cond_3

    .line 585
    const/4 v3, 0x1

    .restart local v3    # "shouldAnimateTabCarousel":Z
    goto :goto_1

    .line 586
    .end local v3    # "shouldAnimateTabCarousel":Z
    :cond_3
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 590
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    # getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;
    invoke-static {v5}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$100(Lcom/android/contacts/detail/ContactDetailLayoutController;)Lcom/android/contacts/detail/ContactDetailTabCarousel;

    move-result-object v5

    int-to-float v6, v2

    invoke-virtual {v5, v0, v6}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->storeYCoordinate(IF)V

    .line 591
    const/4 v3, 0x1

    .restart local v3    # "shouldAnimateTabCarousel":Z
    goto :goto_1

    .line 595
    .end local v3    # "shouldAnimateTabCarousel":Z
    :cond_4
    const/4 v3, 0x1

    .restart local v3    # "shouldAnimateTabCarousel":Z
    goto :goto_1
.end method

.method public onPageScrolled(IFI)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 539
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    # getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$000(Lcom/android/contacts/detail/ContactDetailLayoutController;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 544
    :goto_0
    return-void

    .line 541
    :cond_0
    int-to-float v1, p1

    add-float/2addr v1, p2

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    # getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$100(Lcom/android/contacts/detail/ContactDetailLayoutController;)Lcom/android/contacts/detail/ContactDetailTabCarousel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->getAllowedHorizontalScrollLength()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 543
    .local v0, "x":I
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    # getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$100(Lcom/android/contacts/detail/ContactDetailLayoutController;)Lcom/android/contacts/detail/ContactDetailTabCarousel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    # getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$100(Lcom/android/contacts/detail/ContactDetailLayoutController;)Lcom/android/contacts/detail/ContactDetailTabCarousel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->setCurrentTab(I)V

    .line 551
    return-void
.end method
