.class Lcom/android/phone/InCallScreen$1;
.super Landroid/os/Handler;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 278
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    # getter for: Lcom/android/phone/InCallScreen;->mIsDestroyed:Z
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    # getter for: Lcom/android/phone/InCallScreen;->DBG:Z
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handler: ignoring message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; we\'re destroyed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    # getter for: Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 283
    # getter for: Lcom/android/phone/InCallScreen;->DBG:Z
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handler: handling message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " while not in foreground"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 291
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 438
    const-string v1, "InCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHandler: unexpected message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 293
    :sswitch_0
    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-virtual {v2, v1}, Lcom/android/phone/InCallScreen;->onSuppServiceFailed(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 297
    :sswitch_1
    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    # invokes: Lcom/android/phone/InCallScreen;->onPhoneStateChanged(Landroid/os/AsyncResult;)V
    invoke-static {v2, v1}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 301
    :sswitch_2
    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    # invokes: Lcom/android/phone/InCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V
    invoke-static {v2, v1}, Lcom/android/phone/InCallScreen;->access$500(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 333
    :sswitch_3
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    # invokes: Lcom/android/phone/InCallScreen;->onMMICancel()V
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;)V

    goto :goto_0

    .line 341
    :sswitch_4
    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/MmiCode;

    # invokes: Lcom/android/phone/InCallScreen;->onMMIComplete(Lcom/android/internal/telephony/MmiCode;)V
    invoke-static {v2, v1}, Lcom/android/phone/InCallScreen;->access$700(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/MmiCode;)V

    goto :goto_0

    .line 345
    :sswitch_5
    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget v3, p1, Landroid/os/Message;->arg1:I

    int-to-char v3, v3

    # invokes: Lcom/android/phone/InCallScreen;->handlePostOnDialChars(Landroid/os/AsyncResult;C)V
    invoke-static {v2, v1, v3}, Lcom/android/phone/InCallScreen;->access$800(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;C)V

    goto/16 :goto_0

    .line 349
    :sswitch_6
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    # invokes: Lcom/android/phone/InCallScreen;->addVoiceMailNumberPanel()V
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$900(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 353
    :sswitch_7
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    # invokes: Lcom/android/phone/InCallScreen;->dontAddVoiceMailNumber()V
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$1000(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 357
    :sswitch_8
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    # invokes: Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect()V
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$1100(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 361
    :sswitch_9
    # getter for: Lcom/android/phone/InCallScreen;->VDBG:Z
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$1200()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v2, "ALLOW_SCREEN_ON message..."

    # invokes: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 366
    :cond_3
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    # getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$1300(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    goto/16 :goto_0

    .line 370
    :sswitch_a
    # getter for: Lcom/android/phone/InCallScreen;->VDBG:Z
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$1200()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v2, "REQUEST_UPDATE_BLUETOOTH_INDICATION..."

    # invokes: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 376
    :cond_4
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    # invokes: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$1400(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 380
    :sswitch_b
    # getter for: Lcom/android/phone/InCallScreen;->DBG:Z
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v2, "Received PHONE_CDMA_CALL_WAITING event ..."

    # invokes: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 381
    :cond_5
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    # getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$1500(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 384
    .local v0, "cn":Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    .line 388
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    # invokes: Lcom/android/phone/InCallScreen;->updateExpandedViewState()V
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$1600(Lcom/android/phone/InCallScreen;)V

    .line 389
    # getter for: Lcom/android/phone/InCallScreen;->VDBG:Z
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$1200()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v2, "CDMA Call waiting, disable notification bar pull down."

    # invokes: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 394
    :cond_6
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    # invokes: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$1400(Lcom/android/phone/InCallScreen;)V

    .line 395
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    # getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$1300(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    goto/16 :goto_0

    .line 400
    .end local v0    # "cn":Lcom/android/internal/telephony/Connection;
    :sswitch_c
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    # getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$1300(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v1, :cond_0

    .line 401
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    # getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$1300(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v1}, Lcom/android/phone/OtaUtils;->onOtaCloseSpcNotice()V

    goto/16 :goto_0

    .line 406
    :sswitch_d
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    # getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$1300(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    # getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$1300(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v1}, Lcom/android/phone/OtaUtils;->onOtaCloseFailureNotice()V

    goto/16 :goto_0

    .line 412
    :sswitch_e
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    # getter for: Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$1700(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 413
    # getter for: Lcom/android/phone/InCallScreen;->DBG:Z
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v2, "- DISMISSING mPausePromptDialog."

    # invokes: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 414
    :cond_7
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    # getter for: Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$1700(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 415
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v2, 0x0

    # setter for: Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/android/phone/InCallScreen;->access$1702(Lcom/android/phone/InCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 420
    :sswitch_f
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    # getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$1300(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-boolean v4, v1, Lcom/android/phone/InCallUiState;->providerInfoVisible:Z

    .line 421
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    # getter for: Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$1800(Lcom/android/phone/InCallScreen;)Lcom/android/phone/CallCard;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 422
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    # getter for: Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$1800(Lcom/android/phone/InCallScreen;)Lcom/android/phone/CallCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    # getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$1500(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    goto/16 :goto_0

    .line 426
    :sswitch_10
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    # invokes: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$1400(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 430
    :sswitch_11
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    # invokes: Lcom/android/phone/InCallScreen;->onIncomingRing()V
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$1900(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 434
    :sswitch_12
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    # invokes: Lcom/android/phone/InCallScreen;->onNewRingingConnection()V
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$2000(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 291
    :sswitch_data_0
    .sparse-switch
        0x34 -> :sswitch_4
        0x35 -> :sswitch_3
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x68 -> :sswitch_5
        0x6a -> :sswitch_6
        0x6b -> :sswitch_7
        0x6c -> :sswitch_8
        0x6e -> :sswitch_0
        0x70 -> :sswitch_9
        0x72 -> :sswitch_a
        0x73 -> :sswitch_b
        0x76 -> :sswitch_c
        0x77 -> :sswitch_d
        0x78 -> :sswitch_e
        0x79 -> :sswitch_f
        0x7a -> :sswitch_10
        0x7b -> :sswitch_11
        0x7c -> :sswitch_12
    .end sparse-switch
.end method
