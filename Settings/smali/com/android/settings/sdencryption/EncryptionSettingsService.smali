.class public Lcom/android/settings/sdencryption/EncryptionSettingsService;
.super Landroid/app/Service;
.source "EncryptionSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sdencryption/EncryptionSettingsService$LocalBinder;
    }
.end annotation


# static fields
.field private static encryptionState:Lcom/android/settings/sdencryption/EncryptionState;


# instance fields
.field private final mBinder:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/sdencryption/EncryptionSettingsService;->encryptionState:Lcom/android/settings/sdencryption/EncryptionState;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 45
    new-instance v0, Lcom/android/settings/sdencryption/EncryptionSettingsService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/android/settings/sdencryption/EncryptionSettingsService$LocalBinder;-><init>(Lcom/android/settings/sdencryption/EncryptionSettingsService;)V

    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionSettingsService;->mBinder:Landroid/os/IBinder;

    .line 47
    return-void
.end method


# virtual methods
.method public getEncryptionState()Lcom/android/settings/sdencryption/EncryptionState;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/settings/sdencryption/EncryptionSettingsService;->encryptionState:Lcom/android/settings/sdencryption/EncryptionState;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionSettingsService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 23
    const-string v0, "EncryptionSettingsService"

    const-string v1, "The method onCreate() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    sget-object v0, Lcom/android/settings/sdencryption/EncryptionSettingsService;->encryptionState:Lcom/android/settings/sdencryption/EncryptionState;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/android/settings/sdencryption/EncryptionState;

    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionSettingsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/sdencryption/EncryptionState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/sdencryption/EncryptionSettingsService;->encryptionState:Lcom/android/settings/sdencryption/EncryptionState;

    .line 27
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 32
    if-eqz p1, :cond_0

    .line 33
    new-instance v0, Lcom/android/settings/sdencryption/EncryptionReceiverHandler;

    sget-object v1, Lcom/android/settings/sdencryption/EncryptionSettingsService;->encryptionState:Lcom/android/settings/sdencryption/EncryptionState;

    invoke-direct {v0, v1}, Lcom/android/settings/sdencryption/EncryptionReceiverHandler;-><init>(Lcom/android/settings/sdencryption/EncryptionState;)V

    .line 34
    .local v0, "receiverHandler":Lcom/android/settings/sdencryption/EncryptionReceiverHandler;
    invoke-virtual {v0, p1}, Lcom/android/settings/sdencryption/EncryptionReceiverHandler;->onReceive(Landroid/content/Intent;)V

    .line 38
    .end local v0    # "receiverHandler":Lcom/android/settings/sdencryption/EncryptionReceiverHandler;
    :goto_0
    const/4 v1, 0x2

    return v1

    .line 36
    :cond_0
    const-string v1, "EncryptionSettingsService"

    const-string v2, "Intent is null. Looks like service has been recovered."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
