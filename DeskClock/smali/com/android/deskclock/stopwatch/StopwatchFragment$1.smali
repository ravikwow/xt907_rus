.class Lcom/android/deskclock/stopwatch/StopwatchFragment$1;
.super Ljava/lang/Object;
.source "StopwatchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/stopwatch/StopwatchFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;


# direct methods
.method constructor <init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$1;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 293
    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v0

    .line 294
    iget-object v2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$1;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 295
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/deskclock/stopwatch/StopwatchService;

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 296
    const-string v4, "message_time"

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 297
    const-string v4, "show_notification"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 298
    iget-object v4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$1;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    iget v4, v4, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mState:I

    packed-switch v4, :pswitch_data_0

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$1;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    iget v1, v1, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " while pressing the left stopwatch button"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/deskclock/Log;->i(Ljava/lang/String;)V

    .line 319
    :goto_0
    return-void

    .line 301
    :pswitch_0
    iget-object v4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$1;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    # invokes: Lcom/android/deskclock/stopwatch/StopwatchFragment;->addLapTime(J)V
    invoke-static {v4, v0, v1}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->access$200(Lcom/android/deskclock/stopwatch/StopwatchFragment;J)V

    .line 302
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$1;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    # invokes: Lcom/android/deskclock/stopwatch/StopwatchFragment;->doLap()V
    invoke-static {v0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->access$300(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V

    .line 303
    const-string v0, "lap_stopwatch"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 308
    :pswitch_1
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$1;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    # invokes: Lcom/android/deskclock/stopwatch/StopwatchFragment;->doReset()V
    invoke-static {v0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->access$400(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V

    .line 309
    const-string v0, "reset_stopwatch"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 311
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$1;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    # invokes: Lcom/android/deskclock/stopwatch/StopwatchFragment;->releaseWakeLock()V
    invoke-static {v0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->access$500(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V

    goto :goto_0

    .line 298
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
