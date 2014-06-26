.class Lcom/android/deskclock/alarms/AlarmActivity$GlowPadController;
.super Landroid/os/Handler;
.source "AlarmActivity.java"

# interfaces
.implements Lcom/android/deskclock/widget/multiwaveview/GlowPadView$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/alarms/AlarmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GlowPadController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/alarms/AlarmActivity;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/alarms/AlarmActivity;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity$GlowPadController;->this$0:Lcom/android/deskclock/alarms/AlarmActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/alarms/AlarmActivity;Lcom/android/deskclock/alarms/AlarmActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/deskclock/alarms/AlarmActivity;
    .param p2, "x1"    # Lcom/android/deskclock/alarms/AlarmActivity$1;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/deskclock/alarms/AlarmActivity$GlowPadController;-><init>(Lcom/android/deskclock/alarms/AlarmActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmActivity$GlowPadController;->this$0:Lcom/android/deskclock/alarms/AlarmActivity;

    # invokes: Lcom/android/deskclock/alarms/AlarmActivity;->ping()V
    invoke-static {v0}, Lcom/android/deskclock/alarms/AlarmActivity;->access$000(Lcom/android/deskclock/alarms/AlarmActivity;)V

    .line 73
    const/16 v0, 0x65

    const-wide/16 v1, 0x4b0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 74
    return-void
.end method

.method public onFinishFinalAnimation()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "handle"    # I

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/deskclock/alarms/AlarmActivity$GlowPadController;->stopPinger()V

    .line 79
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "handle"    # I

    .prologue
    .line 107
    return-void
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "handle"    # I

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/deskclock/alarms/AlarmActivity$GlowPadController;->startPinger()V

    .line 85
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "target"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmActivity$GlowPadController;->this$0:Lcom/android/deskclock/alarms/AlarmActivity;

    # getter for: Lcom/android/deskclock/alarms/AlarmActivity;->mGlowPadView:Lcom/android/deskclock/widget/multiwaveview/GlowPadView;
    invoke-static {v0}, Lcom/android/deskclock/alarms/AlarmActivity;->access$100(Lcom/android/deskclock/alarms/AlarmActivity;)Lcom/android/deskclock/widget/multiwaveview/GlowPadView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->getResourceIdForTarget(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 101
    :pswitch_0
    const-string v0, "Trigger detected on unhandled resource. Skipping."

    invoke-static {v0}, Lcom/android/deskclock/Log;->e(Ljava/lang/String;)V

    .line 103
    :goto_0
    return-void

    .line 91
    :pswitch_1
    const-string v0, "AlarmActivity - GlowPad snooze trigger"

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmActivity$GlowPadController;->this$0:Lcom/android/deskclock/alarms/AlarmActivity;

    # invokes: Lcom/android/deskclock/alarms/AlarmActivity;->snooze()V
    invoke-static {v0}, Lcom/android/deskclock/alarms/AlarmActivity;->access$200(Lcom/android/deskclock/alarms/AlarmActivity;)V

    goto :goto_0

    .line 96
    :pswitch_2
    const-string v0, "AlarmActivity - GlowPad dismiss trigger"

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmActivity$GlowPadController;->this$0:Lcom/android/deskclock/alarms/AlarmActivity;

    # invokes: Lcom/android/deskclock/alarms/AlarmActivity;->dismiss()V
    invoke-static {v0}, Lcom/android/deskclock/alarms/AlarmActivity;->access$300(Lcom/android/deskclock/alarms/AlarmActivity;)V

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x7f02004f
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startPinger()V
    .locals 1

    .prologue
    .line 63
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 64
    return-void
.end method

.method public stopPinger()V
    .locals 1

    .prologue
    .line 67
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 68
    return-void
.end method
