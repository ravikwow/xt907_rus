.class Lcom/android/settings/wifi/TouchInterceptor$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TouchInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/TouchInterceptor;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/TouchInterceptor;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/TouchInterceptor;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/settings/wifi/TouchInterceptor$1;->this$0:Lcom/android/settings/wifi/TouchInterceptor;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v1, 0x1

    .line 83
    iget-object v2, p0, Lcom/android/settings/wifi/TouchInterceptor$1;->this$0:Lcom/android/settings/wifi/TouchInterceptor;

    # getter for: Lcom/android/settings/wifi/TouchInterceptor;->mDragView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/settings/wifi/TouchInterceptor;->access$000(Lcom/android/settings/wifi/TouchInterceptor;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 84
    const/high16 v2, 0x447a0000

    cmpl-float v2, p3, v2

    if-lez v2, :cond_0

    .line 85
    iget-object v2, p0, Lcom/android/settings/wifi/TouchInterceptor$1;->this$0:Lcom/android/settings/wifi/TouchInterceptor;

    # getter for: Lcom/android/settings/wifi/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/android/settings/wifi/TouchInterceptor;->access$100(Lcom/android/settings/wifi/TouchInterceptor;)Landroid/graphics/Rect;

    move-result-object v0

    .line 86
    .local v0, "r":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/settings/wifi/TouchInterceptor$1;->this$0:Lcom/android/settings/wifi/TouchInterceptor;

    # getter for: Lcom/android/settings/wifi/TouchInterceptor;->mDragView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/settings/wifi/TouchInterceptor;->access$000(Lcom/android/settings/wifi/TouchInterceptor;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 87
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/android/settings/wifi/TouchInterceptor$1;->this$0:Lcom/android/settings/wifi/TouchInterceptor;

    # invokes: Lcom/android/settings/wifi/TouchInterceptor;->stopDragging()V
    invoke-static {v2}, Lcom/android/settings/wifi/TouchInterceptor;->access$200(Lcom/android/settings/wifi/TouchInterceptor;)V

    .line 90
    iget-object v2, p0, Lcom/android/settings/wifi/TouchInterceptor$1;->this$0:Lcom/android/settings/wifi/TouchInterceptor;

    # getter for: Lcom/android/settings/wifi/TouchInterceptor;->mRemoveListener:Lcom/android/settings/wifi/TouchInterceptor$RemoveListener;
    invoke-static {v2}, Lcom/android/settings/wifi/TouchInterceptor;->access$400(Lcom/android/settings/wifi/TouchInterceptor;)Lcom/android/settings/wifi/TouchInterceptor$RemoveListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/TouchInterceptor$1;->this$0:Lcom/android/settings/wifi/TouchInterceptor;

    # getter for: Lcom/android/settings/wifi/TouchInterceptor;->mFirstDragPos:I
    invoke-static {v3}, Lcom/android/settings/wifi/TouchInterceptor;->access$300(Lcom/android/settings/wifi/TouchInterceptor;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/settings/wifi/TouchInterceptor$RemoveListener;->remove(I)V

    .line 91
    iget-object v2, p0, Lcom/android/settings/wifi/TouchInterceptor$1;->this$0:Lcom/android/settings/wifi/TouchInterceptor;

    # invokes: Lcom/android/settings/wifi/TouchInterceptor;->unExpandViews(Z)V
    invoke-static {v2, v1}, Lcom/android/settings/wifi/TouchInterceptor;->access$500(Lcom/android/settings/wifi/TouchInterceptor;Z)V

    .line 97
    .end local v0    # "r":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
