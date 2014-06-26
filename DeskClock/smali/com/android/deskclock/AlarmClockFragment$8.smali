.class Lcom/android/deskclock/AlarmClockFragment$8;
.super Landroid/os/AsyncTask;
.source "AlarmClockFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmClockFragment;->asyncAddAlarm(Lcom/android/deskclock/provider/Alarm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/deskclock/provider/AlarmInstance;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmClockFragment;

.field final synthetic val$alarm:Lcom/android/deskclock/provider/Alarm;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmClockFragment;Landroid/content/Context;Lcom/android/deskclock/provider/Alarm;)V
    .locals 0

    .prologue
    .line 1734
    iput-object p1, p0, Lcom/android/deskclock/AlarmClockFragment$8;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    iput-object p2, p0, Lcom/android/deskclock/AlarmClockFragment$8;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/deskclock/AlarmClockFragment$8;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/deskclock/provider/AlarmInstance;
    .locals 5
    .param p1, "parameters"    # [Ljava/lang/Void;

    .prologue
    .line 1755
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$8;->val$context:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$8;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    if-eqz v2, :cond_0

    .line 1756
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$8;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1759
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$8;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    invoke-static {v0, v2}, Lcom/android/deskclock/provider/Alarm;->addAlarm(Landroid/content/ContentResolver;Lcom/android/deskclock/provider/Alarm;)Lcom/android/deskclock/provider/Alarm;

    move-result-object v1

    .line 1760
    .local v1, "newAlarm":Lcom/android/deskclock/provider/Alarm;
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$8;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    iget-wide v3, v1, Lcom/android/deskclock/provider/Alarm;->id:J

    # setter for: Lcom/android/deskclock/AlarmClockFragment;->mScrollToAlarmId:J
    invoke-static {v2, v3, v4}, Lcom/android/deskclock/AlarmClockFragment;->access$4502(Lcom/android/deskclock/AlarmClockFragment;J)J

    .line 1763
    iget-boolean v2, v1, Lcom/android/deskclock/provider/Alarm;->enabled:Z

    if-eqz v2, :cond_0

    .line 1764
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$8;->val$context:Landroid/content/Context;

    # invokes: Lcom/android/deskclock/AlarmClockFragment;->setupAlarmInstance(Landroid/content/Context;Lcom/android/deskclock/provider/Alarm;)Lcom/android/deskclock/provider/AlarmInstance;
    invoke-static {v2, v1}, Lcom/android/deskclock/AlarmClockFragment;->access$4600(Landroid/content/Context;Lcom/android/deskclock/provider/Alarm;)Lcom/android/deskclock/provider/AlarmInstance;

    move-result-object v2

    .line 1767
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "newAlarm":Lcom/android/deskclock/provider/Alarm;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1734
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/deskclock/AlarmClockFragment$8;->doInBackground([Ljava/lang/Void;)Lcom/android/deskclock/provider/AlarmInstance;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 3
    .param p1, "instance"    # Lcom/android/deskclock/provider/AlarmInstance;

    .prologue
    .line 1772
    if-eqz p1, :cond_0

    .line 1773
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$8;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/deskclock/AlarmUtils;->popAlarmSetToast(Landroid/content/Context;J)V

    .line 1775
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1734
    check-cast p1, Lcom/android/deskclock/provider/AlarmInstance;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/deskclock/AlarmClockFragment$8;->onPostExecute(Lcom/android/deskclock/provider/AlarmInstance;)V

    return-void
.end method

.method public declared-synchronized onPreExecute()V
    .locals 10

    .prologue
    .line 1737
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/android/deskclock/AlarmClockFragment$8;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mAlarmsList:Landroid/widget/ListView;
    invoke-static {v7}, Lcom/android/deskclock/AlarmClockFragment;->access$2400(Lcom/android/deskclock/AlarmClockFragment;)Landroid/widget/ListView;

    move-result-object v5

    .line 1741
    .local v5, "list":Landroid/widget/ListView;
    iget-object v7, p0, Lcom/android/deskclock/AlarmClockFragment$8;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mAlarmsList:Landroid/widget/ListView;
    invoke-static {v7}, Lcom/android/deskclock/AlarmClockFragment;->access$2400(Lcom/android/deskclock/AlarmClockFragment;)Landroid/widget/ListView;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 1744
    invoke-virtual {v5}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    .line 1745
    .local v1, "firstVisiblePosition":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 1746
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1747
    .local v0, "child":Landroid/view/View;
    add-int v6, v1, v2

    .line 1748
    .local v6, "position":I
    iget-object v7, p0, Lcom/android/deskclock/AlarmClockFragment$8;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mAdapter:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;
    invoke-static {v7}, Lcom/android/deskclock/AlarmClockFragment;->access$300(Lcom/android/deskclock/AlarmClockFragment;)Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v3

    .line 1749
    .local v3, "itemId":J
    iget-object v7, p0, Lcom/android/deskclock/AlarmClockFragment$8;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mItemIdTopMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v7}, Lcom/android/deskclock/AlarmClockFragment;->access$2200(Lcom/android/deskclock/AlarmClockFragment;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1745
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1751
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "itemId":J
    .end local v6    # "position":I
    :cond_0
    monitor-exit p0

    return-void

    .line 1737
    .end local v1    # "firstVisiblePosition":I
    .end local v2    # "i":I
    .end local v5    # "list":Landroid/widget/ListView;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method
