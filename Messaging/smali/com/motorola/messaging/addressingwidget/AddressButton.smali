.class public Lcom/motorola/messaging/addressingwidget/AddressButton;
.super Landroid/widget/Button;
.source "AddressButton.java"


# instance fields
.field private mAddressingParent:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private mHasFocusedBackground:Z

.field private final mMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

.field private thumbnailDimension:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/motorola/messaging/addressingwidget/AddressingWidget;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    .prologue
    const/4 v1, 0x0

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    iput-boolean v1, p0, Lcom/motorola/messaging/addressingwidget/AddressButton;->mHasFocusedBackground:Z

    .line 37
    iput v1, p0, Lcom/motorola/messaging/addressingwidget/AddressButton;->thumbnailDimension:I

    .line 149
    new-instance v0, Lcom/motorola/messaging/addressingwidget/AddressButton$2;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/addressingwidget/AddressButton$2;-><init>(Lcom/motorola/messaging/addressingwidget/AddressButton;)V

    iput-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressButton;->mMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 161
    new-instance v0, Lcom/motorola/messaging/addressingwidget/AddressButton$3;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/addressingwidget/AddressButton$3;-><init>(Lcom/motorola/messaging/addressingwidget/AddressButton;)V

    iput-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressButton;->mClickListener:Landroid/view/View$OnClickListener;

    .line 48
    invoke-direct {p0, p2}, Lcom/motorola/messaging/addressingwidget/AddressButton;->init(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)V

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 50
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressButton;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressButton;->mMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/messaging/addressingwidget/AddressButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/addressingwidget/AddressButton;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/AddressButton;->handleGainFocus()V

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/messaging/addressingwidget/AddressButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/addressingwidget/AddressButton;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/AddressButton;->handleLoseFocus()V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/messaging/addressingwidget/AddressButton;)Lcom/motorola/messaging/addressingwidget/AddressingWidget;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/addressingwidget/AddressButton;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressButton;->mAddressingParent:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/messaging/addressingwidget/AddressButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/addressingwidget/AddressButton;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/AddressButton;->setFocusOnThis()V

    return-void
.end method

.method private getErrorString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    .line 191
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 192
    :cond_0
    const-string v0, ""

    .line 199
    :goto_0
    return-object v0

    .line 194
    :cond_1
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d0013

    invoke-direct {v1, p1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 195
    .local v1, "tInstance":Landroid/text/style/TextAppearanceSpan;
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v2, "?"

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 196
    .local v0, "buf":Landroid/text/SpannableStringBuilder;
    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 197
    const-string v2, " "

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 198
    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

.method private handleGainFocus()V
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/motorola/messaging/addressingwidget/AddressButton;->setGainFocusBackgroundState()V

    .line 172
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressButton;->mAddressingParent:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    invoke-virtual {v0, p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->updateGainFocus(Landroid/view/View;)V

    .line 173
    return-void
.end method

.method private handleLoseFocus()V
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/motorola/messaging/addressingwidget/AddressButton;->setRegularBackgroundState()V

    .line 177
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressButton;->mAddressingParent:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    invoke-virtual {v0, p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->updateLoseFocus(Landroid/view/View;)V

    .line 178
    return-void
.end method

.method private init(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)V
    .locals 1
    .param p1, "parent"    # Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/motorola/messaging/addressingwidget/AddressButton;->mAddressingParent:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    .line 129
    invoke-virtual {p1}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->getTextSize()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 130
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    invoke-virtual {p0}, Lcom/motorola/messaging/addressingwidget/AddressButton;->setRegularBackgroundState()V

    .line 132
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 133
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 135
    new-instance v0, Lcom/motorola/messaging/addressingwidget/AddressButton$1;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/addressingwidget/AddressButton$1;-><init>(Lcom/motorola/messaging/addressingwidget/AddressButton;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 144
    return-void
.end method

.method private setFocusOnThis()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressButton;->mAddressingParent:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    invoke-virtual {v0, p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setFocusOnButton(Lcom/motorola/messaging/addressingwidget/AddressButton;)V

    .line 183
    return-void
.end method


# virtual methods
.method public getButtonWidth()I
    .locals 4

    .prologue
    .line 119
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v1, v2

    .line 120
    .local v1, "textWidth":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/motorola/messaging/addressingwidget/AddressButton;->thumbnailDimension:I

    add-int v0, v2, v3

    .line 121
    .local v0, "buttonWidth":I
    return v0
.end method

.method public hasFocusedBackground()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/motorola/messaging/addressingwidget/AddressButton;->mHasFocusedBackground:Z

    return v0
.end method

.method public setContactThumbnail(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "contactThumbnail"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x0

    .line 99
    const/high16 v1, 0x42700000

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/motorola/messaging/addressingwidget/AddressButton;->thumbnailDimension:I

    .line 100
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget v1, p0, Lcom/motorola/messaging/addressingwidget/AddressButton;->thumbnailDimension:I

    iget v2, p0, Lcom/motorola/messaging/addressingwidget/AddressButton;->thumbnailDimension:I

    const/4 v3, 0x1

    invoke-static {p1, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 102
    .local v0, "scaledPic":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v4, v4, v0, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 103
    return-void
.end method

.method public setGainFocusBackgroundState()V
    .locals 1

    .prologue
    .line 58
    const v0, 0x7f02008d

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/messaging/addressingwidget/AddressButton;->mHasFocusedBackground:Z

    .line 60
    return-void
.end method

.method public setLabelAddress(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "isValid"    # Z

    .prologue
    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "labelAddress":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    if-nez p2, :cond_1

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/motorola/messaging/addressingwidget/AddressButton;->getErrorString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 90
    .local v0, "errStr":Ljava/lang/CharSequence;
    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 94
    .end local v0    # "errStr":Ljava/lang/CharSequence;
    :goto_1
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 95
    invoke-virtual {p0}, Landroid/widget/TextView;->setSingleLine()V

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setParentToNull()V
    .locals 2

    .prologue
    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 110
    .local v0, "viewParent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/addressingwidget/AddressRow;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 113
    :cond_0
    return-void
.end method

.method public setRegularBackgroundState()V
    .locals 1

    .prologue
    .line 66
    const v0, 0x7f02008c

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/messaging/addressingwidget/AddressButton;->mHasFocusedBackground:Z

    .line 68
    return-void
.end method
