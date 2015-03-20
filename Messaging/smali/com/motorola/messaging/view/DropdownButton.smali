.class public Lcom/motorola/messaging/view/DropdownButton;
.super Landroid/widget/Button;
.source "DropdownButton.java"


# instance fields
.field private mPopupMenu:Landroid/widget/PopupMenu;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 30
    const v0, 0x7f020094

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const v0, 0x7f020094

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const v0, 0x7f020094

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/messaging/view/DropdownButton;)Landroid/widget/PopupMenu;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/view/DropdownButton;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/motorola/messaging/view/DropdownButton;->mPopupMenu:Landroid/widget/PopupMenu;

    return-object v0
.end method


# virtual methods
.method public getPopupMenu()Landroid/widget/PopupMenu;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/motorola/messaging/view/DropdownButton;->mPopupMenu:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 19
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    return-void
.end method

.method public setupMenu(ILandroid/widget/PopupMenu$OnMenuItemClickListener;)V
    .locals 3
    .param p1, "menuId"    # I
    .param p2, "clickListener"    # Landroid/widget/PopupMenu$OnMenuItemClickListener;

    .prologue
    .line 38
    new-instance v1, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/motorola/messaging/view/DropdownButton;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 39
    iget-object v1, p0, Lcom/motorola/messaging/view/DropdownButton;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 40
    .local v0, "menu":Landroid/view/Menu;
    iget-object v1, p0, Lcom/motorola/messaging/view/DropdownButton;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 41
    iget-object v1, p0, Lcom/motorola/messaging/view/DropdownButton;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1, p2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 43
    new-instance v1, Lcom/motorola/messaging/view/DropdownButton$1;

    invoke-direct {v1, p0}, Lcom/motorola/messaging/view/DropdownButton$1;-><init>(Lcom/motorola/messaging/view/DropdownButton;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    return-void
.end method
