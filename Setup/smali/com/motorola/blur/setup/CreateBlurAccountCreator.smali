.class public Lcom/motorola/blur/setup/CreateBlurAccountCreator;
.super Ljava/lang/Object;
.source "CreateBlurAccountCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/setup/CreateBlurAccountCreator$UpgradeProjection;
    }
.end annotation


# static fields
.field private static final AUTH_TYPE_YAHOO:I = 0x28

.field protected static final CONTACTS_HANDLER_NAME:Ljava/lang/String; = "BlurContactsSyncHandler"

.field static final EXTRA_BOOLEAN_IS_BLUR_ACCOUNT_CREATOR:Ljava/lang/String; = "com.motorola.blur.setup.intent.extra.EXTRA_BOOLEAN_IS_BLUR_ACCOUNT_CREATOR"

.field static final EXTRA_STRING_BLUR_ACCOUNT_CREATOR_ACTION:Ljava/lang/String; = "com.motorola.blur.setup.intent.extra.EXTRA_STRING_BLUR_ACCOUNT_CREATOR_ACTION"

.field protected static final FAILED:I = -0x1

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field protected static final IMAGES_DOWNLOADED:I = 0xa

.field protected static final NO_ERROR:I = -0x1

.field private static final PROGRESS_POINTS:[I

.field private static final PROVIDER_SELECTION:Ljava/lang/String; = "provider_id=?"

.field protected static final RECEIVED_ACCOUNTS:I = 0x3

.field protected static final RECEIVED_EXISTING_SESSION_ID:I = 0x5

.field protected static final RECEIVED_NEW_ACCOUNT_SESSION_ID:I = 0x1

.field protected static final RECEIVED_PROVIDERS:I = 0x2

.field protected static final RECEIVED_RESET_PASSWORD:I = 0x7

.field protected static final RECEIVED_SETUP_DB:I = 0x6

.field protected static final RECEIVED_SUBSCRIPTIONS:I = 0x4

.field private static final SERVICE_RESTARTED:I = 0x9

.field private static final SERVICE_SELECTION:Ljava/lang/String; = "path != \'\'"

.field protected static final SETUP_COMPLETED_DATA_STRING:Ljava/lang/String; = "clientsettings/blur"

.field private static final SETUP_HANDLER_NAME:Ljava/lang/String; = "BlurSetupSyncHandler"

.field private static final SETUP_SYNC_APP_ID:I = 0x5

.field protected static final SNFRIENDS_HANDLER_NAME:Ljava/lang/String; = "BlurSNFriendsSyncHandler"

.field protected static final SYNC_FAILED:I = -0x2

.field protected static final SYNC_SUSPENDED:I = 0xc

.field private static final TAG:Ljava/lang/String; = "BAC"

.field private static final UPGRADE_SELECTION:Ljava/lang/String; = "password NOT LIKE \'{%\'"

.field private static final YAHOO_CALENDAR:I = 0x1

.field private static final YAHOO_CONTACTS:I = 0x0

.field private static final YAHOO_PROJECTION:[Ljava/lang/String;

.field private static final YAHOO_SERVICE_SELECTION:Ljava/lang/String; = "providers_id=?"

.field private static final sNumberOfTriesAllowed:I = 0x3


# instance fields
.field private mBound:Z

.field private mContext:Landroid/content/Context;

.field private mEmail:Ljava/lang/String;

.field private mForgotPassword:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIMSI:Ljava/lang/String;

.field private mIsUiNeeded:Z

.field private mListener:Lcom/motorola/blur/setup/CreateBlurAccountListener;

.field private mName:Ljava/lang/String;

.field private mNumberOfTriesToGetImages:I

.field private mPassword:Ljava/lang/String;

.field private mPhone:Ljava/lang/String;

.field private mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

.field private mReceivedDB:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegisterd:Z

.field private mRequestInFlight:Ljava/lang/Boolean;

.field private mSerialNumber:Ljava/lang/String;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field protected mSubscribed:Z

.field private mWSClient:Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->PROGRESS_POINTS:[I

    .line 115
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->ID_PROJECTION:[Ljava/lang/String;

    .line 118
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "capability"

    aput-object v1, v0, v2

    sput-object v0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->YAHOO_PROJECTION:[Ljava/lang/String;

    return-void

    .line 76
    nop

    :array_0
    .array-data 4
        0x3e8
        0x2328
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/motorola/blur/setup/CreateBlurAccountListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/motorola/blur/setup/CreateBlurAccountListener;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-boolean v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mReceiverRegisterd:Z

    .line 126
    iput v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mNumberOfTriesToGetImages:I

    .line 128
    iput-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mListener:Lcom/motorola/blur/setup/CreateBlurAccountListener;

    .line 129
    iput-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mWSClient:Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;

    .line 130
    iput-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    .line 131
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mRequestInFlight:Ljava/lang/Boolean;

    .line 132
    iput-boolean v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mForgotPassword:Z

    .line 133
    iput-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mName:Ljava/lang/String;

    .line 134
    iput-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mEmail:Ljava/lang/String;

    .line 135
    iput-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mPassword:Ljava/lang/String;

    .line 136
    iput-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mPhone:Ljava/lang/String;

    .line 137
    iput-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mIMSI:Ljava/lang/String;

    .line 138
    iput-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mSerialNumber:Ljava/lang/String;

    .line 139
    iput-boolean v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mReceivedDB:Z

    .line 140
    iput-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mContext:Landroid/content/Context;

    .line 141
    iput-boolean v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mBound:Z

    .line 143
    iput-boolean v3, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mIsUiNeeded:Z

    .line 246
    new-instance v0, Lcom/motorola/blur/setup/CreateBlurAccountCreator$1;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/CreateBlurAccountCreator$1;-><init>(Lcom/motorola/blur/setup/CreateBlurAccountCreator;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 270
    new-instance v0, Lcom/motorola/blur/setup/CreateBlurAccountCreator$2;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/CreateBlurAccountCreator$2;-><init>(Lcom/motorola/blur/setup/CreateBlurAccountCreator;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 333
    new-instance v0, Lcom/motorola/blur/setup/CreateBlurAccountCreator$3;

    invoke-static {}, Lcom/motorola/blur/util/os/MyLooper;->singleton()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/motorola/blur/setup/CreateBlurAccountCreator$3;-><init>(Lcom/motorola/blur/setup/CreateBlurAccountCreator;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mHandler:Landroid/os/Handler;

    .line 146
    iput-object p2, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mListener:Lcom/motorola/blur/setup/CreateBlurAccountListener;

    .line 147
    invoke-direct {p0, p1}, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->init(Landroid/content/Context;)V

    .line 148
    iput-boolean v3, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mIsUiNeeded:Z

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/motorola/blur/setup/CreateBlurAccountListener;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/motorola/blur/setup/CreateBlurAccountListener;
    .param p3, "isUiNeeded"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-boolean v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mReceiverRegisterd:Z

    .line 126
    iput v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mNumberOfTriesToGetImages:I

    .line 128
    iput-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mListener:Lcom/motorola/blur/setup/CreateBlurAccountListener;

    .line 129
    iput-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mWSClient:Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;

    .line 130
    iput-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    .line 131
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mRequestInFlight:Ljava/lang/Boolean;

    .line 132
    iput-boolean v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mForgotPassword:Z

    .line 133
    iput-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mName:Ljava/lang/String;

    .line 134
    iput-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mEmail:Ljava/lang/String;

    .line 135
    iput-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mPassword:Ljava/lang/String;

    .line 136
    iput-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mPhone:Ljava/lang/String;

    .line 137
    iput-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mIMSI:Ljava/lang/String;

    .line 138
    iput-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mSerialNumber:Ljava/lang/String;

    .line 139
    iput-boolean v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mReceivedDB:Z

    .line 140
    iput-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mContext:Landroid/content/Context;

    .line 141
    iput-boolean v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mBound:Z

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mIsUiNeeded:Z

    .line 246
    new-instance v0, Lcom/motorola/blur/setup/CreateBlurAccountCreator$1;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/CreateBlurAccountCreator$1;-><init>(Lcom/motorola/blur/setup/CreateBlurAccountCreator;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 270
    new-instance v0, Lcom/motorola/blur/setup/CreateBlurAccountCreator$2;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/CreateBlurAccountCreator$2;-><init>(Lcom/motorola/blur/setup/CreateBlurAccountCreator;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 333
    new-instance v0, Lcom/motorola/blur/setup/CreateBlurAccountCreator$3;

    invoke-static {}, Lcom/motorola/blur/util/os/MyLooper;->singleton()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/motorola/blur/setup/CreateBlurAccountCreator$3;-><init>(Lcom/motorola/blur/setup/CreateBlurAccountCreator;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mHandler:Landroid/os/Handler;

    .line 152
    iput-object p2, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mListener:Lcom/motorola/blur/setup/CreateBlurAccountListener;

    .line 153
    iput-boolean p3, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mIsUiNeeded:Z

    .line 154
    invoke-direct {p0, p1}, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->init(Landroid/content/Context;)V

    .line 155
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/blur/setup/CreateBlurAccountCreator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/setup/CreateBlurAccountCreator;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mReceivedDB:Z

    return v0
.end method

.method static synthetic access$002(Lcom/motorola/blur/setup/CreateBlurAccountCreator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/setup/CreateBlurAccountCreator;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mReceivedDB:Z

    return p1
.end method

.method static synthetic access$100(Lcom/motorola/blur/setup/CreateBlurAccountCreator;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/setup/CreateBlurAccountCreator;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->requestSettings()V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/blur/setup/CreateBlurAccountCreator;I)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/setup/CreateBlurAccountCreator;
    .param p1, "x1"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->endProgressUI(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/motorola/blur/setup/CreateBlurAccountCreator;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/setup/CreateBlurAccountCreator;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/motorola/blur/setup/CreateBlurAccountCreator;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/setup/CreateBlurAccountCreator;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mRequestInFlight:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/blur/setup/CreateBlurAccountCreator;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/setup/CreateBlurAccountCreator;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->showRetryDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/motorola/blur/setup/CreateBlurAccountCreator;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/setup/CreateBlurAccountCreator;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->setupYahooServices()V

    return-void
.end method

.method static synthetic access$700(Lcom/motorola/blur/setup/CreateBlurAccountCreator;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/setup/CreateBlurAccountCreator;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->finishSetupBroadcast()V

    return-void
.end method

.method static synthetic access$800(Lcom/motorola/blur/setup/CreateBlurAccountCreator;)Lcom/motorola/blur/setup/SetupProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/setup/CreateBlurAccountCreator;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    return-object v0
.end method

.method private createSyncFilter(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "dataType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 417
    :try_start_0
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 418
    .local v2, "successFilter":Landroid/content/IntentFilter;
    const-string v3, "com.motorola.blur.service.blur.Actions.SYNC_HANDLER_COMPLETED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 419
    invoke-virtual {v2, p3}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 422
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 423
    .local v1, "failureFilter":Landroid/content/IntentFilter;
    const-string v3, "com.motorola.blur.service.blur.Actions.SYNC_HANDLER_FAILED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v1, p3}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 426
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mReceiverRegisterd:Z
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    .end local v1    # "failureFilter":Landroid/content/IntentFilter;
    .end local v2    # "successFilter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 427
    :catch_0
    move-exception v0

    .line 428
    .local v0, "exception":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v3, "BAC"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Bad mime type - up a creek without a paddle!"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private static deleteAllEmailAccounts(Landroid/content/Context;)V
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 659
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 660
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->EMAIL_ACCOUNTS_CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 662
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 674
    :goto_0
    return-void

    .line 665
    :cond_0
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 666
    const/16 v1, 0xb

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 670
    .local v7, "id":J
    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 673
    .end local v7    # "id":J
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private final dialogShowing()Z
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private endProgressUI(I)V
    .locals 5
    .param p1, "error"    # I

    .prologue
    const/4 v4, 0x0

    .line 589
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mRequestInFlight:Ljava/lang/Boolean;

    .line 590
    invoke-direct {p0}, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->dialogShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 591
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->hide()V

    .line 592
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v1}, Lcom/motorola/blur/setup/SetupProgressDialog;->dismiss()V

    .line 596
    :cond_0
    iget-boolean v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mForgotPassword:Z

    if-eqz v1, :cond_2

    .line 597
    const v0, 0x7f080016

    .line 602
    .local v0, "title":I
    :goto_0
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 603
    iget-boolean v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mIsUiNeeded:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 604
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mContext:Landroid/content/Context;

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08003b

    new-instance v3, Lcom/motorola/blur/setup/CreateBlurAccountCreator$6;

    invoke-direct {v3, p0}, Lcom/motorola/blur/setup/CreateBlurAccountCreator$6;-><init>(Lcom/motorola/blur/setup/CreateBlurAccountCreator;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 618
    :cond_1
    :goto_1
    return-void

    .line 599
    .end local v0    # "title":I
    :cond_2
    const v0, 0x7f08003e

    .restart local v0    # "title":I
    goto :goto_0

    .line 613
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v4, v1}, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->finishProgressUI(ZLjava/lang/String;)V

    goto :goto_1
.end method

.method private finishSetupBroadcast()V
    .locals 3

    .prologue
    .line 486
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.blur.setupprovider.action.ACCOUNT_SETUP_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 487
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mContext:Landroid/content/Context;

    const-string v2, "com.motorola.blur.setupprovider.Permissions.ACCESS_ACCOUNTS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 489
    return-void
.end method

.method private getContactsServiceId(J)[J
    .locals 11
    .param p1, "providerId"    # J

    .prologue
    .line 519
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$Services;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->YAHOO_PROJECTION:[Ljava/lang/String;

    const-string v3, "providers_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 524
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x2

    new-array v9, v0, [J

    fill-array-data v9, :array_0

    .line 525
    .local v9, "serviceIds":[J
    const-wide/16 v7, -0x1

    .line 526
    .local v7, "serviceId":J
    if-eqz v6, :cond_1

    .line 527
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 529
    long-to-int v0, v7

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 534
    :sswitch_0
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    aput-wide v1, v9, v0

    goto :goto_0

    .line 531
    :sswitch_1
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    aput-wide v1, v9, v0

    goto :goto_0

    .line 540
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 542
    :cond_1
    return-object v9

    .line 524
    nop

    :array_0
    .array-data 8
        -0x1
        -0x1
    .end array-data

    .line 529
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0xc -> :sswitch_1
    .end sparse-switch
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 158
    iput-object p1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mContext:Landroid/content/Context;

    .line 159
    iget-boolean v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mIsUiNeeded:Z

    if-ne v1, v3, :cond_0

    .line 160
    new-instance v1, Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-direct {v1, p1}, Lcom/motorola/blur/setup/SetupProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    .line 161
    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 162
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    sget-object v2, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->PROGRESS_POINTS:[I

    invoke-virtual {v1, v2}, Lcom/motorola/blur/setup/SetupProgressDialog;->setProgressPoints([I)V

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 165
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mPhone:Ljava/lang/String;

    .line 167
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mIMSI:Ljava/lang/String;

    .line 168
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/motorola/blur/service/blur/BSUtils;->getSerialNum(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mSerialNumber:Ljava/lang/String;

    .line 173
    :goto_0
    sget-object v1, Lcom/motorola/blur/setup/ValidationParams;->IMEI_VALIDATOR:Lcom/motorola/blur/setup/ValidationParams;

    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mSerialNumber:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->validateOrMakeValid(Lcom/motorola/blur/setup/ValidationParams;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mSerialNumber:Ljava/lang/String;

    .line 174
    sget-object v1, Lcom/motorola/blur/setup/ValidationParams;->PHONE_VALIDATOR:Lcom/motorola/blur/setup/ValidationParams;

    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mPhone:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->validateOrMakeValid(Lcom/motorola/blur/setup/ValidationParams;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mPhone:Ljava/lang/String;

    .line 175
    sget-object v1, Lcom/motorola/blur/setup/ValidationParams;->IMSI_VALIDATOR:Lcom/motorola/blur/setup/ValidationParams;

    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mIMSI:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->validateOrMakeValid(Lcom/motorola/blur/setup/ValidationParams;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mIMSI:Ljava/lang/String;

    .line 177
    invoke-static {p1}, Lcom/motorola/blur/service/blur/devicesetup/client/DeviceSetupWSClientFactory;->getClient(Landroid/content/Context;)Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mWSClient:Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;

    .line 178
    return-void

    .line 170
    :cond_1
    const-string v1, "BAC"

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "YOU\'RE PROBABLY IN BIG TROUBLE BECAUSE YOU DON\'T HAVE A TELEPHONY MANAGER!"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private requestSettings()V
    .locals 4

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->unbindSyncService()V

    .line 233
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 234
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.motorola.blur.service.blur.Actions.BIND_SYNC_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mBound:Z

    .line 236
    return-void
.end method

.method private final setUpProgressDialog()V
    .locals 2

    .prologue
    .line 547
    iget-boolean v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mForgotPassword:Z

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    const v1, 0x7f08003d

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/SetupProgressDialog;->setProgressText(I)V

    .line 554
    :goto_0
    return-void

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    const v1, 0x7f080020

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/SetupProgressDialog;->setProgressText(I)V

    goto :goto_0
.end method

.method private setupYahooServices()V
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    const/16 v7, 0x28

    .line 493
    iget-object v4, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "yahoo"

    invoke-static {v4, v5}, Lcom/motorola/blur/provider/DeviceSetup;->getProviderId(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v2

    .line 494
    .local v2, "yahooMailProviderId":J
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 495
    .local v1, "values":Landroid/content/ContentValues;
    invoke-direct {p0, v2, v3}, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->getContactsServiceId(J)[J

    move-result-object v0

    .line 496
    .local v0, "contactsServiceId":[J
    const/4 v4, 0x0

    aget-wide v4, v0, v4

    cmp-long v4, v4, v8

    if-nez v4, :cond_0

    .line 497
    const-string v4, "providers_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 498
    const-string v4, "capability"

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 499
    const-string v4, "pretty_name"

    iget-object v5, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mContext:Landroid/content/Context;

    const v6, 0x7f080041

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string v4, "auth_type"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 501
    iget-object v4, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/motorola/blur/provider/DeviceSetup$Services;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 504
    :cond_0
    const/4 v4, 0x1

    aget-wide v4, v0, v4

    cmp-long v4, v4, v8

    if-nez v4, :cond_1

    .line 505
    const-string v4, "providers_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 506
    const-string v4, "capability"

    const/16 v5, 0xc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 507
    const-string v4, "pretty_name"

    iget-object v5, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mContext:Landroid/content/Context;

    const v6, 0x7f080042

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const-string v4, "auth_type"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 509
    iget-object v4, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/motorola/blur/provider/DeviceSetup$Services;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 511
    :cond_1
    return-void
.end method

.method private showRetryDialog()V
    .locals 3

    .prologue
    .line 566
    iget-boolean v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mIsUiNeeded:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 567
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mContext:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 569
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f080067

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 570
    const v1, 0x7f080068

    new-instance v2, Lcom/motorola/blur/setup/CreateBlurAccountCreator$5;

    invoke-direct {v2, p0}, Lcom/motorola/blur/setup/CreateBlurAccountCreator$5;-><init>(Lcom/motorola/blur/setup/CreateBlurAccountCreator;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 578
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 580
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method private unbindSyncService()V
    .locals 2

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mBound:Z

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mBound:Z

    .line 243
    :cond_0
    return-void
.end method

.method private static updatePassword(Landroid/content/ContentResolver;JLjava/lang/String;I)V
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "id"    # J
    .param p3, "oldPwd"    # Ljava/lang/String;
    .param p4, "policy"    # I

    .prologue
    const/4 v3, 0x0

    .line 451
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 452
    .local v1, "values":Landroid/content/ContentValues;
    invoke-static {p4, p3, v3}, Lcom/motorola/blur/util/SimpleEncryptUtil;->decryptBasedOnPolicy(ILjava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, "pwd":Ljava/lang/String;
    const-string v2, "password"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    sget-object v2, Lcom/motorola/blur/provider/DeviceSetup$ActiveServices;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 459
    return-void
.end method

.method private static validateOrMakeValid(Lcom/motorola/blur/setup/ValidationParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "val"    # Lcom/motorola/blur/setup/ValidationParams;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 181
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 182
    :cond_0
    iget-object p1, p0, Lcom/motorola/blur/setup/ValidationParams;->blankValue:Ljava/lang/String;

    .line 186
    :cond_1
    :goto_0
    return-object p1

    .line 183
    :cond_2
    invoke-virtual {p0, p1}, Lcom/motorola/blur/setup/ValidationParams;->validate(Ljava/lang/String;)Lcom/motorola/blur/setup/ValidationError;

    move-result-object v0

    sget-object v1, Lcom/motorola/blur/setup/ValidationError;->VALID_VALUE:Lcom/motorola/blur/setup/ValidationError;

    if-eq v0, v1, :cond_1

    .line 184
    iget-object p1, p0, Lcom/motorola/blur/setup/ValidationParams;->invalidValue:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public createOrLogin(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "extra"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    .line 204
    const-string v0, "username"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mEmail:Ljava/lang/String;

    .line 205
    const-string v0, "password"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mPassword:Ljava/lang/String;

    .line 207
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 208
    .local v8, "filter":Landroid/content/IntentFilter;
    const-string v0, "com.motorola.blur.service.blur.devicesetup.newaccount.resp"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    const-string v0, "com.motorola.blur.service.blur.devicesetup.newsession.resp"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 210
    const-string v0, "BAC"

    new-array v1, v9, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "createOrLogin - registerReceiver for NewAccountWS.Response.ACTION"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 211
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 212
    invoke-virtual {p0}, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->registerRestartReceiver()V

    .line 213
    iput-boolean v9, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mReceiverRegisterd:Z

    .line 214
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "clientsettings/blur"

    invoke-direct {p0, v0, v1, v2}, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->createSyncFilter(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    .line 217
    const-string v0, "data1"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mName:Ljava/lang/String;

    .line 218
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mWSClient:Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;

    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mEmail:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mPhone:Ljava/lang/String;

    iget-object v3, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mIMSI:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mSerialNumber:Ljava/lang/String;

    iget-object v5, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mPassword:Ljava/lang/String;

    iget-object v6, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;->newAcct(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 220
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mRequestInFlight:Ljava/lang/Boolean;

    .line 221
    iget-boolean v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mIsUiNeeded:Z

    if-ne v0, v9, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->setUpProgressDialog()V

    .line 223
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->show()V

    .line 225
    :cond_0
    return-void
.end method

.method dispatch(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x2

    .line 298
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 299
    .local v0, "msg":Landroid/os/Message;
    const-string v1, "com.motorola.blur.service.blur.Actions.SERVICES_STARTED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 300
    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 316
    :cond_0
    :goto_0
    const-string v1, "com.motorola.blur.service.ws.key.responsedata"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 317
    const-string v1, "com.motorola.blur.service.ws.key.responsedata"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 320
    :cond_1
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 321
    return-void

    .line 301
    :cond_2
    const-string v1, "com.motorola.blur.service.blur.devicesetup.newaccount.resp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 302
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 303
    :cond_3
    const-string v1, "com.motorola.blur.service.blur.devicesetup.newsession.resp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 304
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 305
    :cond_4
    const-string v1, "com.motorola.blur.service.blur.Actions.SYNC_HANDLER_COMPLETED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "clientsettings/blur"

    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 306
    const-string v1, "com.motorola.blur.service.blur.Extra.PARTIAL_DATA_ONLY"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 307
    iput v3, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 309
    :cond_5
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 311
    :cond_6
    const-string v1, "com.motorola.blur.service.blur.Actions.SYNC_HANDLER_FAILED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "clientsettings/blur"

    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 312
    iput v3, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 313
    :cond_7
    const-string v1, "com.motorola.blur.service.blur.Actions.SERVICES_DIED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0
.end method

.method protected finishIfAvailable()V
    .locals 4

    .prologue
    .line 636
    invoke-direct {p0}, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->dialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 638
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->dismiss()V

    .line 640
    :cond_0
    monitor-enter p0

    .line 641
    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mReceiverRegisterd:Z

    if-eqz v0, :cond_1

    .line 642
    const-string v0, "BAC"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "createOrLogin - unregisterReceiver for NewAccountWS.Response.ACTION"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 643
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 644
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mReceiverRegisterd:Z

    .line 646
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    invoke-direct {p0}, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->unbindSyncService()V

    .line 648
    return-void

    .line 646
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public finishProgressUI(ZLjava/lang/String;)V
    .locals 1
    .param p1, "success"    # Z
    .param p2, "googleUsername"    # Ljava/lang/String;

    .prologue
    .line 625
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mRequestInFlight:Ljava/lang/Boolean;

    .line 626
    invoke-virtual {p0}, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->finishIfAvailable()V

    .line 628
    iget-boolean v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mForgotPassword:Z

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mListener:Lcom/motorola/blur/setup/CreateBlurAccountListener;

    invoke-interface {v0, p1, p2}, Lcom/motorola/blur/setup/CreateBlurAccountListener;->onLoginFinished(ZLjava/lang/String;)V

    .line 633
    :goto_0
    return-void

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mListener:Lcom/motorola/blur/setup/CreateBlurAccountListener;

    invoke-interface {v0, p1}, Lcom/motorola/blur/setup/CreateBlurAccountListener;->onCreationFinished(Z)V

    goto :goto_0
.end method

.method protected finishSetup()V
    .locals 2

    .prologue
    .line 465
    new-instance v0, Lcom/motorola/blur/setup/CreateBlurAccountCreator$4;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/CreateBlurAccountCreator$4;-><init>(Lcom/motorola/blur/setup/CreateBlurAccountCreator;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 481
    return-void
.end method

.method nextProgressPoint()V
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mIsUiNeeded:Z

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->nextProgressPoint()V

    .line 327
    :cond_0
    return-void
.end method

.method public registerRestartReceiver()V
    .locals 3

    .prologue
    .line 197
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.motorola.blur.service.blur.Actions.SERVICES_STARTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, "restartFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 199
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mReceiverRegisterd:Z

    .line 200
    return-void
.end method

.method protected updatePasswords()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 433
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 434
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$ActiveServices;->BY_ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/motorola/blur/setup/CreateBlurAccountCreator$UpgradeProjection;->PROJECTION:[Ljava/lang/String;

    const-string v3, "password NOT LIKE \'{%\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 439
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 440
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 441
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->updatePassword(Landroid/content/ContentResolver;JLjava/lang/String;I)V

    goto :goto_0

    .line 446
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 448
    :cond_1
    return-void
.end method
