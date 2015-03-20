.class Lcom/android/phone/AirplaneModeHandler$1;
.super Landroid/os/Handler;
.source "AirplaneModeHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/AirplaneModeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/AirplaneModeHandler;


# direct methods
.method constructor <init>(Lcom/android/phone/AirplaneModeHandler;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v6, 0x67

    const/4 v5, 0x0

    .line 68
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 142
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 70
    :pswitch_1
    # getter for: Lcom/android/phone/AirplaneModeHandler;->DBG:Z
    invoke-static {}, Lcom/android/phone/AirplaneModeHandler;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    const-string v4, "mHandler()-> rcvd: EVENT_SERVICE_STATE_CHANGED"

    # invokes: Lcom/android/phone/AirplaneModeHandler;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/AirplaneModeHandler;->access$100(Lcom/android/phone/AirplaneModeHandler;Ljava/lang/String;)V

    .line 72
    :cond_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v2, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Landroid/telephony/ServiceState;

    .line 74
    .local v2, "state":Landroid/telephony/ServiceState;
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_0

    .line 75
    # getter for: Lcom/android/phone/AirplaneModeHandler;->DBG:Z
    invoke-static {}, Lcom/android/phone/AirplaneModeHandler;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    const-string v4, "mHandler()-> state is STATE_IN_SERVICE"

    # invokes: Lcom/android/phone/AirplaneModeHandler;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/AirplaneModeHandler;->access$100(Lcom/android/phone/AirplaneModeHandler;Ljava/lang/String;)V

    .line 77
    :cond_2
    iget-object v3, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    # getter for: Lcom/android/phone/AirplaneModeHandler;->mIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/phone/AirplaneModeHandler;->access$200(Lcom/android/phone/AirplaneModeHandler;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 78
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "voicemail"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 79
    # getter for: Lcom/android/phone/AirplaneModeHandler;->DBG:Z
    invoke-static {}, Lcom/android/phone/AirplaneModeHandler;->access$000()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    const-string v4, "call to voice mail, delaying call orig"

    # invokes: Lcom/android/phone/AirplaneModeHandler;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/AirplaneModeHandler;->access$100(Lcom/android/phone/AirplaneModeHandler;Ljava/lang/String;)V

    .line 83
    :cond_3
    iget-object v3, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    # getter for: Lcom/android/phone/AirplaneModeHandler;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/AirplaneModeHandler;->access$300(Lcom/android/phone/AirplaneModeHandler;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x66

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 84
    .local v1, "msgDelayed":Landroid/os/Message;
    const-wide/16 v3, 0xfa0

    invoke-virtual {p0, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 87
    iget-object v3, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    # getter for: Lcom/android/phone/AirplaneModeHandler;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/AirplaneModeHandler;->access$300(Lcom/android/phone/AirplaneModeHandler;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 88
    iget-object v3, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    # getter for: Lcom/android/phone/AirplaneModeHandler;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v3}, Lcom/android/phone/AirplaneModeHandler;->access$400(Lcom/android/phone/AirplaneModeHandler;)Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    goto :goto_0

    .line 91
    .end local v1    # "msgDelayed":Landroid/os/Message;
    :cond_4
    # getter for: Lcom/android/phone/AirplaneModeHandler;->DBG:Z
    invoke-static {}, Lcom/android/phone/AirplaneModeHandler;->access$000()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    const-string v4, "Place the call after exiting airplane mode"

    # invokes: Lcom/android/phone/AirplaneModeHandler;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/AirplaneModeHandler;->access$100(Lcom/android/phone/AirplaneModeHandler;Ljava/lang/String;)V

    .line 92
    :cond_5
    iget-object v3, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    # getter for: Lcom/android/phone/AirplaneModeHandler;->mApplication:Landroid/app/Application;
    invoke-static {v3}, Lcom/android/phone/AirplaneModeHandler;->access$500(Lcom/android/phone/AirplaneModeHandler;)Landroid/app/Application;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    # getter for: Lcom/android/phone/AirplaneModeHandler;->mIntent:Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/phone/AirplaneModeHandler;->access$200(Lcom/android/phone/AirplaneModeHandler;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    .line 95
    iget-object v3, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    # getter for: Lcom/android/phone/AirplaneModeHandler;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/AirplaneModeHandler;->access$300(Lcom/android/phone/AirplaneModeHandler;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 96
    iget-object v3, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    # getter for: Lcom/android/phone/AirplaneModeHandler;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v3}, Lcom/android/phone/AirplaneModeHandler;->access$400(Lcom/android/phone/AirplaneModeHandler;)Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 99
    iget-object v3, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    # getter for: Lcom/android/phone/AirplaneModeHandler;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/phone/AirplaneModeHandler;->access$600(Lcom/android/phone/AirplaneModeHandler;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 100
    iget-object v3, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    # setter for: Lcom/android/phone/AirplaneModeHandler;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3, v5}, Lcom/android/phone/AirplaneModeHandler;->access$602(Lcom/android/phone/AirplaneModeHandler;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 106
    # getter for: Lcom/android/phone/AirplaneModeHandler;->DBG:Z
    invoke-static {}, Lcom/android/phone/AirplaneModeHandler;->access$000()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    const-string v4, "finishing"

    # invokes: Lcom/android/phone/AirplaneModeHandler;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/AirplaneModeHandler;->access$100(Lcom/android/phone/AirplaneModeHandler;Ljava/lang/String;)V

    .line 107
    :cond_6
    iget-object v3, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 113
    .end local v0    # "data":Landroid/net/Uri;
    .end local v2    # "state":Landroid/telephony/ServiceState;
    :pswitch_2
    # getter for: Lcom/android/phone/AirplaneModeHandler;->DBG:Z
    invoke-static {}, Lcom/android/phone/AirplaneModeHandler;->access$000()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    const-string v4, "mHandler()->rcvd: EVENT_DELAY_CALL_ORIGINATION"

    # invokes: Lcom/android/phone/AirplaneModeHandler;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/AirplaneModeHandler;->access$100(Lcom/android/phone/AirplaneModeHandler;Ljava/lang/String;)V

    .line 115
    :cond_7
    # getter for: Lcom/android/phone/AirplaneModeHandler;->DBG:Z
    invoke-static {}, Lcom/android/phone/AirplaneModeHandler;->access$000()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    const-string v4, "Place the call after exiting airplane mode"

    # invokes: Lcom/android/phone/AirplaneModeHandler;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/AirplaneModeHandler;->access$100(Lcom/android/phone/AirplaneModeHandler;Ljava/lang/String;)V

    .line 116
    :cond_8
    iget-object v3, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    # getter for: Lcom/android/phone/AirplaneModeHandler;->mApplication:Landroid/app/Application;
    invoke-static {v3}, Lcom/android/phone/AirplaneModeHandler;->access$500(Lcom/android/phone/AirplaneModeHandler;)Landroid/app/Application;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    # getter for: Lcom/android/phone/AirplaneModeHandler;->mIntent:Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/phone/AirplaneModeHandler;->access$200(Lcom/android/phone/AirplaneModeHandler;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    .line 119
    iget-object v3, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    # getter for: Lcom/android/phone/AirplaneModeHandler;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/phone/AirplaneModeHandler;->access$600(Lcom/android/phone/AirplaneModeHandler;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 120
    iget-object v3, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    # setter for: Lcom/android/phone/AirplaneModeHandler;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3, v5}, Lcom/android/phone/AirplaneModeHandler;->access$602(Lcom/android/phone/AirplaneModeHandler;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 122
    # getter for: Lcom/android/phone/AirplaneModeHandler;->DBG:Z
    invoke-static {}, Lcom/android/phone/AirplaneModeHandler;->access$000()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    const-string v4, "finishing"

    # invokes: Lcom/android/phone/AirplaneModeHandler;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/AirplaneModeHandler;->access$100(Lcom/android/phone/AirplaneModeHandler;Ljava/lang/String;)V

    .line 123
    :cond_9
    iget-object v3, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 127
    :pswitch_3
    # getter for: Lcom/android/phone/AirplaneModeHandler;->DBG:Z
    invoke-static {}, Lcom/android/phone/AirplaneModeHandler;->access$000()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    const-string v4, "mHandler()->rcvd: EVENT_TIME_OUT"

    # invokes: Lcom/android/phone/AirplaneModeHandler;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/AirplaneModeHandler;->access$100(Lcom/android/phone/AirplaneModeHandler;Ljava/lang/String;)V

    .line 130
    :cond_a
    iget-object v3, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    # getter for: Lcom/android/phone/AirplaneModeHandler;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v3}, Lcom/android/phone/AirplaneModeHandler;->access$400(Lcom/android/phone/AirplaneModeHandler;)Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    # getter for: Lcom/android/phone/AirplaneModeHandler;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/phone/AirplaneModeHandler;->access$300(Lcom/android/phone/AirplaneModeHandler;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/CallManager;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 133
    iget-object v3, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    # getter for: Lcom/android/phone/AirplaneModeHandler;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/phone/AirplaneModeHandler;->access$600(Lcom/android/phone/AirplaneModeHandler;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 134
    iget-object v3, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    # setter for: Lcom/android/phone/AirplaneModeHandler;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3, v5}, Lcom/android/phone/AirplaneModeHandler;->access$602(Lcom/android/phone/AirplaneModeHandler;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 136
    # getter for: Lcom/android/phone/AirplaneModeHandler;->DBG:Z
    invoke-static {}, Lcom/android/phone/AirplaneModeHandler;->access$000()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    const-string v4, "finishing"

    # invokes: Lcom/android/phone/AirplaneModeHandler;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/AirplaneModeHandler;->access$100(Lcom/android/phone/AirplaneModeHandler;Ljava/lang/String;)V

    .line 137
    :cond_b
    iget-object v3, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
