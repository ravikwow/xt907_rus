.class Lcom/android/calendar/AllInOneActivity$1;
.super Ljava/lang/Object;
.source "AllInOneActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AllInOneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AllInOneActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/AllInOneActivity;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/calendar/AllInOneActivity$1;->this$0:Lcom/android/calendar/AllInOneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 182
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 186
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity$1;->this$0:Lcom/android/calendar/AllInOneActivity;

    # getter for: Lcom/android/calendar/AllInOneActivity;->mShowSideViews:Z
    invoke-static {v1}, Lcom/android/calendar/AllInOneActivity;->access$000(Lcom/android/calendar/AllInOneActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 187
    .local v0, "visibility":I
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity$1;->this$0:Lcom/android/calendar/AllInOneActivity;

    # getter for: Lcom/android/calendar/AllInOneActivity;->mMiniMonth:Landroid/view/View;
    invoke-static {v1}, Lcom/android/calendar/AllInOneActivity;->access$100(Lcom/android/calendar/AllInOneActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity$1;->this$0:Lcom/android/calendar/AllInOneActivity;

    # getter for: Lcom/android/calendar/AllInOneActivity;->mCalendarsList:Landroid/view/View;
    invoke-static {v1}, Lcom/android/calendar/AllInOneActivity;->access$200(Lcom/android/calendar/AllInOneActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 189
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity$1;->this$0:Lcom/android/calendar/AllInOneActivity;

    # getter for: Lcom/android/calendar/AllInOneActivity;->mMiniMonthContainer:Landroid/view/View;
    invoke-static {v1}, Lcom/android/calendar/AllInOneActivity;->access$300(Lcom/android/calendar/AllInOneActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 190
    return-void

    .line 186
    .end local v0    # "visibility":I
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 194
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 198
    return-void
.end method
