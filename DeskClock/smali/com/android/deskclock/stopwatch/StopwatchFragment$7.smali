.class Lcom/android/deskclock/stopwatch/StopwatchFragment$7;
.super Ljava/lang/Object;
.source "StopwatchFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/stopwatch/StopwatchFragment;->setStartStopText(Landroid/view/ViewGroup;Landroid/widget/TextView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

.field final synthetic val$layoutTransition:Landroid/animation/LayoutTransition;

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;Landroid/view/ViewGroup;Landroid/animation/LayoutTransition;)V
    .locals 0

    .prologue
    .line 753
    iput-object p1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$7;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    iput-object p2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$7;->val$parent:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$7;->val$layoutTransition:Landroid/animation/LayoutTransition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .prologue
    .line 762
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$7;->val$parent:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$7;->val$layoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 763
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$7;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 764
    .local v0, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 765
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 767
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
