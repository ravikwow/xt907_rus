.class public Lcom/android/systemui/recent/RecentsActivity$TouchOutsideListener;
.super Ljava/lang/Object;
.source "RecentsActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/RecentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TouchOutsideListener"
.end annotation


# instance fields
.field private mPanel:Lcom/android/systemui/statusbar/StatusBarPanel;

.field final synthetic this$0:Lcom/android/systemui/recent/RecentsActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recent/RecentsActivity;Lcom/android/systemui/statusbar/StatusBarPanel;)V
    .locals 0
    .param p2, "panel"    # Lcom/android/systemui/statusbar/StatusBarPanel;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsActivity$TouchOutsideListener;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p2, p0, Lcom/android/systemui/recent/RecentsActivity$TouchOutsideListener;->mPanel:Lcom/android/systemui/statusbar/StatusBarPanel;

    .line 77
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 80
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 81
    .local v0, "action":I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity$TouchOutsideListener;->mPanel:Lcom/android/systemui/statusbar/StatusBarPanel;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarPanel;->isInContentArea(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity$TouchOutsideListener;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentsActivity;->dismissAndGoHome()V

    .line 85
    const/4 v1, 0x1

    .line 87
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
