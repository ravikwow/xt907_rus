.class Lcom/android/bluetooth/map/BluetoothMasService$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothMasService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/map/BluetoothMasService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMasService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMasService;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMasService$2;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 245
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.bluetooth.adapter.action.ACTION_MAP_DISCONNECT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasService$2;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    iget-object v1, v1, Lcom/android/bluetooth/map/BluetoothMasService;->mConnectionManager:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->disconnect()V

    .line 249
    :cond_0
    return-void
.end method
