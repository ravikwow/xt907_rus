.class Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$11;
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

.field final synthetic val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;Lcom/android/deskclock/provider/Alarm;)V
    .locals 0

    .prologue
    .line 1179
    iput-object p1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$11;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    iput-object p2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$11;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    iput-object p3, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$11;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 1182
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    .line 1183
    .local v1, "checked":Z
    if-eqz v1, :cond_1

    .line 1185
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$11;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    iget-object v2, v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->repeatDays:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1186
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$11;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    # getter for: Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mRepeatChecked:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->access$3400(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;)Ljava/util/HashSet;

    move-result-object v2

    iget-object v3, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$11;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    iget-wide v3, v3, Lcom/android/deskclock/provider/Alarm;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1191
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$11;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    # getter for: Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mPreviousDaysOfWeekMap:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->access$3500(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;)Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$11;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    iget-wide v4, v4, Lcom/android/deskclock/provider/Alarm;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1192
    .local v0, "bitSet":I
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$11;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    iget-object v2, v2, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/provider/DaysOfWeek;

    invoke-virtual {v2, v0}, Lcom/android/deskclock/provider/DaysOfWeek;->setBitSet(I)V

    .line 1193
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$11;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    iget-object v2, v2, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/provider/DaysOfWeek;

    invoke-virtual {v2}, Lcom/android/deskclock/provider/DaysOfWeek;->isRepeating()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1194
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$11;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    iget-object v2, v2, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/provider/DaysOfWeek;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$11;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    # getter for: Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->DAY_ORDER:[I
    invoke-static {v4}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->access$3600(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;)[I

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/deskclock/provider/DaysOfWeek;->setDaysOfWeek(Z[I)V

    .line 1196
    :cond_0
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$11;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    iget-object v3, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$11;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    iget-object v4, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$11;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    iget-object v4, v4, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/provider/DaysOfWeek;

    # invokes: Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->updateDaysOfWeekButtons(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;Lcom/android/deskclock/provider/DaysOfWeek;)V
    invoke-static {v2, v3, v4}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->access$3700(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;Lcom/android/deskclock/provider/DaysOfWeek;)V

    .line 1208
    :goto_0
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$11;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    iget-object v2, v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    iget-object v3, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$11;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    # invokes: Lcom/android/deskclock/AlarmClockFragment;->asyncUpdateAlarm(Lcom/android/deskclock/provider/Alarm;Z)V
    invoke-static {v2, v3, v6}, Lcom/android/deskclock/AlarmClockFragment;->access$2900(Lcom/android/deskclock/AlarmClockFragment;Lcom/android/deskclock/provider/Alarm;Z)V

    .line 1209
    return-void

    .line 1198
    .end local v0    # "bitSet":I
    :cond_1
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$11;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    iget-object v2, v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->repeatDays:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1199
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$11;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    # getter for: Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mRepeatChecked:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->access$3400(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;)Ljava/util/HashSet;

    move-result-object v2

    iget-object v3, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$11;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    iget-wide v3, v3, Lcom/android/deskclock/provider/Alarm;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1202
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$11;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    iget-object v2, v2, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/provider/DaysOfWeek;

    invoke-virtual {v2}, Lcom/android/deskclock/provider/DaysOfWeek;->getBitSet()I

    move-result v0

    .line 1203
    .restart local v0    # "bitSet":I
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$11;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    # getter for: Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mPreviousDaysOfWeekMap:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->access$3500(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;)Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$11;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    iget-wide v4, v4, Lcom/android/deskclock/provider/Alarm;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1206
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$11;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    iget-object v2, v2, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/provider/DaysOfWeek;

    invoke-virtual {v2}, Lcom/android/deskclock/provider/DaysOfWeek;->clearAllDays()V

    goto :goto_0
.end method
