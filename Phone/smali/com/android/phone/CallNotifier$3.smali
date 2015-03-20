.class Lcom/android/phone/CallNotifier$3;
.super Ljava/lang/Thread;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallNotifier;->onDisconnect(Landroid/os/AsyncResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallNotifier;

.field final synthetic val$callLogType:I

.field final synthetic val$ci:Lcom/android/internal/telephony/CallerInfo;

.field final synthetic val$date:J

.field final synthetic val$duration:J

.field final synthetic val$logNumber:Ljava/lang/String;

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$presentation:I

.field final synthetic val$reallyConverted:Z


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 1841
    iput-object p1, p0, Lcom/android/phone/CallNotifier$3;->this$0:Lcom/android/phone/CallNotifier;

    iput-object p2, p0, Lcom/android/phone/CallNotifier$3;->val$ci:Lcom/android/internal/telephony/CallerInfo;

    iput-object p3, p0, Lcom/android/phone/CallNotifier$3;->val$logNumber:Ljava/lang/String;

    iput p4, p0, Lcom/android/phone/CallNotifier$3;->val$presentation:I

    iput p5, p0, Lcom/android/phone/CallNotifier$3;->val$callLogType:I

    iput-wide p6, p0, Lcom/android/phone/CallNotifier$3;->val$date:J

    iput-wide p8, p0, Lcom/android/phone/CallNotifier$3;->val$duration:J

    iput-boolean p10, p0, Lcom/android/phone/CallNotifier$3;->val$reallyConverted:Z

    iput-object p11, p0, Lcom/android/phone/CallNotifier$3;->val$number:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 1844
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier$3;->this$0:Lcom/android/phone/CallNotifier;

    iget-object v1, p0, Lcom/android/phone/CallNotifier$3;->val$ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, p0, Lcom/android/phone/CallNotifier$3;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v2}, Lcom/android/phone/CallNotifier;->access$900(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallNotifier$3;->val$logNumber:Ljava/lang/String;

    iget v4, p0, Lcom/android/phone/CallNotifier$3;->val$presentation:I

    iget v5, p0, Lcom/android/phone/CallNotifier$3;->val$callLogType:I

    iget-wide v6, p0, Lcom/android/phone/CallNotifier$3;->val$date:J

    iget-wide v8, p0, Lcom/android/phone/CallNotifier$3;->val$duration:J

    long-to-int v8, v8

    div-int/lit16 v8, v8, 0x3e8

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/phone/CallNotifier$3;->val$ci:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/phone/CallNotifier$3;->val$ci:Lcom/android/internal/telephony/CallerInfo;

    iget v10, v10, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    sget v11, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne v10, v11, :cond_1

    iget-object v10, p0, Lcom/android/phone/CallNotifier$3;->val$ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v10, v10, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    :goto_0
    iget-boolean v11, p0, Lcom/android/phone/CallNotifier$3;->val$reallyConverted:Z

    iget-object v12, p0, Lcom/android/phone/CallNotifier$3;->val$number:Ljava/lang/String;

    # invokes: Lcom/android/phone/CallNotifier;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIZLjava/lang/String;ZLjava/lang/String;)Landroid/net/Uri;
    invoke-static/range {v0 .. v12}, Lcom/android/phone/CallNotifier;->access$1000(Lcom/android/phone/CallNotifier;Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIZLjava/lang/String;ZLjava/lang/String;)Landroid/net/Uri;

    .line 1848
    iget-object v0, p0, Lcom/android/phone/CallNotifier$3;->this$0:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->sendAddCallBroadcast()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1852
    :goto_1
    # getter for: Lcom/android/phone/CallNotifier;->DBG:Z
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallNotifier$3;->this$0:Lcom/android/phone/CallNotifier;

    const-string v1, "onDisconnect helper thread: addCall() done."

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 1853
    :cond_0
    return-void

    .line 1844
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 1849
    :catch_0
    move-exception v13

    .line 1850
    .local v13, "e":Ljava/lang/Exception;
    const-string v0, "CallNotifier"

    invoke-static {v13}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
