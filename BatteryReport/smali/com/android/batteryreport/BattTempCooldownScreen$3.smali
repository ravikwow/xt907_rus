.class Lcom/android/batteryreport/BattTempCooldownScreen$3;
.super Landroid/os/Handler;
.source "BattTempCooldownScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/batteryreport/BattTempCooldownScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/batteryreport/BattTempCooldownScreen;


# direct methods
.method constructor <init>(Lcom/android/batteryreport/BattTempCooldownScreen;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/batteryreport/BattTempCooldownScreen$3;->this$0:Lcom/android/batteryreport/BattTempCooldownScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 151
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 153
    :pswitch_0
    iget-object v1, p0, Lcom/android/batteryreport/BattTempCooldownScreen$3;->this$0:Lcom/android/batteryreport/BattTempCooldownScreen;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 154
    .local v0, "pmc":Landroid/os/PowerManager;
    if-eqz v0, :cond_0

    .line 155
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
