.class Lcom/android/contacts/activities/PhotoSelectionActivity$3;
.super Ljava/lang/Object;
.source "PhotoSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/PhotoSelectionActivity;->displayPhoto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/PhotoSelectionActivity;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$3;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 334
    iget-object v5, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$3;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    # getter for: Lcom/android/contacts/activities/PhotoSelectionActivity;->mAnimationPending:Z
    invoke-static {v5}, Lcom/android/contacts/activities/PhotoSelectionActivity;->access$100(Lcom/android/contacts/activities/PhotoSelectionActivity;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 335
    iget-object v5, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$3;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    const/4 v6, 0x0

    # setter for: Lcom/android/contacts/activities/PhotoSelectionActivity;->mAnimationPending:Z
    invoke-static {v5, v6}, Lcom/android/contacts/activities/PhotoSelectionActivity;->access$102(Lcom/android/contacts/activities/PhotoSelectionActivity;Z)Z

    .line 336
    const-string v5, "left"

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$3;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    iget-object v8, v8, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    aput v8, v6, v7

    const/4 v7, 0x1

    aput p2, v6, v7

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 338
    .local v2, "pvhLeft":Landroid/animation/PropertyValuesHolder;
    const-string v5, "top"

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$3;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    iget-object v8, v8, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    aput v8, v6, v7

    const/4 v7, 0x1

    aput p3, v6, v7

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 340
    .local v4, "pvhTop":Landroid/animation/PropertyValuesHolder;
    const-string v5, "right"

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$3;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    iget-object v8, v8, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    aput v8, v6, v7

    const/4 v7, 0x1

    aput p4, v6, v7

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 342
    .local v3, "pvhRight":Landroid/animation/PropertyValuesHolder;
    const-string v5, "bottom"

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$3;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    iget-object v8, v8, Lcom/android/contacts/activities/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    aput v8, v6, v7

    const/4 v7, 0x1

    aput p5, v6, v7

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 344
    .local v1, "pvhBottom":Landroid/animation/PropertyValuesHolder;
    iget-object v5, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$3;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    # getter for: Lcom/android/contacts/activities/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/android/contacts/activities/PhotoSelectionActivity;->access$200(Lcom/android/contacts/activities/PhotoSelectionActivity;)Landroid/widget/ImageView;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    const/4 v7, 0x2

    aput-object v3, v6, v7

    const/4 v7, 0x3

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0x64

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 347
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$3;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    # getter for: Lcom/android/contacts/activities/PhotoSelectionActivity;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;
    invoke-static {v5}, Lcom/android/contacts/activities/PhotoSelectionActivity;->access$300(Lcom/android/contacts/activities/PhotoSelectionActivity;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 348
    iget-object v5, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$3;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    # getter for: Lcom/android/contacts/activities/PhotoSelectionActivity;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;
    invoke-static {v5}, Lcom/android/contacts/activities/PhotoSelectionActivity;->access$300(Lcom/android/contacts/activities/PhotoSelectionActivity;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 350
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 352
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    .end local v1    # "pvhBottom":Landroid/animation/PropertyValuesHolder;
    .end local v2    # "pvhLeft":Landroid/animation/PropertyValuesHolder;
    .end local v3    # "pvhRight":Landroid/animation/PropertyValuesHolder;
    .end local v4    # "pvhTop":Landroid/animation/PropertyValuesHolder;
    :cond_1
    return-void
.end method
