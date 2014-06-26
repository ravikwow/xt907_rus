.class Lcom/android/deskclock/AlarmTimelineView$AlarmObserver;
.super Landroid/database/ContentObserver;
.source "AlarmTimelineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/AlarmTimelineView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmTimelineView;


# direct methods
.method public constructor <init>(Lcom/android/deskclock/AlarmTimelineView;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/deskclock/AlarmTimelineView$AlarmObserver;->this$0:Lcom/android/deskclock/AlarmTimelineView;

    .line 86
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 87
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "changed"    # Z

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/deskclock/AlarmTimelineView$AlarmObserver;->this$0:Lcom/android/deskclock/AlarmTimelineView;

    # getter for: Lcom/android/deskclock/AlarmTimelineView;->mAlarmsTask:Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;
    invoke-static {v0}, Lcom/android/deskclock/AlarmTimelineView;->access$100(Lcom/android/deskclock/AlarmTimelineView;)Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/deskclock/AlarmTimelineView$AlarmObserver;->this$0:Lcom/android/deskclock/AlarmTimelineView;

    # getter for: Lcom/android/deskclock/AlarmTimelineView;->mAlarmsTask:Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;
    invoke-static {v0}, Lcom/android/deskclock/AlarmTimelineView;->access$100(Lcom/android/deskclock/AlarmTimelineView;)Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/AlarmTimelineView$AlarmObserver;->this$0:Lcom/android/deskclock/AlarmTimelineView;

    new-instance v1, Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;

    iget-object v2, p0, Lcom/android/deskclock/AlarmTimelineView$AlarmObserver;->this$0:Lcom/android/deskclock/AlarmTimelineView;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;-><init>(Lcom/android/deskclock/AlarmTimelineView;Lcom/android/deskclock/AlarmTimelineView$1;)V

    # setter for: Lcom/android/deskclock/AlarmTimelineView;->mAlarmsTask:Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;
    invoke-static {v0, v1}, Lcom/android/deskclock/AlarmTimelineView;->access$102(Lcom/android/deskclock/AlarmTimelineView;Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;)Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;

    .line 95
    iget-object v0, p0, Lcom/android/deskclock/AlarmTimelineView$AlarmObserver;->this$0:Lcom/android/deskclock/AlarmTimelineView;

    # getter for: Lcom/android/deskclock/AlarmTimelineView;->mAlarmsTask:Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;
    invoke-static {v0}, Lcom/android/deskclock/AlarmTimelineView;->access$100(Lcom/android/deskclock/AlarmTimelineView;)Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 96
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/android/deskclock/AlarmTimelineView$AlarmObserver;->onChange(Z)V

    .line 101
    return-void
.end method
