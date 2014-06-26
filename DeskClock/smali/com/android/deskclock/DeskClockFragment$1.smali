.class Lcom/android/deskclock/DeskClockFragment$1;
.super Landroid/widget/PopupMenu;
.source "DeskClockFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/DeskClockFragment;->setupFakeOverflowMenuButton(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/DeskClockFragment;


# direct methods
.method constructor <init>(Lcom/android/deskclock/DeskClockFragment;Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/view/View;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/deskclock/DeskClockFragment$1;->this$0:Lcom/android/deskclock/DeskClockFragment;

    invoke-direct {p0, p2, p3}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public show()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/deskclock/DeskClockFragment$1;->this$0:Lcom/android/deskclock/DeskClockFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 41
    invoke-super {p0}, Landroid/widget/PopupMenu;->show()V

    .line 42
    return-void
.end method
