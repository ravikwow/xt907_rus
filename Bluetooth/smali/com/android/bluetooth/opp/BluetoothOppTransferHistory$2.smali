.class Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$2;
.super Ljava/lang/Object;
.source "BluetoothOppTransferHistory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->promptClearList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 240
    const/4 v0, 0x0

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->isClearAllDialogShown:Z
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->access$002(Z)Z

    .line 241
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    # invokes: Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->clearAllDownloads()V
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->access$100(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)V

    .line 242
    return-void
.end method
