.class Lcom/android/mms/MmsApp$MobileDataContentObserver;
.super Landroid/database/ContentObserver;
.source "MmsApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/MmsApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobileDataContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/MmsApp;


# direct methods
.method public constructor <init>(Lcom/android/mms/MmsApp;)V
    .locals 1

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/mms/MmsApp$MobileDataContentObserver;->this$0:Lcom/android/mms/MmsApp;

    .line 321
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 322
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    .line 326
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 327
    iget-object v1, p0, Lcom/android/mms/MmsApp$MobileDataContentObserver;->this$0:Lcom/android/mms/MmsApp;

    # getter for: Lcom/android/mms/MmsApp;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/MmsApp;->access$100(Lcom/android/mms/MmsApp;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 329
    .local v0, "enabled":Z
    :goto_0
    const-string v2, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mobile data enabled status: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_2

    const-string v1, "ON"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    if-eqz v0, :cond_0

    .line 332
    iget-object v1, p0, Lcom/android/mms/MmsApp$MobileDataContentObserver;->this$0:Lcom/android/mms/MmsApp;

    # getter for: Lcom/android/mms/MmsApp;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/MmsApp;->access$100(Lcom/android/mms/MmsApp;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->wakeUpService(Landroid/content/Context;)V

    .line 334
    :cond_0
    return-void

    .line 327
    .end local v0    # "enabled":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 329
    .restart local v0    # "enabled":Z
    :cond_2
    const-string v1, "OFF"

    goto :goto_1
.end method
