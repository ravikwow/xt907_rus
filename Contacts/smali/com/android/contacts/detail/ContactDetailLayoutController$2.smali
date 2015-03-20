.class Lcom/android/contacts/detail/ContactDetailLayoutController$2;
.super Ljava/lang/Object;
.source "ContactDetailLayoutController.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailLayoutController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailLayoutController;)V
    .locals 0

    .prologue
    .line 650
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$2;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$2;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    const/4 v1, 0x0

    # setter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselIsAnimating:Z
    invoke-static {v0, v1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$702(Lcom/android/contacts/detail/ContactDetailLayoutController;Z)Z

    .line 655
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$2;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    const/4 v1, 0x0

    # setter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselIsAnimating:Z
    invoke-static {v0, v1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$702(Lcom/android/contacts/detail/ContactDetailLayoutController;Z)Z

    .line 660
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$2;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    const/4 v1, 0x1

    # setter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselIsAnimating:Z
    invoke-static {v0, v1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$702(Lcom/android/contacts/detail/ContactDetailLayoutController;Z)Z

    .line 665
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$2;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    const/4 v1, 0x1

    # setter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselIsAnimating:Z
    invoke-static {v0, v1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$702(Lcom/android/contacts/detail/ContactDetailLayoutController;Z)Z

    .line 670
    return-void
.end method
