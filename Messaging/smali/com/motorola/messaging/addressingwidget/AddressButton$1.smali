.class Lcom/motorola/messaging/addressingwidget/AddressButton$1;
.super Ljava/lang/Object;
.source "AddressButton.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/addressingwidget/AddressButton;->init(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)V
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
    .line 135
    iput-object p1, p0, Lcom/motorola/messaging/addressingwidget/AddressButton$1;->this$0:Lcom/motorola/messaging/addressingwidget/AddressButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 137
    if-eqz p2, :cond_0

    .line 138
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressButton$1;->this$0:Lcom/motorola/messaging/addressingwidget/AddressButton;

    # invokes: Lcom/motorola/messaging/addressingwidget/AddressButton;->handleGainFocus()V
    invoke-static {v0}, Lcom/motorola/messaging/addressingwidget/AddressButton;->access$000(Lcom/motorola/messaging/addressingwidget/AddressButton;)V

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressButton$1;->this$0:Lcom/motorola/messaging/addressingwidget/AddressButton;

    # invokes: Lcom/motorola/messaging/addressingwidget/AddressButton;->handleLoseFocus()V
    invoke-static {v0}, Lcom/motorola/messaging/addressingwidget/AddressButton;->access$100(Lcom/motorola/messaging/addressingwidget/AddressButton;)V

    goto :goto_0
.end method
