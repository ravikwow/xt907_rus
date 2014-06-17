.class public Lcom/android/mms/transaction/MsgHandler;
.super Landroid/os/Handler;
.source "MsgHandler.java"


# static fields
.field private static final DEBUG:Z

.field private static final LOCAL_LOG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 32
    sput-boolean v0, Lcom/android/mms/transaction/MsgHandler;->DEBUG:Z

    .line 33
    sget-boolean v1, Lcom/android/mms/transaction/MsgHandler;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Mms:transaction"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/mms/transaction/MsgHandler;->LOCAL_LOG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 40
    return-void
.end method


# virtual methods
.method public cancel(I)V
    .locals 3
    .param p1, "what"    # I

    .prologue
    .line 87
    sget-boolean v0, Lcom/android/mms/transaction/MsgHandler;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 88
    const-string v0, "MsgHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeMessages, what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/MsgHandler;->removeMessages(I)V

    .line 92
    return-void
.end method

.method public sendDelayed(IIJ)V
    .locals 4
    .param p1, "arg1"    # I
    .param p2, "what"    # I
    .param p3, "timeout"    # J

    .prologue
    .line 60
    sget-boolean v1, Lcom/android/mms/transaction/MsgHandler;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 61
    const-string v1, "MsgHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMessageDelayed, arg1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", timeout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/mms/transaction/MsgHandler;->removeMessages(I)V

    .line 66
    invoke-virtual {p0, p2}, Lcom/android/mms/transaction/MsgHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 67
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 68
    invoke-virtual {p0, v0, p3, p4}, Lcom/android/mms/transaction/MsgHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 69
    return-void
.end method

.method public sendDelayed(IJ)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "timeout"    # J

    .prologue
    .line 46
    sget-boolean v1, Lcom/android/mms/transaction/MsgHandler;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 47
    const-string v1, "MsgHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMessageDelayed, what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", timeout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/MsgHandler;->removeMessages(I)V

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/MsgHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 53
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/mms/transaction/MsgHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 54
    return-void
.end method

.method public sendDelayedNoCancel(ILjava/lang/Object;IJ)V
    .locals 4
    .param p1, "arg1"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "what"    # I
    .param p4, "timeout"    # J

    .prologue
    .line 74
    sget-boolean v1, Lcom/android/mms/transaction/MsgHandler;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 75
    const-string v1, "MsgHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMessageDelayed, arg1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", obj="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", timeout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/mms/transaction/MsgHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 81
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 82
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 83
    invoke-virtual {p0, v0, p4, p5}, Lcom/android/mms/transaction/MsgHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 84
    return-void
.end method
