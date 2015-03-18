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
    .line 4535
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/NetworkController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/policy/NetworkController$1;

    .prologue
    .line 4535
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController$StatusBarHandler;-><init>(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 4538
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 4555
    :goto_0
    return-void

    .line 4541
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController;->updateTelephonySignalStrength()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$300(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    goto :goto_0

    .line 4549
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$900(Lcom/android/systemui/statusbar/policy/NetworkController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4550
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mEri:Lcom/motorola/android/systemui/statusbar/VzwEri;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$800(Lcom/android/systemui/statusbar/policy/NetworkController;)Lcom/motorola/android/systemui/statusbar/VzwEri;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/android/systemui/statusbar/VzwEri;->playEriAlertAfterBoot()V

    .line 4551
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4538
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
