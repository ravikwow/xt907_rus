.class Lcom/android/phone/IccNetworkDepersonalizationPanel$4;
.super Ljava/lang/Object;
.source "IccNetworkDepersonalizationPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IccNetworkDepersonalizationPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;


# direct methods
.method constructor <init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$4;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 393
    # getter for: Lcom/android/phone/IccNetworkDepersonalizationPanel;->DBG:Z
    invoke-static {}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$4;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    const-string v1, "mDismissListener: skipping depersonalization..."

    # invokes: Lcom/android/phone/IccNetworkDepersonalizationPanel;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$400(Lcom/android/phone/IccNetworkDepersonalizationPanel;Ljava/lang/String;)V

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$4;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 395
    return-void
.end method
