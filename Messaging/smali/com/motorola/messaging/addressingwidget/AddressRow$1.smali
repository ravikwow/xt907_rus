.class Lcom/motorola/messaging/addressingwidget/AddressRow$1;
.super Ljava/lang/Object;
.source "AddressRow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/addressingwidget/AddressRow;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/addressingwidget/AddressRow;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/addressingwidget/AddressRow;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/motorola/messaging/addressingwidget/AddressRow$1;->this$0:Lcom/motorola/messaging/addressingwidget/AddressRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 91
    iget-object v1, p0, Lcom/motorola/messaging/addressingwidget/AddressRow$1;->this$0:Lcom/motorola/messaging/addressingwidget/AddressRow;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 92
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 95
    :cond_0
    return-void
.end method
