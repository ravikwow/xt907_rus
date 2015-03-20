.class Lcom/android/phone/BluetoothAtSms$14;
.super Landroid/bluetooth/AtCommandHandler;
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
    .line 2933
    iput-object p1, p0, Lcom/android/phone/BluetoothAtSms$14;->this$0:Lcom/android/phone/BluetoothAtSms;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .locals 13
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v12, 0x2

    const/4 v11, -0x1

    const/4 v10, 0x1

    .line 2937
    const-string v0, "BtAtSms"

    const-string v1, "+CMSS"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2938
    new-instance v6, Lcom/android/phone/BluetoothAtSms$CMSS;

    invoke-direct {v6, v3}, Lcom/android/phone/BluetoothAtSms$CMSS;-><init>(Lcom/android/phone/BluetoothAtSms$1;)V

    .line 2940
    .local v6, "cmss":Lcom/android/phone/BluetoothAtSms$CMSS;
    array-length v0, p1

    packed-switch v0, :pswitch_data_0

    .line 3006
    const-string v0, "BtAtSms"

    const-string v1, "Received Invalid parameters for AT+CMSS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3007
    new-instance v9, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v9, v10}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 3008
    .local v9, "result":Landroid/bluetooth/AtCommandResult;
    const-string v0, "+CMS ERROR: 305"

    invoke-virtual {v9, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 3024
    .end local v9    # "result":Landroid/bluetooth/AtCommandResult;
    :goto_0
    return-object v9

    .line 2943
    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v6, Lcom/android/phone/BluetoothAtSms$CMSS;->index:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2950
    iput-object v3, v6, Lcom/android/phone/BluetoothAtSms$CMSS;->address:Ljava/lang/String;

    .line 2951
    iput v11, v6, Lcom/android/phone/BluetoothAtSms$CMSS;->address_type:I

    .line 3012
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/phone/BluetoothAtSms$14;->this$0:Lcom/android/phone/BluetoothAtSms;

    # invokes: Lcom/android/phone/BluetoothAtSms;->getSmsMessageStorageName(I)Ljava/lang/String;
    invoke-static {v0, v12}, Lcom/android/phone/BluetoothAtSms;->access$1600(Lcom/android/phone/BluetoothAtSms;I)Ljava/lang/String;

    move-result-object v2

    .line 3013
    .local v2, "mem2":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 3014
    new-instance v9, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v9, v10}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 3015
    .restart local v9    # "result":Landroid/bluetooth/AtCommandResult;
    const-string v0, "+CMS ERROR: 321"

    invoke-virtual {v9, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 2944
    .end local v2    # "mem2":Ljava/lang/String;
    .end local v9    # "result":Landroid/bluetooth/AtCommandResult;
    :catch_0
    move-exception v7

    .line 2945
    .local v7, "e":Ljava/lang/NumberFormatException;
    const-string v0, "BtAtSms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received Invalid parameters for AT+CMSS: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2946
    new-instance v9, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v9, v10}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2947
    .restart local v9    # "result":Landroid/bluetooth/AtCommandResult;
    const-string v0, "+CMS ERROR: 305"

    invoke-virtual {v9, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 2955
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    .end local v9    # "result":Landroid/bluetooth/AtCommandResult;
    :pswitch_1
    const/4 v0, 0x0

    :try_start_1
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v6, Lcom/android/phone/BluetoothAtSms$CMSS;->index:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2964
    const/4 v0, 0x1

    :try_start_2
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/phone/BluetoothAtSms$CMSS;->address:Ljava/lang/String;

    .line 2965
    iget-object v0, v6, Lcom/android/phone/BluetoothAtSms$CMSS;->address:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2966
    const-string v0, "BtAtSms"

    const-string v1, "Received Invalid destinationAddress for CMSS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2967
    new-instance v9, Landroid/bluetooth/AtCommandResult;

    const/4 v0, 0x1

    invoke-direct {v9, v0}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2968
    .restart local v9    # "result":Landroid/bluetooth/AtCommandResult;
    const-string v0, "+CMS ERROR: 305"

    invoke-virtual {v9, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 2971
    .end local v9    # "result":Landroid/bluetooth/AtCommandResult;
    :catch_1
    move-exception v7

    .line 2972
    .local v7, "e":Ljava/lang/StringIndexOutOfBoundsException;
    const-string v0, "BtAtSms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received Invalid destinationAddress for CMSS: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2973
    new-instance v9, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v9, v10}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2974
    .restart local v9    # "result":Landroid/bluetooth/AtCommandResult;
    const-string v0, "+CMS ERROR: 305"

    invoke-virtual {v9, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2956
    .end local v7    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    .end local v9    # "result":Landroid/bluetooth/AtCommandResult;
    :catch_2
    move-exception v7

    .line 2957
    .local v7, "e":Ljava/lang/NumberFormatException;
    const-string v0, "BtAtSms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received Invalid parameters for AT+CMSS: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2958
    new-instance v9, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v9, v10}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2959
    .restart local v9    # "result":Landroid/bluetooth/AtCommandResult;
    const-string v0, "+CMS ERROR: 305"

    invoke-virtual {v9, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2977
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    .end local v9    # "result":Landroid/bluetooth/AtCommandResult;
    :cond_1
    iput v11, v6, Lcom/android/phone/BluetoothAtSms$CMSS;->address_type:I

    goto/16 :goto_1

    .line 2981
    :pswitch_2
    const/4 v0, 0x0

    :try_start_3
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v6, Lcom/android/phone/BluetoothAtSms$CMSS;->index:I

    .line 2982
    const/4 v0, 0x2

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v6, Lcom/android/phone/BluetoothAtSms$CMSS;->address_type:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4

    .line 2991
    const/4 v0, 0x1

    :try_start_4
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/phone/BluetoothAtSms$CMSS;->address:Ljava/lang/String;

    .line 2992
    iget-object v0, v6, Lcom/android/phone/BluetoothAtSms$CMSS;->address:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2993
    const-string v0, "BtAtSms"

    const-string v1, "Received Invalid destinationAddress for CMSS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2994
    new-instance v9, Landroid/bluetooth/AtCommandResult;

    const/4 v0, 0x1

    invoke-direct {v9, v0}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2995
    .restart local v9    # "result":Landroid/bluetooth/AtCommandResult;
    const-string v0, "+CMS ERROR: 305"

    invoke-virtual {v9, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 2998
    .end local v9    # "result":Landroid/bluetooth/AtCommandResult;
    :catch_3
    move-exception v7

    .line 2999
    .local v7, "e":Ljava/lang/StringIndexOutOfBoundsException;
    const-string v0, "BtAtSms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received Invalid destinationAddress for CMSS: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3000
    new-instance v9, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v9, v10}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 3001
    .restart local v9    # "result":Landroid/bluetooth/AtCommandResult;
    const-string v0, "+CMS ERROR: 305"

    invoke-virtual {v9, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2983
    .end local v7    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    .end local v9    # "result":Landroid/bluetooth/AtCommandResult;
    :catch_4
    move-exception v7

    .line 2984
    .local v7, "e":Ljava/lang/NumberFormatException;
    const-string v0, "BtAtSms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received Invalid parameters for AT+CMSS: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2985
    new-instance v9, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v9, v10}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2986
    .restart local v9    # "result":Landroid/bluetooth/AtCommandResult;
    const-string v0, "+CMS ERROR: 305"

    invoke-virtual {v9, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3018
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    .end local v9    # "result":Landroid/bluetooth/AtCommandResult;
    .restart local v2    # "mem2":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/android/phone/BluetoothAtSms$14;->this$0:Lcom/android/phone/BluetoothAtSms;

    iget-object v1, p0, Lcom/android/phone/BluetoothAtSms$14;->this$0:Lcom/android/phone/BluetoothAtSms;

    # getter for: Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/BluetoothAtSms;->access$400(Lcom/android/phone/BluetoothAtSms;)Landroid/content/Context;

    move-result-object v1

    iget v3, v6, Lcom/android/phone/BluetoothAtSms$CMSS;->index:I

    iget-object v4, v6, Lcom/android/phone/BluetoothAtSms$CMSS;->address:Ljava/lang/String;

    const-string v5, "+CMSS"

    # invokes: Lcom/android/phone/BluetoothAtSms;->sendMessageFromMem(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    invoke-static/range {v0 .. v5}, Lcom/android/phone/BluetoothAtSms;->access$3800(Lcom/android/phone/BluetoothAtSms;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 3019
    .local v8, "error":I
    if-eq v11, v8, :cond_3

    .line 3020
    new-instance v9, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v9, v10}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 3021
    .restart local v9    # "result":Landroid/bluetooth/AtCommandResult;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+CMS ERROR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3024
    .end local v9    # "result":Landroid/bluetooth/AtCommandResult;
    :cond_3
    new-instance v9, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v9, v12}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_0

    .line 2940
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
