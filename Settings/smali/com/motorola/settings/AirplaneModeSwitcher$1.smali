.class Lcom/motorola/settings/AirplaneModeSwitcher$1;
.super Landroid/os/Handler;
.source "AirplaneModeSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/settings/AirplaneModeSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/settings/AirplaneModeSwitcher;


# direct methods
.method constructor <init>(Lcom/motorola/settings/AirplaneModeSwitcher;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/motorola/settings/AirplaneModeSwitcher$1;->this$0:Lcom/motorola/settings/AirplaneModeSwitcher;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 43
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 49
    :goto_0
    return-void

    .line 46
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/settings/AirplaneModeSwitcher$1;->this$0:Lcom/motorola/settings/AirplaneModeSwitcher;

    # invokes: Lcom/motorola/settings/AirplaneModeSwitcher;->onAirplaneModeChanged()V
    invoke-static {v0}, Lcom/motorola/settings/AirplaneModeSwitcher;->access$000(Lcom/motorola/settings/AirplaneModeSwitcher;)V

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
