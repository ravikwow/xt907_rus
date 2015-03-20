.class Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$3;
.super Ljava/lang/Object;
.source "CalendarAppWidgetService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;

.field final synthetic val$result:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method constructor <init>(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    .prologue
    .line 570
    iput-object p1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$3;->this$0:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;

    iput-object p2, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$3;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 577
    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$3;->this$0:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;

    # invokes: Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->queryForSelection()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->access$500(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;)Ljava/lang/String;

    move-result-object v0

    .line 579
    .local v0, "selection":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$3;->this$0:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;

    # getter for: Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;
    invoke-static {v1}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->access$000(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/content/CursorLoader;

    move-result-object v1

    if-nez v1, :cond_0

    .line 580
    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$3;->this$0:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;

    const/4 v2, -0x1

    # setter for: Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mAppWidgetId:I
    invoke-static {v1, v2}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->access$602(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;I)I

    .line 581
    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$3;->this$0:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;

    # getter for: Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->access$700(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$3$1;

    invoke-direct {v2, p0, v0}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$3$1;-><init>(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$3;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 592
    :goto_0
    return-void

    .line 589
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$3;->this$0:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;

    # getter for: Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->access$700(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$3;->this$0:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;

    iget-object v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$3;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    # getter for: Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->currentVersion:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->access$100()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    # invokes: Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->createUpdateLoaderRunnable(Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;I)Ljava/lang/Runnable;
    invoke-static {v2, v0, v3, v4}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->access$800(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;I)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
