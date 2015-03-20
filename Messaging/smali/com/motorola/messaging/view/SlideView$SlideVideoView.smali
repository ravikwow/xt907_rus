.class Lcom/motorola/messaging/view/SlideView$SlideVideoView;
.super Landroid/widget/VideoView;
.source "SlideView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/view/SlideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SlideVideoView"
.end annotation


# static fields
.field private static final DEFAULT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

.field private static final HORIZONTAL_ADJUST_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

.field private static final VERTICAL_ADJUST_PARAMS:Landroid/widget/LinearLayout$LayoutParams;


# instance fields
.field private mTextPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x40000000

    const/16 v2, 0x11

    const/4 v1, -0x2

    .line 616
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/motorola/messaging/view/SlideView$SlideVideoView;->DEFAULT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    .line 617
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    sput-object v0, Lcom/motorola/messaging/view/SlideView$SlideVideoView;->VERTICAL_ADJUST_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    .line 618
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    sput-object v0, Lcom/motorola/messaging/view/SlideView$SlideVideoView;->HORIZONTAL_ADJUST_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    .line 624
    sget-object v0, Lcom/motorola/messaging/view/SlideView$SlideVideoView;->VERTICAL_ADJUST_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 625
    sget-object v0, Lcom/motorola/messaging/view/SlideView$SlideVideoView;->HORIZONTAL_ADJUST_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 626
    sget-object v0, Lcom/motorola/messaging/view/SlideView$SlideVideoView;->DEFAULT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 627
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 630
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 631
    sget-object v0, Lcom/motorola/messaging/view/SlideView$SlideVideoView;->DEFAULT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 632
    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 651
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 652
    .local v1, "parentWidth":I
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 653
    .local v0, "parentHeight":I
    # getter for: Lcom/motorola/messaging/view/SlideView;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/view/SlideView;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 654
    const-string v2, "SlideVideoView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parentHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", height="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const-string v2, "SlideVideoView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parentWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", width="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    :cond_0
    iget v2, p0, Lcom/motorola/messaging/view/SlideView$SlideVideoView;->mTextPosition:I

    # invokes: Lcom/motorola/messaging/view/SlideView;->isVerticalDisposition(I)Z
    invoke-static {v2}, Lcom/motorola/messaging/view/SlideView;->access$1000(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 659
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 660
    sget-object v2, Lcom/motorola/messaging/view/SlideView$SlideVideoView;->VERTICAL_ADJUST_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 667
    :cond_1
    :goto_0
    return-void

    .line 663
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 664
    sget-object v2, Lcom/motorola/messaging/view/SlideView$SlideVideoView;->HORIZONTAL_ADJUST_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setTextPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 635
    iput p1, p0, Lcom/motorola/messaging/view/SlideView$SlideVideoView;->mTextPosition:I

    .line 640
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 641
    sget-object v0, Lcom/motorola/messaging/view/SlideView$SlideVideoView;->HORIZONTAL_ADJUST_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 645
    :goto_0
    return-void

    .line 643
    :cond_0
    invoke-virtual {p0, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    goto :goto_0
.end method
