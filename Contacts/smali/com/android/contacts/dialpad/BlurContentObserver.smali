.class public abstract Lcom/android/contacts/dialpad/BlurContentObserver;
.super Landroid/database/ContentObserver;
.source "BlurContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/dialpad/BlurContentObserver$MyRunnable;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private r:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/dialpad/BlurContentObserver;->r:Ljava/lang/Runnable;

    .line 16
    iput-object p1, p0, Lcom/android/contacts/dialpad/BlurContentObserver;->mHandler:Landroid/os/Handler;

    .line 17
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/contacts/dialpad/BlurContentObserver;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 33
    iget-object v0, p0, Lcom/android/contacts/dialpad/BlurContentObserver;->r:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 34
    const-string v0, "BlurContentObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notification is filtered, handler = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/dialpad/BlurContentObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v0, p0, Lcom/android/contacts/dialpad/BlurContentObserver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/contacts/dialpad/BlurContentObserver;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 37
    :cond_0
    new-instance v0, Lcom/android/contacts/dialpad/BlurContentObserver$MyRunnable;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/dialpad/BlurContentObserver$MyRunnable;-><init>(Lcom/android/contacts/dialpad/BlurContentObserver;Z)V

    iput-object v0, p0, Lcom/android/contacts/dialpad/BlurContentObserver;->r:Ljava/lang/Runnable;

    .line 38
    iget-object v0, p0, Lcom/android/contacts/dialpad/BlurContentObserver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/contacts/dialpad/BlurContentObserver;->r:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/contacts/dialpad/BlurContentObserver;->onChangeRealNeeded(Z)V

    goto :goto_0
.end method

.method public abstract onChangeRealNeeded(Z)V
.end method
