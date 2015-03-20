.class Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;
.super Ljava/lang/Object;
.source "CalendarAppWidgetService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->createUpdateLoaderRunnable(Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;I)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;

.field final synthetic val$result:Landroid/content/BroadcastReceiver$PendingResult;

.field final synthetic val$selection:Ljava/lang/String;

.field final synthetic val$version:I


# direct methods
.method constructor <init>(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;ILjava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;->this$0:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;

    iput p2, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;->val$version:I

    iput-object p3, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;->val$selection:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 147
    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;->this$0:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;

    # getter for: Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;
    invoke-static {v1}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->access$000(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/content/CursorLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;->val$version:I

    # getter for: Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->currentVersion:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->access$100()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 148
    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;->this$0:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;

    # invokes: Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->createLoaderUri()Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->access$200(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/net/Uri;

    move-result-object v0

    .line 149
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;->this$0:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;

    # getter for: Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;
    invoke-static {v1}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->access$000(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/content/CursorLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 150
    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;->this$0:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;

    # getter for: Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;
    invoke-static {v1}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->access$000(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/content/CursorLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;->val$selection:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 151
    # getter for: Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLock:Ljava/lang/Integer;
    invoke-static {}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->access$300()Ljava/lang/Integer;

    move-result-object v2

    monitor-enter v2

    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;->this$0:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;

    # getter for: Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLock:Ljava/lang/Integer;
    invoke-static {}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->access$300()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    # setter for: Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLock:Ljava/lang/Integer;
    invoke-static {v3}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->access$302(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    # setter for: Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLastLock:I
    invoke-static {v1, v3}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->access$402(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;I)I

    .line 153
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;->this$0:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;

    # getter for: Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;
    invoke-static {v1}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->access$000(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/content/CursorLoader;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Loader;->forceLoad()V

    .line 156
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 157
    return-void

    .line 153
    .restart local v0    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
