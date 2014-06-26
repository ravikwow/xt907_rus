.class Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$2;
.super Ljava/lang/Object;
.source "AlarmClockFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mAddedView:Landroid/view/View;

.field final synthetic this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

.field final synthetic val$list:Landroid/widget/ListView;

.field final synthetic val$observer:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;Landroid/view/ViewTreeObserver;Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 861
    iput-object p1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$2;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    iput-object p2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$2;->val$observer:Landroid/view/ViewTreeObserver;

    iput-object p3, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$2;->val$list:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 15

    .prologue
    .line 868
    iget-object v12, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$2;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v12}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 869
    iget-object v12, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$2;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v12, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 871
    :cond_0
    const/4 v4, 0x1

    .line 872
    .local v4, "firstAnimation":Z
    iget-object v12, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$2;->val$list:Landroid/widget/ListView;

    invoke-virtual {v12}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v5

    .line 875
    .local v5, "firstVisiblePosition":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v12, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$2;->val$list:Landroid/widget/ListView;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    if-ge v6, v12, :cond_5

    .line 876
    iget-object v12, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$2;->val$list:Landroid/widget/ListView;

    invoke-virtual {v12, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 878
    .local v1, "child":Landroid/view/View;
    add-int v9, v5, v6

    .line 879
    .local v9, "position":I
    iget-object v12, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$2;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    iget-object v12, v12, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mAdapter:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;
    invoke-static {v12}, Lcom/android/deskclock/AlarmClockFragment;->access$300(Lcom/android/deskclock/AlarmClockFragment;)Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v7

    .line 882
    .local v7, "itemId":J
    iget-object v12, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$2;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    iget-object v12, v12, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mAddedAlarm:Lcom/android/deskclock/provider/Alarm;
    invoke-static {v12}, Lcom/android/deskclock/AlarmClockFragment;->access$2300(Lcom/android/deskclock/AlarmClockFragment;)Lcom/android/deskclock/provider/Alarm;

    move-result-object v12

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$2;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    iget-object v12, v12, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mAddedAlarm:Lcom/android/deskclock/provider/Alarm;
    invoke-static {v12}, Lcom/android/deskclock/AlarmClockFragment;->access$2300(Lcom/android/deskclock/AlarmClockFragment;)Lcom/android/deskclock/provider/Alarm;

    move-result-object v12

    iget-wide v12, v12, Lcom/android/deskclock/provider/Alarm;->id:J

    cmp-long v12, v7, v12

    if-nez v12, :cond_2

    .line 883
    iput-object v1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$2;->mAddedView:Landroid/view/View;

    .line 884
    iget-object v12, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$2;->mAddedView:Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setAlpha(F)V

    .line 875
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 889
    :cond_2
    iget-object v12, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$2;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    iget-object v12, v12, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mItemIdTopMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v12}, Lcom/android/deskclock/AlarmClockFragment;->access$2200(Lcom/android/deskclock/AlarmClockFragment;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v12

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 891
    .local v10, "startTop":Ljava/lang/Integer;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v11

    .line 895
    .local v11, "top":I
    if-nez v10, :cond_3

    .line 896
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v12

    iget-object v13, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$2;->val$list:Landroid/widget/ListView;

    invoke-virtual {v13}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v13

    add-int v2, v12, v13

    .line 897
    .local v2, "childHeight":I
    if-lez v6, :cond_4

    .end local v2    # "childHeight":I
    :goto_2
    add-int v12, v11, v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 900
    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Start Top: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", Top: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/deskclock/Log;->d(Ljava/lang/String;)V

    .line 903
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-eq v12, v11, :cond_1

    .line 904
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    sub-int v3, v12, v11

    .line 905
    .local v3, "delta":I
    int-to-float v12, v3

    invoke-virtual {v1, v12}, Landroid/view/View;->setTranslationY(F)V

    .line 906
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    const-wide/16 v13, 0x12c

    invoke-virtual {v12, v13, v14}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 907
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$2;->mAddedView:Landroid/view/View;

    .line 908
    .local v0, "addedView":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 913
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    new-instance v13, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$2$1;

    invoke-direct {v13, p0, v0}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$2$1;-><init>(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$2;Landroid/view/View;)V

    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 941
    const/4 v4, 0x0

    goto :goto_1

    .line 897
    .end local v0    # "addedView":Landroid/view/View;
    .end local v3    # "delta":I
    .restart local v2    # "childHeight":I
    :cond_4
    neg-int v2, v2

    goto :goto_2

    .line 948
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childHeight":I
    .end local v7    # "itemId":J
    .end local v9    # "position":I
    .end local v10    # "startTop":Ljava/lang/Integer;
    .end local v11    # "top":I
    :cond_5
    if-eqz v4, :cond_6

    .line 949
    iget-object v12, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$2;->mAddedView:Landroid/view/View;

    if-eqz v12, :cond_7

    .line 951
    const-string v12, "Animating added view..."

    invoke-static {v12}, Lcom/android/deskclock/Log;->d(Ljava/lang/String;)V

    .line 952
    iget-object v12, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$2;->mAddedView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    const/high16 v13, 0x3f800000

    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    const-wide/16 v13, 0x12c

    invoke-virtual {v12, v13, v14}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    new-instance v13, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$2$2;

    invoke-direct {v13, p0}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$2$2;-><init>(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$2;)V

    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 967
    :cond_6
    :goto_3
    iget-object v12, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$2;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    iget-object v12, v12, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    const/4 v13, 0x0

    # setter for: Lcom/android/deskclock/AlarmClockFragment;->mAddedAlarm:Lcom/android/deskclock/provider/Alarm;
    invoke-static {v12, v13}, Lcom/android/deskclock/AlarmClockFragment;->access$2302(Lcom/android/deskclock/AlarmClockFragment;Lcom/android/deskclock/provider/Alarm;)Lcom/android/deskclock/provider/Alarm;

    .line 968
    iget-object v12, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$2;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    iget-object v12, v12, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mItemIdTopMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v12}, Lcom/android/deskclock/AlarmClockFragment;->access$2200(Lcom/android/deskclock/AlarmClockFragment;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 969
    const/4 v12, 0x1

    return v12

    .line 963
    :cond_7
    iget-object v12, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$2;->val$list:Landroid/widget/ListView;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_3
.end method
