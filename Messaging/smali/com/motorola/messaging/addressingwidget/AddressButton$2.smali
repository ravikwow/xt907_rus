.class Lcom/motorola/messaging/addressingwidget/AddressButton$2;
.super Ljava/lang/Object;
.source "AddressButton.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/addressingwidget/AddressButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/addressingwidget/AddressButton;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/addressingwidget/AddressButton;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/motorola/messaging/addressingwidget/AddressButton$2;->this$0:Lcom/motorola/messaging/addressingwidget/AddressButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressButton$2;->this$0:Lcom/motorola/messaging/addressingwidget/AddressButton;

    # getter for: Lcom/motorola/messaging/addressingwidget/AddressButton;->mAddressingParent:Lcom/motorola/messaging/addressingwidget/AddressingWidget;
    invoke-static {v0}, Lcom/motorola/messaging/addressingwidget/AddressButton;->access$200(Lcom/motorola/messaging/addressingwidget/AddressButton;)Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->getOnCreateButtonContextMenuListener()Lcom/motorola/messaging/addressingwidget/AddressingWidget$OnCreateButtonContextMenuListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressButton$2;->this$0:Lcom/motorola/messaging/addressingwidget/AddressButton;

    # getter for: Lcom/motorola/messaging/addressingwidget/AddressButton;->mAddressingParent:Lcom/motorola/messaging/addressingwidget/AddressingWidget;
    invoke-static {v0}, Lcom/motorola/messaging/addressingwidget/AddressButton;->access$200(Lcom/motorola/messaging/addressingwidget/AddressButton;)Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->getOnCreateButtonContextMenuListener()Lcom/motorola/messaging/addressingwidget/AddressingWidget$OnCreateButtonContextMenuListener;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/addressingwidget/AddressButton$2;->this$0:Lcom/motorola/messaging/addressingwidget/AddressButton;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1, p3}, Lcom/motorola/messaging/addressingwidget/AddressingWidget$OnCreateButtonContextMenuListener;->onCreateButtonContextMenu(Landroid/view/ContextMenu;Ljava/lang/Object;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 153
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressButton$2;->this$0:Lcom/motorola/messaging/addressingwidget/AddressButton;

    # invokes: Lcom/motorola/messaging/addressingwidget/AddressButton;->setFocusOnThis()V
    invoke-static {v0}, Lcom/motorola/messaging/addressingwidget/AddressButton;->access$300(Lcom/motorola/messaging/addressingwidget/AddressButton;)V

    .line 155
    :cond_0
    return-void
.end method
