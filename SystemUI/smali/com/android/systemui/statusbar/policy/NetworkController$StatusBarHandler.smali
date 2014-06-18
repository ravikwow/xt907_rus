.class Lcom/android/systemui/statusbar/policy/NetworkController$StatusBarHandler;
.super Landroid/os/Handler;
.source "NetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusBarHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0

    .prologue
    .line 9403
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/NetworkController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/policy/NetworkController$1;

    .prologue
    .line 9403
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController$StatusBarHandler;-><init>(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 9406
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 9439
    :cond_0
    :goto_0
    return-void

    .line 9412
    :pswitch_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_1

    .line 9413
    const-string v0, "SBar.NetworkController"

    const-string v1, "StatusBarHandler: Smoothing: EVENT_SIG_STRENGTH"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9418
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto :goto_0

    .line 9430
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mSoundAlertForVerizonWireless:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$500(Lcom/android/systemui/statusbar/policy/NetworkController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9431
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1300(Lcom/android/systemui/statusbar/policy/NetworkController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 9432
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mEri:Lcom/motorola/android/systemui/statusbar/VzwEri;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$800(Lcom/android/systemui/statusbar/policy/NetworkController;)Lcom/motorola/android/systemui/statusbar/VzwEri;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/android/systemui/statusbar/VzwEri;->playEriAlertAfterBoot()V

    .line 9433
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 9406
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
