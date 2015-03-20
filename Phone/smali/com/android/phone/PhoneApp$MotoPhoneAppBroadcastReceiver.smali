.class Lcom/android/phone/PhoneApp$MotoPhoneAppBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotoPhoneAppBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneApp;)V
    .locals 0

    .prologue
    .line 2370
    iput-object p1, p0, Lcom/android/phone/PhoneApp$MotoPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/phone/PhoneApp$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/PhoneApp;
    .param p2, "x1"    # Lcom/android/phone/PhoneApp$1;

    .prologue
    .line 2370
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp$MotoPhoneAppBroadcastReceiver;-><init>(Lcom/android/phone/PhoneApp;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x3

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2373
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2374
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2376
    const/4 v2, 0x0

    .line 2377
    .local v2, "handled":Z
    const-string v5, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2378
    .local v1, "dock":I
    packed-switch v1, :pswitch_data_0

    .line 2390
    :goto_0
    if-eqz v2, :cond_0

    .line 2391
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MotoPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mMotoHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/phone/PhoneApp$MotoPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->mMotoHandler:Landroid/os/Handler;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v10, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2477
    .end local v1    # "dock":I
    .end local v2    # "handled":Z
    :cond_0
    :goto_1
    return-void

    .line 2381
    .restart local v1    # "dock":I
    .restart local v2    # "handled":Z
    :pswitch_0
    sput-boolean v6, Lcom/android/phone/PhoneApp;->bInDockMode:Z

    .line 2382
    const/4 v2, 0x1

    .line 2383
    goto :goto_0

    .line 2385
    :pswitch_1
    const-string v5, "PhoneApp"

    const-string v6, "out of dock mode"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    sput-boolean v7, Lcom/android/phone/PhoneApp;->bInDockMode:Z

    .line 2387
    const/4 v2, 0x1

    goto :goto_0

    .line 2397
    .end local v1    # "dock":I
    .end local v2    # "handled":Z
    :cond_1
    const-string v5, "com.motorola.internal.intent.action.MOT_DOCK_EVENT"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2398
    const/4 v2, 0x0

    .line 2399
    .restart local v2    # "handled":Z
    const-string v5, "com.motorola.internal.intent.extra.DOCK_STATE"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 2400
    .local v4, "state":I
    const-string v5, "PhoneApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ACTION_MOT_DOCK_EVENT state = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    packed-switch v4, :pswitch_data_1

    .line 2421
    :goto_2
    :pswitch_2
    if-eqz v2, :cond_0

    .line 2422
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MotoPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mMotoHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/phone/PhoneApp$MotoPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->mMotoHandler:Landroid/os/Handler;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v10, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 2409
    :pswitch_3
    const-string v5, "PhoneApp"

    const-string v8, "Now in dock mode"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    sput-boolean v6, Lcom/android/phone/PhoneApp;->bInDockMode:Z

    .line 2411
    sput-boolean v6, Lcom/android/phone/PhoneApp;->bInMobileDockMode:Z

    .line 2412
    const/4 v2, 0x1

    .line 2413
    goto :goto_2

    .line 2415
    :pswitch_4
    const-string v5, "PhoneApp"

    const-string v6, "out of dock mode"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    sput-boolean v7, Lcom/android/phone/PhoneApp;->bInDockMode:Z

    .line 2417
    sput-boolean v7, Lcom/android/phone/PhoneApp;->bInMobileDockMode:Z

    .line 2418
    const/4 v2, 0x1

    goto :goto_2

    .line 2425
    .end local v2    # "handled":Z
    .end local v4    # "state":I
    :cond_2
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2426
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MotoPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    # setter for: Lcom/android/phone/PhoneApp;->mScreenOn:Z
    invoke-static {v5, v7}, Lcom/android/phone/PhoneApp;->access$1702(Lcom/android/phone/PhoneApp;Z)Z

    goto :goto_1

    .line 2427
    :cond_3
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2428
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MotoPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    # setter for: Lcom/android/phone/PhoneApp;->mScreenOn:Z
    invoke-static {v5, v6}, Lcom/android/phone/PhoneApp;->access$1702(Lcom/android/phone/PhoneApp;Z)Z

    goto/16 :goto_1

    .line 2431
    :cond_4
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-boolean v5, Lcom/android/phone/PhoneApp;->FTR_33129_EMERGENCY_CALL_ON:Z

    if-ne v5, v6, :cond_5

    .line 2432
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MotoPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    const-string v6, "plugged"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    # setter for: Lcom/android/phone/PhoneApp;->mPlugType:I
    invoke-static {v5, v6}, Lcom/android/phone/PhoneApp;->access$1802(Lcom/android/phone/PhoneApp;I)I

    .line 2433
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MotoPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    const-string v6, "level"

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    # setter for: Lcom/android/phone/PhoneApp;->mBatteryLevel:I
    invoke-static {v5, v6}, Lcom/android/phone/PhoneApp;->access$1902(Lcom/android/phone/PhoneApp;I)I

    .line 2434
    sget-boolean v5, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "PhoneApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FTR33129: Received ACTION_BATTERY CHANGED, mBatteryLevel="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/PhoneApp$MotoPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    # getter for: Lcom/android/phone/PhoneApp;->mBatteryLevel:I
    invoke-static {v7}, Lcom/android/phone/PhoneApp;->access$1900(Lcom/android/phone/PhoneApp;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mPlugType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/PhoneApp$MotoPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    # getter for: Lcom/android/phone/PhoneApp;->mPlugType:I
    invoke-static {v7}, Lcom/android/phone/PhoneApp;->access$1800(Lcom/android/phone/PhoneApp;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2436
    :cond_5
    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    sget-boolean v5, Lcom/android/phone/PhoneApp;->FTR_33129_EMERGENCY_CALL_ON:Z

    if-ne v5, v6, :cond_8

    .line 2437
    sget-boolean v5, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v5, :cond_6

    const-string v5, "PhoneApp"

    const-string v7, "FTR33129: Received ACTION_SHUTDOWN"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2439
    :cond_6
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MotoPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    # setter for: Lcom/android/phone/PhoneApp;->m_phone_shutdown_indication:Z
    invoke-static {v5, v6}, Lcom/android/phone/PhoneApp;->access$2002(Lcom/android/phone/PhoneApp;Z)Z

    .line 2441
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MotoPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    # getter for: Lcom/android/phone/PhoneApp;->mEmergencySettings:Z
    invoke-static {v5}, Lcom/android/phone/PhoneApp;->access$2100(Lcom/android/phone/PhoneApp;)Z

    move-result v5

    if-ne v5, v6, :cond_0

    .line 2442
    sget-boolean v5, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v5, :cond_7

    const-string v5, "PhoneApp"

    const-string v6, "FTR33129: on device powerdown, restore user backlight settings "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2443
    :cond_7
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MotoPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_off_timeout"

    iget-object v7, p0, Lcom/android/phone/PhoneApp$MotoPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    # getter for: Lcom/android/phone/PhoneApp;->mUserScreenTimeOut:I
    invoke-static {v7}, Lcom/android/phone/PhoneApp;->access$2200(Lcom/android/phone/PhoneApp;)I

    move-result v7

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2444
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MotoPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness"

    iget-object v7, p0, Lcom/android/phone/PhoneApp$MotoPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    # getter for: Lcom/android/phone/PhoneApp;->mUserScreenBrightness:I
    invoke-static {v7}, Lcom/android/phone/PhoneApp;->access$2300(Lcom/android/phone/PhoneApp;)I

    move-result v7

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 2446
    :cond_8
    const-string v5, "android.intent.action.BATTERY_TEMP_COOLDOWN_MODE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2447
    const-string v5, "state"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 2448
    .local v3, "isInCooldown":Z
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MotoPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-boolean v5, v5, Lcom/android/phone/PhoneApp;->mIsInBatteryCooldown:Z

    if-eq v5, v3, :cond_0

    .line 2449
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MotoPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iput-boolean v3, v5, Lcom/android/phone/PhoneApp;->mIsInBatteryCooldown:Z

    .line 2452
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MotoPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "com.android.phone.PhoneAp.mIsInBatteryCooldown"

    iget-object v5, p0, Lcom/android/phone/PhoneApp$MotoPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-boolean v5, v5, Lcom/android/phone/PhoneApp;->mIsInBatteryCooldown:Z

    if-eqz v5, :cond_9

    move v5, v6

    :goto_3
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2456
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MotoPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-boolean v5, v5, Lcom/android/phone/PhoneApp;->mIsInBatteryCooldown:Z

    if-eqz v5, :cond_b

    .line 2457
    invoke-static {}, Lcom/android/phone/PhoneUtils;->inEmergencyCall()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2458
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MotoPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iput-boolean v6, v5, Lcom/android/phone/PhoneApp;->mEmergencyCallDelayedRadioOff:Z

    goto/16 :goto_1

    :cond_9
    move v5, v7

    .line 2452
    goto :goto_3

    .line 2460
    :cond_a
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MotoPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5, v7}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    goto/16 :goto_1

    .line 2463
    :cond_b
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MotoPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 2464
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MotoPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iput-boolean v7, v5, Lcom/android/phone/PhoneApp;->mEmergencyCallDelayedRadioOff:Z

    goto/16 :goto_1

    .line 2467
    .end local v3    # "isInCooldown":Z
    :cond_c
    const-string v5, "com.android.phone.action.CLEAR_MISSED_NOTIFICATION"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2468
    invoke-static {}, Lcom/android/phone/PhoneUtils;->resetNewCallsFlag()V

    goto/16 :goto_1

    .line 2472
    :cond_d
    const-string v5, "com.android.phone.change_dbg_level"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2473
    const-string v5, "PhoneApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dbg_level="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "dbg_level"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2474
    const-string v5, "dbg_level"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/android/phone/PhoneApp;->DBG_LEVEL:I

    goto/16 :goto_1

    .line 2378
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 2402
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
