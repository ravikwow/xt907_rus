.class Lcom/android/settings/nfc/NfcEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/NfcEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/NfcEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/NfcEnabler;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    const-string v3, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    # invokes: Lcom/android/settings/nfc/NfcEnabler;->handleNfcStateChanged(I)V
    invoke-static {v2, v3}, Lcom/android/settings/nfc/NfcEnabler;->access$000(Lcom/android/settings/nfc/NfcEnabler;I)V

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    const-string v2, "plugged"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 57
    .local v1, "plugged":I
    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 58
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    # setter for: Lcom/android/settings/nfc/NfcEnabler;->mInWirelessCharging:Z
    invoke-static {v2, v4}, Lcom/android/settings/nfc/NfcEnabler;->access$102(Lcom/android/settings/nfc/NfcEnabler;Z)Z

    .line 63
    :goto_1
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    iget-object v3, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    # getter for: Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v3}, Lcom/android/settings/nfc/NfcEnabler;->access$200(Lcom/android/settings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v3

    # invokes: Lcom/android/settings/nfc/NfcEnabler;->handleNfcStateChanged(I)V
    invoke-static {v2, v3}, Lcom/android/settings/nfc/NfcEnabler;->access$000(Lcom/android/settings/nfc/NfcEnabler;I)V

    goto :goto_0

    .line 61
    :cond_2
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    # setter for: Lcom/android/settings/nfc/NfcEnabler;->mInWirelessCharging:Z
    invoke-static {v2, v3}, Lcom/android/settings/nfc/NfcEnabler;->access$102(Lcom/android/settings/nfc/NfcEnabler;Z)Z

    goto :goto_1
.end method
