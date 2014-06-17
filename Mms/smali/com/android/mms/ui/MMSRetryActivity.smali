.class public Lcom/android/mms/ui/MMSRetryActivity;
.super Landroid/app/Activity;
.source "MMSRetryActivity.java"


# static fields
.field protected static final DEBUG:Z

.field protected static final LOCAL_LOG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 21
    sput-boolean v0, Lcom/android/mms/ui/MMSRetryActivity;->DEBUG:Z

    .line 22
    sget-boolean v1, Lcom/android/mms/ui/MMSRetryActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Mms:transaction"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/mms/ui/MMSRetryActivity;->LOCAL_LOG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private showToastForMOMMSFail(I)V
    .locals 4
    .param p1, "causeCode"    # I

    .prologue
    .line 64
    const-string v1, "MMSRetryActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MO MMS - Server returned an error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-static {p1}, Lcom/android/mms/transaction/NetworkManager;->getMMSMOErrorDescription(I)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "cause":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 68
    return-void
.end method

.method private showToastForMTMMSFail(I)V
    .locals 4
    .param p1, "causeCode"    # I

    .prologue
    .line 57
    const-string v1, "MMSRetryActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MT MMS - Server returned an error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-static {p1}, Lcom/android/mms/transaction/NetworkManager;->getMMSMTErrorDescription(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "cause":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 61
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    return-void
.end method

.method protected onStart()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 31
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 32
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MMSRetryActivity;->requestWindowFeature(I)Z

    .line 33
    invoke-virtual {p0}, Lcom/android/mms/ui/MMSRetryActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x7f020074

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 36
    invoke-virtual {p0}, Lcom/android/mms/ui/MMSRetryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 37
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "is_download"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 38
    .local v1, "isDownload":Z
    const-string v4, "retrieve_status"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 39
    .local v3, "retrieveStatus":I
    const-string v4, "response_status"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 41
    .local v2, "responseStatus":I
    sget-boolean v4, Lcom/android/mms/ui/MMSRetryActivity;->LOCAL_LOG:Z

    if-eqz v4, :cond_0

    .line 42
    const-string v4, "MMSRetryActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStart, is_download="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", retrieve_status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", response_status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    if-eqz v1, :cond_1

    .line 48
    invoke-direct {p0, v3}, Lcom/android/mms/ui/MMSRetryActivity;->showToastForMTMMSFail(I)V

    .line 53
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MMSRetryActivity;->finish()V

    .line 54
    return-void

    .line 50
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/mms/ui/MMSRetryActivity;->showToastForMOMMSFail(I)V

    goto :goto_0
.end method
