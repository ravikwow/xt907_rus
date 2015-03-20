.class public Lcom/motorola/contacts/widget/ListAccelerator;
.super Landroid/widget/FrameLayout;
.source "ListAccelerator.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/contacts/widget/ListAccelerator$Interface;,
        Lcom/motorola/contacts/widget/ListAccelerator$ScrollFade;
    }
.end annotation


# static fields
.field private static MIN_HEIGHT:I

.field private static koreanHangulAlphabetNumberOfLetters:I

.field private static mAcceleratorType:I

.field private static mFontSize:I

.field private static mNumberOfLetters:I

.field private static romanEnglishAlphabetNumberOfLetters:I


# instance fields
.field FIRST_NON_ENGLISH_LETTER:C

.field LAST_NON_ENGLISH_LETTER:C

.field final TAG:Ljava/lang/String;

.field private isTwoPanel:Z

.field private mAlphabetList:Z

.field private mChangedBounds:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentThumb:Landroid/graphics/drawable/Drawable;

.field private mDragging:Z

.field private mDrawOverlay:Z

.field private mHandler:Landroid/os/Handler;

.field private mHighlighterSize:I

.field private mHightlightY:I

.field mIndicator:Landroid/graphics/Bitmap;

.field private mLetterSpacing:D

.field private mLetterStatus:[Z

.field mLetterTable:[C

.field private mList:Landroid/widget/ListView;

.field private mListAcceleratorAlphaExist:I

.field private mListAcceleratorAlphaList:I

.field private mListAcceleratorAlphaNotExist:I

.field private mListAcceleratorAlphaSpecial:I

.field private mListAdapter:Landroid/widget/BaseAdapter;

.field private mListOffset:I

.field mMatchingLetterIndex:[I

.field mMatchingLetterTable:[C

.field private mMeContact:Ljava/lang/String;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mOverlaySize:I

.field private mPaint:Landroid/graphics/Paint;

.field private mScrollFade:Lcom/motorola/contacts/widget/ListAccelerator$ScrollFade;

.field private mSectionText:Ljava/lang/String;

.field private mSections:[Ljava/lang/Object;

.field private mThumbH:I

.field private mThumbVisible:Z

.field private mThumbW:I

.field private mThumbY:I

.field private mVisibleItem:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    sput v0, Lcom/motorola/contacts/widget/ListAccelerator;->mAcceleratorType:I

    .line 104
    const/16 v0, 0x1c

    sput v0, Lcom/motorola/contacts/widget/ListAccelerator;->romanEnglishAlphabetNumberOfLetters:I

    .line 105
    const/16 v0, 0x18

    sput v0, Lcom/motorola/contacts/widget/ListAccelerator;->koreanHangulAlphabetNumberOfLetters:I

    .line 119
    const/16 v0, 0x10

    sput v0, Lcom/motorola/contacts/widget/ListAccelerator;->mFontSize:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 154
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 66
    const-string v0, "ListAccelerator"

    iput-object v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->TAG:Ljava/lang/String;

    .line 82
    iput-char v2, p0, Lcom/motorola/contacts/widget/ListAccelerator;->FIRST_NON_ENGLISH_LETTER:C

    .line 83
    iput-char v2, p0, Lcom/motorola/contacts/widget/ListAccelerator;->LAST_NON_ENGLISH_LETTER:C

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mAlphabetList:Z

    .line 103
    const/16 v0, 0x1e

    iput v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mHighlighterSize:I

    .line 118
    const-wide v0, 0x401f333333333333L

    iput-wide v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mLetterSpacing:D

    .line 126
    const/16 v0, 0x68

    iput v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mOverlaySize:I

    .line 136
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mSectionText:Ljava/lang/String;

    .line 139
    iput-object v3, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mIndicator:Landroid/graphics/Bitmap;

    .line 141
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mHandler:Landroid/os/Handler;

    .line 149
    iput-boolean v2, p0, Lcom/motorola/contacts/widget/ListAccelerator;->isTwoPanel:Z

    .line 1165
    iput-object v3, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 155
    iput-object p1, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mContext:Landroid/content/Context;

    .line 156
    invoke-direct {p0, p1}, Lcom/motorola/contacts/widget/ListAccelerator;->init(Landroid/content/Context;)V

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 160
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    const-string v0, "ListAccelerator"

    iput-object v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->TAG:Ljava/lang/String;

    .line 82
    iput-char v2, p0, Lcom/motorola/contacts/widget/ListAccelerator;->FIRST_NON_ENGLISH_LETTER:C

    .line 83
    iput-char v2, p0, Lcom/motorola/contacts/widget/ListAccelerator;->LAST_NON_ENGLISH_LETTER:C

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mAlphabetList:Z

    .line 103
    const/16 v0, 0x1e

    iput v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mHighlighterSize:I

    .line 118
    const-wide v0, 0x401f333333333333L

    iput-wide v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mLetterSpacing:D

    .line 126
    const/16 v0, 0x68

    iput v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mOverlaySize:I

    .line 136
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mSectionText:Ljava/lang/String;

    .line 139
    iput-object v3, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mIndicator:Landroid/graphics/Bitmap;

    .line 141
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mHandler:Landroid/os/Handler;

    .line 149
    iput-boolean v2, p0, Lcom/motorola/contacts/widget/ListAccelerator;->isTwoPanel:Z

    .line 1165
    iput-object v3, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 161
    iput-object p1, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mContext:Landroid/content/Context;

    .line 162
    invoke-direct {p0, p1}, Lcom/motorola/contacts/widget/ListAccelerator;->init(Landroid/content/Context;)V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 166
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    const-string v0, "ListAccelerator"

    iput-object v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->TAG:Ljava/lang/String;

    .line 82
    iput-char v2, p0, Lcom/motorola/contacts/widget/ListAccelerator;->FIRST_NON_ENGLISH_LETTER:C

    .line 83
    iput-char v2, p0, Lcom/motorola/contacts/widget/ListAccelerator;->LAST_NON_ENGLISH_LETTER:C

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mAlphabetList:Z

    .line 103
    const/16 v0, 0x1e

    iput v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mHighlighterSize:I

    .line 118
    const-wide v0, 0x401f333333333333L

    iput-wide v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mLetterSpacing:D

    .line 126
    const/16 v0, 0x68

    iput v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mOverlaySize:I

    .line 136
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mSectionText:Ljava/lang/String;

    .line 139
    iput-object v3, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mIndicator:Landroid/graphics/Bitmap;

    .line 141
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mHandler:Landroid/os/Handler;

    .line 149
    iput-boolean v2, p0, Lcom/motorola/contacts/widget/ListAccelerator;->isTwoPanel:Z

    .line 1165
    iput-object v3, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 167
    iput-object p1, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mContext:Landroid/content/Context;

    .line 168
    invoke-direct {p0, p1}, Lcom/motorola/contacts/widget/ListAccelerator;->init(Landroid/content/Context;)V

    .line 169
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/contacts/widget/ListAccelerator;)I
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/widget/ListAccelerator;

    .prologue
    .line 63
    iget v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbY:I

    return v0
.end method

.method static synthetic access$100(Lcom/motorola/contacts/widget/ListAccelerator;)I
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/widget/ListAccelerator;

    .prologue
    .line 63
    iget v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbW:I

    return v0
.end method

.method static synthetic access$200(Lcom/motorola/contacts/widget/ListAccelerator;)I
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/widget/ListAccelerator;

    .prologue
    .line 63
    iget v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbH:I

    return v0
.end method

.method static synthetic access$300(Lcom/motorola/contacts/widget/ListAccelerator;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/contacts/widget/ListAccelerator;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/motorola/contacts/widget/ListAccelerator;->removeThumb()V

    return-void
.end method

.method private cancelFling()V
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    .line 944
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 946
    .local v8, "cancelFling":Landroid/view/MotionEvent;
    iget-object v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 947
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 948
    return-void
.end method

.method private drawAlphabetList(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x1

    .line 306
    const/16 v1, 0x41

    .line 308
    .local v1, "displayChar":C
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 309
    .local v0, "alphaList":Landroid/graphics/Paint;
    iget v6, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mListAcceleratorAlphaList:I

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 310
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 311
    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 312
    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 313
    sget v6, Lcom/motorola/contacts/widget/ListAccelerator;->mFontSize:I

    int-to-float v6, v6

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 316
    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 320
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget v6, Lcom/motorola/contacts/widget/ListAccelerator;->mNumberOfLetters:I

    if-ge v2, v6, :cond_4

    .line 322
    const-string v3, ""

    .line 324
    .local v3, "letterToDisplay":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 325
    iget v6, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mListAcceleratorAlphaSpecial:I

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 326
    const-string v3, "\u2191"

    .line 341
    :goto_1
    const/4 v4, 0x0

    .line 342
    .local v4, "x":F
    const/4 v5, 0x0

    .line 343
    .local v5, "y":F
    invoke-direct {p0}, Lcom/motorola/contacts/widget/ListAccelerator;->showOnLeft()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 344
    const/high16 v4, 0x41900000

    .line 345
    invoke-virtual {p0}, Lcom/motorola/contacts/widget/ListAccelerator;->getTopOffset()I

    move-result v6

    add-int/lit8 v6, v6, 0x12

    int-to-double v7, v2

    iget-wide v9, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mLetterSpacing:D

    sget v11, Lcom/motorola/contacts/widget/ListAccelerator;->mFontSize:I

    int-to-double v11, v11

    add-double/2addr v9, v11

    mul-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    int-to-float v5, v6

    .line 350
    :goto_2
    invoke-virtual {p1, v3, v4, v5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 320
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 327
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_0
    sget v6, Lcom/motorola/contacts/widget/ListAccelerator;->mNumberOfLetters:I

    add-int/lit8 v6, v6, -0x1

    if-ne v2, v6, :cond_1

    iget-object v6, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mLetterTable:[C

    aget-char v6, v6, v2

    const/16 v7, 0x2193

    if-ne v6, v7, :cond_1

    .line 328
    iget v6, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mListAcceleratorAlphaSpecial:I

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 329
    const-string v3, "\u2193"

    goto :goto_1

    .line 332
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mLetterTable:[C

    aget-char v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 334
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-direct {p0, v6}, Lcom/motorola/contacts/widget/ListAccelerator;->isAlphabetExist(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 335
    iget v6, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mListAcceleratorAlphaExist:I

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 337
    :cond_2
    iget v6, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mListAcceleratorAlphaNotExist:I

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 347
    .restart local v4    # "x":F
    .restart local v5    # "y":F
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    add-int/lit8 v6, v6, -0x12

    int-to-float v4, v6

    .line 348
    invoke-virtual {p0}, Lcom/motorola/contacts/widget/ListAccelerator;->getTopOffset()I

    move-result v6

    add-int/lit8 v6, v6, 0x12

    int-to-double v7, v2

    iget-wide v9, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mLetterSpacing:D

    sget v11, Lcom/motorola/contacts/widget/ListAccelerator;->mFontSize:I

    int-to-double v11, v11

    add-double/2addr v9, v11

    mul-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    int-to-float v5, v6

    goto :goto_2

    .line 355
    .end local v3    # "letterToDisplay":Ljava/lang/String;
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_4
    return-void
.end method

.method private drawHighlighter(Landroid/graphics/Canvas;I)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "indicatorYVal"    # I

    .prologue
    const/4 v8, 0x0

    .line 439
    iget-object v6, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mSectionText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 440
    iget-object v6, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mSectionText:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 443
    .local v2, "c":C
    const/16 v6, 0x41

    if-lt v2, v6, :cond_0

    const/16 v6, 0x5a

    if-le v2, v6, :cond_1

    :cond_0
    iget-char v6, p0, Lcom/motorola/contacts/widget/ListAccelerator;->FIRST_NON_ENGLISH_LETTER:C

    if-lt v2, v6, :cond_2

    iget-char v6, p0, Lcom/motorola/contacts/widget/ListAccelerator;->LAST_NON_ENGLISH_LETTER:C

    if-gt v2, v6, :cond_2

    :cond_1
    invoke-direct {p0, v2}, Lcom/motorola/contacts/widget/ListAccelerator;->isAlphabetExist(C)Z

    move-result v6

    if-nez v6, :cond_2

    .line 479
    .end local v2    # "c":C
    :goto_0
    return-void

    .line 450
    :cond_2
    iget-object v3, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mPaint:Landroid/graphics/Paint;

    .line 451
    .local v3, "paint":Landroid/graphics/Paint;
    const/16 v6, 0xc8

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 452
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 453
    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 454
    iget v6, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mHighlighterSize:I

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 455
    const/4 v0, 0x0

    .line 456
    .local v0, "bitmapX":F
    const/4 v1, 0x0

    .line 457
    .local v1, "bitmapY":F
    const/4 v4, 0x0

    .line 458
    .local v4, "textX":F
    const/4 v5, 0x0

    .line 459
    .local v5, "textY":F
    invoke-direct {p0}, Lcom/motorola/contacts/widget/ListAccelerator;->showOnLeft()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 460
    iget v6, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbW:I

    iget-object v7, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v0, v6

    .line 461
    iget-object v6, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int v6, p2, v6

    int-to-float v1, v6

    .line 462
    cmpg-float v6, v1, v8

    if-gez v6, :cond_3

    const/4 v1, 0x0

    .line 463
    :cond_3
    iget-object v6, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float v4, v0, v6

    .line 464
    iget-object v6, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v6, v1

    iget v7, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mHighlighterSize:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float v5, v6, v7

    .line 474
    :goto_1
    iget-object v6, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v6, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 477
    iget-object v6, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mSectionText:Ljava/lang/String;

    invoke-virtual {p1, v6, v4, v5, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 468
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbW:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v0, v6

    .line 469
    iget-object v6, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int v6, p2, v6

    int-to-float v1, v6

    .line 470
    cmpg-float v6, v1, v8

    if-gez v6, :cond_5

    const/4 v1, 0x0

    .line 471
    :cond_5
    iget-object v6, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float v4, v0, v6

    .line 472
    iget-object v6, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v6, v1

    iget v7, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mHighlighterSize:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float v5, v6, v7

    goto :goto_1
.end method

.method private getSectionForPosition(I)I
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 660
    if-gez p1, :cond_1

    .line 685
    :cond_0
    :goto_0
    return v5

    .line 661
    :cond_1
    iget-object v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mListAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Landroid/widget/SectionIndexer;

    .line 662
    .local v0, "baseAdapter":Landroid/widget/SectionIndexer;
    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v3

    .line 664
    .local v3, "section":I
    if-ltz v3, :cond_5

    .line 666
    iget-object v7, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mSections:[Ljava/lang/Object;

    aget-object v4, v7, v3

    check-cast v4, Ljava/lang/String;

    .line 668
    .local v4, "title":Ljava/lang/String;
    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v3, :cond_0

    .line 670
    :cond_2
    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mSections:[Ljava/lang/Object;

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    if-ne v3, v7, :cond_3

    .line 671
    sget v5, Lcom/motorola/contacts/widget/ListAccelerator;->mNumberOfLetters:I

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 674
    :cond_3
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 677
    .local v1, "c":C
    iget-object v5, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mMatchingLetterTable:[C

    invoke-static {v5, v1}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v2

    .line 678
    .local v2, "index":I
    if-ltz v2, :cond_4

    iget-object v5, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mMeContact:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 679
    iget-object v5, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mMatchingLetterIndex:[I

    aget v5, v5, v2

    goto :goto_0

    :cond_4
    move v5, v6

    .line 681
    goto :goto_0

    .end local v1    # "c":C
    .end local v2    # "index":I
    .end local v4    # "title":Ljava/lang/String;
    :cond_5
    move v5, v6

    .line 685
    goto :goto_0
.end method

.method private getSections()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 692
    iget-object v9, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mList:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 693
    .local v0, "adapter":Landroid/widget/Adapter;
    instance-of v9, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v9, :cond_0

    move-object v9, v0

    .line 694
    check-cast v9, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v9}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v9

    iput v9, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mListOffset:I

    .line 695
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 698
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_0
    instance-of v9, v0, Landroid/widget/SectionIndexer;

    if-eqz v9, :cond_1

    instance-of v9, v0, Landroid/widget/BaseAdapter;

    if-eqz v9, :cond_1

    .line 699
    iget-object v9, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mList:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v9

    invoke-virtual {p0}, Lcom/motorola/contacts/widget/ListAccelerator;->getAbovePartitionCount()I

    move-result v10

    sub-int/2addr v9, v10

    iput v9, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mListOffset:I

    move-object v9, v0

    .line 700
    check-cast v9, Landroid/widget/BaseAdapter;

    iput-object v9, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 701
    iget-object v9, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mListAdapter:Landroid/widget/BaseAdapter;

    check-cast v9, Landroid/widget/SectionIndexer;

    invoke-interface {v9}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v9

    iput-object v9, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mSections:[Ljava/lang/Object;

    .line 706
    :cond_1
    const/4 v5, 0x0

    .line 707
    .local v5, "listCount":I
    if-eqz v0, :cond_2

    .line 708
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v5

    .line 712
    :goto_0
    const/4 v7, 0x0

    .line 714
    .local v7, "sectionLength":I
    iget-object v9, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mSections:[Ljava/lang/Object;

    if-eqz v9, :cond_3

    .line 715
    iget-object v9, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mSections:[Ljava/lang/Object;

    array-length v7, v9

    .line 721
    :goto_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    sget v9, Lcom/motorola/contacts/widget/ListAccelerator;->mNumberOfLetters:I

    if-ge v3, v9, :cond_4

    .line 722
    iget-object v9, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mLetterStatus:[Z

    aput-boolean v11, v9, v3

    .line 721
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 710
    .end local v3    # "i":I
    .end local v7    # "sectionLength":I
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 717
    .restart local v7    # "sectionLength":I
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 725
    .restart local v3    # "i":I
    :cond_4
    const/4 v6, 0x0

    .local v6, "loop":I
    :goto_3
    if-ge v6, v7, :cond_8

    .line 726
    iget-object v9, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mSections:[Ljava/lang/Object;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 727
    .local v8, "text":Ljava/lang/String;
    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 730
    .local v1, "c":C
    iget-object v9, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mMeContact:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    const/16 v9, 0x41

    if-lt v1, v9, :cond_5

    const/16 v9, 0x5a

    if-le v1, v9, :cond_6

    :cond_5
    iget-char v9, p0, Lcom/motorola/contacts/widget/ListAccelerator;->FIRST_NON_ENGLISH_LETTER:C

    if-lt v1, v9, :cond_7

    iget-char v9, p0, Lcom/motorola/contacts/widget/ListAccelerator;->LAST_NON_ENGLISH_LETTER:C

    if-gt v1, v9, :cond_7

    .line 732
    :cond_6
    iget-object v9, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mMatchingLetterTable:[C

    invoke-static {v9, v1}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v4

    .line 733
    .local v4, "index":I
    if-ltz v4, :cond_7

    .line 734
    iget-object v9, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mLetterStatus:[Z

    iget-object v10, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mMatchingLetterIndex:[I

    aget v10, v10, v4

    aput-boolean v12, v9, v10

    .line 725
    .end local v4    # "index":I
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 740
    .end local v1    # "c":C
    .end local v8    # "text":Ljava/lang/String;
    :cond_8
    invoke-virtual {p0}, Lcom/motorola/contacts/widget/ListAccelerator;->IsAccceratorEnabled()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v10

    if-ge v9, v10, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    sget v10, Lcom/motorola/contacts/widget/ListAccelerator;->MIN_HEIGHT:I

    if-le v9, v10, :cond_9

    if-le v7, v12, :cond_9

    const/4 v9, 0x7

    if-le v5, v9, :cond_9

    .line 745
    iput-boolean v12, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mAlphabetList:Z

    .line 746
    iget-object v9, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mList:Landroid/widget/ListView;

    invoke-virtual {v9, v11}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 747
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 748
    .local v2, "h":I
    invoke-virtual {p0}, Lcom/motorola/contacts/widget/ListAccelerator;->getTopOffset()I

    move-result v9

    sub-int/2addr v2, v9

    .line 749
    sget v9, Lcom/motorola/contacts/widget/ListAccelerator;->mFontSize:I

    sget v10, Lcom/motorola/contacts/widget/ListAccelerator;->mNumberOfLetters:I

    mul-int/2addr v9, v10

    sub-int v9, v2, v9

    int-to-double v9, v9

    sget v11, Lcom/motorola/contacts/widget/ListAccelerator;->mNumberOfLetters:I

    int-to-double v11, v11

    div-double/2addr v9, v11

    iput-wide v9, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mLetterSpacing:D

    .line 755
    .end local v2    # "h":I
    :goto_4
    return-void

    .line 751
    :cond_9
    iput-boolean v11, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mAlphabetList:Z

    .line 752
    iget-object v9, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mList:Landroid/widget/ListView;

    invoke-virtual {v9, v12}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    goto :goto_4
.end method

.method private init(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v9, 0x7f08001e

    const/16 v8, 0x18

    const/4 v7, 0x1

    const/16 v6, 0x29

    const/16 v5, 0x1c

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 184
    .local v2, "res":Landroid/content/res/Resources;
    invoke-direct {p0}, Lcom/motorola/contacts/widget/ListAccelerator;->setAppropriateThumb()V

    .line 186
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 187
    iget-object v3, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/motorola/contacts/widget/ListAccelerator;->isTwoPanel:Z

    .line 189
    invoke-virtual {p0, p0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 191
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mListAcceleratorAlphaList:I

    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08001f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mListAcceleratorAlphaExist:I

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080020

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mListAcceleratorAlphaNotExist:I

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080021

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mListAcceleratorAlphaSpecial:I

    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0073

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mHighlighterSize:I

    .line 199
    new-instance v3, Lcom/motorola/contacts/widget/ListAccelerator$ScrollFade;

    invoke-direct {v3, p0}, Lcom/motorola/contacts/widget/ListAccelerator$ScrollFade;-><init>(Lcom/motorola/contacts/widget/ListAccelerator;)V

    iput-object v3, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mScrollFade:Lcom/motorola/contacts/widget/ListAccelerator$ScrollFade;

    .line 200
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mPaint:Landroid/graphics/Paint;

    .line 201
    iget-object v3, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 202
    iget-object v3, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 203
    iget-object v3, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mOverlaySize:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 204
    iget-object v3, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 205
    iget-object v3, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 207
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 208
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v7, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 209
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200f2

    invoke-static {v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mIndicator:Landroid/graphics/Bitmap;

    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0217

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mMeContact:Ljava/lang/String;

    .line 223
    sget v3, Lcom/motorola/contacts/widget/ListAccelerator;->mAcceleratorType:I

    packed-switch v3, :pswitch_data_0

    .line 272
    sget v3, Lcom/motorola/contacts/widget/ListAccelerator;->romanEnglishAlphabetNumberOfLetters:I

    sput v3, Lcom/motorola/contacts/widget/ListAccelerator;->mNumberOfLetters:I

    .line 274
    new-array v3, v5, [C

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mLetterTable:[C

    .line 279
    new-array v3, v5, [C

    fill-array-data v3, :array_1

    iput-object v3, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mMatchingLetterTable:[C

    .line 284
    new-array v3, v5, [I

    fill-array-data v3, :array_2

    iput-object v3, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mMatchingLetterIndex:[I

    .line 293
    :goto_0
    sget v3, Lcom/motorola/contacts/widget/ListAccelerator;->mNumberOfLetters:I

    new-array v3, v3, [Z

    iput-object v3, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mLetterStatus:[Z

    .line 294
    sget v3, Lcom/motorola/contacts/widget/ListAccelerator;->mFontSize:I

    sget v4, Lcom/motorola/contacts/widget/ListAccelerator;->mNumberOfLetters:I

    mul-int/2addr v3, v4

    sput v3, Lcom/motorola/contacts/widget/ListAccelerator;->MIN_HEIGHT:I

    .line 296
    return-void

    .line 231
    :pswitch_0
    sget v3, Lcom/motorola/contacts/widget/ListAccelerator;->koreanHangulAlphabetNumberOfLetters:I

    sput v3, Lcom/motorola/contacts/widget/ListAccelerator;->mNumberOfLetters:I

    .line 232
    const/16 v3, 0x12

    sput v3, Lcom/motorola/contacts/widget/ListAccelerator;->mFontSize:I

    .line 233
    const/16 v3, 0x3131

    iput-char v3, p0, Lcom/motorola/contacts/widget/ListAccelerator;->FIRST_NON_ENGLISH_LETTER:C

    .line 234
    const/16 v3, 0x314e

    iput-char v3, p0, Lcom/motorola/contacts/widget/ListAccelerator;->LAST_NON_ENGLISH_LETTER:C

    .line 236
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "defaultLocaleString":Ljava/lang/String;
    const-string v3, "ko"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ko_KR"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 238
    :cond_0
    new-array v3, v8, [C

    fill-array-data v3, :array_3

    iput-object v3, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mLetterTable:[C

    .line 243
    new-array v3, v6, [I

    fill-array-data v3, :array_4

    iput-object v3, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mMatchingLetterIndex:[I

    .line 260
    :goto_1
    new-array v3, v6, [C

    fill-array-data v3, :array_5

    iput-object v3, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mMatchingLetterTable:[C

    goto :goto_0

    .line 249
    :cond_1
    new-array v3, v8, [C

    fill-array-data v3, :array_6

    iput-object v3, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mLetterTable:[C

    .line 254
    new-array v3, v6, [I

    fill-array-data v3, :array_7

    iput-object v3, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mMatchingLetterIndex:[I

    goto :goto_1

    .line 223
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 274
    :array_0
    .array-data 2
        0x2191s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x2193s
    .end array-data

    .line 279
    :array_1
    .array-data 2
        0x23s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x2as
    .end array-data

    .line 284
    :array_2
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
    .end array-data

    .line 238
    :array_3
    .array-data 2
        0x2191s
        0x3131s
        0x3134s
        0x3137s
        0x3139s
        0x3141s
        0x3142s
        0x3145s
        0x3147s
        0x3148s
        0x314as
        0x314bs
        0x314cs
        0x314ds
        0x314es
        0x41s
        0x44s
        0x47s
        0x4as
        0x4ds
        0x50s
        0x53s
        0x56s
        0x5as
    .end array-data

    .line 243
    :array_4
    .array-data 4
        0x0
        0xf
        0xf
        0xf
        0x10
        0x10
        0x10
        0x11
        0x11
        0x11
        0x12
        0x12
        0x12
        0x13
        0x13
        0x13
        0x14
        0x14
        0x14
        0x15
        0x15
        0x15
        0x16
        0x16
        0x16
        0x16
        0x17
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
    .end array-data

    .line 260
    :array_5
    .array-data 2
        0x23s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x3131s
        0x3134s
        0x3137s
        0x3139s
        0x3141s
        0x3142s
        0x3145s
        0x3147s
        0x3148s
        0x314as
        0x314bs
        0x314cs
        0x314ds
        0x314es
    .end array-data

    .line 249
    nop

    :array_6
    .array-data 2
        0x2191s
        0x41s
        0x44s
        0x47s
        0x4as
        0x4ds
        0x50s
        0x53s
        0x56s
        0x5as
        0x3131s
        0x3134s
        0x3137s
        0x3139s
        0x3141s
        0x3142s
        0x3145s
        0x3147s
        0x3148s
        0x314as
        0x314bs
        0x314cs
        0x314ds
        0x314es
    .end array-data

    .line 254
    :array_7
    .array-data 4
        0x0
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
        0x3
        0x3
        0x3
        0x4
        0x4
        0x4
        0x5
        0x5
        0x5
        0x6
        0x6
        0x6
        0x7
        0x7
        0x7
        0x8
        0x8
        0x8
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
    .end array-data
.end method

.method private isAlphabetExist(C)Z
    .locals 3
    .param p1, "c"    # C

    .prologue
    const/4 v1, 0x0

    .line 1051
    const/16 v2, 0x41

    if-lt p1, v2, :cond_0

    const/16 v2, 0x5a

    if-le p1, v2, :cond_1

    :cond_0
    iget-char v2, p0, Lcom/motorola/contacts/widget/ListAccelerator;->FIRST_NON_ENGLISH_LETTER:C

    if-lt p1, v2, :cond_2

    iget-char v2, p0, Lcom/motorola/contacts/widget/ListAccelerator;->LAST_NON_ENGLISH_LETTER:C

    if-gt p1, v2, :cond_2

    .line 1053
    :cond_1
    iget-object v2, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mMatchingLetterTable:[C

    invoke-static {v2, p1}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v0

    .line 1054
    .local v0, "index":I
    if-ltz v0, :cond_2

    .line 1055
    iget-object v1, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mLetterStatus:[Z

    iget-object v2, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mMatchingLetterIndex:[I

    aget v2, v2, v0

    aget-boolean v1, v1, v2

    .line 1060
    .end local v0    # "index":I
    :cond_2
    return v1
.end method

.method private removeThumb()V
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbVisible:Z

    .line 301
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 302
    return-void
.end method

.method private scrollTo(Landroid/view/MotionEvent;)V
    .locals 15
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 849
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 850
    .local v11, "viewHeight":I
    invoke-virtual {p0}, Lcom/motorola/contacts/widget/ListAccelerator;->getTopOffset()I

    move-result v12

    sub-int/2addr v11, v12

    .line 852
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    float-to-int v12, v12

    iget v13, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbH:I

    sub-int/2addr v12, v13

    add-int/lit8 v4, v12, 0xa

    .line 853
    .local v4, "newmThumbY":I
    iput v4, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mHightlightY:I

    .line 855
    iget v12, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mHightlightY:I

    invoke-virtual {p0}, Lcom/motorola/contacts/widget/ListAccelerator;->getTopOffset()I

    move-result v13

    if-gt v12, v13, :cond_3

    .line 856
    invoke-virtual {p0}, Lcom/motorola/contacts/widget/ListAccelerator;->getTopOffset()I

    move-result v12

    iput v12, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mHightlightY:I

    .line 861
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/contacts/widget/ListAccelerator;->getTopOffset()I

    move-result v12

    sub-int/2addr v4, v12

    .line 863
    if-gez v4, :cond_4

    .line 864
    const/4 v4, 0x0

    .line 869
    :cond_1
    :goto_1
    int-to-float v12, v4

    iget v13, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbH:I

    sub-int v13, v11, v13

    int-to-float v13, v13

    div-float v6, v12, v13

    .line 871
    .local v6, "position":F
    sget v12, Lcom/motorola/contacts/widget/ListAccelerator;->mNumberOfLetters:I

    add-int/lit8 v12, v12, -0x1

    int-to-float v12, v12

    mul-float/2addr v12, v6

    float-to-int v2, v12

    .line 872
    .local v2, "index":I
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mDrawOverlay:Z

    .line 875
    if-nez v2, :cond_5

    .line 877
    iget-object v12, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mLetterTable:[C

    aget-char v10, v12, v2

    .line 879
    .local v10, "toShow":C
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 880
    .local v8, "strbuild":Ljava/lang/StringBuilder;
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 881
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mSectionText:Ljava/lang/String;

    .line 883
    iget-object v12, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mList:Landroid/widget/ListView;

    iget v13, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mListOffset:I

    invoke-virtual {v12, v13}, Landroid/widget/ListView;->setSelection(I)V

    .line 940
    .end local v8    # "strbuild":Ljava/lang/StringBuilder;
    .end local v10    # "toShow":C
    :cond_2
    :goto_2
    return-void

    .line 857
    .end local v2    # "index":I
    .end local v6    # "position":F
    :cond_3
    iget v12, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mHightlightY:I

    iget v13, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbH:I

    add-int/2addr v12, v13

    if-le v12, v11, :cond_0

    .line 858
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v12

    iget v13, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbH:I

    sub-int/2addr v12, v13

    iput v12, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mHightlightY:I

    goto :goto_0

    .line 865
    :cond_4
    iget v12, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbH:I

    add-int/2addr v12, v4

    if-le v12, v11, :cond_1

    .line 866
    iget v12, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbH:I

    sub-int v4, v11, v12

    goto :goto_1

    .line 884
    .restart local v2    # "index":I
    .restart local v6    # "position":F
    :cond_5
    const/4 v12, 0x1

    if-lt v2, v12, :cond_c

    sget v12, Lcom/motorola/contacts/widget/ListAccelerator;->mNumberOfLetters:I

    add-int/lit8 v12, v12, -0x1

    if-gt v2, v12, :cond_c

    iget-object v12, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mLetterTable:[C

    aget-char v12, v12, v2

    const/16 v13, 0x2193

    if-eq v12, v13, :cond_c

    .line 886
    iget-object v12, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mLetterTable:[C

    aget-char v10, v12, v2

    .line 888
    .restart local v10    # "toShow":C
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 889
    .restart local v8    # "strbuild":Ljava/lang/StringBuilder;
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 890
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mSectionText:Ljava/lang/String;

    .line 892
    const/4 v7, 0x0

    .local v7, "sectionIndex":I
    :goto_3
    iget-object v12, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mSections:[Ljava/lang/Object;

    array-length v12, v12

    if-ge v7, v12, :cond_2

    .line 893
    iget-object v12, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mSections:[Ljava/lang/Object;

    aget-object v12, v12, v7

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 896
    .local v9, "text":Ljava/lang/String;
    iget-object v12, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mSectionText:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-ltz v12, :cond_b

    iget-object v12, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mMeContact:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    iget-char v12, p0, Lcom/motorola/contacts/widget/ListAccelerator;->FIRST_NON_ENGLISH_LETTER:C

    if-eqz v12, :cond_6

    iget-object v12, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mSectionText:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    iget-char v13, p0, Lcom/motorola/contacts/widget/ListAccelerator;->FIRST_NON_ENGLISH_LETTER:C

    add-int/lit8 v13, v13, -0x5a

    if-ge v12, v13, :cond_b

    .line 901
    :cond_6
    iget-object v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mListAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Landroid/widget/SectionIndexer;

    .line 904
    .local v0, "baseAdapter":Landroid/widget/SectionIndexer;
    const/4 v1, 0x0

    .line 905
    .local v1, "existMatchingLetter":Z
    iget-object v12, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mMatchingLetterTable:[C

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v12, v13}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v3

    .line 906
    .local v3, "match_index":I
    if-ltz v3, :cond_7

    .line 907
    const/4 v1, 0x1

    .line 911
    :cond_7
    iget-object v12, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mSectionText:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    if-eqz v1, :cond_9

    .line 912
    :cond_8
    iget-object v12, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mList:Landroid/widget/ListView;

    invoke-interface {v0, v7}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v13

    iget v14, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mListOffset:I

    add-int/2addr v13, v14

    invoke-virtual {v12, v13}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_2

    .line 916
    :cond_9
    invoke-interface {v0, v7}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v5

    .line 918
    .local v5, "nextPosition":I
    if-lez v5, :cond_a

    .line 919
    iget-object v12, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mList:Landroid/widget/ListView;

    add-int/lit8 v13, v5, -0x1

    iget v14, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mListOffset:I

    add-int/2addr v13, v14

    invoke-virtual {v12, v13}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_2

    .line 921
    :cond_a
    iget-object v12, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mList:Landroid/widget/ListView;

    iget v13, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mListOffset:I

    invoke-virtual {v12, v13}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_2

    .line 892
    .end local v0    # "baseAdapter":Landroid/widget/SectionIndexer;
    .end local v1    # "existMatchingLetter":Z
    .end local v3    # "match_index":I
    .end local v5    # "nextPosition":I
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 927
    .end local v7    # "sectionIndex":I
    .end local v8    # "strbuild":Ljava/lang/StringBuilder;
    .end local v9    # "text":Ljava/lang/String;
    .end local v10    # "toShow":C
    :cond_c
    sget v12, Lcom/motorola/contacts/widget/ListAccelerator;->mNumberOfLetters:I

    add-int/lit8 v12, v12, -0x1

    if-ne v2, v12, :cond_2

    .line 929
    iget-object v12, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mLetterTable:[C

    aget-char v10, v12, v2

    .line 932
    .restart local v10    # "toShow":C
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 933
    .restart local v8    # "strbuild":Ljava/lang/StringBuilder;
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 934
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mSectionText:Ljava/lang/String;

    .line 936
    iget-object v12, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mList:Landroid/widget/ListView;

    iget-object v13, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mListAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v13}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    iget v14, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mListOffset:I

    add-int/2addr v13, v14

    invoke-virtual {v12, v13}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_2
.end method

.method private setAppropriateScrollSettings(III)V
    .locals 4
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .prologue
    .line 631
    iget-boolean v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mAlphabetList:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 635
    sget v0, Lcom/motorola/contacts/widget/ListAccelerator;->mFontSize:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mLetterSpacing:D

    add-double/2addr v0, v2

    double-to-float v0, v0

    invoke-virtual {p0}, Lcom/motorola/contacts/widget/ListAccelerator;->getVisibleOffset()I

    move-result v1

    add-int/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/motorola/contacts/widget/ListAccelerator;->getSectionForPosition(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/motorola/contacts/widget/ListAccelerator;->getTopOffset()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbY:I

    .line 640
    :cond_0
    return-void
.end method

.method private setAppropriateThumb()V
    .locals 3

    .prologue
    .line 644
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 646
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0200f1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/motorola/contacts/widget/ListAccelerator;->useThumbDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 649
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbW:I

    .line 651
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbH:I

    .line 654
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mChangedBounds:Z

    .line 655
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 656
    return-void
.end method

.method private showOnLeft()Z
    .locals 1

    .prologue
    .line 481
    iget-boolean v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->isTwoPanel:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/contacts/widget/ListAccelerator;->isScrollBarLeftForTwoPanel()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private useThumbDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 177
    iput-object p2, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mCurrentThumb:Landroid/graphics/drawable/Drawable;

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mChangedBounds:Z

    .line 179
    return-void
.end method


# virtual methods
.method IsAccceratorEnabled()Z
    .locals 2

    .prologue
    .line 1128
    iget-object v1, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mListAdapter:Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mListAdapter:Landroid/widget/BaseAdapter;

    instance-of v1, v1, Lcom/motorola/contacts/widget/ListAccelerator$Interface;

    if-eqz v1, :cond_0

    .line 1129
    iget-object v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mListAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/motorola/contacts/widget/ListAccelerator$Interface;

    .line 1130
    .local v0, "acc_inter":Lcom/motorola/contacts/widget/ListAccelerator$Interface;
    invoke-interface {v0}, Lcom/motorola/contacts/widget/ListAccelerator$Interface;->isNeeded()Z

    move-result v1

    .line 1132
    .end local v0    # "acc_inter":Lcom/motorola/contacts/widget/ListAccelerator$Interface;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 359
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 363
    invoke-direct {p0}, Lcom/motorola/contacts/widget/ListAccelerator;->getSections()V

    .line 365
    iget-boolean v7, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mAlphabetList:Z

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    if-le v7, v8, :cond_0

    .line 368
    invoke-direct {p0, p1}, Lcom/motorola/contacts/widget/ListAccelerator;->drawAlphabetList(Landroid/graphics/Canvas;)V

    .line 373
    iget-boolean v7, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbVisible:Z

    if-nez v7, :cond_1

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    iget v6, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbY:I

    .line 378
    .local v6, "y":I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 379
    .local v5, "viewWidth":I
    iget-object v4, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mScrollFade:Lcom/motorola/contacts/widget/ListAccelerator$ScrollFade;

    .line 382
    .local v4, "scrollFade":Lcom/motorola/contacts/widget/ListAccelerator$ScrollFade;
    const/4 v0, -0x1

    .line 383
    .local v0, "alpha":I
    iget-boolean v7, v4, Lcom/motorola/contacts/widget/ListAccelerator$ScrollFade;->mStarted:Z

    if-eqz v7, :cond_3

    .line 384
    invoke-virtual {v4}, Lcom/motorola/contacts/widget/ListAccelerator$ScrollFade;->getAlpha()I

    move-result v0

    .line 385
    const/16 v7, 0x7f

    if-ge v0, v7, :cond_2

    .line 386
    iget-object v7, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mCurrentThumb:Landroid/graphics/drawable/Drawable;

    mul-int/lit8 v8, v0, 0x2

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 390
    :cond_2
    const/4 v2, 0x0

    .line 391
    .local v2, "left":I
    const/4 v3, 0x0

    .line 392
    .local v3, "right":I
    invoke-direct {p0}, Lcom/motorola/contacts/widget/ListAccelerator;->showOnLeft()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 393
    iget v7, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbW:I

    mul-int/2addr v7, v0

    div-int/lit16 v3, v7, 0xff

    .line 394
    const/4 v2, 0x0

    .line 399
    :goto_1
    iget-object v7, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mCurrentThumb:Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x0

    iget v9, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbH:I

    invoke-virtual {v7, v2, v8, v3, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 402
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mChangedBounds:Z

    .line 405
    .end local v2    # "left":I
    .end local v3    # "right":I
    :cond_3
    const/4 v7, 0x0

    int-to-float v8, v6

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 407
    iget-object v7, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mCurrentThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 408
    const/4 v7, 0x0

    neg-int v8, v6

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 411
    iget-boolean v7, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mDragging:Z

    if-eqz v7, :cond_6

    iget-boolean v7, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mDrawOverlay:Z

    if-eqz v7, :cond_6

    iget-boolean v7, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mAlphabetList:Z

    if-eqz v7, :cond_6

    .line 413
    iget v7, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mHighlighterSize:I

    int-to-double v7, v7

    const-wide/high16 v9, 0x3ff8000000000000L

    mul-double/2addr v7, v9

    double-to-int v7, v7

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-double v8, v8

    iget v10, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mHighlighterSize:I

    int-to-double v10, v10

    const-wide/high16 v12, 0x3ff8000000000000L

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    double-to-int v8, v8

    iget v9, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mHightlightY:I

    mul-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    div-int/2addr v8, v9

    add-int v1, v7, v8

    .line 417
    .local v1, "indicatorYVal":I
    iget-object v7, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mSectionText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    .line 419
    invoke-direct {p0, p1, v1}, Lcom/motorola/contacts/widget/ListAccelerator;->drawHighlighter(Landroid/graphics/Canvas;I)V

    goto :goto_0

    .line 396
    .end local v1    # "indicatorYVal":I
    .restart local v2    # "left":I
    .restart local v3    # "right":I
    :cond_4
    move v3, v5

    .line 397
    iget v7, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbW:I

    mul-int/2addr v7, v0

    div-int/lit16 v7, v7, 0xff

    sub-int v2, v5, v7

    goto :goto_1

    .line 422
    .end local v2    # "left":I
    .end local v3    # "right":I
    .restart local v1    # "indicatorYVal":I
    :cond_5
    iget-boolean v7, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mAlphabetList:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 423
    const-string v7, "*"

    iput-object v7, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mSectionText:Ljava/lang/String;

    .line 424
    invoke-direct {p0, p1, v1}, Lcom/motorola/contacts/widget/ListAccelerator;->drawHighlighter(Landroid/graphics/Canvas;I)V

    goto/16 :goto_0

    .line 427
    .end local v1    # "indicatorYVal":I
    :cond_6
    if-nez v0, :cond_7

    .line 428
    const/4 v7, 0x0

    iput-boolean v7, v4, Lcom/motorola/contacts/widget/ListAccelerator$ScrollFade;->mStarted:Z

    .line 429
    invoke-direct {p0}, Lcom/motorola/contacts/widget/ListAccelerator;->removeThumb()V

    goto/16 :goto_0

    .line 431
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbW:I

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbH:I

    add-int/2addr v9, v6

    invoke-virtual {p0, v7, v6, v8, v9}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_0
.end method

.method getAbovePartitionCount()I
    .locals 2

    .prologue
    .line 1146
    iget-object v1, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mListAdapter:Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mListAdapter:Landroid/widget/BaseAdapter;

    instance-of v1, v1, Lcom/motorola/contacts/widget/ListAccelerator$Interface;

    if-eqz v1, :cond_0

    .line 1147
    iget-object v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mListAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/motorola/contacts/widget/ListAccelerator$Interface;

    .line 1148
    .local v0, "acc_inter":Lcom/motorola/contacts/widget/ListAccelerator$Interface;
    invoke-interface {v0}, Lcom/motorola/contacts/widget/ListAccelerator$Interface;->getAbovePartitionCount()I

    move-result v1

    .line 1150
    .end local v0    # "acc_inter":Lcom/motorola/contacts/widget/ListAccelerator$Interface;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getTopOffset()I
    .locals 2

    .prologue
    .line 1137
    iget-object v1, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mListAdapter:Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mListAdapter:Landroid/widget/BaseAdapter;

    instance-of v1, v1, Lcom/motorola/contacts/widget/ListAccelerator$Interface;

    if-eqz v1, :cond_0

    .line 1138
    iget-object v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mListAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/motorola/contacts/widget/ListAccelerator$Interface;

    .line 1139
    .local v0, "acc_inter":Lcom/motorola/contacts/widget/ListAccelerator$Interface;
    invoke-interface {v0}, Lcom/motorola/contacts/widget/ListAccelerator$Interface;->getTopOffset()I

    move-result v1

    .line 1141
    .end local v0    # "acc_inter":Lcom/motorola/contacts/widget/ListAccelerator$Interface;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getVisibleOffset()I
    .locals 2

    .prologue
    .line 1155
    iget-object v1, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mListAdapter:Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mListAdapter:Landroid/widget/BaseAdapter;

    instance-of v1, v1, Lcom/motorola/contacts/widget/ListAccelerator$Interface;

    if-eqz v1, :cond_0

    .line 1156
    iget-object v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mListAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/motorola/contacts/widget/ListAccelerator$Interface;

    .line 1157
    .local v0, "acc_inter":Lcom/motorola/contacts/widget/ListAccelerator$Interface;
    invoke-interface {v0}, Lcom/motorola/contacts/widget/ListAccelerator$Interface;->getVisibleOffset()I

    move-result v1

    .line 1159
    .end local v0    # "acc_inter":Lcom/motorola/contacts/widget/ListAccelerator$Interface;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isScrollBarLeftForTwoPanel()Z
    .locals 2

    .prologue
    .line 1119
    iget-object v1, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mListAdapter:Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mListAdapter:Landroid/widget/BaseAdapter;

    instance-of v1, v1, Lcom/motorola/contacts/widget/ListAccelerator$Interface;

    if-eqz v1, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mListAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/motorola/contacts/widget/ListAccelerator$Interface;

    .line 1121
    .local v0, "acc_inter":Lcom/motorola/contacts/widget/ListAccelerator$Interface;
    invoke-interface {v0}, Lcom/motorola/contacts/widget/ListAccelerator$Interface;->isScrollBarLeftForTwoPanel()Z

    move-result v1

    .line 1123
    .end local v0    # "acc_inter":Lcom/motorola/contacts/widget/ListAccelerator$Interface;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 759
    instance-of v0, p2, Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    .line 761
    check-cast p2, Landroid/widget/ListView;

    .end local p2    # "child":Landroid/view/View;
    iput-object p2, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mList:Landroid/widget/ListView;

    .line 763
    iget-object v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 764
    invoke-direct {p0}, Lcom/motorola/contacts/widget/ListAccelerator;->getSections()V

    .line 771
    :goto_0
    return-void

    .line 766
    .restart local p2    # "child":Landroid/view/View;
    :cond_0
    iput-object v1, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mList:Landroid/widget/ListView;

    .line 767
    iput-object v1, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 768
    iput-object v1, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mSections:[Ljava/lang/Object;

    goto :goto_0
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 774
    iget-object v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mList:Landroid/widget/ListView;

    if-ne p2, v0, :cond_0

    .line 775
    iput-object v1, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mList:Landroid/widget/ListView;

    .line 776
    iput-object v1, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 777
    iput-object v1, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mSections:[Ljava/lang/Object;

    .line 779
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 785
    iget-boolean v2, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mAlphabetList:Z

    if-nez v2, :cond_0

    .line 786
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 842
    :goto_0
    return v0

    .line 796
    :cond_0
    iget-boolean v2, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mDragging:Z

    if-eqz v2, :cond_1

    .line 797
    iput-boolean v1, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mDragging:Z

    .line 800
    :cond_1
    invoke-direct {p0}, Lcom/motorola/contacts/widget/ListAccelerator;->showOnLeft()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 801
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    if-gt v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mAlphabetList:Z

    if-nez v2, :cond_4

    .line 805
    :cond_2
    iget-boolean v2, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbVisible:Z

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    .line 806
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbW:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbY:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbY:I

    iget v4, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_3

    .line 808
    iput-boolean v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mDragging:Z

    goto :goto_0

    :cond_3
    move v0, v1

    .line 812
    goto :goto_0

    .line 814
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbW:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    .line 816
    iput-boolean v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mDragging:Z

    goto :goto_0

    :cond_5
    move v0, v1

    .line 820
    goto :goto_0

    .line 823
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    if-gt v2, v3, :cond_7

    iget-boolean v2, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mAlphabetList:Z

    if-nez v2, :cond_9

    .line 827
    :cond_7
    iget-boolean v2, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbVisible:Z

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_8

    .line 828
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbW:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbY:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbY:I

    iget v4, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_8

    .line 830
    iput-boolean v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mDragging:Z

    goto/16 :goto_0

    :cond_8
    move v0, v1

    .line 834
    goto/16 :goto_0

    .line 836
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbW:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_a

    .line 838
    iput-boolean v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mDragging:Z

    goto/16 :goto_0

    :cond_a
    move v0, v1

    .line 842
    goto/16 :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 9
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v7, 0x0

    .line 567
    sub-int v5, p4, p3

    if-lez v5, :cond_0

    .line 569
    invoke-direct {p0}, Lcom/motorola/contacts/widget/ListAccelerator;->getSections()V

    .line 572
    invoke-direct {p0, p2, p3, p4}, Lcom/motorola/contacts/widget/ListAccelerator;->setAppropriateScrollSettings(III)V

    .line 575
    iget-boolean v5, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mChangedBounds:Z

    if-eqz v5, :cond_0

    .line 576
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 577
    .local v4, "viewWidth":I
    const/4 v1, 0x0

    .line 578
    .local v1, "left":I
    const/4 v3, 0x0

    .line 579
    .local v3, "top":I
    const/4 v2, 0x0

    .line 580
    .local v2, "right":I
    const/4 v0, 0x0

    .line 581
    .local v0, "bottom":I
    invoke-direct {p0}, Lcom/motorola/contacts/widget/ListAccelerator;->showOnLeft()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 582
    const/4 v1, 0x0

    .line 583
    const/4 v3, 0x0

    .line 584
    iget v2, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbW:I

    .line 585
    iget v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbH:I

    .line 593
    :goto_0
    iget-object v5, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mCurrentThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v1, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 598
    iput-boolean v7, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mChangedBounds:Z

    .line 601
    .end local v0    # "bottom":I
    .end local v1    # "left":I
    .end local v2    # "right":I
    .end local v3    # "top":I
    .end local v4    # "viewWidth":I
    :cond_0
    iget-boolean v5, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mAlphabetList:Z

    if-nez v5, :cond_3

    .line 602
    iget-object v5, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mScrollFade:Lcom/motorola/contacts/widget/ListAccelerator$ScrollFade;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 603
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 623
    :cond_1
    :goto_1
    return-void

    .line 588
    .restart local v0    # "bottom":I
    .restart local v1    # "left":I
    .restart local v2    # "right":I
    .restart local v3    # "top":I
    .restart local v4    # "viewWidth":I
    :cond_2
    iget v5, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbW:I

    sub-int v1, v4, v5

    .line 589
    const/4 v3, 0x0

    .line 590
    move v2, v4

    .line 591
    iget v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbH:I

    goto :goto_0

    .line 606
    .end local v0    # "bottom":I
    .end local v1    # "left":I
    .end local v2    # "right":I
    .end local v3    # "top":I
    .end local v4    # "viewWidth":I
    :cond_3
    iget v5, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mVisibleItem:I

    if-eq p2, v5, :cond_1

    .line 609
    iput p2, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mVisibleItem:I

    .line 610
    iget-boolean v5, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbVisible:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mScrollFade:Lcom/motorola/contacts/widget/ListAccelerator$ScrollFade;

    iget-boolean v5, v5, Lcom/motorola/contacts/widget/ListAccelerator$ScrollFade;->mStarted:Z

    if-eqz v5, :cond_5

    .line 611
    :cond_4
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbVisible:Z

    .line 612
    iget-object v5, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mCurrentThumb:Landroid/graphics/drawable/Drawable;

    const/16 v6, 0xff

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 615
    :cond_5
    iget-object v5, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mScrollFade:Lcom/motorola/contacts/widget/ListAccelerator$ScrollFade;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 616
    iget-object v5, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mScrollFade:Lcom/motorola/contacts/widget/ListAccelerator$ScrollFade;

    iput-boolean v7, v5, Lcom/motorola/contacts/widget/ListAccelerator$ScrollFade;->mStarted:Z

    .line 617
    iget-boolean v5, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mDragging:Z

    if-nez v5, :cond_6

    .line 618
    iget-object v5, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mScrollFade:Lcom/motorola/contacts/widget/ListAccelerator$ScrollFade;

    const-wide/16 v7, 0x320

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 620
    :cond_6
    iget-object v5, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v5, :cond_1

    .line 621
    iget-object v5, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v5, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    goto :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 542
    iget-object v1, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mListAdapter:Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mListAdapter:Landroid/widget/BaseAdapter;

    instance-of v1, v1, Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v1, :cond_1

    .line 544
    iget-object v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mListAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Landroid/widget/AbsListView$OnScrollListener;

    .line 545
    .local v0, "listner":Landroid/widget/AbsListView$OnScrollListener;
    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 546
    iget-object v1, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v1, :cond_0

    .line 547
    iget-object v1, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v1, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 549
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbVisible:Z

    .line 550
    iget-object v1, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mCurrentThumb:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 551
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 553
    .end local v0    # "listner":Landroid/widget/AbsListView$OnScrollListener;
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 8
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 485
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 487
    invoke-direct {p0}, Lcom/motorola/contacts/widget/ListAccelerator;->getSections()V

    .line 488
    iget-object v4, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/motorola/contacts/widget/ListAccelerator;->isTwoPanel:Z

    .line 492
    sget v4, Lcom/motorola/contacts/widget/ListAccelerator;->MIN_HEIGHT:I

    if-le p2, v4, :cond_2

    if-ge p1, p2, :cond_2

    invoke-virtual {p0}, Lcom/motorola/contacts/widget/ListAccelerator;->IsAccceratorEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 493
    iput-boolean v6, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mAlphabetList:Z

    .line 500
    :goto_0
    iget-boolean v4, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mAlphabetList:Z

    if-eqz v4, :cond_3

    .line 501
    iget-object v4, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mList:Landroid/widget/ListView;

    invoke-virtual {v4, v5}, Landroid/widget/AbsListView;->setFastScrollAlwaysVisible(Z)V

    .line 502
    iget-object v4, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mList:Landroid/widget/ListView;

    invoke-virtual {v4, v5}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 503
    invoke-virtual {p0}, Lcom/motorola/contacts/widget/ListAccelerator;->getTopOffset()I

    move-result v4

    sub-int/2addr p2, v4

    .line 504
    sget v4, Lcom/motorola/contacts/widget/ListAccelerator;->mFontSize:I

    sget v5, Lcom/motorola/contacts/widget/ListAccelerator;->mNumberOfLetters:I

    mul-int/2addr v4, v5

    sub-int v4, p2, v4

    int-to-double v4, v4

    sget v6, Lcom/motorola/contacts/widget/ListAccelerator;->mNumberOfLetters:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    iput-wide v4, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mLetterSpacing:D

    .line 516
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mCurrentThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 517
    const/4 v1, 0x0

    .line 518
    .local v1, "left":I
    const/4 v3, 0x0

    .line 519
    .local v3, "top":I
    const/4 v2, 0x0

    .line 520
    .local v2, "right":I
    const/4 v0, 0x0

    .line 521
    .local v0, "bottom":I
    invoke-direct {p0}, Lcom/motorola/contacts/widget/ListAccelerator;->showOnLeft()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 522
    const/4 v1, 0x0

    .line 523
    const/4 v3, 0x0

    .line 524
    iget v2, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbW:I

    .line 525
    iget v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbH:I

    .line 533
    :goto_2
    iget-object v4, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mCurrentThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 539
    .end local v0    # "bottom":I
    .end local v1    # "left":I
    .end local v2    # "right":I
    .end local v3    # "top":I
    :cond_1
    return-void

    .line 496
    :cond_2
    iput-boolean v5, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mAlphabetList:Z

    goto :goto_0

    .line 508
    :cond_3
    iget-object v4, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mList:Landroid/widget/ListView;

    if-eqz v4, :cond_0

    .line 509
    iget-object v4, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mList:Landroid/widget/ListView;

    invoke-virtual {v4, v5}, Landroid/widget/AbsListView;->setFastScrollAlwaysVisible(Z)V

    .line 510
    iget-object v4, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mList:Landroid/widget/ListView;

    invoke-virtual {v4, v6}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    goto :goto_1

    .line 528
    .restart local v0    # "bottom":I
    .restart local v1    # "left":I
    .restart local v2    # "right":I
    .restart local v3    # "top":I
    :cond_4
    iget v4, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbW:I

    sub-int v1, p1, v4

    .line 529
    const/4 v3, 0x0

    .line 530
    move v2, p1

    .line 531
    iget v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbH:I

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    .line 953
    iget-boolean v6, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mAlphabetList:Z

    if-nez v6, :cond_1

    .line 959
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 1045
    :cond_0
    :goto_0
    return v5

    .line 962
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_9

    .line 967
    iget-boolean v6, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mAlphabetList:Z

    if-eqz v6, :cond_b

    .line 968
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbH:I

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0xa

    iput v6, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mHightlightY:I

    .line 969
    invoke-direct {p0}, Lcom/motorola/contacts/widget/ListAccelerator;->showOnLeft()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbW:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    iget v6, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mHightlightY:I

    invoke-virtual {p0}, Lcom/motorola/contacts/widget/ListAccelerator;->getTopOffset()I

    move-result v7

    if-ge v6, v7, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/motorola/contacts/widget/ListAccelerator;->showOnLeft()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v7, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbW:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_b

    iget v6, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mHightlightY:I

    invoke-virtual {p0}, Lcom/motorola/contacts/widget/ListAccelerator;->getTopOffset()I

    move-result v7

    if-lt v6, v7, :cond_b

    .line 973
    :cond_3
    iget-boolean v6, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbVisible:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mScrollFade:Lcom/motorola/contacts/widget/ListAccelerator$ScrollFade;

    iget-boolean v6, v6, Lcom/motorola/contacts/widget/ListAccelerator$ScrollFade;->mStarted:Z

    if-eqz v6, :cond_5

    .line 974
    :cond_4
    iget-object v6, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mScrollFade:Lcom/motorola/contacts/widget/ListAccelerator$ScrollFade;

    iput-boolean v9, v6, Lcom/motorola/contacts/widget/ListAccelerator$ScrollFade;->mStarted:Z

    .line 975
    iput-boolean v5, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbVisible:Z

    .line 976
    iget-object v6, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mCurrentThumb:Landroid/graphics/drawable/Drawable;

    const/16 v7, 0xff

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 977
    const/4 v2, 0x0

    .line 978
    .local v2, "left":I
    const/4 v4, 0x0

    .line 979
    .local v4, "top":I
    const/4 v3, 0x0

    .line 980
    .local v3, "right":I
    const/4 v0, 0x0

    .line 981
    .local v0, "bottom":I
    invoke-direct {p0}, Lcom/motorola/contacts/widget/ListAccelerator;->showOnLeft()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 982
    const/4 v2, 0x0

    .line 983
    const/4 v4, 0x0

    .line 984
    iget v3, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbW:I

    .line 985
    iget v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbH:I

    .line 993
    :goto_1
    iget-object v6, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mCurrentThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v2, v4, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1000
    .end local v0    # "bottom":I
    .end local v2    # "left":I
    .end local v3    # "right":I
    .end local v4    # "top":I
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v7, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbY:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v7, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbY:I

    iget v8, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbH:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_6

    .line 1003
    iput-boolean v5, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mDragging:Z

    .line 1005
    :cond_6
    iget-object v6, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mList:Landroid/widget/ListView;

    if-eqz v6, :cond_7

    .line 1006
    invoke-direct {p0}, Lcom/motorola/contacts/widget/ListAccelerator;->getSections()V

    .line 1008
    :cond_7
    invoke-direct {p0}, Lcom/motorola/contacts/widget/ListAccelerator;->cancelFling()V

    .line 1010
    iget-boolean v6, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mDragging:Z

    if-eqz v6, :cond_0

    .line 1011
    invoke-direct {p0, p1}, Lcom/motorola/contacts/widget/ListAccelerator;->scrollTo(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 988
    .restart local v0    # "bottom":I
    .restart local v2    # "left":I
    .restart local v3    # "right":I
    .restart local v4    # "top":I
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbW:I

    sub-int v2, v6, v7

    .line 989
    const/4 v4, 0x0

    .line 990
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 991
    iget v0, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mThumbH:I

    goto :goto_1

    .line 1026
    .end local v0    # "bottom":I
    .end local v2    # "left":I
    .end local v3    # "right":I
    .end local v4    # "top":I
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v5, :cond_a

    .line 1029
    iget-boolean v6, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mDragging:Z

    if-eqz v6, :cond_b

    .line 1030
    iput-boolean v9, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mDragging:Z

    .line 1031
    iget-object v1, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mHandler:Landroid/os/Handler;

    .line 1032
    .local v1, "handler":Landroid/os/Handler;
    iget-object v6, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mScrollFade:Lcom/motorola/contacts/widget/ListAccelerator$ScrollFade;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1033
    iget-object v6, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mScrollFade:Lcom/motorola/contacts/widget/ListAccelerator$ScrollFade;

    const-wide/16 v7, 0x320

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1036
    .end local v1    # "handler":Landroid/os/Handler;
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_b

    .line 1039
    iget-boolean v6, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mDragging:Z

    if-eqz v6, :cond_b

    .line 1040
    invoke-direct {p0, p1}, Lcom/motorola/contacts/widget/ListAccelerator;->scrollTo(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1045
    :cond_b
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto/16 :goto_0
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 1163
    iput-object p1, p0, Lcom/motorola/contacts/widget/ListAccelerator;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 1164
    return-void
.end method
