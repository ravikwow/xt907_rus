.class public Lcom/motorola/blur/setup/CreateBlurAccountActivity;
.super Lcom/motorola/blur/setup/ConnectionSetupActivity;
.source "CreateBlurAccountActivity.java"


# static fields
.field private static final CREATE_TIMEOUT:I = 0xc

.field private static final DBG:Z = false

.field private static final MOT_TOS:I = 0xb

.field private static final SIGNUP_RADIO_DOWN:I = 0x5

.field private static final SIGNUP_SUCCESS:I = 0x3

.field private static final SIGNUP_TEMP_FAILED:I = 0x2

.field private static final SIGNUP_TIME_OUT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SetupCBBAA"

.field private static final UPDATE_REQUEST_ID:I = 0x1


# instance fields
.field private final CONN_FAILED:I

.field private final TIMEOUT_SILENT_SIGNIN_INTERVAL:J

.field private final TIMEOUT_SILENT_SIGNIN_INTERVAL_SDFILE:J

.field private mFromMain:Z

.field private final mHandler:Landroid/os/Handler;

.field private mMotoId:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mQASilentLoginReqd:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-direct {p0}, Lcom/motorola/blur/setup/ConnectionSetupActivity;-><init>()V

    .line 37
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->TIMEOUT_SILENT_SIGNIN_INTERVAL:J

    .line 38
    const-wide/32 v0, 0x2bf20

    iput-wide v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->TIMEOUT_SILENT_SIGNIN_INTERVAL_SDFILE:J

    .line 39
    const/16 v0, 0xa

    iput v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->CONN_FAILED:I

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 45
    iput-boolean v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mReceiverRegistered:Z

    .line 46
    iput-boolean v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mQASilentLoginReqd:Z

    .line 47
    iput-boolean v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mMotoId:Z

    .line 48
    iput-boolean v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mFromMain:Z

    .line 50
    new-instance v0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$1;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/CreateBlurAccountActivity$1;-><init>(Lcom/motorola/blur/setup/CreateBlurAccountActivity;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mHandler:Landroid/os/Handler;

    .line 153
    new-instance v0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$2;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/CreateBlurAccountActivity$2;-><init>(Lcom/motorola/blur/setup/CreateBlurAccountActivity;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/blur/setup/CreateBlurAccountActivity;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/blur/setup/CreateBlurAccountActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mQASilentLoginReqd:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/motorola/blur/setup/CreateBlurAccountActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->startAutoSignUpService()V

    return-void
.end method

.method static synthetic access$102(Lcom/motorola/blur/setup/CreateBlurAccountActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/setup/CreateBlurAccountActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mQASilentLoginReqd:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/motorola/blur/setup/CreateBlurAccountActivity;)Lcom/motorola/blur/fsm/SetupFSM;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/motorola/blur/setup/CreateBlurAccountActivity;)Lcom/motorola/blur/fsm/SetupFSM;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/blur/setup/CreateBlurAccountActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/blur/setup/CreateBlurAccountActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mReceiverRegistered:Z

    return v0
.end method

.method static synthetic access$302(Lcom/motorola/blur/setup/CreateBlurAccountActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/setup/CreateBlurAccountActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mReceiverRegistered:Z

    return p1
.end method

.method static synthetic access$400(Lcom/motorola/blur/setup/CreateBlurAccountActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mMotoId:Z

    return v0
.end method

.method static synthetic access$402(Lcom/motorola/blur/setup/CreateBlurAccountActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/setup/CreateBlurAccountActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mMotoId:Z

    return p1
.end method

.method static synthetic access$500(Lcom/motorola/blur/setup/CreateBlurAccountActivity;)Lcom/motorola/blur/fsm/SetupFSM;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    return-object v0
.end method

.method static synthetic access$600(Lcom/motorola/blur/setup/CreateBlurAccountActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/setup/CreateBlurAccountActivity;
    .param p1, "x1"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->finishBackgroundBlurAccountActivity(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/motorola/blur/setup/CreateBlurAccountActivity;)Lcom/motorola/blur/fsm/SetupFSM;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    return-object v0
.end method

.method static synthetic access$800(Lcom/motorola/blur/setup/CreateBlurAccountActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mFromMain:Z

    return v0
.end method

.method static synthetic access$900(Lcom/motorola/blur/setup/CreateBlurAccountActivity;)Lcom/motorola/blur/fsm/SetupFSM;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    return-object v0
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 361
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 362
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 364
    :cond_0
    return-void
.end method

.method private finishBackgroundBlurAccountActivity(I)V
    .locals 2
    .param p1, "resultCode"    # I

    .prologue
    const/4 v1, 0x1

    .line 142
    sget-boolean v0, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mSilentRegistrationRequired:Z

    if-ne v0, v1, :cond_0

    .line 143
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 144
    invoke-static {v1, p0, v1}, Lcom/motorola/blur/setup/SetupUtility;->finishSetup(ZLandroid/content/Context;Z)V

    .line 149
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 150
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    invoke-virtual {v0, p0, p1}, Lcom/motorola/blur/fsm/SetupFSM;->finishWithResult(Landroid/app/Activity;I)V

    .line 151
    return-void

    .line 146
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0, p0, v1}, Lcom/motorola/blur/setup/SetupUtility;->finishSetup(ZLandroid/content/Context;Z)V

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 2

    .prologue
    .line 349
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 350
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "SilentRegActionAccomplished"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    const-string v1, "SilentRegActionTemplyFailed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    const-string v1, "SilentRegActionRadioDown"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 353
    const-string v1, "com.motorola.blur.setup.starttimer"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 355
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mReceiverRegistered:Z

    .line 356
    return-void
.end method

.method private startAutoSignUpService()V
    .locals 7

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->registerReceiver()V

    .line 319
    iget-object v3, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v3

    .line 323
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.motorola.blur.service.blur.Actions.START_BLUR_SERVICES"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 326
    invoke-static {p0}, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->isGlobalDeviceProvisioningEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 327
    invoke-static {p0}, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->isBlurSingleParentMode(Landroid/content/Context;)Z

    move-result v1

    .line 328
    .local v1, "isBlurSingleParentMode":Z
    if-nez v1, :cond_0

    .line 329
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.motorola.blur.service.blur.Actions.CCE_PROVISION_DEVICE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcom/motorola/blur/service/blur/BSUtils;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 343
    .end local v1    # "isBlurSingleParentMode":Z
    :cond_0
    :goto_0
    const-string v2, ""

    const v4, 0x7f080095

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {p0, v2, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 345
    monitor-exit v3

    .line 346
    return-void

    .line 332
    :cond_1
    const-string v2, "SetupCBBAA"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, " start CSS now!!"

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 333
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/motorola/blur/setup/CreateBlurAccountService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 335
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "SilentRegRequestFrom"

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 336
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 345
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method protected checkConnectionAndStartSevice()V
    .locals 2

    .prologue
    .line 208
    new-instance v0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$3;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/CreateBlurAccountActivity$3;-><init>(Lcom/motorola/blur/setup/CreateBlurAccountActivity;)V

    .line 248
    .local v0, "onConnection":Ljava/lang/Runnable;
    new-instance v1, Lcom/motorola/blur/setup/CreateBlurAccountActivity$4;

    invoke-direct {v1, p0}, Lcom/motorola/blur/setup/CreateBlurAccountActivity$4;-><init>(Lcom/motorola/blur/setup/CreateBlurAccountActivity;)V

    .line 262
    .local v1, "onTimeout":Ljava/lang/Runnable;
    invoke-virtual {p0, v0, v1}, Lcom/motorola/blur/setup/ConnectionSetupActivity;->checkConnection(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 263
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x5

    .line 285
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->onActivityResult(IILandroid/content/Intent;)V

    .line 286
    const/16 v0, 0xa

    if-ne p1, v0, :cond_3

    .line 287
    if-eqz p2, :cond_0

    if-ne p2, v1, :cond_2

    .line 288
    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 289
    invoke-virtual {p0}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->finish()V

    .line 304
    :cond_1
    :goto_0
    return-void

    .line 291
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->checkConnectionAndStartSevice()V

    goto :goto_0

    .line 293
    :cond_3
    const/16 v0, 0xb

    if-ne p1, v0, :cond_5

    .line 294
    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    .line 295
    invoke-virtual {p0}, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->checkConnectionAndStartSevice()V

    goto :goto_0

    .line 297
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 298
    invoke-virtual {p0}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->finish()V

    goto :goto_0

    .line 300
    :cond_5
    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    .line 301
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 302
    invoke-virtual {p0}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->finish()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 312
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 184
    invoke-super {p0, p1}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->onCreate(Landroid/os/Bundle;)V

    .line 186
    const-string v1, "SetupCBBAA"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, " inside onCreate"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 188
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 189
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    const-string v2, "is_initial_setup_flow"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/motorola/blur/fsm/SetupFSM;->setExtraIsInitialSetupFlow(Z)V

    .line 190
    const-string v1, "call_from_main"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mFromMain:Z

    .line 191
    if-eqz p1, :cond_0

    .line 192
    const-string v1, "check_conn_outstanding"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mCheckConnOutstanding:Z

    .line 196
    :cond_0
    iget-boolean v1, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mCheckConnOutstanding:Z

    if-nez v1, :cond_1

    .line 197
    invoke-virtual {p0}, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->checkConnectionAndStartSevice()V

    .line 199
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 271
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v1

    .line 272
    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mReceiverRegistered:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 273
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mReceiverRegistered:Z

    .line 277
    :cond_0
    invoke-direct {p0}, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->dismissDialog()V

    .line 278
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    invoke-super {p0}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->onDestroy()V

    .line 281
    return-void

    .line 278
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 203
    invoke-super {p0, p1}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 204
    const-string v0, "check_conn_outstanding"

    iget-boolean v1, p0, Lcom/motorola/blur/setup/ConnectionSetupActivity;->mCheckConnOutstanding:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 205
    return-void
.end method
