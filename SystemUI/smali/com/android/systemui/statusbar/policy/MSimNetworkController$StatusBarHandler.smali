.class Lcom/android/systemui/statusbar/policy/MSimNetworkController$StatusBarHandler;
.super Landroid/os/Handler;
.source "MSimNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MSimNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusBarHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)V
    .locals 0

    .prologue
    .line 13102
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/MSimNetworkController;Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkController;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;

    .prologue
    .line 13102
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController$StatusBarHandler;-><init>(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 13105
    const/4 v0, 0x0

    .line 13106
    .local v0, "subscription":I
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 13129
    :goto_0
    return-void

    .line 13110
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateTelephonySignalStrength(I)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$1700(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    goto :goto_0

    .line 13106
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method
