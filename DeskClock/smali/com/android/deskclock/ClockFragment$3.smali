.class Lcom/android/deskclock/ClockFragment$3;
.super Ljava/lang/Object;
.source "ClockFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/ClockFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/ClockFragment;


# direct methods
.method constructor <init>(Lcom/android/deskclock/ClockFragment;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/deskclock/ClockFragment$3;->this$0:Lcom/android/deskclock/ClockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/deskclock/ClockFragment$3;->this$0:Lcom/android/deskclock/ClockFragment;

    # getter for: Lcom/android/deskclock/ClockFragment;->mDateFormat:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/deskclock/ClockFragment;->access$000(Lcom/android/deskclock/ClockFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/ClockFragment$3;->this$0:Lcom/android/deskclock/ClockFragment;

    # getter for: Lcom/android/deskclock/ClockFragment;->mDateFormatForAccessibility:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/deskclock/ClockFragment;->access$100(Lcom/android/deskclock/ClockFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/ClockFragment$3;->this$0:Lcom/android/deskclock/ClockFragment;

    # getter for: Lcom/android/deskclock/ClockFragment;->mClockFrame:Landroid/view/View;
    invoke-static {v2}, Lcom/android/deskclock/ClockFragment;->access$200(Lcom/android/deskclock/ClockFragment;)Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/deskclock/Utils;->updateDate(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    .line 113
    iget-object v0, p0, Lcom/android/deskclock/ClockFragment$3;->this$0:Lcom/android/deskclock/ClockFragment;

    # getter for: Lcom/android/deskclock/ClockFragment;->mAdapter:Lcom/android/deskclock/worldclock/WorldClockAdapter;
    invoke-static {v0}, Lcom/android/deskclock/ClockFragment;->access$300(Lcom/android/deskclock/ClockFragment;)Lcom/android/deskclock/worldclock/WorldClockAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/deskclock/ClockFragment$3;->this$0:Lcom/android/deskclock/ClockFragment;

    # getter for: Lcom/android/deskclock/ClockFragment;->mAdapter:Lcom/android/deskclock/worldclock/WorldClockAdapter;
    invoke-static {v0}, Lcom/android/deskclock/ClockFragment;->access$300(Lcom/android/deskclock/ClockFragment;)Lcom/android/deskclock/worldclock/WorldClockAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/ClockFragment$3;->this$0:Lcom/android/deskclock/ClockFragment;

    # getter for: Lcom/android/deskclock/ClockFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/deskclock/ClockFragment;->access$500(Lcom/android/deskclock/ClockFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/ClockFragment$3;->this$0:Lcom/android/deskclock/ClockFragment;

    # getter for: Lcom/android/deskclock/ClockFragment;->mQuarterHourUpdater:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/deskclock/ClockFragment;->access$600(Lcom/android/deskclock/ClockFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/deskclock/Utils;->setQuarterHourUpdater(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 117
    return-void
.end method
