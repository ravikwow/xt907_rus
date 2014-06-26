.class Lcom/android/deskclock/widget/sgv/StaggeredGridView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/widget/sgv/StaggeredGridView;->addStaleViewAnimationEndListener(Landroid/view/View;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/deskclock/widget/sgv/StaggeredGridView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 2047
    iput-object p1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$3;->this$0:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    iput-object p2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2055
    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$3;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;

    .line 2056
    .local v0, "lp":Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;
    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$3;->this$0:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    # getter for: Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mChildRectsForAnimation:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->access$1200(Lcom/android/deskclock/widget/sgv/StaggeredGridView;)Ljava/util/Map;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2057
    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$3;->this$0:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    # getter for: Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mChildRectsForAnimation:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->access$1200(Lcom/android/deskclock/widget/sgv/StaggeredGridView;)Ljava/util/Map;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2060
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$3;->this$0:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$3;->val$view:Landroid/view/View;

    # invokes: Lcom/android/deskclock/widget/sgv/StaggeredGridView;->recycleView(Landroid/view/View;)V
    invoke-static {v1, v2}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->access$1300(Lcom/android/deskclock/widget/sgv/StaggeredGridView;Landroid/view/View;)V

    .line 2061
    return-void
.end method
