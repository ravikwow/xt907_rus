.class Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete$1;
.super Ljava/lang/Object;
.source "AddressingAutoComplete.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->init(Lcom/motorola/messaging/addressingwidget/AddressingWidget;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete$1;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 244
    if-nez p2, :cond_1

    .line 245
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete$1;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    # getter for: Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mEditAddress:Lcom/motorola/messaging/addressingwidget/EditAddress;
    invoke-static {v0}, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->access$000(Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;)Lcom/motorola/messaging/addressingwidget/EditAddress;

    move-result-object v0

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete$1;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    # invokes: Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->handleLoseFocus()V
    invoke-static {v0}, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->access$100(Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;)V

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete$1;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    # invokes: Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->handleGainFocus()V
    invoke-static {v0}, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->access$200(Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;)V

    goto :goto_0
.end method
