.class Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete$2;
.super Ljava/lang/Object;
.source "AddressingAutoComplete.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 259
    iput-object p1, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete$2;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete$2;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    # invokes: Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->performCompletion(Landroid/view/View;IJ)V
    invoke-static {v0, p2, p3, p4, p5}, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->access$400(Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;Landroid/view/View;IJ)V

    .line 262
    return-void
.end method
