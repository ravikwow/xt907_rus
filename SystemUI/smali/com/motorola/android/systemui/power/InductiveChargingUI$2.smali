.class Lcom/motorola/android/systemui/power/InductiveChargingUI$2;
.super Ljava/lang/Object;
.source "InductiveChargingUI.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/android/systemui/power/InductiveChargingUI;->startSecondAnimation()V
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
    .line 210
    iput-object p1, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI$2;->this$0:Lcom/motorola/android/systemui/power/InductiveChargingUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI$2;->this$0:Lcom/motorola/android/systemui/power/InductiveChargingUI;

    # getter for: Lcom/motorola/android/systemui/power/InductiveChargingUI;->mWaveHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/motorola/android/systemui/power/InductiveChargingUI;->access$500(Lcom/motorola/android/systemui/power/InductiveChargingUI;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI$2;->this$0:Lcom/motorola/android/systemui/power/InductiveChargingUI;

    # getter for: Lcom/motorola/android/systemui/power/InductiveChargingUI;->mWaveHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/android/systemui/power/InductiveChargingUI;->access$500(Lcom/motorola/android/systemui/power/InductiveChargingUI;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 214
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 218
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 222
    return-void
.end method
