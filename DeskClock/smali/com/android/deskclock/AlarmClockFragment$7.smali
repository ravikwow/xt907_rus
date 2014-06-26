.class Lcom/android/deskclock/AlarmClockFragment$7;
.super Landroid/os/AsyncTask;
.source "AlarmClockFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmClockFragment;->asyncDeleteAlarm(Lcom/android/deskclock/provider/Alarm;Landroid/view/View;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmClockFragment;

.field final synthetic val$alarm:Lcom/android/deskclock/provider/Alarm;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$viewToRemove:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmClockFragment;Landroid/view/View;Landroid/content/Context;Lcom/android/deskclock/provider/Alarm;)V
    .locals 0

    .prologue
    .line 1692
    iput-object p1, p0, Lcom/android/deskclock/AlarmClockFragment$7;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    iput-object p2, p0, Lcom/android/deskclock/AlarmClockFragment$7;->val$viewToRemove:Landroid/view/View;

    iput-object p3, p0, Lcom/android/deskclock/AlarmClockFragment$7;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/deskclock/AlarmClockFragment$7;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1692
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/deskclock/AlarmClockFragment$7;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "parameters"    # [Ljava/lang/Void;

    .prologue
    .line 1719
    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment$7;->val$context:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment$7;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    if-eqz v1, :cond_0

    .line 1720
    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment$7;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1721
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment$7;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$7;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    iget-wide v2, v2, Lcom/android/deskclock/provider/Alarm;->id:J

    invoke-static {v1, v2, v3}, Lcom/android/deskclock/alarms/AlarmStateManager;->deleteAllInstances(Landroid/content/Context;J)V

    .line 1722
    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment$7;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    iget-wide v1, v1, Lcom/android/deskclock/provider/Alarm;->id:J

    invoke-static {v0, v1, v2}, Lcom/android/deskclock/provider/Alarm;->deleteAlarm(Landroid/content/ContentResolver;J)Z

    .line 1724
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public declared-synchronized onPreExecute()V
    .locals 10

    .prologue
    .line 1695
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/android/deskclock/AlarmClockFragment$7;->val$viewToRemove:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_1

    .line 1714
    :cond_0
    monitor-exit p0

    return-void

    .line 1701
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/android/deskclock/AlarmClockFragment$7;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mAlarmsList:Landroid/widget/ListView;
    invoke-static {v7}, Lcom/android/deskclock/AlarmClockFragment;->access$2400(Lcom/android/deskclock/AlarmClockFragment;)Landroid/widget/ListView;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 1704
    iget-object v7, p0, Lcom/android/deskclock/AlarmClockFragment$7;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mAlarmsList:Landroid/widget/ListView;
    invoke-static {v7}, Lcom/android/deskclock/AlarmClockFragment;->access$2400(Lcom/android/deskclock/AlarmClockFragment;)Landroid/widget/ListView;

    move-result-object v5

    .line 1705
    .local v5, "list":Landroid/widget/ListView;
    invoke-virtual {v5}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    .line 1706
    .local v1, "firstVisiblePosition":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 1707
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1708
    .local v0, "child":Landroid/view/View;
    iget-object v7, p0, Lcom/android/deskclock/AlarmClockFragment$7;->val$viewToRemove:Landroid/view/View;

    if-eq v0, v7, :cond_2

    .line 1709
    add-int v6, v1, v2

    .line 1710
    .local v6, "position":I
    iget-object v7, p0, Lcom/android/deskclock/AlarmClockFragment$7;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mAdapter:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;
    invoke-static {v7}, Lcom/android/deskclock/AlarmClockFragment;->access$300(Lcom/android/deskclock/AlarmClockFragment;)Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v3

    .line 1711
    .local v3, "itemId":J
    iget-object v7, p0, Lcom/android/deskclock/AlarmClockFragment$7;->this$0:Lcom/android/deskclock/AlarmClockFragment;

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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1706
    .end local v3    # "itemId":J
    .end local v6    # "position":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1695
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "firstVisiblePosition":I
    .end local v2    # "i":I
    .end local v5    # "list":Landroid/widget/ListView;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method
