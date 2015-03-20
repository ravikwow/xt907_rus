.class public Lcom/motorola/blur/service/blur/checkin/CheckinUtils;
.super Ljava/lang/Object;
.source "CheckinUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;
    }
.end annotation


# static fields
.field public static final KEY_ERROR:Ljava/lang/String; = "com.motorola.blur.service.blur.checkin.error"

.field public static final KEY_FAST_TRACKED:Ljava/lang/String; = "com.motorola.blur.service.blur.checkin.fast_tracked"

.field public static final KEY_REQUEST_ID:Ljava/lang/String; = "com.motorola.blur.service.blur.checkin.request_id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getError(Landroid/content/Intent;)Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;
    .locals 1
    .param p0, "i"    # Landroid/content/Intent;

    .prologue
    .line 72
    const-string v0, "com.motorola.blur.service.blur.checkin.error"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;->valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;

    move-result-object v0

    return-object v0
.end method

.method public static final getRequestId(Landroid/content/Intent;)I
    .locals 2
    .param p0, "i"    # Landroid/content/Intent;

    .prologue
    .line 61
    const-string v0, "com.motorola.blur.service.blur.checkin.request_id"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static final isCheckinFastTracked(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "i"    # Landroid/content/Intent;

    .prologue
    .line 57
    const-string v0, "com.motorola.blur.service.blur.checkin.fast_tracked"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static final registerSink(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "r"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 108
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 109
    .local v0, "fi":Landroid/content/IntentFilter;
    const-string v1, "com.motorola.blur.service.blur.Actions.CHECKIN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    invoke-static {p0, p1, v0}, Lcom/motorola/blur/service/blur/BSUtils;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 111
    return-void
.end method

.method public static final registerSource(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "r"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 85
    .local v0, "fi":Landroid/content/IntentFilter;
    const-string v1, "com.motorola.blur.service.blur.Actions.CHECKIN_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    invoke-static {p0, p1, v0}, Lcom/motorola/blur/service/blur/BSUtils;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 87
    return-void
.end method

.method public static final sendCheckin(Landroid/content/Context;I)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.blur.service.blur.Actions.CHECKIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 33
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.motorola.blur.service.blur.checkin.request_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 34
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 35
    return-void
.end method

.method public static final sendCheckinResponse(Landroid/content/Context;ILcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;)V
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "e"    # Lcom/motorola/blur/service/blur/checkin/CheckinUtils$Error;

    .prologue
    .line 65
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.blur.service.blur.Actions.CHECKIN_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.motorola.blur.service.blur.checkin.request_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    const-string v1, "com.motorola.blur.service.blur.checkin.error"

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 69
    return-void
.end method

.method public static final sendFastTrackedCheckin(Landroid/content/Context;I)V
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 44
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.blur.service.blur.Actions.CHECKIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.motorola.blur.service.blur.checkin.request_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 46
    const-string v1, "com.motorola.blur.service.blur.checkin.fast_tracked"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 47
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 48
    return-void
.end method

.method public static final unregisterSource(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 0
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "r"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 97
    return-void
.end method

.method public static final unregisterSync(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 0
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "r"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 121
    return-void
.end method
