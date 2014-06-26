.class Lcom/android/deskclock/AlarmClockFragment$4;
.super Ljava/lang/Object;
.source "AlarmClockFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmClockFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmClockFragment;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmClockFragment;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/deskclock/AlarmClockFragment$4;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 257
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$4;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mEmptyView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/deskclock/AlarmClockFragment;->access$200(Lcom/android/deskclock/AlarmClockFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 262
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 267
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$4;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mEmptyView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/deskclock/AlarmClockFragment;->access$200(Lcom/android/deskclock/AlarmClockFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 252
    return-void
.end method
