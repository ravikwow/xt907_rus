.class Lcom/motorola/messaging/view/DropdownButton$1;
.super Ljava/lang/Object;
.source "DropdownButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/view/DropdownButton;->setupMenu(ILandroid/widget/PopupMenu$OnMenuItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/view/DropdownButton;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/view/DropdownButton;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/motorola/messaging/view/DropdownButton$1;->this$0:Lcom/motorola/messaging/view/DropdownButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/motorola/messaging/view/DropdownButton$1;->this$0:Lcom/motorola/messaging/view/DropdownButton;

    # getter for: Lcom/motorola/messaging/view/DropdownButton;->mPopupMenu:Landroid/widget/PopupMenu;
    invoke-static {v0}, Lcom/motorola/messaging/view/DropdownButton;->access$000(Lcom/motorola/messaging/view/DropdownButton;)Landroid/widget/PopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 46
    return-void
.end method
