.class Lcom/android/phone/CallFeaturesSetting$3;
.super Landroid/os/Handler;
.source "CallFeaturesSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallFeaturesSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/CallFeaturesSetting;)V
    .locals 0

    .prologue
    .line 1165
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v10, 0x0

    .line 1168
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1170
    .local v9, "result":Landroid/os/AsyncResult;
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1200
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # getter for: Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;
    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->access$800(Lcom/android/phone/CallFeaturesSetting;)Landroid/os/AsyncResult;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1201
    .local v6, "done":Z
    :goto_1
    if-eqz v6, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:[Landroid/os/AsyncResult;

    if-eqz v0, :cond_1

    .line 1202
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:[Landroid/os/AsyncResult;

    array-length v0, v0

    if-ge v8, v0, :cond_1

    .line 1203
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:[Landroid/os/AsyncResult;

    aget-object v0, v0, v8

    if-nez v0, :cond_a

    .line 1204
    const/4 v6, 0x0

    .line 1209
    .end local v8    # "i":I
    :cond_1
    if-eqz v6, :cond_4

    .line 1210
    # getter for: Lcom/android/phone/CallFeaturesSetting;->DBG:Z
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$600()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "All VM provider related changes done"

    # invokes: Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->access$700(Ljava/lang/String;)V

    .line 1211
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:[Landroid/os/AsyncResult;

    if-eqz v0, :cond_3

    .line 1212
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting;

    const/16 v1, 0x259

    # invokes: Lcom/android/phone/CallFeaturesSetting;->dismissDialogSafely(I)V
    invoke-static {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->access$1100(Lcom/android/phone/CallFeaturesSetting;I)V

    .line 1214
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # invokes: Lcom/android/phone/CallFeaturesSetting;->handleSetVMOrFwdMessage()V
    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->access$1200(Lcom/android/phone/CallFeaturesSetting;)V

    .line 1216
    :cond_4
    return-void

    .line 1172
    .end local v6    # "done":Z
    :pswitch_0
    # getter for: Lcom/android/phone/CallFeaturesSetting;->DBG:Z
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$600()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "VM change complete msg"

    # invokes: Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->access$700(Ljava/lang/String;)V

    .line 1173
    :cond_5
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # setter for: Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;
    invoke-static {v0, v9}, Lcom/android/phone/CallFeaturesSetting;->access$802(Lcom/android/phone/CallFeaturesSetting;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;

    goto :goto_0

    .line 1176
    :pswitch_1
    # getter for: Lcom/android/phone/CallFeaturesSetting;->DBG:Z
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$600()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FWD change complete msg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->access$700(Ljava/lang/String;)V

    .line 1177
    :cond_6
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:[Landroid/os/AsyncResult;

    iget v1, p1, Landroid/os/Message;->arg1:I

    aput-object v9, v0, v1

    .line 1179
    iget v8, p1, Landroid/os/Message;->arg1:I

    .line 1180
    .restart local v8    # "i":I
    add-int/lit8 v8, v8, 0x1

    .line 1181
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # getter for: Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;
    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->access$900(Lcom/android/phone/CallFeaturesSetting;)[Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v0

    array-length v0, v0

    if-ge v8, v0, :cond_0

    .line 1182
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # getter for: Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;
    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->access$900(Lcom/android/phone/CallFeaturesSetting;)[Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v0

    aget-object v7, v0, v8

    .line 1183
    .local v7, "fi":Lcom/android/internal/telephony/CallForwardInfo;
    # getter for: Lcom/android/phone/CallFeaturesSetting;->DBG:Z
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$600()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting fwd #: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallForwardInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->access$700(Ljava/lang/String;)V

    .line 1184
    :cond_7
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # getter for: Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->access$400(Lcom/android/phone/CallFeaturesSetting;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget v1, v7, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v1, v6, :cond_8

    const/4 v1, 0x3

    :goto_3
    iget v2, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, v7, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # getter for: Lcom/android/phone/CallFeaturesSetting;->mSetOptionComplete:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/phone/CallFeaturesSetting;->access$1000(Lcom/android/phone/CallFeaturesSetting;)Landroid/os/Handler;

    move-result-object v5

    const/16 v11, 0x1f5

    invoke-virtual {v5, v11, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    :cond_8
    move v1, v10

    goto :goto_3

    .end local v7    # "fi":Lcom/android/internal/telephony/CallForwardInfo;
    .end local v8    # "i":I
    :cond_9
    move v6, v10

    .line 1200
    goto/16 :goto_1

    .line 1202
    .restart local v6    # "done":Z
    .restart local v8    # "i":I
    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 1170
    nop

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
