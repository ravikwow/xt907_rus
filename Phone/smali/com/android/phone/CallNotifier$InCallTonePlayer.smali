.class Lcom/android/phone/CallNotifier$InCallTonePlayer;
.super Ljava/lang/Thread;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InCallTonePlayer"
.end annotation


# instance fields
.field private mState:I

.field private mStopWithoutRadioReset:Z

.field private mToneId:I

.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;I)V
    .locals 1
    .param p2, "toneId"    # I

    .prologue
    const/4 v0, 0x0

    .line 2168
    iput-object p1, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    .line 2169
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2166
    iput-boolean v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mStopWithoutRadioReset:Z

    .line 2170
    iput p2, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    .line 2171
    iput v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 2172
    return-void
.end method


# virtual methods
.method public isTonePlaying()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 2464
    # getter for: Lcom/android/phone/CallNotifier;->DBG:Z
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- InCallTonePlayer: isTonePlaying mState= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2465
    :cond_0
    iget v1, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    if-ne v1, v0, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 14

    .prologue
    .line 2176
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "InCallTonePlayer.run(toneId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")..."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2178
    const/4 v9, 0x0

    .line 2181
    .local v9, "toneType":I
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$1100(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 2182
    .local v4, "phoneType":I
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$900(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v11

    const-string v12, "audio"

    invoke-virtual {v11, v12}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2185
    .local v0, "audioManager":Landroid/media/AudioManager;
    iget v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    packed-switch v11, :pswitch_data_0

    .line 2282
    :pswitch_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Bad toneId: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2187
    :pswitch_1
    const/16 v9, 0x16

    .line 2188
    const/16 v10, 0x64

    .line 2190
    .local v10, "toneVolume":I
    const v8, 0x7fffffeb

    .line 2290
    .local v8, "toneLengthMillis":I
    :goto_0
    :try_start_0
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$1200(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v11

    if-eqz v11, :cond_e

    .line 2291
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$1200(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v11

    if-eqz v11, :cond_d

    const/4 v6, 0x6

    .line 2295
    .local v6, "stream":I
    :goto_1
    iget v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_0

    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$1200(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2296
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->tone_relative_volume_lopri:I
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$1300(Lcom/android/phone/CallNotifier;)I

    move-result v10

    .line 2306
    :cond_0
    :goto_2
    iget v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_1

    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$900(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2307
    const/4 v6, 0x1

    .line 2308
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->tone_relative_volume_lopri:I
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$1300(Lcom/android/phone/CallNotifier;)I

    move-result v10

    .line 2312
    :cond_1
    new-instance v7, Landroid/media/ToneGenerator;

    invoke-direct {v7, v6, v10}, Landroid/media/ToneGenerator;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2334
    .end local v6    # "stream":I
    .local v7, "toneGenerator":Landroid/media/ToneGenerator;
    :goto_3
    const/4 v2, 0x1

    .line 2335
    .local v2, "needToStopTone":Z
    const/4 v3, 0x0

    .line 2337
    .local v3, "okToPlayTone":Z
    if-eqz v7, :cond_1b

    .line 2338
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$1400(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    .line 2339
    .local v5, "ringerMode":I
    const/4 v11, 0x2

    if-ne v4, v11, :cond_16

    .line 2340
    const/16 v11, 0x5d

    if-ne v9, v11, :cond_f

    .line 2341
    if-eqz v5, :cond_3

    const/4 v11, 0x1

    if-eq v5, v11, :cond_3

    .line 2343
    # getter for: Lcom/android/phone/CallNotifier;->DBG:Z
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$100()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "- InCallTonePlayer: start playing call tone="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2344
    :cond_2
    const/4 v3, 0x1

    .line 2349
    const/4 v2, 0x1

    .line 2391
    :cond_3
    :goto_4
    monitor-enter p0

    .line 2392
    if-eqz v3, :cond_5

    :try_start_1
    iget v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_5

    .line 2393
    const/4 v11, 0x1

    iput v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 2394
    # getter for: Lcom/android/phone/CallNotifier;->DBG:Z
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$100()Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    const-string v12, "- InCallTonePlayer: tone state set as TONE_ON, start play"

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2395
    :cond_4
    invoke-virtual {v7, v9}, Landroid/media/ToneGenerator;->startTone(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2397
    add-int/lit8 v11, v8, 0x14

    int-to-long v11, v11

    :try_start_2
    invoke-virtual {p0, v11, v12}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2402
    :goto_5
    if-eqz v2, :cond_5

    .line 2403
    :try_start_3
    invoke-virtual {v7}, Landroid/media/ToneGenerator;->stopTone()V

    .line 2407
    :cond_5
    invoke-virtual {v7}, Landroid/media/ToneGenerator;->release()V

    .line 2408
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 2409
    # getter for: Lcom/android/phone/CallNotifier;->DBG:Z
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$100()Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    const-string v12, "- InCallTonePlayer: tone state set as TONE_OFF, finish play"

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2411
    :cond_6
    iget-boolean v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mStopWithoutRadioReset:Z

    if-eqz v11, :cond_1a

    .line 2412
    # getter for: Lcom/android/phone/CallNotifier;->DBG:Z
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$100()Z

    move-result v11

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    const-string v12, "- InCallTonePlayer: Interrupt and stoptone without radio reset"

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2413
    :cond_7
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mStopWithoutRadioReset:Z

    .line 2414
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2439
    .end local v5    # "ringerMode":I
    :cond_8
    :goto_6
    return-void

    .line 2193
    .end local v2    # "needToStopTone":Z
    .end local v3    # "okToPlayTone":Z
    .end local v7    # "toneGenerator":Landroid/media/ToneGenerator;
    .end local v8    # "toneLengthMillis":I
    .end local v10    # "toneVolume":I
    :pswitch_2
    const/4 v11, 0x2

    if-ne v4, v11, :cond_9

    .line 2194
    const/16 v9, 0x60

    .line 2195
    const/16 v10, 0x64

    .line 2196
    .restart local v10    # "toneVolume":I
    const/16 v8, 0x3e8

    .restart local v8    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 2197
    .end local v8    # "toneLengthMillis":I
    .end local v10    # "toneVolume":I
    :cond_9
    const/4 v11, 0x1

    if-eq v4, v11, :cond_a

    const/4 v11, 0x3

    if-ne v4, v11, :cond_b

    .line 2199
    :cond_a
    const/16 v9, 0x11

    .line 2200
    const/16 v10, 0x64

    .line 2201
    .restart local v10    # "toneVolume":I
    const/16 v8, 0xfa0

    .restart local v8    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 2203
    .end local v8    # "toneLengthMillis":I
    .end local v10    # "toneVolume":I
    :cond_b
    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unexpected phone type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2207
    :pswitch_3
    const/16 v9, 0x12

    .line 2208
    const/16 v10, 0x64

    .line 2209
    .restart local v10    # "toneVolume":I
    const/16 v8, 0xfa0

    .line 2210
    .restart local v8    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 2213
    .end local v8    # "toneLengthMillis":I
    .end local v10    # "toneVolume":I
    :pswitch_4
    const/16 v9, 0x1b

    .line 2214
    const/16 v10, 0x64

    .line 2215
    .restart local v10    # "toneVolume":I
    const/16 v8, 0xc8

    .line 2216
    .restart local v8    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 2218
    .end local v8    # "toneLengthMillis":I
    .end local v10    # "toneVolume":I
    :pswitch_5
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$900(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v11, v11, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaPlaySuccessFailureTone:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_c

    .line 2220
    const/16 v9, 0x5d

    .line 2221
    const/16 v10, 0x64

    .line 2222
    .restart local v10    # "toneVolume":I
    const/16 v8, 0x2ee

    .restart local v8    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 2224
    .end local v8    # "toneLengthMillis":I
    .end local v10    # "toneVolume":I
    :cond_c
    const/16 v9, 0x1b

    .line 2225
    const/16 v10, 0x64

    .line 2226
    .restart local v10    # "toneVolume":I
    const/16 v8, 0xc8

    .line 2228
    .restart local v8    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 2230
    .end local v8    # "toneLengthMillis":I
    .end local v10    # "toneVolume":I
    :pswitch_6
    const/16 v9, 0x56

    .line 2231
    const/16 v10, 0x64

    .line 2232
    .restart local v10    # "toneVolume":I
    const/16 v8, 0x1388

    .line 2233
    .restart local v8    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 2235
    .end local v8    # "toneLengthMillis":I
    .end local v10    # "toneVolume":I
    :pswitch_7
    const/16 v9, 0x26

    .line 2236
    const/16 v10, 0x64

    .line 2237
    .restart local v10    # "toneVolume":I
    const/16 v8, 0xfa0

    .line 2238
    .restart local v8    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 2240
    .end local v8    # "toneLengthMillis":I
    .end local v10    # "toneVolume":I
    :pswitch_8
    const/16 v9, 0x25

    .line 2241
    const/16 v10, 0x64

    .line 2242
    .restart local v10    # "toneVolume":I
    const/16 v8, 0x1f4

    .line 2243
    .restart local v8    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 2246
    .end local v8    # "toneLengthMillis":I
    .end local v10    # "toneVolume":I
    :pswitch_9
    const/16 v9, 0x5f

    .line 2247
    const/16 v10, 0x64

    .line 2248
    .restart local v10    # "toneVolume":I
    const/16 v8, 0x177

    .line 2249
    .restart local v8    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 2251
    .end local v8    # "toneLengthMillis":I
    .end local v10    # "toneVolume":I
    :pswitch_a
    const/16 v9, 0x57

    .line 2252
    const/16 v10, 0x64

    .line 2253
    .restart local v10    # "toneVolume":I
    const/16 v8, 0x1388

    .line 2254
    .restart local v8    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 2256
    .end local v8    # "toneLengthMillis":I
    .end local v10    # "toneVolume":I
    :pswitch_b
    const/16 v9, 0x17

    .line 2257
    const/16 v10, 0x64

    .line 2259
    .restart local v10    # "toneVolume":I
    const v8, 0x7fffffeb

    .line 2260
    .restart local v8    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 2262
    .end local v8    # "toneLengthMillis":I
    .end local v10    # "toneVolume":I
    :pswitch_c
    const/16 v9, 0x15

    .line 2263
    const/16 v10, 0x64

    .line 2264
    .restart local v10    # "toneVolume":I
    const/16 v8, 0xfa0

    .line 2265
    .restart local v8    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 2269
    .end local v8    # "toneLengthMillis":I
    .end local v10    # "toneVolume":I
    :pswitch_d
    const/16 v9, 0x5b

    .line 2270
    const/16 v10, 0x64

    .line 2271
    .restart local v10    # "toneVolume":I
    const/16 v8, 0x1388

    .line 2272
    .restart local v8    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 2276
    .end local v8    # "toneLengthMillis":I
    .end local v10    # "toneVolume":I
    :pswitch_e
    const/16 v9, 0x5e

    .line 2277
    const/16 v10, 0x64

    .line 2278
    .restart local v10    # "toneVolume":I
    const/16 v8, 0x1388

    .line 2279
    .restart local v8    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 2291
    :cond_d
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 2300
    :cond_e
    const/4 v6, 0x0

    .line 2301
    .restart local v6    # "stream":I
    :try_start_4
    # getter for: Lcom/android/phone/CallNotifier;->DBG:Z
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$100()Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    const-string v12, "Tone playing is through voice call"

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 2314
    .end local v6    # "stream":I
    :catch_0
    move-exception v1

    .line 2315
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v11, "CallNotifier"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "InCallTonePlayer: Exception caught while creating ToneGenerator: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    const/4 v7, 0x0

    .restart local v7    # "toneGenerator":Landroid/media/ToneGenerator;
    goto/16 :goto_3

    .line 2352
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .restart local v2    # "needToStopTone":Z
    .restart local v3    # "okToPlayTone":Z
    .restart local v5    # "ringerMode":I
    :cond_f
    const/16 v11, 0x60

    if-eq v9, v11, :cond_10

    const/16 v11, 0x27

    if-eq v9, v11, :cond_10

    const/16 v11, 0x25

    if-eq v9, v11, :cond_10

    const/16 v11, 0x5f

    if-ne v9, v11, :cond_12

    .line 2358
    :cond_10
    if-eqz v5, :cond_3

    .line 2359
    # getter for: Lcom/android/phone/CallNotifier;->DBG:Z
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$100()Z

    move-result v11

    if-eqz v11, :cond_11

    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "InCallTonePlayer:playing call fail tone:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2360
    :cond_11
    const/4 v3, 0x1

    .line 2361
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 2363
    :cond_12
    const/16 v11, 0x57

    if-eq v9, v11, :cond_13

    const/16 v11, 0x56

    if-eq v9, v11, :cond_13

    const/16 v11, 0x5e

    if-ne v9, v11, :cond_15

    .line 2366
    :cond_13
    if-eqz v5, :cond_3

    const/4 v11, 0x1

    if-eq v5, v11, :cond_3

    .line 2368
    # getter for: Lcom/android/phone/CallNotifier;->DBG:Z
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$100()Z

    move-result v11

    if-eqz v11, :cond_14

    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "InCallTonePlayer:playing tone for toneType="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2369
    :cond_14
    const/4 v3, 0x1

    .line 2370
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 2373
    :cond_15
    const/4 v3, 0x1

    goto/16 :goto_4

    .line 2376
    :cond_16
    const/4 v11, 0x1

    if-ne v4, v11, :cond_19

    .line 2377
    const/16 v11, 0x5f

    if-ne v9, v11, :cond_18

    .line 2378
    if-eqz v5, :cond_3

    .line 2379
    # getter for: Lcom/android/phone/CallNotifier;->DBG:Z
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$100()Z

    move-result v11

    if-eqz v11, :cond_17

    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "InCallTonePlayer:playing call drop tone for UMTS rat: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2380
    :cond_17
    const/4 v3, 0x1

    .line 2381
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 2384
    :cond_18
    const/4 v3, 0x1

    goto/16 :goto_4

    .line 2388
    :cond_19
    const/4 v3, 0x1

    goto/16 :goto_4

    .line 2398
    :catch_1
    move-exception v1

    .line 2399
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_5
    const-string v11, "CallNotifier"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "InCallTonePlayer stopped: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2417
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v11

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v11

    :cond_1a
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2433
    .end local v5    # "ringerMode":I
    :cond_1b
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$1100(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v11, v12, :cond_8

    .line 2437
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # invokes: Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$1500(Lcom/android/phone/CallNotifier;)V

    goto/16 :goto_6

    .line 2185
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_5
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_e
    .end packed-switch
.end method

.method public stopTone()V
    .locals 2

    .prologue
    .line 2442
    # getter for: Lcom/android/phone/CallNotifier;->DBG:Z
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    const-string v1, "- InCallTonePlayer: stopTone"

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2443
    :cond_0
    monitor-enter p0

    .line 2444
    :try_start_0
    iget v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2445
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 2447
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 2448
    monitor-exit p0

    .line 2449
    return-void

    .line 2448
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopToneWithoutAudioReset()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2453
    # getter for: Lcom/android/phone/CallNotifier;->DBG:Z
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    const-string v1, "- InCallTonePlayer: stopToneWithoutAudioReset"

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2454
    :cond_0
    monitor-enter p0

    .line 2455
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mStopWithoutRadioReset:Z

    .line 2456
    iget v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    if-ne v0, v2, :cond_1

    .line 2457
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 2459
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 2460
    monitor-exit p0

    .line 2461
    return-void

    .line 2460
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
