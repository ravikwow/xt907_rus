.class final Lcom/android/deskclock/timer/TimerObj$2;
.super Ljava/lang/Object;
.source "TimerObj.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/timer/TimerObj;->getTimersFromSharedPrefs(Landroid/content/SharedPreferences;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/deskclock/timer/TimerObj;Lcom/android/deskclock/timer/TimerObj;)I
    .locals 2
    .param p1, "timerObj1"    # Lcom/android/deskclock/timer/TimerObj;
    .param p2, "timerObj2"    # Lcom/android/deskclock/timer/TimerObj;

    .prologue
    .line 255
    iget v0, p2, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    iget v1, p1, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 252
    check-cast p1, Lcom/android/deskclock/timer/TimerObj;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/deskclock/timer/TimerObj;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/deskclock/timer/TimerObj$2;->compare(Lcom/android/deskclock/timer/TimerObj;Lcom/android/deskclock/timer/TimerObj;)I

    move-result v0

    return v0
.end method
