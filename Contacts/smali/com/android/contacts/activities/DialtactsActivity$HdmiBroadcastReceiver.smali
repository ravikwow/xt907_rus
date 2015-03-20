.class Lcom/android/contacts/activities/DialtactsActivity$HdmiBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DialtactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HdmiBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/DialtactsActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 0

    .prologue
    .line 1492
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity$HdmiBroadcastReceiver;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;
    .param p2, "x1"    # Lcom/android/contacts/activities/DialtactsActivity$1;

    .prologue
    .line 1492
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity$HdmiBroadcastReceiver;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1495
    sget-boolean v3, Lcom/android/contacts/activities/DialtactsActivity;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "dialer hdmi onReceive"

    invoke-static {v3}, Lcom/android/contacts/activities/DialtactsActivity;->log(Ljava/lang/String;)V

    .line 1496
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1497
    .local v0, "action":Ljava/lang/String;
    const-string v3, "com.motorola.intent.action.mirrormodestate"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1498
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1499
    .local v2, "extras":Landroid/os/Bundle;
    if-eqz v2, :cond_5

    .line 1500
    const-string v3, "mirror"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1501
    .local v1, "conn":I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 1502
    sget-boolean v3, Lcom/android/contacts/activities/DialtactsActivity;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "dialer hdmi Enabled"

    invoke-static {v3}, Lcom/android/contacts/activities/DialtactsActivity;->log(Ljava/lang/String;)V

    .line 1503
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity$HdmiBroadcastReceiver;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1513
    .end local v1    # "conn":I
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_2
    :goto_0
    return-void

    .line 1505
    .restart local v1    # "conn":I
    .restart local v2    # "extras":Landroid/os/Bundle;
    :cond_3
    if-nez v1, :cond_2

    .line 1506
    sget-boolean v3, Lcom/android/contacts/activities/DialtactsActivity;->DBG:Z

    if-eqz v3, :cond_4

    const-string v3, "dialer hdmi Disabled"

    invoke-static {v3}, Lcom/android/contacts/activities/DialtactsActivity;->log(Ljava/lang/String;)V

    .line 1507
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity$HdmiBroadcastReceiver;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1510
    .end local v1    # "conn":I
    :cond_5
    sget-boolean v3, Lcom/android/contacts/activities/DialtactsActivity;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "dialer Intent MIRROR_PUBLIC_STATE has no extra MIRROR_STATE: does nothing."

    invoke-static {v3}, Lcom/android/contacts/activities/DialtactsActivity;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
