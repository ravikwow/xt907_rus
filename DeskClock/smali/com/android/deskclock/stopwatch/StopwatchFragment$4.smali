.class Lcom/android/deskclock/stopwatch/StopwatchFragment$4;
.super Ljava/lang/Object;
.source "StopwatchFragment.java"

# interfaces
.implements Landroid/animation/LayoutTransition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/stopwatch/StopwatchFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;


# direct methods
.method constructor <init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$4;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 5
    .param p1, "transition"    # Landroid/animation/LayoutTransition;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "transitionType"    # I

    .prologue
    .line 412
    const/4 v4, 0x3

    if-ne p4, v4, :cond_1

    .line 414
    iget-object v4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$4;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    # getter for: Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsList:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->access$000(Lcom/android/deskclock/stopwatch/StopwatchFragment;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v2

    .line 415
    .local v2, "last":I
    iget-object v4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$4;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    # getter for: Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsList:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->access$000(Lcom/android/deskclock/stopwatch/StopwatchFragment;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v3

    .line 416
    .local v3, "visibleIndex":I
    :goto_0
    if-gt v3, v2, :cond_1

    .line 417
    iget-object v4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$4;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    # getter for: Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsList:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->access$000(Lcom/android/deskclock/stopwatch/StopwatchFragment;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 418
    .local v1, "lapView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 419
    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 420
    .local v0, "animation":Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 416
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 426
    .end local v1    # "lapView":Landroid/view/View;
    .end local v2    # "last":I
    .end local v3    # "visibleIndex":I
    :cond_1
    return-void
.end method

.method public startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 19
    .param p1, "transition"    # Landroid/animation/LayoutTransition;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "transitionType"    # I

    .prologue
    .line 377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/deskclock/stopwatch/StopwatchFragment$4;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    # getter for: Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->access$000(Lcom/android/deskclock/stopwatch/StopwatchFragment;)Landroid/widget/ListView;

    move-result-object v2

    move-object/from16 v0, p3

    if-ne v0, v2, :cond_5

    .line 378
    const/4 v2, 0x3

    move/from16 v0, p4

    if-ne v0, v2, :cond_5

    .line 380
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const/16 v17, 0x1

    .line 382
    .local v17, "shiftX":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/deskclock/stopwatch/StopwatchFragment$4;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    # getter for: Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->access$000(Lcom/android/deskclock/stopwatch/StopwatchFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v12

    .line 383
    .local v12, "first":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/deskclock/stopwatch/StopwatchFragment$4;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    # getter for: Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->access$000(Lcom/android/deskclock/stopwatch/StopwatchFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v14

    .line 385
    .local v14, "last":I
    if-ge v14, v12, :cond_0

    .line 386
    move v14, v12

    .line 388
    :cond_0
    const/4 v2, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/animation/LayoutTransition;->getDuration(I)J

    move-result-wide v10

    .line 389
    .local v10, "duration":J
    sub-int v2, v14, v12

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    div-long v2, v10, v2

    const-wide/16 v6, 0x5

    div-long v15, v2, v6

    .line 390
    .local v15, "offset":J
    move/from16 v18, v12

    .local v18, "visibleIndex":I
    :goto_1
    move/from16 v0, v18

    if-gt v0, v14, :cond_5

    .line 391
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/deskclock/stopwatch/StopwatchFragment$4;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    # getter for: Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->access$000(Lcom/android/deskclock/stopwatch/StopwatchFragment;)Landroid/widget/ListView;

    move-result-object v2

    sub-int v3, v18, v12

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 392
    .local v13, "lapView":Landroid/view/View;
    if-eqz v13, :cond_1

    .line 393
    if-eqz v17, :cond_3

    const/high16 v2, 0x3f800000

    sub-int v3, v18, v12

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    mul-float v5, v2, v3

    .line 394
    .local v5, "toXValue":F
    :goto_2
    if-eqz v17, :cond_4

    const/4 v9, 0x0

    .line 395
    .local v9, "toYValue":F
    :goto_3
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 400
    .local v1, "animation":Landroid/view/animation/TranslateAnimation;
    sub-int v2, v14, v18

    int-to-long v2, v2

    mul-long/2addr v2, v15

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 401
    invoke-virtual {v1, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 402
    invoke-virtual {v13, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 390
    .end local v1    # "animation":Landroid/view/animation/TranslateAnimation;
    .end local v5    # "toXValue":F
    .end local v9    # "toYValue":F
    :cond_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 380
    .end local v10    # "duration":J
    .end local v12    # "first":I
    .end local v13    # "lapView":Landroid/view/View;
    .end local v14    # "last":I
    .end local v15    # "offset":J
    .end local v17    # "shiftX":Z
    .end local v18    # "visibleIndex":I
    :cond_2
    const/16 v17, 0x0

    goto :goto_0

    .line 393
    .restart local v10    # "duration":J
    .restart local v12    # "first":I
    .restart local v13    # "lapView":Landroid/view/View;
    .restart local v14    # "last":I
    .restart local v15    # "offset":J
    .restart local v17    # "shiftX":Z
    .restart local v18    # "visibleIndex":I
    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 394
    .restart local v5    # "toXValue":F
    :cond_4
    const/high16 v2, 0x40800000

    sub-int v3, v18, v12

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    mul-float v9, v2, v3

    goto :goto_3

    .line 407
    .end local v5    # "toXValue":F
    .end local v10    # "duration":J
    .end local v12    # "first":I
    .end local v13    # "lapView":Landroid/view/View;
    .end local v14    # "last":I
    .end local v15    # "offset":J
    .end local v17    # "shiftX":Z
    .end local v18    # "visibleIndex":I
    :cond_5
    return-void
.end method
