.class Lcom/android/phone/BluetoothHandsfree$18;
.super Landroid/bluetooth/AtCommandHandler;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BluetoothHandsfree;->initializeHandsfreeAtParser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;

.field final synthetic val$phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone;)V
    .locals 0

    .prologue
    .line 2846
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    iput-object p2, p0, Lcom/android/phone/BluetoothHandsfree$18;->val$phone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method

.method private isValidDtmf(C)Z
    .locals 3
    .param p1, "c"    # C

    .prologue
    const/4 v0, 0x1

    .line 2869
    sparse-switch p1, :sswitch_data_0

    .line 2874
    const/16 v1, 0xe

    invoke-static {p1, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2877
    :goto_0
    :sswitch_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2869
    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_0
        0x2a -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .locals 5
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2849
    array-length v2, p1

    if-lt v2, v3, :cond_2

    .line 2851
    aget-object v2, p1, v4

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 2852
    aget-object v2, p1, v4

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2856
    .local v0, "c":C
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree$18;->isValidDtmf(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2857
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$18;->val$phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 2858
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    .line 2859
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$18;->val$phone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v4, v4, v3}, Lcom/android/internal/telephony/Phone;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    .line 2863
    .end local v1    # "s":Ljava/lang/String;
    :goto_1
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v2, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2866
    .end local v0    # "c":C
    :goto_2
    return-object v2

    .line 2854
    :cond_0
    aget-object v2, p1, v4

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .restart local v0    # "c":C
    goto :goto_0

    .line 2861
    :cond_1
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$18;->val$phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/Phone;->sendDtmf(C)V

    goto :goto_1

    .line 2866
    .end local v0    # "c":C
    :cond_2
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v2, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_2
.end method
