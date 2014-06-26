.class Lcom/android/deskclock/timer/CountingTimerView$SignedTime;
.super Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;
.source "CountingTimerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/timer/CountingTimerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SignedTime"
.end annotation


# instance fields
.field private mMinusWidth:F


# direct methods
.method public constructor <init>(Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;F)V
    .locals 1
    .param p1, "unsignedTime"    # Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;
    .param p2, "spacingRatio"    # F

    .prologue
    .line 220
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;-><init>(Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;F)V

    .line 217
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/deskclock/timer/CountingTimerView$SignedTime;->mMinusWidth:F

    .line 221
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/String;FF)F
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "time"    # Ljava/lang/String;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 247
    const/4 v3, 0x0

    .line 248
    .local v3, "ii":I
    iget v0, p0, Lcom/android/deskclock/timer/CountingTimerView$SignedTime;->mMinusWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 249
    iget v0, p0, Lcom/android/deskclock/timer/CountingTimerView$SignedTime;->mMinusWidth:F

    const/high16 v1, 0x40000000

    div-float v6, v0, v1

    .line 250
    .local v6, "minusWidth":F
    add-float/2addr p3, v6

    .line 252
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p3, p4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 253
    add-float/2addr p3, v6

    .line 254
    add-int/lit8 v3, v3, 0x1

    .end local v6    # "minusWidth":F
    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    .line 256
    invoke-virtual/range {v0 .. v5}, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->drawTime(Landroid/graphics/Canvas;Ljava/lang/String;IFF)F

    move-result v0

    invoke-virtual {p0}, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->getLabelWidth()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method protected resetWidth()V
    .locals 1

    .prologue
    .line 236
    invoke-super {p0}, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->resetWidth()V

    .line 237
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/deskclock/timer/CountingTimerView$SignedTime;->mMinusWidth:F

    .line 238
    return-void
.end method

.method protected updateWidth(Ljava/lang/String;)V
    .locals 3
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 225
    invoke-super {p0, p1}, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->updateWidth(Ljava/lang/String;)V

    .line 226
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mPaint:Landroid/graphics/Paint;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/android/deskclock/timer/CountingTimerView$SignedTime;->mMinusWidth:F

    .line 228
    iget v0, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mWidth:F

    iget v1, p0, Lcom/android/deskclock/timer/CountingTimerView$SignedTime;->mMinusWidth:F

    iget v2, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mEm:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mWidth:F

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/deskclock/timer/CountingTimerView$SignedTime;->mMinusWidth:F

    goto :goto_0
.end method
