.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    .prologue
    .line 1810
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1814
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/SearchPanelView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/SearchPanelView;->isTouching()Z

    move-result v0

    .line 1815
    .local v0, "isSearchPanelViewTouching":Z
    if-nez v0, :cond_0

    .line 1816
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hideSearchPanel()V

    .line 1823
    :goto_0
    return-void

    .line 1818
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSearchPanel:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1819
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHideSearchPanel:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1820
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHideSearchPanel:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSearchHoldoff:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
