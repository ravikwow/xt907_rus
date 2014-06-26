.class Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$4;
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

.field final synthetic val$alarm:Lcom/android/deskclock/provider/Alarm;

.field final synthetic val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;Lcom/android/deskclock/provider/Alarm;)V
    .locals 0

    .prologue
    .line 1051
    iput-object p1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$4;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    iput-object p2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$4;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    iput-object p3, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$4;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$4;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    iget-object v0, v0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$4;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    iget-object v1, v1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->alarm:Lcom/android/deskclock/provider/Alarm;

    # setter for: Lcom/android/deskclock/AlarmClockFragment;->mSelectedAlarm:Lcom/android/deskclock/provider/Alarm;
    invoke-static {v0, v1}, Lcom/android/deskclock/AlarmClockFragment;->access$2502(Lcom/android/deskclock/AlarmClockFragment;Lcom/android/deskclock/provider/Alarm;)Lcom/android/deskclock/provider/Alarm;

    .line 1055
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$4;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    iget-object v0, v0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$4;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$4;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    iget-object v2, v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    iget-object v3, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$4;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    iget-object v3, v3, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/deskclock/AlarmUtils;->showTimeEditDialog(Landroid/app/FragmentManager;Lcom/android/deskclock/provider/Alarm;Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;Z)V

    .line 1058
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$4;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$4;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    const/4 v2, 0x1

    # invokes: Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->expandAlarm(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->access$2600(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;Z)V

    .line 1059
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$4;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    iget-object v0, v0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->alarmItem:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$4;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    # getter for: Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mScrollRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->access$2700(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1060
    return-void
.end method
