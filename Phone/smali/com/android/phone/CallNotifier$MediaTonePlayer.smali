.class public Lcom/android/phone/CallNotifier$MediaTonePlayer;
.super Ljava/lang/Object;
.source "CallNotifier.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaTonePlayer"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mStreamType:I

.field private mUri:Landroid/net/Uri;

.field private mp:Landroid/media/MediaPlayer;

.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method public constructor <init>(Lcom/android/phone/CallNotifier;Landroid/content/Context;I)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "toneToPlay"    # I

    .prologue
    .line 3318
    iput-object p1, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3319
    iput-object p2, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->mContext:Landroid/content/Context;

    .line 3320
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->mp:Landroid/media/MediaPlayer;

    .line 3321
    invoke-direct {p0, p3}, Lcom/android/phone/CallNotifier$MediaTonePlayer;->prepareSound(I)V

    .line 3322
    return-void
.end method

.method private prepareSound(I)V
    .locals 4
    .param p1, "toneToPlay"    # I

    .prologue
    .line 3330
    # getter for: Lcom/android/phone/CallNotifier;->VDBG:Z
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$1700()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    const-string v2, "prepareSound: ..."

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 3331
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->mStreamType:I

    .line 3332
    const/16 v1, 0x16

    if-ne p1, v1, :cond_2

    .line 3333
    # getter for: Lcom/android/phone/CallNotifier;->VDBG:Z
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$1700()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    const-string v2, "prepareSound: get alert_2 tone"

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 3334
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, "system/media/audio/alert/alert_2.wav"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->mUri:Landroid/net/Uri;

    .line 3336
    :cond_2
    iget-object v1, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_3

    .line 3338
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->mp:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 3339
    # getter for: Lcom/android/phone/CallNotifier;->VDBG:Z
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$1700()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    const-string v2, "prepareSound: setDataSource successful"

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3345
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 3346
    iget-object v1, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 3347
    iget-object v1, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->mp:Landroid/media/MediaPlayer;

    iget v2, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 3349
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3355
    :cond_4
    :goto_1
    # getter for: Lcom/android/phone/CallNotifier;->VDBG:Z
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$1700()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    const-string v2, "prepareSound: Done"

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 3356
    :cond_5
    return-void

    .line 3341
    :catch_0
    move-exception v0

    .line 3342
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/phone/CallNotifier;->VDBG:Z
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$1700()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareSound: Exception thrown setDataSource : See if your file is correctly available "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    goto :goto_0

    .line 3351
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 3352
    .restart local v0    # "e":Ljava/lang/Exception;
    # getter for: Lcom/android/phone/CallNotifier;->VDBG:Z
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$1700()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareSound: Exception thrown during prepare"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "currentPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 3375
    iget-object v0, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->mp:Landroid/media/MediaPlayer;

    if-ne p1, v0, :cond_1

    .line 3376
    # getter for: Lcom/android/phone/CallNotifier;->VDBG:Z
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    const-string v1, "onCompletion: Cleaning up the resource"

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 3377
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 3378
    iget-object v0, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 3379
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->mp:Landroid/media/MediaPlayer;

    .line 3382
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$1100(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_2

    .line 3383
    iget-object v0, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # invokes: Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$1500(Lcom/android/phone/CallNotifier;)V

    .line 3386
    :cond_2
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .param p1, "currentPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 3395
    # getter for: Lcom/android/phone/CallNotifier;->VDBG:Z
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$1700()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onError: message code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Error text:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 3396
    :cond_0
    const/4 v0, 0x0

    .line 3397
    .local v0, "retval":Z
    iget-object v1, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->mp:Landroid/media/MediaPlayer;

    if-ne p1, v1, :cond_2

    .line 3398
    # getter for: Lcom/android/phone/CallNotifier;->VDBG:Z
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$1700()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    const-string v2, "onError: Cleaning up the resource"

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 3399
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 3400
    iget-object v1, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 3401
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->mp:Landroid/media/MediaPlayer;

    .line 3402
    const/4 v0, 0x1

    .line 3405
    :cond_2
    iget-object v1, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$1100(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_3

    .line 3406
    iget-object v1, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # invokes: Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V
    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$1500(Lcom/android/phone/CallNotifier;)V

    .line 3409
    :cond_3
    return v0
.end method

.method public playSound()V
    .locals 2

    .prologue
    .line 3363
    # getter for: Lcom/android/phone/CallNotifier;->VDBG:Z
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    const-string v1, "playSound: Starting to play"

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 3364
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 3365
    iget-object v0, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 3367
    :cond_1
    return-void
.end method
