.class Lcom/android/deskclock/widget/sgv/StaggeredGridView$1;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/widget/sgv/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/widget/sgv/StaggeredGridView;


# direct methods
.method constructor <init>(Lcom/android/deskclock/widget/sgv/StaggeredGridView;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$1;->this$0:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 360
    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$1;->this$0:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    # getter for: Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mDragState:I
    invoke-static {v1}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->access$200(Lcom/android/deskclock/widget/sgv/StaggeredGridView;)I

    move-result v1

    if-nez v1, :cond_0

    .line 384
    :goto_0
    return-void

    .line 364
    :cond_0
    const/4 v0, 0x1

    .line 365
    .local v0, "enableUpdate":Z
    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$1;->this$0:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    # getter for: Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mLastTouchY:F
    invoke-static {v1}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->access$300(Lcom/android/deskclock/widget/sgv/StaggeredGridView;)F

    move-result v1

    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$1;->this$0:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    # getter for: Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mLowerScrollBound:I
    invoke-static {v2}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->access$400(Lcom/android/deskclock/widget/sgv/StaggeredGridView;)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    .line 368
    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$1;->this$0:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    const/16 v2, -0xa

    # invokes: Lcom/android/deskclock/widget/sgv/StaggeredGridView;->trackMotionScroll(IZ)Z
    invoke-static {v1, v2, v3}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->access$500(Lcom/android/deskclock/widget/sgv/StaggeredGridView;IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 370
    const/4 v0, 0x0

    .line 381
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$1;->this$0:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    # getter for: Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mReorderHelper:Lcom/android/deskclock/widget/sgv/ReorderHelper;
    invoke-static {v1}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->access$700(Lcom/android/deskclock/widget/sgv/StaggeredGridView;)Lcom/android/deskclock/widget/sgv/ReorderHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/deskclock/widget/sgv/ReorderHelper;->enableUpdatesOnDrag(Z)V

    .line 383
    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$1;->this$0:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    # getter for: Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mScrollHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->access$800(Lcom/android/deskclock/widget/sgv/StaggeredGridView;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x5

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 372
    :cond_2
    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$1;->this$0:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    # getter for: Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mLastTouchY:F
    invoke-static {v1}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->access$300(Lcom/android/deskclock/widget/sgv/StaggeredGridView;)F

    move-result v1

    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$1;->this$0:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    # getter for: Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mUpperScrollBound:I
    invoke-static {v2}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->access$600(Lcom/android/deskclock/widget/sgv/StaggeredGridView;)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 375
    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$1;->this$0:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    const/16 v2, 0xa

    # invokes: Lcom/android/deskclock/widget/sgv/StaggeredGridView;->trackMotionScroll(IZ)Z
    invoke-static {v1, v2, v3}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->access$500(Lcom/android/deskclock/widget/sgv/StaggeredGridView;IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 377
    const/4 v0, 0x0

    goto :goto_1
.end method
