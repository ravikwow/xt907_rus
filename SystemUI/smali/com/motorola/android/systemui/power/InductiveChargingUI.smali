.class public Lcom/motorola/android/systemui/power/InductiveChargingUI;
.super Landroid/app/Activity;
.source "InductiveChargingUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/systemui/power/InductiveChargingUI$WaveHandler;
    }
.end annotation


# instance fields
.field mChargingImage1:Landroid/widget/ImageView;

.field mChargingImage2:Landroid/widget/ImageView;

.field mChargingImage3:Landroid/widget/ImageView;

.field mChargingImage4:Landroid/widget/ImageView;

.field mChargingText:Landroid/widget/TextView;

.field private mWaveHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mWaveHandler:Landroid/os/Handler;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/android/systemui/power/InductiveChargingUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/android/systemui/power/InductiveChargingUI;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/motorola/android/systemui/power/InductiveChargingUI;->startWaveAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/android/systemui/power/InductiveChargingUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/android/systemui/power/InductiveChargingUI;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/motorola/android/systemui/power/InductiveChargingUI;->startSecondAnimation()V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/android/systemui/power/InductiveChargingUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/android/systemui/power/InductiveChargingUI;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/motorola/android/systemui/power/InductiveChargingUI;->startThirdAnimation()V

    return-void
.end method

.method static synthetic access$300(Lcom/motorola/android/systemui/power/InductiveChargingUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/android/systemui/power/InductiveChargingUI;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/motorola/android/systemui/power/InductiveChargingUI;->startLastAnimation()V

    return-void
.end method

.method static synthetic access$400(Lcom/motorola/android/systemui/power/InductiveChargingUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/android/systemui/power/InductiveChargingUI;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/motorola/android/systemui/power/InductiveChargingUI;->cleanUp()V

    return-void
.end method

.method static synthetic access$500(Lcom/motorola/android/systemui/power/InductiveChargingUI;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/android/systemui/power/InductiveChargingUI;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mWaveHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private cleanUp()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mWaveHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mWaveHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 281
    :cond_0
    invoke-direct {p0}, Lcom/motorola/android/systemui/power/InductiveChargingUI;->stopWaveAnimation()V

    .line 282
    invoke-virtual {p0}, Lcom/motorola/android/systemui/power/InductiveChargingUI;->finish()V

    .line 283
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 73
    const v0, 0x7f08000e

    invoke-virtual {p0, v0}, Lcom/motorola/android/systemui/power/InductiveChargingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mChargingImage1:Landroid/widget/ImageView;

    .line 74
    const v0, 0x7f08000f

    invoke-virtual {p0, v0}, Lcom/motorola/android/systemui/power/InductiveChargingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mChargingImage2:Landroid/widget/ImageView;

    .line 75
    const v0, 0x7f080010

    invoke-virtual {p0, v0}, Lcom/motorola/android/systemui/power/InductiveChargingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mChargingImage3:Landroid/widget/ImageView;

    .line 76
    const v0, 0x7f080011

    invoke-virtual {p0, v0}, Lcom/motorola/android/systemui/power/InductiveChargingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mChargingImage4:Landroid/widget/ImageView;

    .line 77
    const v0, 0x7f080012

    invoke-virtual {p0, v0}, Lcom/motorola/android/systemui/power/InductiveChargingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mChargingText:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mChargingImage1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mChargingImage2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mChargingImage3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mChargingImage4:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mChargingText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    return-void
.end method

.method private startLastAnimation()V
    .locals 3

    .prologue
    .line 254
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3e4ccccd

    const/high16 v2, 0x3f800000

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 255
    .local v0, "anim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 256
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 257
    new-instance v1, Lcom/motorola/android/systemui/power/InductiveChargingUI$4;

    invoke-direct {v1, p0}, Lcom/motorola/android/systemui/power/InductiveChargingUI$4;-><init>(Lcom/motorola/android/systemui/power/InductiveChargingUI;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 272
    iget-object v1, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mChargingImage4:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 273
    iget-object v1, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mChargingImage4:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 274
    return-void
.end method

.method private startSecondAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 207
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3e4ccccd

    const/high16 v2, 0x3f800000

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 208
    .local v0, "anim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 209
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 210
    new-instance v1, Lcom/motorola/android/systemui/power/InductiveChargingUI$2;

    invoke-direct {v1, p0}, Lcom/motorola/android/systemui/power/InductiveChargingUI$2;-><init>(Lcom/motorola/android/systemui/power/InductiveChargingUI;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 224
    iget-object v1, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mChargingImage2:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 225
    iget-object v1, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mChargingImage2:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 226
    iget-object v1, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mChargingImage3:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    iget-object v1, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mChargingImage4:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 228
    return-void
.end method

.method private startThirdAnimation()V
    .locals 3

    .prologue
    .line 231
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3e4ccccd

    const/high16 v2, 0x3f800000

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 232
    .local v0, "anim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 233
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 234
    new-instance v1, Lcom/motorola/android/systemui/power/InductiveChargingUI$3;

    invoke-direct {v1, p0}, Lcom/motorola/android/systemui/power/InductiveChargingUI$3;-><init>(Lcom/motorola/android/systemui/power/InductiveChargingUI;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 248
    iget-object v1, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mChargingImage3:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 249
    iget-object v1, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mChargingImage3:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 250
    iget-object v1, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mChargingImage4:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 251
    return-void
.end method

.method private startWaveAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 179
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3e4ccccd

    const/high16 v2, 0x3f800000

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 180
    .local v0, "anim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 181
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 182
    new-instance v1, Lcom/motorola/android/systemui/power/InductiveChargingUI$1;

    invoke-direct {v1, p0}, Lcom/motorola/android/systemui/power/InductiveChargingUI$1;-><init>(Lcom/motorola/android/systemui/power/InductiveChargingUI;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 196
    iget-object v1, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mChargingImage1:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 197
    iget-object v1, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mChargingText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 198
    iget-object v1, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mChargingImage1:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 199
    iget-object v1, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mChargingText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    iget-object v1, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mChargingImage2:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    iget-object v1, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mChargingImage3:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    iget-object v1, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mChargingImage4:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 204
    return-void
.end method

.method private stopWaveAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 166
    iget-object v0, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mChargingImage1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 167
    iget-object v0, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mChargingImage1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mChargingImage2:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 169
    iget-object v0, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mChargingImage2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mChargingImage3:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 171
    iget-object v0, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mChargingImage3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mChargingImage4:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 173
    iget-object v0, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mChargingImage4:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mChargingText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 175
    iget-object v0, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mChargingText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mWaveHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mWaveHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mWaveHandler:Landroid/os/Handler;

    const/16 v2, 0x69

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 153
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mWaveHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 161
    iget-object v0, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mWaveHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mWaveHandler:Landroid/os/Handler;

    const/16 v2, 0x69

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 162
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mWaveHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mWaveHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mWaveHandler:Landroid/os/Handler;

    const/16 v2, 0x69

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 144
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 146
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 137
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0, v5}, Lcom/motorola/android/systemui/power/InductiveChargingUI;->requestWindowFeature(I)Z

    .line 55
    new-instance v3, Lcom/motorola/android/systemui/power/InductiveChargingUI$WaveHandler;

    invoke-direct {v3, p0}, Lcom/motorola/android/systemui/power/InductiveChargingUI$WaveHandler;-><init>(Lcom/motorola/android/systemui/power/InductiveChargingUI;)V

    iput-object v3, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mWaveHandler:Landroid/os/Handler;

    .line 57
    invoke-virtual {p0}, Lcom/motorola/android/systemui/power/InductiveChargingUI;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 58
    .local v2, "win":Landroid/view/Window;
    const v3, 0x680081

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 63
    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 64
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 65
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040005

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 66
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 67
    invoke-virtual {p0, v1}, Lcom/motorola/android/systemui/power/InductiveChargingUI;->setContentView(Landroid/view/View;)V

    .line 69
    invoke-direct {p0}, Lcom/motorola/android/systemui/power/InductiveChargingUI;->init()V

    .line 70
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 130
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 131
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 125
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 116
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 118
    iget-object v0, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mWaveHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI;->mWaveHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 119
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 111
    return-void
.end method
