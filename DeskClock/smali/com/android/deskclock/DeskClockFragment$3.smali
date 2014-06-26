.class Lcom/android/deskclock/DeskClockFragment$3;
.super Ljava/lang/Object;
.source "DeskClockFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$fakeOverflow:Landroid/widget/PopupMenu;


# direct methods
.method constructor <init>(Lcom/android/deskclock/DeskClockFragment;Landroid/widget/PopupMenu;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/deskclock/DeskClockFragment$3;->this$0:Lcom/android/deskclock/DeskClockFragment;

    iput-object p2, p0, Lcom/android/deskclock/DeskClockFragment$3;->val$fakeOverflow:Landroid/widget/PopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/deskclock/DeskClockFragment$3;->val$fakeOverflow:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 57
    return-void
.end method
