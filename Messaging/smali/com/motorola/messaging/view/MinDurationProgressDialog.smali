.class public Lcom/motorola/messaging/view/MinDurationProgressDialog;
.super Landroid/app/ProgressDialog;
.source "MinDurationProgressDialog.java"


# instance fields
.field private mDismissRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mMinDuration:J

.field private mStartTime:J


# direct methods
.method public constructor <init>(JLandroid/content/Context;)V
    .locals 1
    .param p1, "minDuration"    # J
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance v0, Lcom/motorola/messaging/view/MinDurationProgressDialog$1;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/view/MinDurationProgressDialog$1;-><init>(Lcom/motorola/messaging/view/MinDurationProgressDialog;)V

    iput-object v0, p0, Lcom/motorola/messaging/view/MinDurationProgressDialog;->mDismissRunnable:Ljava/lang/Runnable;

    .line 26
    iput-wide p1, p0, Lcom/motorola/messaging/view/MinDurationProgressDialog;->mMinDuration:J

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/view/MinDurationProgressDialog;->mHandler:Landroid/os/Handler;

    .line 28
    return-void
.end method

.method static synthetic access$001(Lcom/motorola/messaging/view/MinDurationProgressDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/view/MinDurationProgressDialog;

    .prologue
    .line 10
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 8

    .prologue
    .line 38
    iget-wide v2, p0, Lcom/motorola/messaging/view/MinDurationProgressDialog;->mMinDuration:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/motorola/messaging/view/MinDurationProgressDialog;->mStartTime:J

    sub-long/2addr v4, v6

    sub-long v0, v2, v4

    .line 39
    .local v0, "durationLeft":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 40
    iget-object v2, p0, Lcom/motorola/messaging/view/MinDurationProgressDialog;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/motorola/messaging/view/MinDurationProgressDialog;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v2, p0, Lcom/motorola/messaging/view/MinDurationProgressDialog;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 32
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/messaging/view/MinDurationProgressDialog;->mStartTime:J

    .line 33
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 34
    return-void
.end method
