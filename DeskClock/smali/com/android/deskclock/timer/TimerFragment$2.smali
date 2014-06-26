.class Lcom/android/deskclock/timer/TimerFragment$2;
.super Ljava/lang/Object;
.source "TimerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/timer/TimerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/timer/TimerFragment;


# direct methods
.method constructor <init>(Lcom/android/deskclock/timer/TimerFragment;)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Lcom/android/deskclock/timer/TimerFragment$2;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment$2;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    # getter for: Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;
    invoke-static {v0}, Lcom/android/deskclock/timer/TimerFragment;->access$600(Lcom/android/deskclock/timer/TimerFragment;)Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment$2;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    # invokes: Lcom/android/deskclock/timer/TimerFragment;->gotoTimersView()V
    invoke-static {v0}, Lcom/android/deskclock/timer/TimerFragment;->access$900(Lcom/android/deskclock/timer/TimerFragment;)V

    .line 475
    :cond_0
    return-void
.end method
