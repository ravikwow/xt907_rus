.class Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$12;
.super Ljava/lang/Object;
.source "AlarmClockFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->bindExpandArea(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;Lcom/android/deskclock/provider/Alarm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

.field final synthetic val$alarm:Lcom/android/deskclock/provider/Alarm;

.field final synthetic val$buttonIndex:I

.field final synthetic val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;ILcom/android/deskclock/provider/Alarm;)V
    .locals 0

    .prologue
    .line 1216
    iput-object p1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$12;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    iput-object p2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$12;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    iput p3, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$12;->val$buttonIndex:I

    iput-object p4, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$12;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 1219
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$12;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    iget-object v2, v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->dayButtons:[Landroid/widget/ToggleButton;

    iget v3, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$12;->val$buttonIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->toggle()V

    .line 1220
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$12;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    iget-object v2, v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->dayButtons:[Landroid/widget/ToggleButton;

    iget v3, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$12;->val$buttonIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 1221
    .local v0, "checked":Z
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$12;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    # getter for: Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->DAY_ORDER:[I
    invoke-static {v2}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->access$3600(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;)[I

    move-result-object v2

    iget v3, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$12;->val$buttonIndex:I

    aget v1, v2, v3

    .line 1222
    .local v1, "day":I
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$12;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    iget-object v2, v2, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/provider/DaysOfWeek;

    const/4 v3, 0x1

    new-array v3, v3, [I

    aput v1, v3, v6

    invoke-virtual {v2, v0, v3}, Lcom/android/deskclock/provider/DaysOfWeek;->setDaysOfWeek(Z[I)V

    .line 1223
    if-eqz v0, :cond_1

    .line 1224
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$12;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    iget-object v3, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$12;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    iget v4, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$12;->val$buttonIndex:I

    # invokes: Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->turnOnDayOfWeek(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;I)V
    invoke-static {v2, v3, v4}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->access$3800(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;I)V

    .line 1240
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$12;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    iget-object v2, v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    iget-object v3, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$12;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    # invokes: Lcom/android/deskclock/AlarmClockFragment;->asyncUpdateAlarm(Lcom/android/deskclock/provider/Alarm;Z)V
    invoke-static {v2, v3, v6}, Lcom/android/deskclock/AlarmClockFragment;->access$2900(Lcom/android/deskclock/AlarmClockFragment;Lcom/android/deskclock/provider/Alarm;Z)V

    .line 1241
    return-void

    .line 1226
    :cond_1
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$12;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    iget-object v3, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$12;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    iget v4, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$12;->val$buttonIndex:I

    # invokes: Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->turnOffDayOfWeek(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;I)V
    invoke-static {v2, v3, v4}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->access$3900(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;I)V

    .line 1229
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$12;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    iget-object v2, v2, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/provider/DaysOfWeek;

    invoke-virtual {v2}, Lcom/android/deskclock/provider/DaysOfWeek;->isRepeating()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1230
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$12;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    iget-object v2, v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->repeatDays:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1231
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$12;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    iget-object v2, v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->repeat:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$12;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    # getter for: Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mColorDim:I
    invoke-static {v3}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->access$4000(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1232
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$12;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    # getter for: Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mRepeatChecked:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->access$3400(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;)Ljava/util/HashSet;

    move-result-object v2

    iget-object v3, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$12;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    iget-wide v3, v3, Lcom/android/deskclock/provider/Alarm;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1236
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$12;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    # getter for: Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mPreviousDaysOfWeekMap:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->access$3500(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;)Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$12;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    iget-wide v4, v4, Lcom/android/deskclock/provider/Alarm;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method
