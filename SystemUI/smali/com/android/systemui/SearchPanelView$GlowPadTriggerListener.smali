.class Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;
.super Ljava/lang/Object;
.source "SearchPanelView.java"

# interfaces
.implements Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/SearchPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GlowPadTriggerListener"
.end annotation


# instance fields
.field mWaitingForLaunch:Z

.field final synthetic this$0:Lcom/android/systemui/SearchPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/SearchPanelView;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;->this$0:Lcom/android/systemui/SearchPanelView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishFinalAnimation()V
    .locals 0

    .prologue
    .line 175
    return-void
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "handle"    # I

    .prologue
    .line 146
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "handle"    # I

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;->mWaitingForLaunch:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;->this$0:Lcom/android/systemui/SearchPanelView;

    # getter for: Lcom/android/systemui/SearchPanelView;->mHasTSBFeature:Z
    invoke-static {v0}, Lcom/android/systemui/SearchPanelView;->access$000(Lcom/android/systemui/SearchPanelView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;->this$0:Lcom/android/systemui/SearchPanelView;

    # getter for: Lcom/android/systemui/SearchPanelView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;
    invoke-static {v0}, Lcom/android/systemui/SearchPanelView;->access$100(Lcom/android/systemui/SearchPanelView;)Lcom/android/systemui/statusbar/BaseStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideSearchPanel()V

    .line 161
    :cond_0
    return-void
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "handle"    # I

    .prologue
    .line 149
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "target"    # I

    .prologue
    .line 164
    iget-object v1, p0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;->this$0:Lcom/android/systemui/SearchPanelView;

    # getter for: Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;
    invoke-static {v1}, Lcom/android/systemui/SearchPanelView;->access$200(Lcom/android/systemui/SearchPanelView;)Lcom/android/internal/widget/multiwaveview/GlowPadView;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getResourceIdForTarget(I)I

    move-result v0

    .line 165
    .local v0, "resId":I
    packed-switch v0, :pswitch_data_0

    .line 172
    :goto_0
    return-void

    .line 167
    :pswitch_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;->mWaitingForLaunch:Z

    .line 168
    iget-object v1, p0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;->this$0:Lcom/android/systemui/SearchPanelView;

    # invokes: Lcom/android/systemui/SearchPanelView;->startAssistActivity()V
    invoke-static {v1}, Lcom/android/systemui/SearchPanelView;->access$300(Lcom/android/systemui/SearchPanelView;)V

    .line 169
    iget-object v1, p0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;->this$0:Lcom/android/systemui/SearchPanelView;

    # invokes: Lcom/android/systemui/SearchPanelView;->vibrate()V
    invoke-static {v1}, Lcom/android/systemui/SearchPanelView;->access$400(Lcom/android/systemui/SearchPanelView;)V

    goto :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x1080298
        :pswitch_0
    .end packed-switch
.end method
