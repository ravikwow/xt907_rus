.class public Lcom/motorola/blur/setup/SplashScreenActivity;
.super Lcom/motorola/blur/fsm/SetupActivityGroupFSM;
.source "SplashScreenActivity.java"


# instance fields
.field private imageElement:Landroid/widget/ImageView;

.field private textElement:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/blur/setup/SplashScreenActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/setup/SplashScreenActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/motorola/blur/setup/SplashScreenActivity;->textElement:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/blur/setup/SplashScreenActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/setup/SplashScreenActivity;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/motorola/blur/setup/SplashScreenActivity;->fadeOutLogoAndText()V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/blur/setup/SplashScreenActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/setup/SplashScreenActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/motorola/blur/setup/SplashScreenActivity;->imageElement:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/blur/setup/SplashScreenActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/setup/SplashScreenActivity;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/motorola/blur/setup/SplashScreenActivity;->exitSplash()V

    return-void
.end method

.method private exitSplash()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 91
    invoke-virtual {p0}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->finish()V

    .line 92
    return-void
.end method

.method private fadeOutLogoAndText()V
    .locals 3

    .prologue
    .line 65
    const v2, 0x7f040003

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 67
    .local v1, "textFadeOut":Landroid/view/animation/Animation;
    const v2, 0x7f040001

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 68
    .local v0, "logoFadeOut":Landroid/view/animation/Animation;
    new-instance v2, Lcom/motorola/blur/setup/SplashScreenActivity$2;

    invoke-direct {v2, p0, v1}, Lcom/motorola/blur/setup/SplashScreenActivity$2;-><init>(Lcom/motorola/blur/setup/SplashScreenActivity;Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 82
    iget-object v2, p0, Lcom/motorola/blur/setup/SplashScreenActivity;->imageElement:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 83
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v2, 0x7f03001e

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 39
    const v2, 0x7f0c005e

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/motorola/blur/setup/SplashScreenActivity;->imageElement:Landroid/widget/ImageView;

    .line 40
    const v2, 0x7f0c005f

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/motorola/blur/setup/SplashScreenActivity;->textElement:Landroid/widget/TextView;

    .line 42
    const v2, 0x7f040002

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 44
    .local v1, "textFadeIn":Landroid/view/animation/Animation;
    const/high16 v2, 0x7f040000

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 45
    .local v0, "logoFadeIn":Landroid/view/animation/Animation;
    new-instance v2, Lcom/motorola/blur/setup/SplashScreenActivity$1;

    invoke-direct {v2, p0, v1}, Lcom/motorola/blur/setup/SplashScreenActivity$1;-><init>(Lcom/motorola/blur/setup/SplashScreenActivity;Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 57
    iget-object v2, p0, Lcom/motorola/blur/setup/SplashScreenActivity;->imageElement:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 58
    return-void
.end method
