.class Lcom/android/deskclock/timer/TimerFragment$TimesUpListAdapter$1;
.super Ljava/lang/Object;
.source "TimerFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/timer/TimerFragment$TimesUpListAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/deskclock/timer/TimerObj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/deskclock/timer/TimerFragment$TimesUpListAdapter;


# direct methods
.method constructor <init>(Lcom/android/deskclock/timer/TimerFragment$TimesUpListAdapter;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lcom/android/deskclock/timer/TimerFragment$TimesUpListAdapter$1;->this$1:Lcom/android/deskclock/timer/TimerFragment$TimesUpListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/deskclock/timer/TimerObj;Lcom/android/deskclock/timer/TimerObj;)I
    .locals 4
    .param p1, "o1"    # Lcom/android/deskclock/timer/TimerObj;
    .param p2, "o2"    # Lcom/android/deskclock/timer/TimerObj;

    .prologue
    .line 374
    iget-wide v0, p1, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    iget-wide v2, p2, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 371
    check-cast p1, Lcom/android/deskclock/timer/TimerObj;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/deskclock/timer/TimerObj;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/deskclock/timer/TimerFragment$TimesUpListAdapter$1;->compare(Lcom/android/deskclock/timer/TimerObj;Lcom/android/deskclock/timer/TimerObj;)I

    move-result v0

    return v0
.end method
