.class Lcom/android/phone/MotoRinger$3;
.super Landroid/os/Handler;
.source "MotoRinger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MotoRinger;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MotoRinger;


# direct methods
.method constructor <init>(Lcom/android/phone/MotoRinger;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/phone/MotoRinger$3;->this$0:Lcom/android/phone/MotoRinger;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 163
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 188
    :goto_0
    return-void

    .line 166
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 167
    # getter for: Lcom/android/phone/MotoRinger;->DBG:Z
    invoke-static {}, Lcom/android/phone/MotoRinger;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MotoRinger$3;->this$0:Lcom/android/phone/MotoRinger;

    const-string v1, "eri PLAYBACK COMPLETE"

    # invokes: Lcom/android/phone/MotoRinger;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/MotoRinger;->access$100(Lcom/android/phone/MotoRinger;Ljava/lang/String;)V

    .line 171
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/phone/MotoRinger$3;->this$0:Lcom/android/phone/MotoRinger;

    iget v1, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/phone/MotoRinger;->eriCompleteUpdate(I)V
    invoke-static {v0, v1}, Lcom/android/phone/MotoRinger;->access$200(Lcom/android/phone/MotoRinger;I)V

    goto :goto_0

    .line 169
    :cond_1
    # getter for: Lcom/android/phone/MotoRinger;->DBG:Z
    invoke-static {}, Lcom/android/phone/MotoRinger;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MotoRinger$3;->this$0:Lcom/android/phone/MotoRinger;

    const-string v1, "eri PLAYBACK Failed"

    # invokes: Lcom/android/phone/MotoRinger;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/MotoRinger;->access$100(Lcom/android/phone/MotoRinger;Ljava/lang/String;)V

    goto :goto_1

    .line 176
    :pswitch_1
    # getter for: Lcom/android/phone/MotoRinger;->DBG:Z
    invoke-static {}, Lcom/android/phone/MotoRinger;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/MotoRinger$3;->this$0:Lcom/android/phone/MotoRinger;

    const-string v1, "Ring Timer expired, stt ERI tone"

    # invokes: Lcom/android/phone/MotoRinger;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/MotoRinger;->access$100(Lcom/android/phone/MotoRinger;Ljava/lang/String;)V

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/android/phone/MotoRinger$3;->this$0:Lcom/android/phone/MotoRinger;

    # getter for: Lcom/android/phone/MotoRinger;->mRinger:Lcom/android/phone/Ringer;
    invoke-static {v0}, Lcom/android/phone/MotoRinger;->access$300(Lcom/android/phone/MotoRinger;)Lcom/android/phone/Ringer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->stopRing()V

    .line 178
    iget-object v0, p0, Lcom/android/phone/MotoRinger$3;->this$0:Lcom/android/phone/MotoRinger;

    # invokes: Lcom/android/phone/MotoRinger;->playIncEriTone()V
    invoke-static {v0}, Lcom/android/phone/MotoRinger;->access$400(Lcom/android/phone/MotoRinger;)V

    goto :goto_0

    .line 183
    :pswitch_2
    # getter for: Lcom/android/phone/MotoRinger;->DBG:Z
    invoke-static {}, Lcom/android/phone/MotoRinger;->access$000()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/MotoRinger$3;->this$0:Lcom/android/phone/MotoRinger;

    const-string v1, "receive CALLER_ID_READ_REPEAT_DELAY"

    # invokes: Lcom/android/phone/MotoRinger;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/MotoRinger;->access$100(Lcom/android/phone/MotoRinger;Ljava/lang/String;)V

    .line 184
    :cond_3
    iget-object v1, p0, Lcom/android/phone/MotoRinger$3;->this$0:Lcom/android/phone/MotoRinger;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/android/phone/MotoRinger;->onCallerIdReadout(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/phone/MotoRinger;->access$500(Lcom/android/phone/MotoRinger;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
