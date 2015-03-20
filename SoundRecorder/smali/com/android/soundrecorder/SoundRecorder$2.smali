.class Lcom/android/soundrecorder/SoundRecorder$2;
.super Landroid/telephony/PhoneStateListener;
.source "SoundRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/soundrecorder/SoundRecorder;->getPhoneStateListener()Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/soundrecorder/SoundRecorder;


# direct methods
.method constructor <init>(Lcom/android/soundrecorder/SoundRecorder;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/soundrecorder/SoundRecorder$2;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "ignored"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x2

    .line 266
    packed-switch p1, :pswitch_data_0

    .line 280
    :pswitch_0
    const-string v0, "SoundRecorder"

    const-string v1, "Unknown call state"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 268
    :pswitch_1
    sget v0, Lcom/android/soundrecorder/SoundRecorder;->mOldCallState:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder$2;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    iget v0, v0, Lcom/android/soundrecorder/SoundRecorder;->mAudioSourceType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder$2;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    iget-object v0, v0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->stop()V

    goto :goto_0

    .line 275
    :pswitch_2
    sput v1, Lcom/android/soundrecorder/SoundRecorder;->mOldCallState:I

    goto :goto_0

    .line 266
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
