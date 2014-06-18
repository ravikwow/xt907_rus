.class Lcom/android/systemui/SearchPanelView$2;
.super Ljava/lang/Object;
.source "SearchPanelView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/SearchPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/SearchPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/SearchPanelView;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/systemui/SearchPanelView$2;->this$0:Lcom/android/systemui/SearchPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 240
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView$2;->this$0:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/SearchPanelView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 241
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView$2;->this$0:Lcom/android/systemui/SearchPanelView;

    # getter for: Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;
    invoke-static {v0}, Lcom/android/systemui/SearchPanelView;->access$200(Lcom/android/systemui/SearchPanelView;)Lcom/android/internal/widget/multiwaveview/GlowPadView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->resumeAnimations()V

    .line 244
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView$2;->this$0:Lcom/android/systemui/SearchPanelView;

    # getter for: Lcom/android/systemui/SearchPanelView;->mHasTSBFeature:Z
    invoke-static {v0}, Lcom/android/systemui/SearchPanelView;->access$000(Lcom/android/systemui/SearchPanelView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView$2;->this$0:Lcom/android/systemui/SearchPanelView;

    const/4 v1, 0x1

    # setter for: Lcom/android/systemui/SearchPanelView;->mFirstTouchDown:Z
    invoke-static {v0, v1}, Lcom/android/systemui/SearchPanelView;->access$502(Lcom/android/systemui/SearchPanelView;Z)Z

    .line 247
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView$2;->this$0:Lcom/android/systemui/SearchPanelView;

    # setter for: Lcom/android/systemui/SearchPanelView;->mFirstValidTouchUp:Z
    invoke-static {v0, v2}, Lcom/android/systemui/SearchPanelView;->access$602(Lcom/android/systemui/SearchPanelView;Z)Z

    .line 249
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView$2;->this$0:Lcom/android/systemui/SearchPanelView;

    # invokes: Lcom/android/systemui/SearchPanelView;->injectFakeTouchEvent(I)V
    invoke-static {v0, v2}, Lcom/android/systemui/SearchPanelView;->access$700(Lcom/android/systemui/SearchPanelView;I)V

    .line 252
    :cond_0
    return v2
.end method
