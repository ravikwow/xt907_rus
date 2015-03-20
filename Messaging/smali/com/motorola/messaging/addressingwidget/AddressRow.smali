.class public Lcom/motorola/messaging/addressingwidget/AddressRow;
.super Landroid/widget/LinearLayout;
.source "AddressRow.java"


# instance fields
.field private mRowWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/messaging/addressingwidget/AddressRow;->mRowWidth:I

    .line 35
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/AddressRow;->init()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/messaging/addressingwidget/AddressRow;->mRowWidth:I

    .line 47
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/AddressRow;->init()V

    .line 48
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 87
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 88
    const/4 v0, 0x2

    invoke-virtual {p0, v1, v0, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 89
    new-instance v0, Lcom/motorola/messaging/addressingwidget/AddressRow$1;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/addressingwidget/AddressRow$1;-><init>(Lcom/motorola/messaging/addressingwidget/AddressRow;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void
.end method

.method private updateWidth(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 75
    instance-of v0, p1, Lcom/motorola/messaging/addressingwidget/AddressButton;

    if-eqz v0, :cond_0

    .line 76
    iget v0, p0, Lcom/motorola/messaging/addressingwidget/AddressRow;->mRowWidth:I

    check-cast p1, Lcom/motorola/messaging/addressingwidget/AddressButton;

    .end local p1    # "child":Landroid/view/View;
    invoke-virtual {p1}, Lcom/motorola/messaging/addressingwidget/AddressButton;->getButtonWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/messaging/addressingwidget/AddressRow;->mRowWidth:I

    .line 78
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 53
    invoke-direct {p0, p1}, Lcom/motorola/messaging/addressingwidget/AddressRow;->updateWidth(Landroid/view/View;)V

    .line 54
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 59
    invoke-direct {p0, p1}, Lcom/motorola/messaging/addressingwidget/AddressRow;->updateWidth(Landroid/view/View;)V

    .line 60
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 70
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 71
    invoke-direct {p0, p1}, Lcom/motorola/messaging/addressingwidget/AddressRow;->updateWidth(Landroid/view/View;)V

    .line 72
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    invoke-direct {p0, p1}, Lcom/motorola/messaging/addressingwidget/AddressRow;->updateWidth(Landroid/view/View;)V

    .line 66
    return-void
.end method

.method public getRowWidth()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/motorola/messaging/addressingwidget/AddressRow;->mRowWidth:I

    return v0
.end method
