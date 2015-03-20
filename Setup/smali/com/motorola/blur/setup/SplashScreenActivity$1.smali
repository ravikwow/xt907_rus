.class Lcom/motorola/blur/setup/SplashScreenActivity$1;
.super Ljava/lang/Object;
.source "SplashScreenActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/SplashScreenActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/SplashScreenActivity;

.field final synthetic val$textFadeIn:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/SplashScreenActivity;Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/motorola/blur/setup/SplashScreenActivity$1;->this$0:Lcom/motorola/blur/setup/SplashScreenActivity;

    iput-object p2, p0, Lcom/motorola/blur/setup/SplashScreenActivity$1;->val$textFadeIn:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/motorola/blur/setup/SplashScreenActivity$1;->this$0:Lcom/motorola/blur/setup/SplashScreenActivity;

    # invokes: Lcom/motorola/blur/setup/SplashScreenActivity;->fadeOutLogoAndText()V
    invoke-static {v0}, Lcom/motorola/blur/setup/SplashScreenActivity;->access$100(Lcom/motorola/blur/setup/SplashScreenActivity;)V

    .line 51
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 54
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/motorola/blur/setup/SplashScreenActivity$1;->this$0:Lcom/motorola/blur/setup/SplashScreenActivity;

    # getter for: Lcom/motorola/blur/setup/SplashScreenActivity;->textElement:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/motorola/blur/setup/SplashScreenActivity;->access$000(Lcom/motorola/blur/setup/SplashScreenActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/setup/SplashScreenActivity$1;->val$textFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 48
    return-void
.end method
