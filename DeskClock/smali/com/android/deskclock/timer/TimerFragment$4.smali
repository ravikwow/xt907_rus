.class Lcom/android/deskclock/timer/TimerFragment$4;
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
    .line 502
    iput-object p1, p0, Lcom/android/deskclock/timer/TimerFragment$4;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment$4;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    # getter for: Lcom/android/deskclock/timer/TimerFragment;->mTimerSetup:Lcom/android/deskclock/TimerSetupView;
    invoke-static {v0}, Lcom/android/deskclock/timer/TimerFragment;->access$1000(Lcom/android/deskclock/timer/TimerFragment;)Lcom/android/deskclock/TimerSetupView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/TimerSetupView;->reset()V

    .line 506
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment$4;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    # invokes: Lcom/android/deskclock/timer/TimerFragment;->gotoSetupView()V
    invoke-static {v0}, Lcom/android/deskclock/timer/TimerFragment;->access$1200(Lcom/android/deskclock/timer/TimerFragment;)V

    .line 507
    return-void
.end method
