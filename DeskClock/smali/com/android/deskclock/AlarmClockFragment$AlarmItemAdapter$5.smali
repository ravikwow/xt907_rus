.class Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$5;
.super Ljava/lang/Object;
.source "AlarmClockFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
.method constructor <init>(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;Lcom/android/deskclock/provider/Alarm;Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;)V
    .locals 0

    .prologue
    .line 1064
    iput-object p1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$5;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    iput-object p2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$5;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    iput-object p3, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$5;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$5;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    iget-boolean v0, v0, Lcom/android/deskclock/provider/Alarm;->enabled:Z

    if-eq p2, v0, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$5;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$5;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    # invokes: Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->setItemAlpha(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;Z)V
    invoke-static {v0, v1, p2}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->access$2800(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;Z)V

    .line 1070
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$5;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    iput-boolean p2, v0, Lcom/android/deskclock/provider/Alarm;->enabled:Z

    .line 1071
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$5;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    iget-object v0, v0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$5;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$5;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    iget-boolean v2, v2, Lcom/android/deskclock/provider/Alarm;->enabled:Z

    # invokes: Lcom/android/deskclock/AlarmClockFragment;->asyncUpdateAlarm(Lcom/android/deskclock/provider/Alarm;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/deskclock/AlarmClockFragment;->access$2900(Lcom/android/deskclock/AlarmClockFragment;Lcom/android/deskclock/provider/Alarm;Z)V

    .line 1073
    :cond_0
    return-void
.end method
