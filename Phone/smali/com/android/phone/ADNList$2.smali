.class Lcom/android/phone/ADNList$2;
.super Ljava/lang/Thread;
.source "ADNList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/ADNList;->getFdnInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ADNList;


# direct methods
.method constructor <init>(Lcom/android/phone/ADNList;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/phone/ADNList$2;->this$0:Lcom/android/phone/ADNList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 219
    sget-boolean v3, Lcom/android/phone/ADNList;->DBG:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/ADNList$2;->this$0:Lcom/android/phone/ADNList;

    const-string v4, "start to launch getFdnInfo thread!!"

    invoke-virtual {v3, v4}, Lcom/android/phone/ADNList;->log(Ljava/lang/String;)V

    .line 220
    :cond_0
    const-string v3, "simphonebook"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 223
    .local v1, "iccPhoneBook":Lcom/android/internal/telephony/IIccPhoneBook;
    :try_start_0
    sget-boolean v3, Lcom/android/phone/ADNList;->DBG:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/ADNList$2;->this$0:Lcom/android/phone/ADNList;

    const-string v4, "will call iccPhoneBook.getAdnRecordsSize()!!"

    invoke-virtual {v3, v4}, Lcom/android/phone/ADNList;->log(Ljava/lang/String;)V

    .line 224
    :cond_1
    iget-object v3, p0, Lcom/android/phone/ADNList$2;->this$0:Lcom/android/phone/ADNList;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/phone/ADNList;->mReadFdnInfoFinished:Z

    .line 225
    const/16 v3, 0x6f3b

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsSize(I)[I

    move-result-object v2

    .line 232
    .local v2, "sizes":[I
    iget-object v3, p0, Lcom/android/phone/ADNList$2;->this$0:Lcom/android/phone/ADNList;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/phone/ADNList;->mReadFdnInfoFinished:Z

    .line 233
    sget-boolean v3, Lcom/android/phone/ADNList;->DBG:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/ADNList$2;->this$0:Lcom/android/phone/ADNList;

    const-string v4, "iccPhoneBook.getAdnRecordsSize() finished!!"

    invoke-virtual {v3, v4}, Lcom/android/phone/ADNList;->log(Ljava/lang/String;)V

    .line 234
    :cond_2
    iget-object v3, p0, Lcom/android/phone/ADNList$2;->this$0:Lcom/android/phone/ADNList;

    const/4 v4, 0x0

    aget v4, v2, v4

    add-int/lit8 v4, v4, -0xe

    iput v4, v3, Lcom/android/phone/ADNList;->mFdnMaxNameLength:I

    .line 235
    iget-object v3, p0, Lcom/android/phone/ADNList$2;->this$0:Lcom/android/phone/ADNList;

    const/4 v4, 0x2

    aget v4, v2, v4

    iput v4, v3, Lcom/android/phone/ADNList;->mFdnMaxNumEntries:I

    .line 236
    sget-boolean v3, Lcom/android/phone/ADNList;->DBG:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/ADNList$2;->this$0:Lcom/android/phone/ADNList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFdnInfo: FDN info retrieved - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "name length: %d, max entries: %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/phone/ADNList$2;->this$0:Lcom/android/phone/ADNList;

    iget v8, v8, Lcom/android/phone/ADNList;->mFdnMaxNameLength:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/phone/ADNList$2;->this$0:Lcom/android/phone/ADNList;

    iget v8, v8, Lcom/android/phone/ADNList;->mFdnMaxNumEntries:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/ADNList;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .end local v2    # "sizes":[I
    :cond_3
    :goto_0
    sget-boolean v3, Lcom/android/phone/ADNList;->DBG:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/ADNList$2;->this$0:Lcom/android/phone/ADNList;

    const-string v4, "send MSG_STOP_PROGRESS!"

    invoke-virtual {v3, v4}, Lcom/android/phone/ADNList;->log(Ljava/lang/String;)V

    .line 244
    :cond_4
    iget-object v3, p0, Lcom/android/phone/ADNList$2;->this$0:Lcom/android/phone/ADNList;

    # getter for: Lcom/android/phone/ADNList;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/ADNList;->access$100(Lcom/android/phone/ADNList;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x3e9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 245
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "ex":Landroid/os/RemoteException;
    sget-boolean v3, Lcom/android/phone/ADNList;->DBG:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/ADNList$2;->this$0:Lcom/android/phone/ADNList;

    const-string v4, "getFdnInfo: FDN info retrieval failed!"

    invoke-virtual {v3, v4}, Lcom/android/phone/ADNList;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
