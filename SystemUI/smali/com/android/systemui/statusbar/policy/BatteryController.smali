.class public Lcom/android/systemui/statusbar/policy/BatteryController;
.super Landroid/content/BroadcastReceiver;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
    }
.end annotation


# instance fields
.field private mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigSyncChargingStatus:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 50
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11100b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mConfigSyncChargingStatus:Z

    .line 57
    return-void
.end method


# virtual methods
.method public addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "action":Ljava/lang/String;
    const-string v9, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 69
    const/4 v5, 0x0

    .line 71
    .local v5, "pluggedType":I
    const-string v9, "level"

    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 74
    .local v3, "level":I
    const-string v9, "status"

    invoke-virtual {p2, v9, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 78
    .local v6, "status":I
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mConfigSyncChargingStatus:Z

    if-eqz v9, :cond_0

    .line 80
    const-string v9, "plugged"

    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 85
    :cond_0
    const/4 v4, 0x0

    .line 88
    .local v4, "plugged":Z
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mConfigSyncChargingStatus:Z

    if-nez v9, :cond_1

    .line 89
    packed-switch v6, :pswitch_data_0

    .line 100
    :goto_0
    :pswitch_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    .line 102
    .local v1, "cb":Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mConfigSyncChargingStatus:Z

    if-eqz v7, :cond_3

    .line 104
    invoke-interface {v1, v3, v4, v6}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onBatteryLevelChanged(IZI)V

    goto :goto_1

    .line 92
    .end local v1    # "cb":Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
    .end local v2    # "i$":Ljava/util/Iterator;
    :pswitch_1
    const/4 v4, 0x1

    goto :goto_0

    .line 97
    :cond_1
    if-eqz v5, :cond_2

    move v4, v7

    :goto_2
    goto :goto_0

    :cond_2
    move v4, v8

    goto :goto_2

    .line 107
    .restart local v1    # "cb":Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1, v3, v4}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onBatteryLevelChanged(IZ)V

    goto :goto_1

    .line 113
    .end local v1    # "cb":Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "level":I
    .end local v4    # "plugged":Z
    .end local v5    # "pluggedType":I
    .end local v6    # "status":I
    :cond_4
    return-void

    .line 89
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
