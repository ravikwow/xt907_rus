.class Lcom/motorola/messaging/addressingwidget/AddressingWidget$2;
.super Ljava/lang/Object;
.source "AddressingWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setOnPickerClickListener(Lcom/motorola/messaging/addressingwidget/AddressingWidget$OnPickerButtonClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)V
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$2;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 445
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$2;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    # invokes: Lcom/motorola/messaging/addressingwidget/AddressingWidget;->resetFlags()V
    invoke-static {v0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->access$1100(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)V

    .line 446
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$2;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    # invokes: Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setFocusOnTextView()V
    invoke-static {v0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->access$1200(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)V

    .line 447
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$2;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    # getter for: Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mPickerClickListener:Lcom/motorola/messaging/addressingwidget/AddressingWidget$OnPickerButtonClickListener;
    invoke-static {v0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->access$1600(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)Lcom/motorola/messaging/addressingwidget/AddressingWidget$OnPickerButtonClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget$OnPickerButtonClickListener;->onPickerButtonClicked()V

    .line 448
    return-void
.end method
