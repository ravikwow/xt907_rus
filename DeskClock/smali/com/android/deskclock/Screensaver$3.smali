.class Lcom/android/deskclock/Screensaver$3;
.super Landroid/content/BroadcastReceiver;
.source "Screensaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/Screensaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/Screensaver;


# direct methods
.method constructor <init>(Lcom/android/deskclock/Screensaver;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/deskclock/Screensaver$3;->this$0:Lcom/android/deskclock/Screensaver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 70
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/Screensaver$3;->this$0:Lcom/android/deskclock/Screensaver;

    # getter for: Lcom/android/deskclock/Screensaver;->mDateFormat:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/deskclock/Screensaver;->access$100(Lcom/android/deskclock/Screensaver;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/Screensaver$3;->this$0:Lcom/android/deskclock/Screensaver;

    # getter for: Lcom/android/deskclock/Screensaver;->mDateFormatForAccessibility:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/deskclock/Screensaver;->access$200(Lcom/android/deskclock/Screensaver;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/deskclock/Screensaver$3;->this$0:Lcom/android/deskclock/Screensaver;

    # getter for: Lcom/android/deskclock/Screensaver;->mContentView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/deskclock/Screensaver;->access$000(Lcom/android/deskclock/Screensaver;)Landroid/view/View;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/deskclock/Utils;->updateDate(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    .line 74
    iget-object v1, p0, Lcom/android/deskclock/Screensaver$3;->this$0:Lcom/android/deskclock/Screensaver;

    iget-object v2, p0, Lcom/android/deskclock/Screensaver$3;->this$0:Lcom/android/deskclock/Screensaver;

    # getter for: Lcom/android/deskclock/Screensaver;->mContentView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/deskclock/Screensaver;->access$000(Lcom/android/deskclock/Screensaver;)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/deskclock/Utils;->refreshAlarm(Landroid/content/Context;Landroid/view/View;)V

    .line 75
    iget-object v1, p0, Lcom/android/deskclock/Screensaver$3;->this$0:Lcom/android/deskclock/Screensaver;

    # getter for: Lcom/android/deskclock/Screensaver;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/deskclock/Screensaver;->access$300(Lcom/android/deskclock/Screensaver;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/Screensaver$3;->this$0:Lcom/android/deskclock/Screensaver;

    # getter for: Lcom/android/deskclock/Screensaver;->mMidnightUpdater:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/deskclock/Screensaver;->access$400(Lcom/android/deskclock/Screensaver;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/deskclock/Utils;->setMidnightUpdater(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 77
    :cond_1
    return-void
.end method
