.class Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$2$1;
.super Ljava/lang/Object;
.source "AlarmClockFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$2;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$2;

.field final synthetic val$addedView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$2;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 913
    iput-object p1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$2$1;->this$2:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$2;

    iput-object p2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$2$1;->val$addedView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 921
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$2$1;->val$addedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$2$1;->val$addedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$2$1$1;

    invoke-direct {v1, p0}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$2$1$1;-><init>(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$2$1;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 938
    :goto_0
    return-void

    .line 936
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$2$1;->this$2:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$2;

    iget-object v0, v0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$2;->val$list:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method
