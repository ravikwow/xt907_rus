.class Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$8$1;
.super Ljava/lang/Object;
.source "AlarmClockFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$8;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$8;)V
    .locals 0

    .prologue
    .line 1127
    iput-object p1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$8$1;->this$2:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$8$1;->this$2:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$8;

    iget-object v0, v0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$8;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    iget-object v0, v0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$8$1;->this$2:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$8;

    iget-object v1, v1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$8;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    iget-object v1, v1, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mDeletedAlarm:Lcom/android/deskclock/provider/Alarm;
    invoke-static {v1}, Lcom/android/deskclock/AlarmClockFragment;->access$400(Lcom/android/deskclock/AlarmClockFragment;)Lcom/android/deskclock/provider/Alarm;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$8$1;->this$2:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$8;

    iget-object v2, v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$8;->val$view:Landroid/view/View;

    # invokes: Lcom/android/deskclock/AlarmClockFragment;->asyncDeleteAlarm(Lcom/android/deskclock/provider/Alarm;Landroid/view/View;)V
    invoke-static {v0, v1, v2}, Lcom/android/deskclock/AlarmClockFragment;->access$3000(Lcom/android/deskclock/AlarmClockFragment;Lcom/android/deskclock/provider/Alarm;Landroid/view/View;)V

    .line 1132
    return-void
.end method
