.class Lcom/android/deskclock/DeskClockFragment$2;
.super Ljava/lang/Object;
.source "DeskClockFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


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
.method constructor <init>(Lcom/android/deskclock/DeskClockFragment;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/deskclock/DeskClockFragment$2;->this$0:Lcom/android/deskclock/DeskClockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/deskclock/DeskClockFragment$2;->this$0:Lcom/android/deskclock/DeskClockFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
