.class Lcom/android/deskclock/stopwatch/StopwatchFragment$3;
.super Ljava/lang/Object;
.source "StopwatchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/stopwatch/StopwatchFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;


# direct methods
.method constructor <init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$3;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$3;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    # invokes: Lcom/android/deskclock/stopwatch/StopwatchFragment;->rightButtonAction()V
    invoke-static {v0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->access$700(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V

    .line 345
    return-void
.end method
