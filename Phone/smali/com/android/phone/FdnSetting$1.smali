.class Lcom/android/phone/FdnSetting$1;
.super Landroid/os/Handler;
.source "FdnSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/FdnSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/FdnSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/FdnSetting;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v10, 0x7f0c0254

    const v9, 0x7f0c022e

    const v8, 0x7f0c0256

    .line 276
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 391
    :goto_0
    return-void

    .line 281
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 282
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_0

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v6, v6, Lcom/android/internal/telephony/CommandException;

    if-eqz v6, :cond_0

    .line 284
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v6, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    .line 286
    .local v2, "e":Lcom/android/internal/telephony/CommandException$Error;
    sget-object v6, Lcom/android/phone/FdnSetting$4;->$SwitchMap$com$android$internal$telephony$CommandException$Error:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 311
    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v7, 0x7f0c0231

    # invokes: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v6, v7}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;I)V

    .line 315
    .end local v2    # "e":Lcom/android/internal/telephony/CommandException$Error;
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # invokes: Lcom/android/phone/FdnSetting;->updateEnableFDN()V
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$400(Lcom/android/phone/FdnSetting;)V

    goto :goto_0

    .line 291
    .restart local v2    # "e":Lcom/android/internal/telephony/CommandException$Error;
    :pswitch_0
    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # invokes: Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$000(Lcom/android/phone/FdnSetting;)V

    .line 292
    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    iget-object v7, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/phone/FdnSetting;->displayAlertDialog(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;Ljava/lang/String;)V

    .line 294
    # getter for: Lcom/android/phone/FdnSetting;->DBG:Z
    invoke-static {}, Lcom/android/phone/FdnSetting;->access$200()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "FdnSetting"

    const-string v7, "En/Disable FDN: PIN2 blocked"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 298
    :pswitch_1
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getRetryLeftSimPin(Landroid/os/AsyncResult;)I

    move-result v3

    .line 299
    .local v3, "numRetries":I
    if-lez v3, :cond_0

    .line 300
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/phone/FdnSetting;->displayAlertDialog(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;Ljava/lang/String;)V

    goto :goto_1

    .line 307
    .end local v3    # "numRetries":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :pswitch_2
    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v7, 0x7f0c03b7

    # invokes: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v6, v7}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;I)V

    .line 308
    # getter for: Lcom/android/phone/FdnSetting;->DBG:Z
    invoke-static {}, Lcom/android/phone/FdnSetting;->access$200()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "FdnSetting"

    const-string v7, "En/Disable FDN: FDN not support!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 323
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "e":Lcom/android/internal/telephony/CommandException$Error;
    :sswitch_1
    # getter for: Lcom/android/phone/FdnSetting;->DBG:Z
    invoke-static {}, Lcom/android/phone/FdnSetting;->access$200()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 324
    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const-string v7, "Handle EVENT_PIN2_CHANGE_COMPLETE"

    # invokes: Lcom/android/phone/FdnSetting;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;Ljava/lang/String;)V

    .line 325
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 326
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const/4 v3, 0x0

    .line 327
    .restart local v3    # "numRetries":I
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getRetryLeftSimPin(Landroid/os/AsyncResult;)I

    move-result v3

    .line 328
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_8

    .line 329
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 330
    .local v1, "ce":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v6, v7, :cond_2

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mIsPuk2Locked:Z
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$600(Lcom/android/phone/FdnSetting;)Z

    move-result v6

    if-nez v6, :cond_4

    if-gtz v3, :cond_4

    .line 332
    :cond_2
    # getter for: Lcom/android/phone/FdnSetting;->DBG:Z
    invoke-static {}, Lcom/android/phone/FdnSetting;->access$200()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "FdnSetting"

    const-string v7, "Chane PIN2: PIN2 blocked"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_3
    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const/4 v7, 0x1

    # setter for: Lcom/android/phone/FdnSetting;->mIsPuk2Locked:Z
    invoke-static {v6, v7}, Lcom/android/phone/FdnSetting;->access$602(Lcom/android/phone/FdnSetting;Z)Z

    .line 346
    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    iget-object v7, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/phone/FdnSetting;->displayAlertDialog(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 351
    :cond_4
    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mIsPuk2Locked:Z
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$600(Lcom/android/phone/FdnSetting;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 352
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    .local v5, "sbPuk":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v7, 0x7f0c024c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/phone/FdnSetting;->displayAlertDialog(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;Ljava/lang/String;)V

    .line 368
    .end local v5    # "sbPuk":Ljava/lang/StringBuilder;
    :cond_5
    :goto_2
    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mIsPuk2Locked:Z
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$600(Lcom/android/phone/FdnSetting;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 369
    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # invokes: Lcom/android/phone/FdnSetting;->resetPinChangeState()V
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;)V

    goto/16 :goto_0

    .line 359
    :cond_6
    if-lez v3, :cond_5

    .line 360
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 361
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/phone/FdnSetting;->displayAlertDialog(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;Ljava/lang/String;)V

    goto :goto_2

    .line 371
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_7
    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # invokes: Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$000(Lcom/android/phone/FdnSetting;)V

    goto/16 :goto_0

    .line 377
    .end local v1    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_8
    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mIsPuk2Locked:Z
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$600(Lcom/android/phone/FdnSetting;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 378
    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v7, 0x7f0c0246

    # invokes: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v6, v7}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;I)V

    .line 382
    :goto_3
    const-string v6, "gsm.mot.sim.update.error"

    const-string v7, "-1"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const/4 v7, 0x0

    # setter for: Lcom/android/phone/FdnSetting;->mIsPuk2Locked:Z
    invoke-static {v6, v7}, Lcom/android/phone/FdnSetting;->access$602(Lcom/android/phone/FdnSetting;Z)Z

    .line 385
    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$800(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v6

    const v7, 0x7f0c0248

    invoke-virtual {v6, v7}, Landroid/preference/DialogPreference;->setDialogMessage(I)V

    .line 386
    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # invokes: Lcom/android/phone/FdnSetting;->resetPinChangeState()V
    invoke-static {v6}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;)V

    goto/16 :goto_0

    .line 380
    :cond_9
    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v7, 0x7f0c0251

    # invokes: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v6, v7}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;I)V

    goto :goto_3

    .line 276
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch

    .line 286
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
