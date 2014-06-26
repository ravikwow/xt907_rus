.class public Lcom/android/deskclock/timer/CountingTimerView;
.super Landroid/view/View;
.source "CountingTimerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/timer/CountingTimerView$SignedTime;,
        Lcom/android/deskclock/timer/CountingTimerView$Hundredths;,
        Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;
    }
.end annotation


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mBigFontSize:F

.field private final mBigHours:Lcom/android/deskclock/timer/CountingTimerView$SignedTime;

.field private final mBigMinutes:Lcom/android/deskclock/timer/CountingTimerView$SignedTime;

.field private final mBigSeconds:Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;

.field mBlinkThread:Ljava/lang/Runnable;

.field private mDefaultColor:I

.field private mHours:Ljava/lang/String;

.field private mHundredths:Ljava/lang/String;

.field private final mMedHundredths:Lcom/android/deskclock/timer/CountingTimerView$Hundredths;

.field private mMinutes:Ljava/lang/String;

.field private final mPaintBigThin:Landroid/graphics/Paint;

.field private final mPaintMed:Landroid/graphics/Paint;

.field private final mPressedColor:I

.field private final mRadiusOffset:F

.field private final mRedColor:I

.field private mRemeasureText:Z

.field private mSeconds:Ljava/lang/String;

.field private mShowTimeStr:Z

.field private final mSmallFontSize:F

.field private mStopStartTextView:Landroid/widget/TextView;

.field private mTextHeight:F

.field private mTotalTextWidth:F

.field private mVirtualButtonEnabled:Z

.field private mVirtualButtonPressedOn:Z

.field private final mWhiteColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 262
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/timer/CountingTimerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 263
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v9, 0x3ecccccd

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 266
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    iput-boolean v6, p0, Lcom/android/deskclock/timer/CountingTimerView;->mShowTimeStr:Z

    .line 61
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBigThin:Landroid/graphics/Paint;

    .line 62
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintMed:Landroid/graphics/Paint;

    .line 69
    iput v8, p0, Lcom/android/deskclock/timer/CountingTimerView;->mTextHeight:F

    .line 71
    iput-boolean v6, p0, Lcom/android/deskclock/timer/CountingTimerView;->mRemeasureText:Z

    .line 81
    iput-boolean v7, p0, Lcom/android/deskclock/timer/CountingTimerView;->mVirtualButtonEnabled:Z

    .line 82
    iput-boolean v7, p0, Lcom/android/deskclock/timer/CountingTimerView;->mVirtualButtonPressedOn:Z

    .line 84
    new-instance v4, Lcom/android/deskclock/timer/CountingTimerView$1;

    invoke-direct {v4, p0}, Lcom/android/deskclock/timer/CountingTimerView$1;-><init>(Lcom/android/deskclock/timer/CountingTimerView;)V

    iput-object v4, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBlinkThread:Ljava/lang/Runnable;

    .line 267
    const-string v4, "accessibility"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    iput-object v4, p0, Lcom/android/deskclock/timer/CountingTimerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 269
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 270
    .local v3, "r":Landroid/content/res/Resources;
    const v4, 0x7f0b0017

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/android/deskclock/timer/CountingTimerView;->mWhiteColor:I

    .line 271
    iget v4, p0, Lcom/android/deskclock/timer/CountingTimerView;->mWhiteColor:I

    iput v4, p0, Lcom/android/deskclock/timer/CountingTimerView;->mDefaultColor:I

    .line 272
    invoke-static {}, Lcom/android/deskclock/Utils;->getPressedColorId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPressedColor:I

    .line 273
    const v4, 0x7f0b0016

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/android/deskclock/timer/CountingTimerView;->mRedColor:I

    .line 274
    const v4, 0x7f090037

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBigFontSize:F

    .line 275
    const v4, 0x7f090038

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, p0, Lcom/android/deskclock/timer/CountingTimerView;->mSmallFontSize:F

    .line 277
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "fonts/AndroidClockMono-Thin.ttf"

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 279
    .local v2, "androidClockMonoThin":Landroid/graphics/Typeface;
    iget-object v4, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBigThin:Landroid/graphics/Paint;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 280
    iget-object v4, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBigThin:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 281
    iget-object v4, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBigThin:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 282
    iget-object v4, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBigThin:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 284
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "fonts/AndroidClockMono-Light.ttf"

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 286
    .local v1, "androidClockMonoLight":Landroid/graphics/Typeface;
    iget-object v4, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintMed:Landroid/graphics/Paint;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 287
    iget-object v4, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintMed:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 288
    iget-object v4, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintMed:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 289
    iget-object v4, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintMed:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 291
    invoke-virtual {p0}, Lcom/android/deskclock/timer/CountingTimerView;->resetTextSize()V

    .line 292
    iget v4, p0, Lcom/android/deskclock/timer/CountingTimerView;->mDefaultColor:I

    invoke-virtual {p0, v4}, Lcom/android/deskclock/timer/CountingTimerView;->setTextColor(I)V

    .line 295
    const-string v4, "%010d"

    new-array v5, v6, [Ljava/lang/Object;

    const v6, 0x75bcd15

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "allDigits":Ljava/lang/String;
    new-instance v4, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;

    iget-object v5, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBigThin:Landroid/graphics/Paint;

    invoke-direct {v4, v5, v8, v0}, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;-><init>(Landroid/graphics/Paint;FLjava/lang/String;)V

    iput-object v4, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBigSeconds:Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;

    .line 297
    new-instance v4, Lcom/android/deskclock/timer/CountingTimerView$SignedTime;

    iget-object v5, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBigSeconds:Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;

    invoke-direct {v4, v5, v9}, Lcom/android/deskclock/timer/CountingTimerView$SignedTime;-><init>(Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;F)V

    iput-object v4, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBigHours:Lcom/android/deskclock/timer/CountingTimerView$SignedTime;

    .line 298
    new-instance v4, Lcom/android/deskclock/timer/CountingTimerView$SignedTime;

    iget-object v5, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBigSeconds:Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;

    invoke-direct {v4, v5, v9}, Lcom/android/deskclock/timer/CountingTimerView$SignedTime;-><init>(Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;F)V

    iput-object v4, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBigMinutes:Lcom/android/deskclock/timer/CountingTimerView$SignedTime;

    .line 299
    new-instance v4, Lcom/android/deskclock/timer/CountingTimerView$Hundredths;

    iget-object v5, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintMed:Landroid/graphics/Paint;

    const/high16 v6, 0x3f000000

    invoke-direct {v4, v5, v6, v0}, Lcom/android/deskclock/timer/CountingTimerView$Hundredths;-><init>(Landroid/graphics/Paint;FLjava/lang/String;)V

    iput-object v4, p0, Lcom/android/deskclock/timer/CountingTimerView;->mMedHundredths:Lcom/android/deskclock/timer/CountingTimerView$Hundredths;

    .line 301
    invoke-static {v3}, Lcom/android/deskclock/Utils;->calculateRadiusOffset(Landroid/content/res/Resources;)F

    move-result v4

    iput v4, p0, Lcom/android/deskclock/timer/CountingTimerView;->mRadiusOffset:F

    .line 302
    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/timer/CountingTimerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/timer/CountingTimerView;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mVirtualButtonEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/deskclock/timer/CountingTimerView;FF)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/timer/CountingTimerView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/timer/CountingTimerView;->withinVirtualButtonBounds(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/deskclock/timer/CountingTimerView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/timer/CountingTimerView;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/CountingTimerView;->virtualButtonPressed(Z)V

    return-void
.end method

.method private calcTotalTextWidth()V
    .locals 3

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBigHours:Lcom/android/deskclock/timer/CountingTimerView$SignedTime;

    iget-object v1, p0, Lcom/android/deskclock/timer/CountingTimerView;->mHours:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->calcTotalWidth(Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBigMinutes:Lcom/android/deskclock/timer/CountingTimerView$SignedTime;

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mMinutes:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->calcTotalWidth(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBigSeconds:Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mSeconds:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->calcTotalWidth(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/deskclock/timer/CountingTimerView;->mMedHundredths:Lcom/android/deskclock/timer/CountingTimerView$Hundredths;

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mHundredths:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->calcTotalWidth(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mTotalTextWidth:F

    .line 425
    return-void
.end method

.method private getDigitsLength()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 415
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mHours:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mMinutes:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    :goto_1
    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mSeconds:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mHundredths:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_3
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mHours:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mMinutes:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mSeconds:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/deskclock/timer/CountingTimerView;->mHundredths:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_3
.end method

.method private getHypotenuseSquared()F
    .locals 3

    .prologue
    .line 467
    iget v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mTotalTextWidth:F

    iget v1, p0, Lcom/android/deskclock/timer/CountingTimerView;->mTotalTextWidth:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/deskclock/timer/CountingTimerView;->mTextHeight:F

    iget v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mTextHeight:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private static getTimeStringForAccessibility(IIIZLandroid/content/res/Resources;)Ljava/lang/String;
    .locals 8
    .param p0, "hours"    # I
    .param p1, "minutes"    # I
    .param p2, "seconds"    # I
    .param p3, "showNeg"    # Z
    .param p4, "r"    # Landroid/content/res/Resources;

    .prologue
    const v7, 0x7f0f0004

    const v6, 0x7f0f0005

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 510
    .local v0, "s":Ljava/lang/StringBuilder;
    if-eqz p3, :cond_0

    .line 513
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    :cond_0
    if-eqz p3, :cond_1

    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 518
    invoke-virtual {p4, v6, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 521
    :cond_1
    if-nez p0, :cond_2

    .line 522
    invoke-virtual {p4, v7, p1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    invoke-virtual {p4, v6, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 530
    :cond_2
    const v1, 0x7f0f0003

    invoke-virtual {p4, v1, p0}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    invoke-virtual {p4, v7, p1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-virtual {p4, v6, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method private setTotalTextWidth()V
    .locals 7

    .prologue
    .line 432
    invoke-direct {p0}, Lcom/android/deskclock/timer/CountingTimerView;->calcTotalTextWidth()V

    .line 436
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 437
    .local v3, "width":I
    if-eqz v3, :cond_0

    .line 442
    const/high16 v4, 0x40800000

    iget v5, p0, Lcom/android/deskclock/timer/CountingTimerView;->mRadiusOffset:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000

    add-float/2addr v4, v5

    float-to-int v4, v4

    sub-int/2addr v3, v4

    .line 444
    const v4, 0x3f59999a

    int-to-float v5, v3

    mul-float/2addr v4, v5

    int-to-float v5, v3

    mul-float v2, v4, v5

    .line 445
    .local v2, "wantDiameter2":F
    invoke-direct {p0}, Lcom/android/deskclock/timer/CountingTimerView;->getHypotenuseSquared()F

    move-result v1

    .line 448
    .local v1, "totalDiameter2":F
    :goto_0
    cmpl-float v4, v1, v2

    if-lez v4, :cond_0

    .line 452
    const v4, 0x3f7d70a4

    div-float v5, v2, v1

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float v0, v4, v5

    .line 453
    .local v0, "sizeRatio":F
    iget-object v4, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBigThin:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBigThin:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    mul-float/2addr v5, v0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 454
    iget-object v4, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintMed:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintMed:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    mul-float/2addr v5, v0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 456
    iget-object v4, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBigThin:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    iput v4, p0, Lcom/android/deskclock/timer/CountingTimerView;->mTextHeight:F

    .line 457
    invoke-direct {p0}, Lcom/android/deskclock/timer/CountingTimerView;->calcTotalTextWidth()V

    .line 458
    invoke-direct {p0}, Lcom/android/deskclock/timer/CountingTimerView;->getHypotenuseSquared()F

    move-result v1

    .line 459
    goto :goto_0

    .line 461
    .end local v0    # "sizeRatio":F
    .end local v1    # "totalDiameter2":F
    .end local v2    # "wantDiameter2":F
    :cond_0
    return-void
.end method

.method private virtualButtonPressed(Z)V
    .locals 2
    .param p1, "pressedOn"    # Z

    .prologue
    .line 550
    iput-boolean p1, p0, Lcom/android/deskclock/timer/CountingTimerView;->mVirtualButtonPressedOn:Z

    .line 551
    iget-object v1, p0, Lcom/android/deskclock/timer/CountingTimerView;->mStopStartTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPressedColor:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 552
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 553
    return-void

    .line 551
    :cond_0
    iget v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mWhiteColor:I

    goto :goto_0
.end method

.method private withinVirtualButtonBounds(FF)Z
    .locals 13
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const-wide/high16 v11, 0x4000000000000000L

    .line 556
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 557
    .local v6, "width":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 558
    .local v4, "height":I
    div-int/lit8 v7, v6, 0x2

    int-to-float v0, v7

    .line 559
    .local v0, "centerX":F
    div-int/lit8 v7, v4, 0x2

    int-to-float v1, v7

    .line 560
    .local v1, "centerY":F
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v5, v7

    .line 563
    .local v5, "radius":F
    sub-float v7, v0, p1

    float-to-double v7, v7

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    sub-float v9, v1, p2

    float-to-double v9, v9

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 564
    .local v2, "distance":D
    float-to-double v7, v5

    cmpg-double v7, v2, v7

    if-gez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    return v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method


# virtual methods
.method public blinkTimeStr(Z)V
    .locals 1
    .param p1, "blink"    # Z

    .prologue
    .line 471
    if-eqz p1, :cond_0

    .line 472
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBlinkThread:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 473
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBlinkThread:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 478
    :goto_0
    return-void

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBlinkThread:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 476
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/deskclock/timer/CountingTimerView;->showTime(Z)V

    goto :goto_0
.end method

.method public getTimeString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 496
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mHundredths:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 497
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mHours:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 498
    const-string v0, "%s:%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mMinutes:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mSeconds:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 504
    :goto_0
    return-object v0

    .line 500
    :cond_0
    const-string v0, "%s:%s:%s"

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mHours:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mMinutes:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mSeconds:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 501
    :cond_1
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mHours:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 502
    const-string v0, "%s:%s.%s"

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mMinutes:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mSeconds:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mHundredths:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 504
    :cond_2
    const-string v0, "%s:%s:%s.%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mHours:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mMinutes:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mSeconds:Ljava/lang/String;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView;->mHundredths:Ljava/lang/String;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v8, 0x40000000

    .line 612
    iget-boolean v6, p0, Lcom/android/deskclock/timer/CountingTimerView;->mShowTimeStr:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/android/deskclock/timer/CountingTimerView;->mVirtualButtonPressedOn:Z

    if-nez v6, :cond_1

    .line 652
    :cond_0
    :goto_0
    return-void

    .line 616
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 617
    .local v1, "width":I
    iget-boolean v6, p0, Lcom/android/deskclock/timer/CountingTimerView;->mRemeasureText:Z

    if-eqz v6, :cond_2

    if-eqz v1, :cond_2

    .line 618
    invoke-direct {p0}, Lcom/android/deskclock/timer/CountingTimerView;->setTotalTextWidth()V

    .line 619
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 620
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/deskclock/timer/CountingTimerView;->mRemeasureText:Z

    .line 623
    :cond_2
    div-int/lit8 v2, v1, 0x2

    .line 624
    .local v2, "xCenter":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v4, v6, 0x2

    .line 626
    .local v4, "yCenter":I
    int-to-float v6, v2

    iget v7, p0, Lcom/android/deskclock/timer/CountingTimerView;->mTotalTextWidth:F

    div-float/2addr v7, v8

    sub-float v3, v6, v7

    .line 627
    .local v3, "xTextStart":F
    int-to-float v6, v4

    iget v7, p0, Lcom/android/deskclock/timer/CountingTimerView;->mTextHeight:F

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iget v7, p0, Lcom/android/deskclock/timer/CountingTimerView;->mTextHeight:F

    const v8, 0x3e0f5c29

    mul-float/2addr v7, v8

    sub-float v5, v6, v7

    .line 631
    .local v5, "yTextStart":F
    iget-boolean v6, p0, Lcom/android/deskclock/timer/CountingTimerView;->mVirtualButtonPressedOn:Z

    if-eqz v6, :cond_6

    .line 632
    iget v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPressedColor:I

    .line 633
    .local v0, "textColor":I
    iget-object v6, p0, Lcom/android/deskclock/timer/CountingTimerView;->mStopStartTextView:Landroid/widget/TextView;

    iget v7, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPressedColor:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 637
    :goto_1
    iget-object v6, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBigThin:Landroid/graphics/Paint;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 638
    iget-object v6, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintMed:Landroid/graphics/Paint;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 640
    iget-object v6, p0, Lcom/android/deskclock/timer/CountingTimerView;->mHours:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 641
    iget-object v6, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBigHours:Lcom/android/deskclock/timer/CountingTimerView$SignedTime;

    iget-object v7, p0, Lcom/android/deskclock/timer/CountingTimerView;->mHours:Ljava/lang/String;

    invoke-virtual {v6, p1, v7, v3, v5}, Lcom/android/deskclock/timer/CountingTimerView$SignedTime;->draw(Landroid/graphics/Canvas;Ljava/lang/String;FF)F

    move-result v3

    .line 643
    :cond_3
    iget-object v6, p0, Lcom/android/deskclock/timer/CountingTimerView;->mMinutes:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 644
    iget-object v6, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBigMinutes:Lcom/android/deskclock/timer/CountingTimerView$SignedTime;

    iget-object v7, p0, Lcom/android/deskclock/timer/CountingTimerView;->mMinutes:Ljava/lang/String;

    invoke-virtual {v6, p1, v7, v3, v5}, Lcom/android/deskclock/timer/CountingTimerView$SignedTime;->draw(Landroid/graphics/Canvas;Ljava/lang/String;FF)F

    move-result v3

    .line 646
    :cond_4
    iget-object v6, p0, Lcom/android/deskclock/timer/CountingTimerView;->mSeconds:Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 647
    iget-object v6, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBigSeconds:Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;

    iget-object v7, p0, Lcom/android/deskclock/timer/CountingTimerView;->mSeconds:Ljava/lang/String;

    invoke-virtual {v6, p1, v7, v3, v5}, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->draw(Landroid/graphics/Canvas;Ljava/lang/String;FF)F

    move-result v3

    .line 649
    :cond_5
    iget-object v6, p0, Lcom/android/deskclock/timer/CountingTimerView;->mHundredths:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 650
    iget-object v6, p0, Lcom/android/deskclock/timer/CountingTimerView;->mMedHundredths:Lcom/android/deskclock/timer/CountingTimerView$Hundredths;

    iget-object v7, p0, Lcom/android/deskclock/timer/CountingTimerView;->mHundredths:Ljava/lang/String;

    invoke-virtual {v6, p1, v7, v3, v5}, Lcom/android/deskclock/timer/CountingTimerView$Hundredths;->draw(Landroid/graphics/Canvas;Ljava/lang/String;FF)F

    goto :goto_0

    .line 635
    .end local v0    # "textColor":I
    :cond_6
    iget v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mDefaultColor:I

    .restart local v0    # "textColor":I
    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 656
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 657
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mRemeasureText:Z

    .line 658
    invoke-virtual {p0}, Lcom/android/deskclock/timer/CountingTimerView;->resetTextSize()V

    .line 659
    return-void
.end method

.method public redTimeStr(ZZ)V
    .locals 1
    .param p1, "red"    # Z
    .param p2, "forceUpdate"    # Z

    .prologue
    .line 486
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mRedColor:I

    :goto_0
    iput v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mDefaultColor:I

    .line 487
    iget v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mDefaultColor:I

    invoke-virtual {p0, v0}, Lcom/android/deskclock/timer/CountingTimerView;->setTextColor(I)V

    .line 488
    if-eqz p2, :cond_0

    .line 489
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 491
    :cond_0
    return-void

    .line 486
    :cond_1
    iget v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mWhiteColor:I

    goto :goto_0
.end method

.method public registerStopTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "stopStartTextView"    # Landroid/widget/TextView;

    .prologue
    .line 662
    iput-object p1, p0, Lcom/android/deskclock/timer/CountingTimerView;->mStopStartTextView:Landroid/widget/TextView;

    .line 663
    return-void
.end method

.method public registerVirtualButtonAction(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 569
    new-instance v0, Lcom/android/deskclock/timer/CountingTimerView$2;

    invoke-direct {v0, p0, p1}, Lcom/android/deskclock/timer/CountingTimerView$2;-><init>(Lcom/android/deskclock/timer/CountingTimerView;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 607
    :goto_0
    return-void

    .line 600
    :cond_0
    new-instance v0, Lcom/android/deskclock/timer/CountingTimerView$3;

    invoke-direct {v0, p0, p1}, Lcom/android/deskclock/timer/CountingTimerView$3;-><init>(Lcom/android/deskclock/timer/CountingTimerView;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected resetTextSize()V
    .locals 2

    .prologue
    .line 305
    iget v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBigFontSize:F

    iput v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mTextHeight:F

    .line 306
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBigThin:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/deskclock/timer/CountingTimerView;->mBigFontSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 307
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintMed:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/deskclock/timer/CountingTimerView;->mSmallFontSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 308
    return-void
.end method

.method protected setTextColor(I)V
    .locals 1
    .param p1, "textColor"    # I

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintBigThin:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 312
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView;->mPaintMed:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 313
    return-void
.end method

.method public setTime(JZZ)V
    .locals 22
    .param p1, "time"    # J
    .param p3, "showHundredths"    # Z
    .param p4, "update"    # Z

    .prologue
    .line 326
    invoke-direct/range {p0 .. p0}, Lcom/android/deskclock/timer/CountingTimerView;->getDigitsLength()I

    move-result v14

    .line 327
    .local v14, "oldLength":I
    const/4 v12, 0x0

    .local v12, "neg":Z
    const/16 v17, 0x0

    .line 329
    .local v17, "showNeg":Z
    const-wide/16 v18, 0x0

    cmp-long v18, p1, v18

    if-gez v18, :cond_0

    .line 330
    move-wide/from16 v0, p1

    neg-long v0, v0

    move-wide/from16 p1, v0

    .line 331
    const/16 v17, 0x1

    move/from16 v12, v17

    .line 334
    .end local v12    # "neg":Z
    :cond_0
    const-wide/16 v18, 0x3e8

    div-long v15, p1, v18

    .line 335
    .local v15, "seconds":J
    const-wide/16 v18, 0x3e8

    mul-long v18, v18, v15

    sub-long v18, p1, v18

    const-wide/16 v20, 0xa

    div-long v8, v18, v20

    .line 336
    .local v8, "hundreds":J
    const-wide/16 v18, 0x3c

    div-long v10, v15, v18

    .line 337
    .local v10, "minutes":J
    const-wide/16 v18, 0x3c

    mul-long v18, v18, v10

    sub-long v15, v15, v18

    .line 338
    const-wide/16 v18, 0x3c

    div-long v6, v10, v18

    .line 339
    .local v6, "hours":J
    const-wide/16 v18, 0x3c

    mul-long v18, v18, v6

    sub-long v10, v10, v18

    .line 340
    const-wide/16 v18, 0x3e7

    cmp-long v18, v6, v18

    if-lez v18, :cond_1

    .line 341
    const-wide/16 v6, 0x0

    .line 347
    :cond_1
    const-wide/16 v18, 0x0

    cmp-long v18, v6, v18

    if-nez v18, :cond_2

    const-wide/16 v18, 0x0

    cmp-long v18, v10, v18

    if-nez v18, :cond_2

    const-wide/16 v18, 0x0

    cmp-long v18, v15, v18

    if-nez v18, :cond_2

    .line 348
    const/16 v17, 0x0

    .line 352
    :cond_2
    if-nez p3, :cond_5

    .line 353
    if-nez v12, :cond_3

    const-wide/16 v18, 0x0

    cmp-long v18, v8, v18

    if-eqz v18, :cond_3

    .line 354
    const-wide/16 v18, 0x1

    add-long v15, v15, v18

    .line 355
    const-wide/16 v18, 0x3c

    cmp-long v18, v15, v18

    if-nez v18, :cond_3

    .line 356
    const-wide/16 v15, 0x0

    .line 357
    const-wide/16 v18, 0x1

    add-long v10, v10, v18

    .line 358
    const-wide/16 v18, 0x3c

    cmp-long v18, v10, v18

    if-nez v18, :cond_3

    .line 359
    const-wide/16 v10, 0x0

    .line 360
    const-wide/16 v18, 0x1

    add-long v6, v6, v18

    .line 364
    :cond_3
    const-wide/16 v18, 0xa

    cmp-long v18, v8, v18

    if-ltz v18, :cond_4

    const-wide/16 v18, 0x5a

    cmp-long v18, v8, v18

    if-lez v18, :cond_5

    .line 365
    :cond_4
    const/16 p4, 0x1

    .line 370
    :cond_5
    const-wide/16 v18, 0xa

    cmp-long v18, v6, v18

    if-ltz v18, :cond_b

    .line 371
    if-eqz v17, :cond_a

    const-string v5, "-%02d"

    .line 372
    .local v5, "format":Ljava/lang/String;
    :goto_0
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/deskclock/timer/CountingTimerView;->mHours:Ljava/lang/String;

    .line 381
    .end local v5    # "format":Ljava/lang/String;
    :goto_1
    const-wide/16 v18, 0xa

    cmp-long v18, v10, v18

    if-gez v18, :cond_6

    const-wide/16 v18, 0x0

    cmp-long v18, v6, v18

    if-lez v18, :cond_f

    .line 382
    :cond_6
    if-eqz v17, :cond_e

    const-wide/16 v18, 0x0

    cmp-long v18, v6, v18

    if-nez v18, :cond_e

    const-string v5, "-%02d"

    .line 383
    .restart local v5    # "format":Ljava/lang/String;
    :goto_2
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/deskclock/timer/CountingTimerView;->mMinutes:Ljava/lang/String;

    .line 390
    :goto_3
    const-string v18, "%02d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/deskclock/timer/CountingTimerView;->mSeconds:Ljava/lang/String;

    .line 393
    if-eqz p3, :cond_11

    .line 394
    const-string v18, "%02d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/deskclock/timer/CountingTimerView;->mHundredths:Ljava/lang/String;

    .line 399
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/deskclock/timer/CountingTimerView;->getDigitsLength()I

    move-result v13

    .line 400
    .local v13, "newLength":I
    if-eq v14, v13, :cond_8

    .line 401
    if-le v14, v13, :cond_7

    .line 402
    invoke-virtual/range {p0 .. p0}, Lcom/android/deskclock/timer/CountingTimerView;->resetTextSize()V

    .line 404
    :cond_7
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/deskclock/timer/CountingTimerView;->mRemeasureText:Z

    .line 407
    :cond_8
    if-eqz p4, :cond_9

    .line 408
    long-to-int v0, v6

    move/from16 v18, v0

    long-to-int v0, v10

    move/from16 v19, v0

    long-to-int v0, v15

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v17

    move-object/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/deskclock/timer/CountingTimerView;->getTimeStringForAccessibility(IIIZLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 410
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 412
    :cond_9
    return-void

    .line 371
    .end local v5    # "format":Ljava/lang/String;
    .end local v13    # "newLength":I
    :cond_a
    const-string v5, "%02d"

    goto/16 :goto_0

    .line 373
    :cond_b
    const-wide/16 v18, 0x0

    cmp-long v18, v6, v18

    if-lez v18, :cond_d

    .line 374
    if-eqz v17, :cond_c

    const-string v5, "-%01d"

    .line 375
    .restart local v5    # "format":Ljava/lang/String;
    :goto_5
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/deskclock/timer/CountingTimerView;->mHours:Ljava/lang/String;

    goto/16 :goto_1

    .line 374
    .end local v5    # "format":Ljava/lang/String;
    :cond_c
    const-string v5, "%01d"

    goto :goto_5

    .line 377
    :cond_d
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/deskclock/timer/CountingTimerView;->mHours:Ljava/lang/String;

    goto/16 :goto_1

    .line 382
    :cond_e
    const-string v5, "%02d"

    goto/16 :goto_2

    .line 385
    :cond_f
    if-eqz v17, :cond_10

    const-wide/16 v18, 0x0

    cmp-long v18, v6, v18

    if-nez v18, :cond_10

    const-string v5, "-%01d"

    .line 386
    .restart local v5    # "format":Ljava/lang/String;
    :goto_6
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/deskclock/timer/CountingTimerView;->mMinutes:Ljava/lang/String;

    goto/16 :goto_3

    .line 385
    .end local v5    # "format":Ljava/lang/String;
    :cond_10
    const-string v5, "%01d"

    goto :goto_6

    .line 396
    .restart local v5    # "format":Ljava/lang/String;
    :cond_11
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/deskclock/timer/CountingTimerView;->mHundredths:Ljava/lang/String;

    goto/16 :goto_4
.end method

.method public setVirtualButtonEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 546
    iput-boolean p1, p0, Lcom/android/deskclock/timer/CountingTimerView;->mVirtualButtonEnabled:Z

    .line 547
    return-void
.end method

.method public showTime(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 481
    iput-boolean p1, p0, Lcom/android/deskclock/timer/CountingTimerView;->mShowTimeStr:Z

    .line 482
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 483
    return-void
.end method
