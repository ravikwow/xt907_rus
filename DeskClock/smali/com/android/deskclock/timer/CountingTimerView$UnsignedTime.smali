.class Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;
.super Ljava/lang/Object;
.source "CountingTimerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/timer/CountingTimerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnsignedTime"
.end annotation


# instance fields
.field protected mEm:F

.field private mLabelWidth:F

.field protected mPaint:Landroid/graphics/Paint;

.field protected final mSpacingRatio:F

.field private final mWidest:Ljava/lang/String;

.field protected mWidth:F


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;FLjava/lang/String;)V
    .locals 6
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "spacingRatio"    # F
    .param p3, "allDigits"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput v4, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mWidth:F

    .line 106
    iput v4, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mLabelWidth:F

    .line 109
    iput-object p1, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mPaint:Landroid/graphics/Paint;

    .line 110
    iput p2, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mSpacingRatio:F

    .line 112
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 113
    const-string v4, "Locale digits missing - using English"

    invoke-static {v4}, Lcom/android/deskclock/Log;->wtf(Ljava/lang/String;)V

    .line 114
    const-string p3, "0123456789"

    .line 117
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    new-array v3, v4, [F

    .line 118
    .local v3, "widths":[F
    iget-object v4, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, p3, v3}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    move-result v2

    .line 119
    .local v2, "ll":I
    const/4 v1, 0x0

    .line 120
    .local v1, "largest":I
    const/4 v0, 0x1

    .local v0, "ii":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 121
    aget v4, v3, v0

    aget v5, v3, v1

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 122
    move v1, v0

    .line 120
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_2
    aget v4, v3, v1

    iput v4, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mEm:F

    .line 127
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mWidest:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public constructor <init>(Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;F)V
    .locals 1
    .param p1, "unsignedTime"    # Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;
    .param p2, "spacingRatio"    # F

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput v0, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mWidth:F

    .line 106
    iput v0, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mLabelWidth:F

    .line 131
    iget-object v0, p1, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mPaint:Landroid/graphics/Paint;

    .line 132
    iget v0, p1, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mEm:F

    iput v0, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mEm:F

    .line 133
    iget v0, p1, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mWidth:F

    iput v0, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mWidth:F

    .line 134
    iget-object v0, p1, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mWidest:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mWidest:Ljava/lang/String;

    .line 135
    iput p2, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mSpacingRatio:F

    .line 136
    return-void
.end method


# virtual methods
.method public calcTotalWidth(Ljava/lang/String;)F
    .locals 2
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 149
    if-eqz p1, :cond_0

    .line 150
    invoke-virtual {p0, p1}, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->updateWidth(Ljava/lang/String;)V

    .line 151
    iget v0, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mWidth:F

    iget v1, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mLabelWidth:F

    add-float/2addr v0, v1

    .line 154
    :goto_0
    return v0

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->resetWidth()V

    .line 154
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;Ljava/lang/String;FF)F
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "time"    # Ljava/lang/String;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 191
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->drawTime(Landroid/graphics/Canvas;Ljava/lang/String;IFF)F

    move-result v0

    invoke-virtual {p0}, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->getLabelWidth()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method protected drawTime(Landroid/graphics/Canvas;Ljava/lang/String;IFF)F
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "time"    # Ljava/lang/String;
    .param p3, "ii"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F

    .prologue
    .line 172
    iget v1, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mEm:F

    const/high16 v2, 0x40000000

    div-float v0, v1, v2

    .line 173
    .local v0, "textEm":F
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p3, v1, :cond_0

    .line 174
    add-float/2addr p4, v0

    .line 175
    add-int/lit8 v1, p3, 0x1

    invoke-virtual {p2, p3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, p4, p5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 176
    add-float/2addr p4, v0

    .line 177
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 179
    :cond_0
    return p4
.end method

.method public getLabelWidth()F
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mLabelWidth:F

    return v0
.end method

.method protected resetWidth()V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mLabelWidth:F

    iput v0, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mWidth:F

    .line 146
    return-void
.end method

.method protected updateWidth(Ljava/lang/String;)V
    .locals 2
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mWidest:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mEm:F

    .line 140
    iget v0, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mSpacingRatio:F

    iget v1, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mEm:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mLabelWidth:F

    .line 141
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mEm:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mWidth:F

    .line 142
    return-void
.end method
