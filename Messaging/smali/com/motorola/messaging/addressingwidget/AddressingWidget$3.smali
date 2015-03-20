.class Lcom/motorola/messaging/addressingwidget/AddressingWidget$3;
.super Ljava/lang/Object;
.source "AddressingWidget.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setReadAWFocusListener()V
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
    .line 916
    iput-object p1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$3;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 918
    if-eqz p2, :cond_0

    .line 919
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$3;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    # getter for: Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtons:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->access$000(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 920
    iget-object v1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$3;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$3;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    # getter for: Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtons:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->access$000(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/addressingwidget/AddressButton;

    invoke-virtual {v1, v0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setFocusOnButton(Lcom/motorola/messaging/addressingwidget/AddressButton;)V

    .line 922
    :cond_0
    return-void
.end method
