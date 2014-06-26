.class Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$13;
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
    .line 1259
    iput-object p1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$13;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    iput-object p2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$13;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    iput-object p3, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$13;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1262
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 1263
    .local v0, "checked":Z
    if-eqz v0, :cond_0

    .line 1264
    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$13;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    iget-object v1, v1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->vibrate:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$13;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    # getter for: Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mColorLit:I
    invoke-static {v2}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->access$4100(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1268
    :goto_0
    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$13;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    iput-boolean v0, v1, Lcom/android/deskclock/provider/Alarm;->vibrate:Z

    .line 1269
    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$13;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    iget-object v1, v1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$13;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    const/4 v3, 0x0

    # invokes: Lcom/android/deskclock/AlarmClockFragment;->asyncUpdateAlarm(Lcom/android/deskclock/provider/Alarm;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/deskclock/AlarmClockFragment;->access$2900(Lcom/android/deskclock/AlarmClockFragment;Lcom/android/deskclock/provider/Alarm;Z)V

    .line 1270
    return-void

    .line 1266
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$13;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    iget-object v1, v1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->vibrate:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$13;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    # getter for: Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->mColorDim:I
    invoke-static {v2}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->access$4000(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
