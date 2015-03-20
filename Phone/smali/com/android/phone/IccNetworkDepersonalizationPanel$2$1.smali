.class Lcom/android/phone/IccNetworkDepersonalizationPanel$2$1;
.super Ljava/lang/Object;
.source "IccNetworkDepersonalizationPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/IccNetworkDepersonalizationPanel$2;


# direct methods
.method constructor <init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$1;->this$1:Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 211
    iget-object v1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$1;->this$1:Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    iget-object v1, v1, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    # invokes: Lcom/android/phone/IccNetworkDepersonalizationPanel;->getIccState()I
    invoke-static {v1}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$500(Lcom/android/phone/IccNetworkDepersonalizationPanel;)I

    move-result v0

    .line 212
    .local v0, "iccState":I
    const/4 v1, 0x7

    if-ne v1, v0, :cond_1

    .line 214
    # getter for: Lcom/android/phone/IccNetworkDepersonalizationPanel;->DBG:Z
    invoke-static {}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$300()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$1;->this$1:Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    iget-object v1, v1, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    const-string v2, "PenaltyLock in handler, don\'t show UI"

    # invokes: Lcom/android/phone/IccNetworkDepersonalizationPanel;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$400(Lcom/android/phone/IccNetworkDepersonalizationPanel;Ljava/lang/String;)V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    iget-object v1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$1;->this$1:Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    iget-object v1, v1, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    # invokes: Lcom/android/phone/IccNetworkDepersonalizationPanel;->hideAlert()V
    invoke-static {v1}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$800(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    .line 218
    iget-object v1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$1;->this$1:Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    iget-object v1, v1, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    # getter for: Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$000(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 219
    iget-object v1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$1;->this$1:Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    iget-object v1, v1, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    # getter for: Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$000(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method
