.class Lcom/android/deskclock/timer/TimerFragment$TimesUpListAdapter;
.super Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;
.source "TimerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/timer/TimerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimesUpListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/timer/TimerFragment;


# direct methods
.method public constructor <init>(Lcom/android/deskclock/timer/TimerFragment;Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/deskclock/timer/TimerFragment$TimesUpListAdapter;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    .line 348
    invoke-direct {p0, p1, p2, p3}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;-><init>(Lcom/android/deskclock/timer/TimerFragment;Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 349
    return-void
.end method


# virtual methods
.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mmPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mTimers:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/android/deskclock/timer/TimerObj;->getTimersFromSharedPrefs(Landroid/content/SharedPreferences;Ljava/util/ArrayList;I)V

    .line 368
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment$TimesUpListAdapter;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    # getter for: Lcom/android/deskclock/timer/TimerFragment;->mOnEmptyListListener:Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;
    invoke-static {v0}, Lcom/android/deskclock/timer/TimerFragment;->access$500(Lcom/android/deskclock/timer/TimerFragment;)Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;->onEmptyList()V

    .line 378
    :goto_0
    return-void

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mTimers:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/deskclock/timer/TimerFragment$TimesUpListAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/deskclock/timer/TimerFragment$TimesUpListAdapter$1;-><init>(Lcom/android/deskclock/timer/TimerFragment$TimesUpListAdapter;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 355
    return-void
.end method

.method public saveGlobalState()V
    .locals 0

    .prologue
    .line 361
    return-void
.end method
