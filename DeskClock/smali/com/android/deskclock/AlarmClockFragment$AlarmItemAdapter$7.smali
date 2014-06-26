.class Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$7;
.super Ljava/lang/Object;
.source "AlarmClockFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

.field final synthetic val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;)V
    .locals 0

    .prologue
    .line 1110
    iput-object p1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$7;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    iput-object p2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$7;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$7;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$7;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    const/4 v2, 0x1

    # invokes: Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->expandAlarm(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->access$2600(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;Z)V

    .line 1114
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$7;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    iget-object v0, v0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->alarmItem:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$7;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    # getter for: Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mScrollRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->access$2700(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1115
    return-void
.end method
