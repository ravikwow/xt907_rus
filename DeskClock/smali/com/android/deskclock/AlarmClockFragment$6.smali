.class Lcom/android/deskclock/AlarmClockFragment$6;
.super Ljava/lang/Object;
.source "AlarmClockFragment.java"

# interfaces
.implements Lcom/android/deskclock/widget/ActionableToastBar$ActionClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmClockFragment;->showUndoBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmClockFragment;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmClockFragment;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lcom/android/deskclock/AlarmClockFragment$6;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionClicked()V
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$6;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment$6;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mDeletedAlarm:Lcom/android/deskclock/provider/Alarm;
    invoke-static {v1}, Lcom/android/deskclock/AlarmClockFragment;->access$400(Lcom/android/deskclock/AlarmClockFragment;)Lcom/android/deskclock/provider/Alarm;

    move-result-object v1

    # invokes: Lcom/android/deskclock/AlarmClockFragment;->asyncAddAlarm(Lcom/android/deskclock/provider/Alarm;)V
    invoke-static {v0, v1}, Lcom/android/deskclock/AlarmClockFragment;->access$1700(Lcom/android/deskclock/AlarmClockFragment;Lcom/android/deskclock/provider/Alarm;)V

    .line 507
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$6;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/deskclock/AlarmClockFragment;->mDeletedAlarm:Lcom/android/deskclock/provider/Alarm;
    invoke-static {v0, v1}, Lcom/android/deskclock/AlarmClockFragment;->access$402(Lcom/android/deskclock/AlarmClockFragment;Lcom/android/deskclock/provider/Alarm;)Lcom/android/deskclock/provider/Alarm;

    .line 508
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$6;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/deskclock/AlarmClockFragment;->mUndoShowing:Z
    invoke-static {v0, v1}, Lcom/android/deskclock/AlarmClockFragment;->access$1802(Lcom/android/deskclock/AlarmClockFragment;Z)Z

    .line 509
    return-void
.end method
