.class Lcom/motorola/messaging/view/LinkedTextView$AlphaBackgroundColorSpan;
.super Landroid/text/style/BackgroundColorSpan;
.source "LinkedTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/view/LinkedTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlphaBackgroundColorSpan"
.end annotation


# instance fields
.field private mAlpha:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 474
    invoke-direct {p0, p1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 475
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 478
    invoke-direct {p0, p1}, Landroid/text/style/BackgroundColorSpan;-><init>(Landroid/os/Parcel;)V

    .line 479
    return-void
.end method


# virtual methods
.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 482
    iput p1, p0, Lcom/motorola/messaging/view/LinkedTextView$AlphaBackgroundColorSpan;->mAlpha:I

    .line 483
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 487
    invoke-super {p0, p1}, Landroid/text/style/BackgroundColorSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 488
    iget v0, p1, Landroid/text/TextPaint;->bgColor:I

    .line 489
    .local v0, "color":I
    const v1, 0xffffff

    and-int/2addr v0, v1

    .line 490
    iget v1, p0, Lcom/motorola/messaging/view/LinkedTextView$AlphaBackgroundColorSpan;->mAlpha:I

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 491
    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    .line 492
    return-void
.end method
