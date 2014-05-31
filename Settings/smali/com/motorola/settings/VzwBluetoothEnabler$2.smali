.class Lcom/motorola/settings/VzwBluetoothEnabler$2;
.super Ljava/lang/Object;
.source "VzwBluetoothEnabler.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


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
    .line 222
    iput-object p1, p0, Lcom/motorola/settings/VzwBluetoothEnabler$2;->this$0:Lcom/motorola/settings/VzwBluetoothEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 224
    iget-object v1, p0, Lcom/motorola/settings/VzwBluetoothEnabler$2;->this$0:Lcom/motorola/settings/VzwBluetoothEnabler;

    # getter for: Lcom/motorola/settings/VzwBluetoothEnabler;->mBluetoothProfiles:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/motorola/settings/VzwBluetoothEnabler;->access$200(Lcom/motorola/settings/VzwBluetoothEnabler;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothProfile;

    .line 225
    .local v0, "oldProxy":Landroid/bluetooth/BluetoothProfile;
    if-eqz v0, :cond_0

    .line 226
    iget-object v1, p0, Lcom/motorola/settings/VzwBluetoothEnabler$2;->this$0:Lcom/motorola/settings/VzwBluetoothEnabler;

    # getter for: Lcom/motorola/settings/VzwBluetoothEnabler;->mBa:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v1}, Lcom/motorola/settings/VzwBluetoothEnabler;->access$300(Lcom/motorola/settings/VzwBluetoothEnabler;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/motorola/settings/VzwBluetoothEnabler$2;->this$0:Lcom/motorola/settings/VzwBluetoothEnabler;

    # getter for: Lcom/motorola/settings/VzwBluetoothEnabler;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/motorola/settings/VzwBluetoothEnabler;->access$400(Lcom/motorola/settings/VzwBluetoothEnabler;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 229
    iget-object v1, p0, Lcom/motorola/settings/VzwBluetoothEnabler$2;->this$0:Lcom/motorola/settings/VzwBluetoothEnabler;

    # invokes: Lcom/motorola/settings/VzwBluetoothEnabler;->updateTextView()V
    invoke-static {v1}, Lcom/motorola/settings/VzwBluetoothEnabler;->access$000(Lcom/motorola/settings/VzwBluetoothEnabler;)V

    .line 233
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/motorola/settings/VzwBluetoothEnabler$2;->this$0:Lcom/motorola/settings/VzwBluetoothEnabler;

    # getter for: Lcom/motorola/settings/VzwBluetoothEnabler;->mBa:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v1}, Lcom/motorola/settings/VzwBluetoothEnabler;->access$300(Lcom/motorola/settings/VzwBluetoothEnabler;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "profile"    # I

    .prologue
    .line 235
    iget-object v0, p0, Lcom/motorola/settings/VzwBluetoothEnabler$2;->this$0:Lcom/motorola/settings/VzwBluetoothEnabler;

    # getter for: Lcom/motorola/settings/VzwBluetoothEnabler;->mBluetoothProfiles:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/motorola/settings/VzwBluetoothEnabler;->access$200(Lcom/motorola/settings/VzwBluetoothEnabler;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    return-void
.end method
