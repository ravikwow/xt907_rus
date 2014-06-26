.class Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$1;
.super Ljava/lang/Object;
.source "AlarmClockFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;)V
    .locals 0

    .prologue
    .line 736
    iput-object p1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$1;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    .line 739
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$1;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    # getter for: Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mScrollAlarmId:J
    invoke-static {v2}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->access$1900(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;)J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    .line 740
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$1;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    iget-object v3, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$1;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    # getter for: Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mScrollAlarmId:J
    invoke-static {v3}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->access$1900(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;)J

    move-result-wide v3

    # invokes: Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->getViewById(J)Landroid/view/View;
    invoke-static {v2, v3, v4}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->access$2000(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;J)Landroid/view/View;

    move-result-object v1

    .line 741
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 742
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 743
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$1;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    # getter for: Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->access$2100(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;)Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3}, Landroid/widget/ListView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    .line 745
    .end local v0    # "rect":Landroid/graphics/Rect;
    :cond_0
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$1;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    # setter for: Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mScrollAlarmId:J
    invoke-static {v2, v6, v7}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->access$1902(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;J)J

    .line 747
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method
