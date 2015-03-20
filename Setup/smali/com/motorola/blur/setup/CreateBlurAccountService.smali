.class public Lcom/motorola/blur/setup/CreateBlurAccountService;
.super Landroid/app/Service;
.source "CreateBlurAccountService.java"

# interfaces
.implements Lcom/motorola/blur/setup/CreateBlurAccountListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/setup/CreateBlurAccountService$LocalBinder;
    }
.end annotation


# static fields
.field private static final CREATE_NEW_ACCT_MSG:I = 0x2

.field private static final DBG:Z = false

.field private static final REPORT_MSG:I = 0x1

.field public static final REQUEST_STATE:Ljava/lang/String; = "requestState"

.field private static final RETRY_MAXIMUM_TIMES:I = 0x3

.field private static final RETRY_TIMER_INTERVAL_UNIT:I = 0x124f80

.field private static final TAG:Ljava/lang/String; = "SetupCBBAS"

.field private static sRetriedTimes:I


# instance fields
.field private mAccountCreatorNewAccount:Lcom/motorola/blur/setup/CreateBlurAccountCreator;

.field private final mBinder:Landroid/os/IBinder;

.field mBundle:Landroid/os/Bundle;

.field private mBusyOnDuty:Z

.field private final mHandler:Landroid/os/Handler;

.field private mSignFrom:I

.field private mTask:Ljava/util/TimerTask;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput v0, Lcom/motorola/blur/setup/CreateBlurAccountService;->sRetriedTimes:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountService;->mBusyOnDuty:Z

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountService;->mSignFrom:I

    .line 52
    iput-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountService;->mBundle:Landroid/os/Bundle;

    .line 54
    iput-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountService;->mAccountCreatorNewAccount:Lcom/motorola/blur/setup/CreateBlurAccountCreator;

    .line 55
    iput-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountService;->mTimer:Ljava/util/Timer;

    .line 56
    iput-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountService;->mTask:Ljava/util/TimerTask;

    .line 57
    new-instance v0, Lcom/motorola/blur/setup/CreateBlurAccountService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/CreateBlurAccountService$LocalBinder;-><init>(Lcom/motorola/blur/setup/CreateBlurAccountService;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountService;->mBinder:Landroid/os/IBinder;

    .line 75
    new-instance v0, Lcom/motorola/blur/setup/CreateBlurAccountService$1;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/CreateBlurAccountService$1;-><init>(Lcom/motorola/blur/setup/CreateBlurAccountService;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 38
    sget v0, Lcom/motorola/blur/setup/CreateBlurAccountService;->sRetriedTimes:I

    return v0
.end method

.method static synthetic access$008()I
    .locals 2

    .prologue
    .line 38
    sget v0, Lcom/motorola/blur/setup/CreateBlurAccountService;->sRetriedTimes:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/motorola/blur/setup/CreateBlurAccountService;->sRetriedTimes:I

    return v0
.end method

.method static synthetic access$100(Lcom/motorola/blur/setup/CreateBlurAccountService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/setup/CreateBlurAccountService;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountService;->mBusyOnDuty:Z

    return v0
.end method

.method static synthetic access$102(Lcom/motorola/blur/setup/CreateBlurAccountService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/setup/CreateBlurAccountService;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/motorola/blur/setup/CreateBlurAccountService;->mBusyOnDuty:Z

    return p1
.end method

.method static synthetic access$202(Lcom/motorola/blur/setup/CreateBlurAccountService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/setup/CreateBlurAccountService;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/motorola/blur/setup/CreateBlurAccountService;->mSignFrom:I

    return p1
.end method

.method static synthetic access$300(Lcom/motorola/blur/setup/CreateBlurAccountService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/setup/CreateBlurAccountService;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public isTrackRecordServiceOnDuty()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountService;->mBusyOnDuty:Z

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 117
    sput v1, Lcom/motorola/blur/setup/CreateBlurAccountService;->sRetriedTimes:I

    .line 118
    iput-boolean v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountService;->mBusyOnDuty:Z

    .line 119
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountService;->mBundle:Landroid/os/Bundle;

    .line 121
    new-instance v0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;

    invoke-direct {v0, p0, p0, v1}, Lcom/motorola/blur/setup/CreateBlurAccountCreator;-><init>(Landroid/content/Context;Lcom/motorola/blur/setup/CreateBlurAccountListener;Z)V

    iput-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountService;->mAccountCreatorNewAccount:Lcom/motorola/blur/setup/CreateBlurAccountCreator;

    .line 122
    return-void
.end method

.method public onCreationFinished(Z)V
    .locals 6
    .param p1, "success"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 224
    const-string v0, "SetupCBBAS"

    new-array v1, v5, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onCreationFinished!!, status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 225
    iput-boolean v4, p0, Lcom/motorola/blur/setup/CreateBlurAccountService;->mBusyOnDuty:Z

    .line 226
    if-ne p1, v5, :cond_0

    .line 227
    new-instance v0, Lcom/motorola/blur/setup/CreateBlurAccountService$3;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/CreateBlurAccountService$3;-><init>(Lcom/motorola/blur/setup/CreateBlurAccountService;)V

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 251
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountService;->mAccountCreatorNewAccount:Lcom/motorola/blur/setup/CreateBlurAccountCreator;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountService;->mAccountCreatorNewAccount:Lcom/motorola/blur/setup/CreateBlurAccountCreator;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->finishIfAvailable()V

    .line 156
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 157
    return-void
.end method

.method public onLoginFinished(ZLjava/lang/String;)V
    .locals 5
    .param p1, "success"    # Z
    .param p2, "googleUser"    # Ljava/lang/String;

    .prologue
    .line 255
    const-string v0, "SetupCBBAS"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " onLoginFinished!!, status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 256
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 126
    const-string v3, "SetupCBBAS"

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, " onStartCommand!!"

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 127
    const-string v3, "SilentRegRequestFrom"

    invoke-virtual {p1, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 131
    .local v1, "from":I
    const-string v3, "com.motorola.blur.setup.intent.extra.EXTRA_BOOLEAN_IS_BLUR_ACCOUNT_CREATOR"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 132
    .local v2, "isBlurAccountCreator":Z
    if-eqz v2, :cond_1

    .line 133
    const-string v3, "com.motorola.blur.setup.intent.extra.EXTRA_STRING_BLUR_ACCOUNT_CREATOR_ACTION"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "bacAction":Ljava/lang/String;
    const-string v3, "SetupCBBAS"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "CreateBlurAccountCreator action: "

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 135
    iget-object v3, p0, Lcom/motorola/blur/setup/CreateBlurAccountService;->mAccountCreatorNewAccount:Lcom/motorola/blur/setup/CreateBlurAccountCreator;

    invoke-virtual {v3, v0, p1}, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->dispatch(Ljava/lang/String;Landroid/content/Intent;)V

    .line 147
    .end local v0    # "bacAction":Ljava/lang/String;
    :cond_0
    :goto_0
    return v6

    .line 136
    :cond_1
    if-eqz v1, :cond_0

    .line 137
    iget-boolean v3, p0, Lcom/motorola/blur/setup/CreateBlurAccountService;->mBusyOnDuty:Z

    if-nez v3, :cond_2

    .line 138
    iput-boolean v7, p0, Lcom/motorola/blur/setup/CreateBlurAccountService;->mBusyOnDuty:Z

    .line 139
    iput v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountService;->mSignFrom:I

    .line 141
    invoke-virtual {p0}, Lcom/motorola/blur/setup/CreateBlurAccountService;->startAutoTrackService()V

    goto :goto_0

    .line 144
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.motorola.blur.setup.starttimer"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public startAutoTrackService()V
    .locals 7

    .prologue
    const-wide/32 v2, 0x124f80

    const/4 v6, 0x1

    .line 193
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountService;->mTask:Ljava/util/TimerTask;

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Lcom/motorola/blur/setup/CreateBlurAccountService$2;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/CreateBlurAccountService$2;-><init>(Lcom/motorola/blur/setup/CreateBlurAccountService;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountService;->mTask:Ljava/util/TimerTask;

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountService;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 203
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0, v6}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountService;->mTimer:Ljava/util/Timer;

    .line 204
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountService;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountService;->mTask:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 206
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/blur/setup/CreateBlurAccountService;->startSignUpWithRandomId()V

    .line 207
    const-string v0, "SetupCBBAS"

    new-array v1, v6, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, " startAutoTrackService!!"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 208
    return-void
.end method

.method public startSignUpWithRandomId()V
    .locals 9

    .prologue
    const/16 v8, 0x14

    const/4 v7, 0x0

    .line 160
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 161
    .local v0, "RNG":Ljava/util/Random;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .local v2, "mUsername":Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/motorola/blur/service/blur/BSUtils;->getSerialNum(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 164
    const-string v4, "@random.svcmot.com"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-static {v4, v5, v6}, Lcom/motorola/blur/util/SimpleEncryptUtil;->encrypt(Ljava/lang/String;[BI)Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "password":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_0

    .line 168
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "djwlci"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 170
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v8, :cond_1

    .line 171
    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 174
    :cond_1
    iget-object v4, p0, Lcom/motorola/blur/setup/CreateBlurAccountService;->mBundle:Landroid/os/Bundle;

    const-string v5, "username"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v4, p0, Lcom/motorola/blur/setup/CreateBlurAccountService;->mBundle:Landroid/os/Bundle;

    const-string v5, "password"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v4, p0, Lcom/motorola/blur/setup/CreateBlurAccountService;->mBundle:Landroid/os/Bundle;

    const-string v5, "data1"

    const-string v6, "Silent Signon"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v4, p0, Lcom/motorola/blur/setup/CreateBlurAccountService;->mAccountCreatorNewAccount:Lcom/motorola/blur/setup/CreateBlurAccountCreator;

    iget-object v5, p0, Lcom/motorola/blur/setup/CreateBlurAccountService;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->createOrLogin(Landroid/os/Bundle;)V

    .line 182
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.motorola.blur.setup.starttimer"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 183
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "SetupCBBAS"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "start timer broadcast"

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 184
    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 185
    return-void
.end method

.method public stopAutoTrackService()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 212
    iput-boolean v3, p0, Lcom/motorola/blur/setup/CreateBlurAccountService;->mBusyOnDuty:Z

    .line 213
    sput v3, Lcom/motorola/blur/setup/CreateBlurAccountService;->sRetriedTimes:I

    .line 214
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountService;->mTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 215
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 216
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 217
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 218
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 219
    const-string v0, "SetupCBBAS"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, " stopAutoTrackService!!"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 220
    return-void
.end method
