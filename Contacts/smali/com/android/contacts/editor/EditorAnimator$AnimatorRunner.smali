.class Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EditorAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/EditorAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimatorRunner"
.end annotation


# instance fields
.field private mLastAnimator:Landroid/animation/Animator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 237
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public endOldAnimation()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;->mLastAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;->mLastAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 262
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;->mLastAnimator:Landroid/animation/Animator;

    .line 243
    return-void
.end method

.method public run(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 246
    .local p1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;->run(Ljava/util/List;Landroid/animation/Animator$AnimatorListener;)V

    .line 247
    return-void
.end method

.method public run(Ljava/util/List;Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p2, "listener"    # Landroid/animation/Animator$AnimatorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/animation/Animator$AnimatorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 250
    .local p1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 251
    .local v0, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 252
    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 253
    :cond_0
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 254
    iput-object v0, p0, Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;->mLastAnimator:Landroid/animation/Animator;

    .line 255
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 256
    return-void
.end method
