.class Lcom/motorola/messaging/addressingwidget/AddressingWidget$4;
.super Ljava/lang/Object;
.source "AddressingWidget.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setComposeAWFocusListener()V
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
    .line 930
    iput-object p1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$4;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 932
    if-eqz p2, :cond_0

    .line 937
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$4;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    invoke-virtual {v0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->handleGainFocus()Z

    .line 939
    :cond_0
    return-void
.end method
