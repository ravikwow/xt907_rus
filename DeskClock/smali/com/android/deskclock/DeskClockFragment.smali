.class public Lcom/android/deskclock/DeskClockFragment;
.super Landroid/app/Fragment;
.source "DeskClockFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageChanged(I)V
    .locals 0
    .param p1, "page"    # I

    .prologue
    .line 29
    return-void
.end method

.method public setupFakeOverflowMenuButton(Landroid/view/View;)V
    .locals 2
    .param p1, "menuButton"    # Landroid/view/View;

    .prologue
    .line 37
    new-instance v0, Lcom/android/deskclock/DeskClockFragment$1;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/deskclock/DeskClockFragment$1;-><init>(Lcom/android/deskclock/DeskClockFragment;Landroid/content/Context;Landroid/view/View;)V

    .line 44
    .local v0, "fakeOverflow":Landroid/widget/PopupMenu;
    const v1, 0x7f110003

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 45
    new-instance v1, Lcom/android/deskclock/DeskClockFragment$2;

    invoke-direct {v1, p0}, Lcom/android/deskclock/DeskClockFragment$2;-><init>(Lcom/android/deskclock/DeskClockFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 52
    invoke-static {v0}, Landroid/support/v4/widget/PopupMenuCompat;->getDragToOpenListener(Ljava/lang/Object;)Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 53
    new-instance v1, Lcom/android/deskclock/DeskClockFragment$3;

    invoke-direct {v1, p0, v0}, Lcom/android/deskclock/DeskClockFragment$3;-><init>(Lcom/android/deskclock/DeskClockFragment;Landroid/widget/PopupMenu;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void
.end method
