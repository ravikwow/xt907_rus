.class Lcom/motorola/messaging/addressingwidget/AddressButton$3;
.super Ljava/lang/Object;
.source "AddressButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 161
    iput-object p1, p0, Lcom/motorola/messaging/addressingwidget/AddressButton$3;->this$0:Lcom/motorola/messaging/addressingwidget/AddressButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressButton$3;->this$0:Lcom/motorola/messaging/addressingwidget/AddressButton;

    # getter for: Lcom/motorola/messaging/addressingwidget/AddressButton;->mAddressingParent:Lcom/motorola/messaging/addressingwidget/AddressingWidget;
    invoke-static {v0}, Lcom/motorola/messaging/addressingwidget/AddressButton;->access$200(Lcom/motorola/messaging/addressingwidget/AddressButton;)Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->handleGainFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressButton$3;->this$0:Lcom/motorola/messaging/addressingwidget/AddressButton;

    # getter for: Lcom/motorola/messaging/addressingwidget/AddressButton;->mAddressingParent:Lcom/motorola/messaging/addressingwidget/AddressingWidget;
    invoke-static {v0}, Lcom/motorola/messaging/addressingwidget/AddressButton;->access$200(Lcom/motorola/messaging/addressingwidget/AddressButton;)Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->getOnButtonClickListener()Lcom/motorola/messaging/addressingwidget/AddressingWidget$OnButtonClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressButton$3;->this$0:Lcom/motorola/messaging/addressingwidget/AddressButton;

    # getter for: Lcom/motorola/messaging/addressingwidget/AddressButton;->mAddressingParent:Lcom/motorola/messaging/addressingwidget/AddressingWidget;
    invoke-static {v0}, Lcom/motorola/messaging/addressingwidget/AddressButton;->access$200(Lcom/motorola/messaging/addressingwidget/AddressButton;)Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->getOnButtonClickListener()Lcom/motorola/messaging/addressingwidget/AddressingWidget$OnButtonClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/motorola/messaging/addressingwidget/AddressingWidget$OnButtonClickListener;->onButtonClick(Landroid/view/View;)V

    .line 167
    :cond_0
    return-void
.end method
