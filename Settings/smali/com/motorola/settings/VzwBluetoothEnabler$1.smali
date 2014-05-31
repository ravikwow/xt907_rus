.class Lcom/motorola/settings/VzwBluetoothEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "VzwBluetoothEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/settings/VzwBluetoothEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/settings/VzwBluetoothEnabler;


# direct methods
.method constructor <init>(Lcom/motorola/settings/VzwBluetoothEnabler;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/motorola/settings/VzwBluetoothEnabler$1;->this$0:Lcom/motorola/settings/VzwBluetoothEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 119
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.motorola.app.action.BLUETOOTH_ALLOWED_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/motorola/settings/VzwBluetoothEnabler$1;->this$0:Lcom/motorola/settings/VzwBluetoothEnabler;

    # invokes: Lcom/motorola/settings/VzwBluetoothEnabler;->updateTextView()V
    invoke-static {v1}, Lcom/motorola/settings/VzwBluetoothEnabler;->access$000(Lcom/motorola/settings/VzwBluetoothEnabler;)V

    .line 130
    :cond_1
    :goto_0
    return-void

    .line 127
    :cond_2
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    iget-object v1, p0, Lcom/motorola/settings/VzwBluetoothEnabler$1;->this$0:Lcom/motorola/settings/VzwBluetoothEnabler;

    # invokes: Lcom/motorola/settings/VzwBluetoothEnabler;->handleBTAdapterStateChanged()V
    invoke-static {v1}, Lcom/motorola/settings/VzwBluetoothEnabler;->access$100(Lcom/motorola/settings/VzwBluetoothEnabler;)V

    goto :goto_0
.end method
