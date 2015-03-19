.class Lcom/android/settings/AirplaneModeSwitcher$1;
.super Landroid/os/Handler;
.source "AirplaneModeSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AirplaneModeSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirplaneModeSwitcher;


# direct methods
.method constructor <init>(Lcom/android/settings/AirplaneModeSwitcher;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/settings/AirplaneModeSwitcher$1;->this$0:Lcom/android/settings/AirplaneModeSwitcher;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 40
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 46
    :goto_0
    return-void

    .line 42
    :pswitch_0
    const-string v0, "AirplaneModeSwitcher"

    const-string v1, "receive EVENT_SERVICE_STATE_CHANGED event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitcher$1;->this$0:Lcom/android/settings/AirplaneModeSwitcher;

    # invokes: Lcom/android/settings/AirplaneModeSwitcher;->onAirplaneModeChanged()V
    invoke-static {v0}, Lcom/android/settings/AirplaneModeSwitcher;->access$000(Lcom/android/settings/AirplaneModeSwitcher;)V

    goto :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
