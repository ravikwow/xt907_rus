.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;
.super Lcom/android/systemui/statusbar/BaseStatusBar$H;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    .prologue
    .line 1312
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;

    .prologue
    .line 1312
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 1314
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->handleMessage(Landroid/os/Message;)V

    .line 1315
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1330
    :goto_0
    return-void

    .line 1317
    :sswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateExpand()V

    goto :goto_0

    .line 1320
    :sswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse()V

    goto :goto_0

    .line 1323
    :sswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x1

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setIntruderAlertVisibility(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    goto :goto_0

    .line 1326
    :sswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setIntruderAlertVisibility(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    .line 1327
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentlyIntrudingNotification:Lcom/android/internal/statusbar/StatusBarNotification;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1202(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/internal/statusbar/StatusBarNotification;

    goto :goto_0

    .line 1315
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_1
        0x402 -> :sswitch_2
        0x403 -> :sswitch_3
    .end sparse-switch
.end method
