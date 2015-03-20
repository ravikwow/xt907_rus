.class Lcom/android/phone/BluetoothAtSms$13;
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
    .line 2774
    iput-object p1, p0, Lcom/android/phone/BluetoothAtSms$13;->this$0:Lcom/android/phone/BluetoothAtSms;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .locals 12
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v11, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 2779
    const-string v7, "ATSMS"

    const-string v8, "+CMGD"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2781
    const/4 v4, 0x0

    .local v4, "index":I
    const/4 v3, 0x0

    .line 2783
    .local v3, "flag":I
    aget-object v7, p1, v9

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 2785
    const/4 v7, 0x0

    :try_start_0
    aget-object v7, p1, v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 2794
    :cond_0
    array-length v7, p1

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 2796
    const/4 v7, 0x1

    :try_start_1
    aget-object v7, p1, v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 2805
    :cond_1
    sparse-switch v3, :sswitch_data_0

    .line 2864
    new-instance v6, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v6, v10}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2865
    .local v6, "result":Landroid/bluetooth/AtCommandResult;
    const-string v7, "+CMS ERROR: 500"

    invoke-virtual {v6, v7}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 2866
    .end local v6    # "result":Landroid/bluetooth/AtCommandResult;
    :goto_0
    return-object v6

    .line 2786
    :catch_0
    move-exception v1

    .line 2787
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v7, "BtAtSms"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received Invalid parameters for AT+CMGD: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2788
    new-instance v6, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v6, v10}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2789
    .restart local v6    # "result":Landroid/bluetooth/AtCommandResult;
    const-string v7, "+CMS ERROR: 305"

    invoke-virtual {v6, v7}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 2797
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "result":Landroid/bluetooth/AtCommandResult;
    :catch_1
    move-exception v1

    .line 2798
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    const-string v7, "BtAtSms"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received Invalid parameters for AT+CMGD: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2799
    new-instance v6, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v6, v10}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2800
    .restart local v6    # "result":Landroid/bluetooth/AtCommandResult;
    const-string v7, "+CMS ERROR: 305"

    invoke-virtual {v6, v7}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 2807
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "result":Landroid/bluetooth/AtCommandResult;
    :sswitch_0
    iget-object v7, p0, Lcom/android/phone/BluetoothAtSms$13;->this$0:Lcom/android/phone/BluetoothAtSms;

    # invokes: Lcom/android/phone/BluetoothAtSms;->getSmsMessageStorageName(I)Ljava/lang/String;
    invoke-static {v7, v10}, Lcom/android/phone/BluetoothAtSms;->access$1600(Lcom/android/phone/BluetoothAtSms;I)Ljava/lang/String;

    move-result-object v5

    .line 2808
    .local v5, "mem1":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 2809
    new-instance v6, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v6, v10}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2810
    .restart local v6    # "result":Landroid/bluetooth/AtCommandResult;
    const-string v7, "+CMS ERROR: 321"

    invoke-virtual {v6, v7}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 2814
    .end local v6    # "result":Landroid/bluetooth/AtCommandResult;
    :cond_2
    new-instance v0, Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;

    invoke-direct {v0, v5}, Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;-><init>(Ljava/lang/String;)V

    .line 2815
    .local v0, "Mem1capacity":Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;
    iget-object v7, p0, Lcom/android/phone/BluetoothAtSms$13;->this$0:Lcom/android/phone/BluetoothAtSms;

    iget-object v8, p0, Lcom/android/phone/BluetoothAtSms$13;->this$0:Lcom/android/phone/BluetoothAtSms;

    # getter for: Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/phone/BluetoothAtSms;->access$400(Lcom/android/phone/BluetoothAtSms;)Landroid/content/Context;

    move-result-object v8

    # invokes: Lcom/android/phone/BluetoothAtSms;->getSmsMessageStorageCapacity(Landroid/content/Context;Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;)I
    invoke-static {v7, v8, v0}, Lcom/android/phone/BluetoothAtSms;->access$1700(Lcom/android/phone/BluetoothAtSms;Landroid/content/Context;Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;)I

    move-result v2

    .line 2816
    .local v2, "error":I
    if-eq v11, v2, :cond_3

    .line 2817
    new-instance v6, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v6, v10}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2818
    .restart local v6    # "result":Landroid/bluetooth/AtCommandResult;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+CMS ERROR: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2821
    .end local v6    # "result":Landroid/bluetooth/AtCommandResult;
    :cond_3
    iget v7, v0, Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;->total:I

    if-le v4, v7, :cond_4

    .line 2822
    new-instance v6, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v6, v10}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2823
    .restart local v6    # "result":Landroid/bluetooth/AtCommandResult;
    const-string v7, "+CMS ERROR: 321"

    invoke-virtual {v6, v7}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2827
    .end local v6    # "result":Landroid/bluetooth/AtCommandResult;
    :cond_4
    const-string v7, "\"SM\""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2828
    const-string v7, "BtAtSms"

    const-string v8, "No support for deleting messages from SIM"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2834
    :goto_1
    if-eq v11, v2, :cond_6

    .line 2835
    new-instance v6, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v6, v10}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2836
    .restart local v6    # "result":Landroid/bluetooth/AtCommandResult;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+CMS ERROR: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2831
    .end local v6    # "result":Landroid/bluetooth/AtCommandResult;
    :cond_5
    iget-object v7, p0, Lcom/android/phone/BluetoothAtSms$13;->this$0:Lcom/android/phone/BluetoothAtSms;

    iget-object v8, p0, Lcom/android/phone/BluetoothAtSms$13;->this$0:Lcom/android/phone/BluetoothAtSms;

    # getter for: Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/phone/BluetoothAtSms;->access$400(Lcom/android/phone/BluetoothAtSms;)Landroid/content/Context;

    move-result-object v8

    # invokes: Lcom/android/phone/BluetoothAtSms;->deleteMessageFromME(Landroid/content/Context;I)I
    invoke-static {v7, v8, v4}, Lcom/android/phone/BluetoothAtSms;->access$3500(Lcom/android/phone/BluetoothAtSms;Landroid/content/Context;I)I

    move-result v2

    goto :goto_1

    .line 2839
    :cond_6
    new-instance v6, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v6, v9}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_0

    .line 2842
    .end local v0    # "Mem1capacity":Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;
    .end local v2    # "error":I
    .end local v5    # "mem1":Ljava/lang/String;
    :sswitch_1
    iget-object v7, p0, Lcom/android/phone/BluetoothAtSms$13;->this$0:Lcom/android/phone/BluetoothAtSms;

    # invokes: Lcom/android/phone/BluetoothAtSms;->getSmsMessageStorageName(I)Ljava/lang/String;
    invoke-static {v7, v10}, Lcom/android/phone/BluetoothAtSms;->access$1600(Lcom/android/phone/BluetoothAtSms;I)Ljava/lang/String;

    move-result-object v5

    .line 2843
    .restart local v5    # "mem1":Ljava/lang/String;
    if-nez v5, :cond_7

    .line 2844
    new-instance v6, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v6, v10}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2845
    .restart local v6    # "result":Landroid/bluetooth/AtCommandResult;
    const-string v7, "+CMS ERROR: 321"

    invoke-virtual {v6, v7}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2849
    .end local v6    # "result":Landroid/bluetooth/AtCommandResult;
    :cond_7
    const-string v7, "\"SM\""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2850
    const-string v7, "BtAtSms"

    const-string v8, "No support for deleting messages from SIM"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2852
    const/16 v2, 0x1f4

    .line 2856
    .restart local v2    # "error":I
    :goto_2
    if-eq v11, v2, :cond_9

    .line 2857
    new-instance v6, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v6, v10}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2858
    .restart local v6    # "result":Landroid/bluetooth/AtCommandResult;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+CMS ERROR: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2854
    .end local v2    # "error":I
    .end local v6    # "result":Landroid/bluetooth/AtCommandResult;
    :cond_8
    iget-object v7, p0, Lcom/android/phone/BluetoothAtSms$13;->this$0:Lcom/android/phone/BluetoothAtSms;

    iget-object v8, p0, Lcom/android/phone/BluetoothAtSms$13;->this$0:Lcom/android/phone/BluetoothAtSms;

    # getter for: Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/phone/BluetoothAtSms;->access$400(Lcom/android/phone/BluetoothAtSms;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/phone/BluetoothAtSms;->deleteAllMessageOnME(Landroid/content/Context;)I

    move-result v2

    .restart local v2    # "error":I
    goto :goto_2

    .line 2861
    :cond_9
    new-instance v6, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v6, v9}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_0

    .line 2805
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
    .end sparse-switch
.end method

.method public handleTestCommand()Landroid/bluetooth/AtCommandResult;
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 2872
    const-string v9, "ATSMS handleTestCommand"

    const-string v10, "+CMGD"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2874
    iget-object v9, p0, Lcom/android/phone/BluetoothAtSms$13;->this$0:Lcom/android/phone/BluetoothAtSms;

    # invokes: Lcom/android/phone/BluetoothAtSms;->getSmsMessageStorageName(I)Ljava/lang/String;
    invoke-static {v9, v12}, Lcom/android/phone/BluetoothAtSms;->access$1600(Lcom/android/phone/BluetoothAtSms;I)Ljava/lang/String;

    move-result-object v7

    .line 2875
    .local v7, "mem1":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 2876
    new-instance v8, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v8, v12}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2877
    .local v8, "result":Landroid/bluetooth/AtCommandResult;
    const-string v9, "+CMS ERROR: 500"

    invoke-virtual {v8, v9}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 2928
    :goto_0
    return-object v8

    .line 2881
    .end local v8    # "result":Landroid/bluetooth/AtCommandResult;
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2885
    .local v1, "SmsIndexs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v9, p0, Lcom/android/phone/BluetoothAtSms$13;->this$0:Lcom/android/phone/BluetoothAtSms;

    iget-object v10, p0, Lcom/android/phone/BluetoothAtSms$13;->this$0:Lcom/android/phone/BluetoothAtSms;

    # getter for: Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/phone/BluetoothAtSms;->access$400(Lcom/android/phone/BluetoothAtSms;)Landroid/content/Context;

    move-result-object v10

    # invokes: Lcom/android/phone/BluetoothAtSms;->getAllSmsIndexsFromME(Landroid/content/Context;Ljava/util/ArrayList;)I
    invoke-static {v9, v10, v1}, Lcom/android/phone/BluetoothAtSms;->access$3600(Lcom/android/phone/BluetoothAtSms;Landroid/content/Context;Ljava/util/ArrayList;)I

    move-result v3

    .line 2887
    .local v3, "error":I
    const/4 v9, -0x1

    if-eq v9, v3, :cond_1

    .line 2888
    new-instance v8, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v8, v12}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2889
    .restart local v8    # "result":Landroid/bluetooth/AtCommandResult;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "+CMS ERROR: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 2892
    .end local v8    # "result":Landroid/bluetooth/AtCommandResult;
    :cond_1
    new-instance v8, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v8, v11}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2893
    .restart local v8    # "result":Landroid/bluetooth/AtCommandResult;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 2894
    .local v5, "indexsStr":Ljava/lang/StringBuffer;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_6

    .line 2896
    const-string v9, "("

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2897
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2898
    .local v2, "baseIndex":I
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2899
    .local v6, "lastIndex":I
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 2900
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_5

    .line 2901
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2902
    .local v0, "Index":I
    add-int/lit8 v9, v6, 0x1

    if-ne v0, v9, :cond_3

    .line 2903
    add-int/lit8 v6, v6, 0x1

    .line 2904
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v4, v9, :cond_2

    .line 2905
    const-string v9, "-"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2906
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 2900
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2910
    :cond_3
    if-le v6, v2, :cond_4

    .line 2911
    const-string v9, "-"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2912
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 2914
    :cond_4
    move v2, v0

    .line 2915
    move v6, v2

    .line 2916
    const-string v9, ","

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2917
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 2920
    .end local v0    # "Index":I
    :cond_5
    const-string v9, ")"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2926
    .end local v2    # "baseIndex":I
    .end local v4    # "i":I
    .end local v6    # "lastIndex":I
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "+CMGD: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2923
    :cond_6
    const-string v9, "()"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3
.end method
