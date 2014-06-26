.class public Lcom/android/deskclock/timer/Timers;
.super Ljava/lang/Object;
.source "Timers.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findExpiredTimer(Ljava/util/ArrayList;)Lcom/android/deskclock/timer/TimerObj;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/deskclock/timer/TimerObj;",
            ">;)",
            "Lcom/android/deskclock/timer/TimerObj;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/deskclock/timer/TimerObj;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 61
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/deskclock/timer/TimerObj;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/timer/TimerObj;

    .line 63
    .local v1, "t":Lcom/android/deskclock/timer/TimerObj;
    iget v2, v1, Lcom/android/deskclock/timer/TimerObj;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 67
    .end local v1    # "t":Lcom/android/deskclock/timer/TimerObj;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static findTimer(Ljava/util/ArrayList;I)Lcom/android/deskclock/timer/TimerObj;
    .locals 3
    .param p1, "timerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/deskclock/timer/TimerObj;",
            ">;I)",
            "Lcom/android/deskclock/timer/TimerObj;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/deskclock/timer/TimerObj;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 51
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/deskclock/timer/TimerObj;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/timer/TimerObj;

    .line 53
    .local v1, "t":Lcom/android/deskclock/timer/TimerObj;
    iget v2, v1, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    if-ne v2, p1, :cond_0

    .line 57
    .end local v1    # "t":Lcom/android/deskclock/timer/TimerObj;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static timersInTimesUp(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/deskclock/timer/TimerObj;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/deskclock/timer/TimerObj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/deskclock/timer/TimerObj;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 84
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/deskclock/timer/TimerObj;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 85
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/deskclock/timer/TimerObj;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 86
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/deskclock/timer/TimerObj;

    .line 87
    .local v2, "timer":Lcom/android/deskclock/timer/TimerObj;
    iget v3, v2, Lcom/android/deskclock/timer/TimerObj;->mState:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 88
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 91
    .end local v2    # "timer":Lcom/android/deskclock/timer/TimerObj;
    :cond_1
    return-object v1
.end method

.method public static timersInUse(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/deskclock/timer/TimerObj;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/deskclock/timer/TimerObj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/deskclock/timer/TimerObj;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 72
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/deskclock/timer/TimerObj;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 73
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/deskclock/timer/TimerObj;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/deskclock/timer/TimerObj;

    .line 75
    .local v2, "timer":Lcom/android/deskclock/timer/TimerObj;
    invoke-virtual {v2}, Lcom/android/deskclock/timer/TimerObj;->isInUse()Z

    move-result v3

    if-nez v3, :cond_0

    .line 76
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 79
    .end local v2    # "timer":Lcom/android/deskclock/timer/TimerObj;
    :cond_1
    return-object v1
.end method
