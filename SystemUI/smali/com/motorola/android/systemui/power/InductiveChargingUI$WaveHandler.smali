.class Lcom/motorola/android/systemui/power/InductiveChargingUI$WaveHandler;
.super Landroid/os/Handler;
.source "InductiveChargingUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/systemui/power/InductiveChargingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaveHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/systemui/power/InductiveChargingUI;


# direct methods
.method constructor <init>(Lcom/motorola/android/systemui/power/InductiveChargingUI;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI$WaveHandler;->this$0:Lcom/motorola/android/systemui/power/InductiveChargingUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 87
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 104
    :goto_0
    return-void

    .line 89
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI$WaveHandler;->this$0:Lcom/motorola/android/systemui/power/InductiveChargingUI;

    # invokes: Lcom/motorola/android/systemui/power/InductiveChargingUI;->startWaveAnimation()V
    invoke-static {v0}, Lcom/motorola/android/systemui/power/InductiveChargingUI;->access$000(Lcom/motorola/android/systemui/power/InductiveChargingUI;)V

    goto :goto_0

    .line 92
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI$WaveHandler;->this$0:Lcom/motorola/android/systemui/power/InductiveChargingUI;

    # invokes: Lcom/motorola/android/systemui/power/InductiveChargingUI;->startSecondAnimation()V
    invoke-static {v0}, Lcom/motorola/android/systemui/power/InductiveChargingUI;->access$100(Lcom/motorola/android/systemui/power/InductiveChargingUI;)V

    goto :goto_0

    .line 95
    :pswitch_2
    iget-object v0, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI$WaveHandler;->this$0:Lcom/motorola/android/systemui/power/InductiveChargingUI;

    # invokes: Lcom/motorola/android/systemui/power/InductiveChargingUI;->startThirdAnimation()V
    invoke-static {v0}, Lcom/motorola/android/systemui/power/InductiveChargingUI;->access$200(Lcom/motorola/android/systemui/power/InductiveChargingUI;)V

    goto :goto_0

    .line 98
    :pswitch_3
    iget-object v0, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI$WaveHandler;->this$0:Lcom/motorola/android/systemui/power/InductiveChargingUI;

    # invokes: Lcom/motorola/android/systemui/power/InductiveChargingUI;->startLastAnimation()V
    invoke-static {v0}, Lcom/motorola/android/systemui/power/InductiveChargingUI;->access$300(Lcom/motorola/android/systemui/power/InductiveChargingUI;)V

    goto :goto_0

    .line 101
    :pswitch_4
    iget-object v0, p0, Lcom/motorola/android/systemui/power/InductiveChargingUI$WaveHandler;->this$0:Lcom/motorola/android/systemui/power/InductiveChargingUI;

    # invokes: Lcom/motorola/android/systemui/power/InductiveChargingUI;->cleanUp()V
    invoke-static {v0}, Lcom/motorola/android/systemui/power/InductiveChargingUI;->access$400(Lcom/motorola/android/systemui/power/InductiveChargingUI;)V

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
