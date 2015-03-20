.class Lcom/android/phone/BluetoothAtSms$3;
.super Landroid/bluetooth/AtCommandConcomitantHandler;
.source "BluetoothAtSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BluetoothAtSms;->register(Landroid/bluetooth/AtParser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothAtSms;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothAtSms;)V
    .locals 0

    .prologue
    .line 2260
    iput-object p1, p0, Lcom/android/phone/BluetoothAtSms$3;->this$0:Lcom/android/phone/BluetoothAtSms;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandConcomitantHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleCommand(Ljava/lang/String;)Z
    .locals 4
    .param p1, "arg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 2263
    iget-object v1, p0, Lcom/android/phone/BluetoothAtSms$3;->this$0:Lcom/android/phone/BluetoothAtSms;

    # getter for: Lcom/android/phone/BluetoothAtSms;->mInputMode:I
    invoke-static {v1}, Lcom/android/phone/BluetoothAtSms;->access$1400(Lcom/android/phone/BluetoothAtSms;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2264
    const-string v1, "AtCmgsConcomitant"

    const-string v2, "INPUT_MODE_MESSAGE_SEND"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    iget-object v1, p0, Lcom/android/phone/BluetoothAtSms$3;->this$0:Lcom/android/phone/BluetoothAtSms;

    iget-object v2, p0, Lcom/android/phone/BluetoothAtSms$3;->this$0:Lcom/android/phone/BluetoothAtSms;

    # getter for: Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/BluetoothAtSms;->access$400(Lcom/android/phone/BluetoothAtSms;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/BluetoothAtSms$3;->this$0:Lcom/android/phone/BluetoothAtSms;

    # getter for: Lcom/android/phone/BluetoothAtSms;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v3}, Lcom/android/phone/BluetoothAtSms;->access$500(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v3

    # invokes: Lcom/android/phone/BluetoothAtSms;->process(Landroid/content/Context;Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    invoke-static {v1, v2, v3, p1}, Lcom/android/phone/BluetoothAtSms;->access$1500(Lcom/android/phone/BluetoothAtSms;Landroid/content/Context;Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 2269
    :goto_0
    return v0

    .line 2268
    :cond_0
    const-string v0, "AtCmgsConcomitant"

    const-string v1, "INPUT_MODE_NORMAL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    const/4 v0, 0x0

    goto :goto_0
.end method
