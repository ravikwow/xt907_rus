.class public Lcom/android/settings/sdencryption/EncryptionPinService;
.super Landroid/app/Service;
.source "EncryptionPinService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sdencryption/EncryptionPinService$LocalBinder;
    }
.end annotation


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mIntent:Landroid/content/Intent;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionPinService;->mIntent:Landroid/content/Intent;

    .line 24
    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionPinService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 89
    new-instance v0, Lcom/android/settings/sdencryption/EncryptionPinService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/android/settings/sdencryption/EncryptionPinService$LocalBinder;-><init>(Lcom/android/settings/sdencryption/EncryptionPinService;)V

    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionPinService;->mBinder:Landroid/os/IBinder;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/sdencryption/EncryptionPinService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sdencryption/EncryptionPinService;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionPinService;->startEncryptionPinActivity()V

    return-void
.end method

.method private startEncryptionPinActivity()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionPinService;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 72
    const-string v0, "EncryptionPinService"

    const-string v1, "Error! Intent in startEncryptionPinActivity() cannot be null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :goto_0
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 78
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionPinService;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionPinService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionPinService;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionPinService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionPinService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 86
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v4, 0x2

    .line 29
    const-string v2, "EncryptionPinService"

    const-string v3, "Service started"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    if-nez p1, :cond_0

    .line 32
    const-string v2, "EncryptionPinService"

    const-string v3, "Error! Intent in onStartCommand() cannot be null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 66
    :goto_0
    return v4

    .line 38
    :cond_0
    const-class v2, Lcom/android/settings/sdencryption/EncryptionPinActivity;

    invoke-virtual {p1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 39
    const/high16 v2, 0x10000000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 40
    iput-object p1, p0, Lcom/android/settings/sdencryption/EncryptionPinService;->mIntent:Landroid/content/Intent;

    .line 43
    const-string v2, "keyguard"

    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 45
    .local v1, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    const-string v2, "EncryptionPinService"

    const-string v3, "Pnone is locked."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v2, Lcom/android/settings/sdencryption/EncryptionPinService$1;

    invoke-direct {v2, p0}, Lcom/android/settings/sdencryption/EncryptionPinService$1;-><init>(Lcom/android/settings/sdencryption/EncryptionPinService;)V

    iput-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 57
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 58
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 60
    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 63
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionPinService;->startEncryptionPinActivity()V

    goto :goto_0
.end method
