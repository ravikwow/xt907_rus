.class Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;
.super Ljava/lang/Object;
.source "StopwatchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/stopwatch/StopwatchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Lap"
.end annotation


# instance fields
.field public mLapTime:J

.field public mTotalTime:J

.field final synthetic this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;


# direct methods
.method constructor <init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;JJ)V
    .locals 0
    .param p2, "time"    # J
    .param p4, "total"    # J

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-wide p2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;->mLapTime:J

    .line 80
    iput-wide p4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;->mTotalTime:J

    .line 81
    return-void
.end method


# virtual methods
.method public updateView()V
    .locals 2

    .prologue
    .line 86
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    # getter for: Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->access$000(Lcom/android/deskclock/stopwatch/StopwatchFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 87
    .local v0, "lapInfo":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 88
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    iget-object v1, v1, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    invoke-virtual {v1, v0, p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->setTimeText(Landroid/view/View;Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;)V

    .line 90
    :cond_0
    return-void
.end method
