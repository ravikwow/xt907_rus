.class Lcom/android/deskclock/AlarmClockFragment$1;
.super Ljava/lang/Object;
.source "AlarmClockFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmClockFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 182
    iput-object p1, p0, Lcom/android/deskclock/AlarmClockFragment$1;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$1;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    const/4 v1, 0x1

    const/4 v2, 0x0

    # invokes: Lcom/android/deskclock/AlarmClockFragment;->hideUndoBar(ZLandroid/view/MotionEvent;)V
    invoke-static {v0, v1, v2}, Lcom/android/deskclock/AlarmClockFragment;->access$000(Lcom/android/deskclock/AlarmClockFragment;ZLandroid/view/MotionEvent;)V

    .line 186
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$1;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # invokes: Lcom/android/deskclock/AlarmClockFragment;->startCreatingAlarm()V
    invoke-static {v0}, Lcom/android/deskclock/AlarmClockFragment;->access$100(Lcom/android/deskclock/AlarmClockFragment;)V

    .line 187
    return-void
.end method
