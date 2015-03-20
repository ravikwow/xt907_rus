.class Lcom/android/providers/media/MtpService$3;
.super Lcom/android/providers/media/IMtpService$Stub;
.source "MtpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MtpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MtpService;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MtpService;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/providers/media/MtpService$3;->this$0:Lcom/android/providers/media/MtpService;

    invoke-direct {p0}, Lcom/android/providers/media/IMtpService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendObjectAdded(I)V
    .locals 5
    .param p1, "objectHandle"    # I

    .prologue
    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/media/MtpService$3;->this$0:Lcom/android/providers/media/MtpService;

    # getter for: Lcom/android/providers/media/MtpService;->mTimer:Ljava/util/Timer;
    invoke-static {v1}, Lcom/android/providers/media/MtpService;->access$1100(Lcom/android/providers/media/MtpService;)Ljava/util/Timer;

    move-result-object v1

    new-instance v2, Lcom/android/providers/media/MtpService$MyTimerTask;

    iget-object v3, p0, Lcom/android/providers/media/MtpService$3;->this$0:Lcom/android/providers/media/MtpService;

    # getter for: Lcom/android/providers/media/MtpService;->REASON_OBJADDED_EVENT:I
    invoke-static {}, Lcom/android/providers/media/MtpService;->access$800()I

    move-result v4

    invoke-direct {v2, v3, v4, p1}, Lcom/android/providers/media/MtpService$MyTimerTask;-><init>(Lcom/android/providers/media/MtpService;II)V

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MtpService"

    const-string v2, "Exception for scheduling timer for object added event"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendObjectRemoved(I)V
    .locals 5
    .param p1, "objectHandle"    # I

    .prologue
    .line 251
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/media/MtpService$3;->this$0:Lcom/android/providers/media/MtpService;

    # getter for: Lcom/android/providers/media/MtpService;->mTimer:Ljava/util/Timer;
    invoke-static {v1}, Lcom/android/providers/media/MtpService;->access$1100(Lcom/android/providers/media/MtpService;)Ljava/util/Timer;

    move-result-object v1

    new-instance v2, Lcom/android/providers/media/MtpService$MyTimerTask;

    iget-object v3, p0, Lcom/android/providers/media/MtpService$3;->this$0:Lcom/android/providers/media/MtpService;

    # getter for: Lcom/android/providers/media/MtpService;->REASON_OBJREMOVED_EVENT:I
    invoke-static {}, Lcom/android/providers/media/MtpService;->access$1000()I

    move-result v4

    invoke-direct {v2, v3, v4, p1}, Lcom/android/providers/media/MtpService$MyTimerTask;-><init>(Lcom/android/providers/media/MtpService;II)V

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_0
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MtpService"

    const-string v2, "Exception for scheduling timer for object removed event"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
