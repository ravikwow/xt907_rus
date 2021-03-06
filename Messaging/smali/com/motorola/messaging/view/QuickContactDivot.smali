.class public Lcom/motorola/messaging/view/QuickContactDivot;
.super Landroid/widget/QuickContactBadge;
.source "QuickContactDivot.java"

# interfaces
.implements Lcom/motorola/messaging/view/Divot;


# instance fields
.field private mDensity:F

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableIntrinsicHeight:I

.field private mDrawableIntrinsicWidth:I

.field private mPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/messaging/view/QuickContactDivot;->initialize(Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0, p2}, Lcom/motorola/messaging/view/QuickContactDivot;->initialize(Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    invoke-direct {p0, p2}, Lcom/motorola/messaging/view/QuickContactDivot;->initialize(Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method private computeBounds(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 107
    const/4 v3, 0x0

    .line 108
    .local v3, "left":I
    const/4 v6, 0x0

    .line 109
    .local v6, "top":I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 110
    .local v5, "right":I
    div-int/lit8 v4, v5, 0x2

    .line 111
    .local v4, "middle":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 113
    .local v0, "bottom":I
    invoke-virtual {p0}, Lcom/motorola/messaging/view/QuickContactDivot;->getCloseOffset()F

    move-result v7

    float-to-int v1, v7

    .line 115
    .local v1, "cornerOffset":I
    iget v7, p0, Lcom/motorola/messaging/view/QuickContactDivot;->mPosition:I

    sparse-switch v7, :sswitch_data_0

    .line 142
    :goto_0
    return-void

    .line 117
    :sswitch_0
    iget-object v7, p0, Lcom/motorola/messaging/view/QuickContactDivot;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v8, p0, Lcom/motorola/messaging/view/QuickContactDivot;->mDrawableIntrinsicWidth:I

    sub-int v8, v5, v8

    add-int/lit8 v9, v1, 0x0

    add-int/lit8 v10, v1, 0x0

    iget v11, p0, Lcom/motorola/messaging/view/QuickContactDivot;->mDrawableIntrinsicHeight:I

    add-int/2addr v10, v11

    invoke-virtual {v7, v8, v9, v5, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 125
    :sswitch_1
    iget-object v7, p0, Lcom/motorola/messaging/view/QuickContactDivot;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x0

    add-int/lit8 v9, v1, 0x0

    iget v10, p0, Lcom/motorola/messaging/view/QuickContactDivot;->mDrawableIntrinsicWidth:I

    add-int/lit8 v10, v10, 0x0

    add-int/lit8 v11, v1, 0x0

    iget v12, p0, Lcom/motorola/messaging/view/QuickContactDivot;->mDrawableIntrinsicHeight:I

    add-int/2addr v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 133
    :sswitch_2
    iget v7, p0, Lcom/motorola/messaging/view/QuickContactDivot;->mDrawableIntrinsicWidth:I

    div-int/lit8 v2, v7, 0x2

    .line 134
    .local v2, "halfWidth":I
    iget-object v7, p0, Lcom/motorola/messaging/view/QuickContactDivot;->mDrawable:Landroid/graphics/drawable/Drawable;

    sub-int v8, v4, v2

    iget v9, p0, Lcom/motorola/messaging/view/QuickContactDivot;->mDrawableIntrinsicHeight:I

    sub-int v9, v0, v9

    add-int v10, v4, v2

    invoke-virtual {v7, v8, v9, v10, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 115
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x4 -> :sswitch_0
        0xb -> :sswitch_2
    .end sparse-switch
.end method

.method private initialize(Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    if-eqz p1, :cond_0

    .line 42
    const/4 v1, 0x0

    const-string v2, "position"

    sget-object v3, Lcom/motorola/messaging/view/QuickContactDivot;->sPositionChoices:[Ljava/lang/String;

    const/4 v4, -0x1

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/util/AttributeSet;->getAttributeListValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/motorola/messaging/view/QuickContactDivot;->mPosition:I

    .line 45
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 46
    .local v0, "r":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/motorola/messaging/view/QuickContactDivot;->mDensity:F

    .line 48
    invoke-direct {p0}, Lcom/motorola/messaging/view/QuickContactDivot;->setDrawable()V

    .line 49
    return-void
.end method

.method private setDrawable()V
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 54
    .local v0, "r":Landroid/content/res/Resources;
    iget v1, p0, Lcom/motorola/messaging/view/QuickContactDivot;->mPosition:I

    packed-switch v1, :pswitch_data_0

    .line 67
    :goto_0
    iget-object v1, p0, Lcom/motorola/messaging/view/QuickContactDivot;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/motorola/messaging/view/QuickContactDivot;->mDrawableIntrinsicWidth:I

    .line 68
    iget-object v1, p0, Lcom/motorola/messaging/view/QuickContactDivot;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/motorola/messaging/view/QuickContactDivot;->mDrawableIntrinsicHeight:I

    .line 69
    return-void

    .line 58
    :pswitch_0
    const v1, 0x7f02008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/messaging/view/QuickContactDivot;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 64
    :pswitch_1
    const v1, 0x7f02008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/messaging/view/QuickContactDivot;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getCloseOffset()F
    .locals 2

    .prologue
    .line 91
    const/high16 v0, 0x41400000

    iget v1, p0, Lcom/motorola/messaging/view/QuickContactDivot;->mDensity:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/motorola/messaging/view/QuickContactDivot;->mPosition:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/widget/QuickContactBadge;->onDraw(Landroid/graphics/Canvas;)V

    .line 74
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 75
    invoke-direct {p0, p1}, Lcom/motorola/messaging/view/QuickContactDivot;->computeBounds(Landroid/graphics/Canvas;)V

    .line 76
    iget-object v0, p0, Lcom/motorola/messaging/view/QuickContactDivot;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 78
    return-void
.end method
