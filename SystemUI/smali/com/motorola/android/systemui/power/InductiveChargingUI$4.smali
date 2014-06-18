.class Lcom/motorola/android/systemui/power/InductiveChargingUI$4;
.super Ljava/lang/Object;
.source "InductiveChargingUI.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/android/systemui/power/InductiveChargingUI;->startLastAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/systemui/power/InductiveChargingUI;


# direct methods
.method constructor <init>(Lcom/motorola/android/systemui/power/InductiveChargingUI;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI$4;->this$0:Lcom/motorola/android/systemui/power/InductiveChargingUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI$4;->this$0:Lcom/motorola/android/systemui/power/InductiveChargingUI;

    # getter for: Lcom/motorola/android/systemui/power/InductiveChargingUI;->mWaveHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/motorola/android/systemui/power/InductiveChargingUI;->access$500(Lcom/motorola/android/systemui/power/InductiveChargingUI;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI$4;->this$0:Lcom/motorola/android/systemui/power/InductiveChargingUI;

    # getter for: Lcom/motorola/android/systemui/power/InductiveChargingUI;->mWaveHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/android/systemui/power/InductiveChargingUI;->access$500(Lcom/motorola/android/systemui/power/InductiveChargingUI;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x69

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 262
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 266
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 270
    return-void
.end method
