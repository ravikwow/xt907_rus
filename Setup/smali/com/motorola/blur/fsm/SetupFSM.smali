.class public Lcom/motorola/blur/fsm/SetupFSM;
.super Ljava/lang/Object;
.source "SetupFSM.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/fsm/SetupFSM$debugOutputStream;,
        Lcom/motorola/blur/fsm/SetupFSM$setTosAcceptedTask;
    }
.end annotation


# static fields
.field public static final ACTION_ACCOUNT_INTRO:Ljava/lang/String; = "com.google.android.accounts.AccountIntro"

.field public static final ADD_SINGLE_ACCOUNT_DONE:I = 0xb

.field public static final ADD_SINGLE_ACCOUNT_DONE_VISITED:J = 0x800L

.field public static final BACKGROUND_BLUR:I = 0x6

.field public static final BACKGROUND_BLUR_VISITED:J = 0x40L

.field public static final CHECK_UPDATE:I = 0x15

.field public static final CONGRATS:I = 0xa

.field public static final CONGRATS_VISTED:J = 0x400L

.field public static final DATASWITCH_DATA_SETTINGS:I = 0x10

.field public static final DEFERRED_SETUP:I = 0x7

.field public static final DEFERRED_SETUP_VISITED:J = 0x80L

.field public static final EXTERNAL_LAUNCH:Ljava/lang/String; = "com.motorola.blur.ACTION_LAUNCH_MOTO_SERVICE_AGREEMENT"

.field private static final EXTRA_ADD_ACCOUNT:Ljava/lang/String; = "addAccount"

.field public static final EXTRA_ALLOW_SKIP:Ljava/lang/String; = "allowSkip"

.field private static final EXTRA_AUTH_ACCOUNT:Ljava/lang/String; = "authAccount"

.field public static final EXTRA_CALL_FROM_MAIN:Ljava/lang/String; = "call_from_main"

.field private static final EXTRA_CONFIRM_CREDENTIALS:Ljava/lang/String; = "confirmCredentials"

.field public static final EXTRA_FIRST_RUN:Ljava/lang/String; = "firstRun"

.field public static final EXTRA_NEED_RESET_FSM:Ljava/lang/String; = "need_reset_fsm"

.field private static final EXTRA_OLDINST:Ljava/lang/String; = "com.motorola.blur.setup.old_inst"

.field public static final FROM_HOME:Ljava/lang/String; = "fromHome"

.field public static final GAMS_HELPER_ACCOUNT_TYPE:I = 0xe

.field private static final GLS_BACKUP_CLASS_NAME:Ljava/lang/String; = "com.google.android.gsf.login.SyncIntroActivity"

.field private static final GLS_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.gsf.login"

.field private static final GOOGLE_ACCOUNT_TYPE:Ljava/lang/String; = "com.google"

.field public static final GOOGLE_BACKUP:I = 0x13

.field public static final GOOGLE_LOGIN_REQUEST:I = 0xe

.field public static final GOOGLE_LOGIN_REQUEST_VISITED:J = 0x4000L

.field public static final HUX_EMAIL_WRAPPER:I = 0xd

.field public static final HUX_EMAIL_WRAPPER_VISITED:J = 0x2000L

.field public static final INITIAL_SETUP:Ljava/lang/String; = "initial_setup"

.field public static final LOCATION_CONSENT:I = 0x12

.field public static final LogStartActivity:I = 0x0

.field public static final LogStopActivity:I = 0x1

.field public static final MOT_SPLASH_SCREEN:I = 0x2

.field public static final MOT_SPLASH_SCREEN_VISITED:J = 0x4L

.field public static final MOT_TOS:I = 0x3

.field public static final MOT_TOS_VISITED:J = 0x8L

.field public static final MULTI_GOOGLE_BACKUP:I = 0x14

.field public static final RESTORE_MOTO_ID:I = 0x9

.field public static final RESTORE_MOTO_ID_VISTED:J = 0x200L

.field public static final RESULT_BACK_1:I = 0x9

.field public static final RESULT_BACK_2:I = 0xa

.field public static final RESULT_BACK_3:I = 0xb

.field public static final RESULT_BACK_4:I = 0xc

.field public static final RESULT_BACK_5:I = 0xd

.field public static final RESULT_BACK_KEY:I = 0x8

.field public static final RESULT_NEXT:I = 0x2

.field public static final RESULT_NEXT_1:I = 0x3

.field public static final RESULT_NEXT_2:I = 0x4

.field public static final RESULT_NEXT_3:I = 0x5

.field public static final RESULT_NEXT_4:I = 0x6

.field public static final RESULT_NEXT_5:I = 0x7

.field public static final SERVICE_CHOOSER:I = 0x8

.field public static final SERVICE_CHOOSER_VISITED:J = 0x100L

.field public static final SETUPACTION_MANAGE:Ljava/lang/String; = "com.motorola.blur.setup.ACTION_MANAGE"

.field public static final SILENT_SETUP_QA:I = 0x11

.field public static final SIM_ACTIVATION:I = 0xc

.field public static final SIM_ACTIVATION_VISITED:J = 0x1000L

.field public static final START_AAB_SYNC:I = 0xf

.field public static final START_AAB_SYNC_VISITED:J = 0x8000L

.field public static final START_BUA:I = 0x5

.field public static final START_BUA_INTRO:I = 0x4

.field public static final START_BUA_INTRO_VISITED:J = 0x10L

.field public static final START_BUA_VISITED:J = 0x20L

.field private static final TAG:Ljava/lang/String;

.field public static final WELCOME_SCREEN:I = 0x1

.field public static final WELCOME_SCREEN_VISITED:J = 0x2L

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mAddSingleAccount:Z

.field private mBackgroundSetupForQA:Z

.field private mChooserAllowed:Z

.field private mCongratsBackgroundResId:I

.field private transient mControllerActivity:Landroid/app/Activity;

.field private transient mControllerContext:Landroid/content/Context;

.field private mDeferredRegistrationRequired:Z

.field private mEmaraFlatRatePlan:Z

.field private mExtraIsInitialSetupFlow:Z

.field private transient mFSM:Lcom/motorola/blur/fsm/SetupFSMContext;

.field private mGoogleAccountCreated:Z

.field private mGoogleAccountPresent:Z

.field private volatile transient mHandlerCallback:Landroid/os/Handler;

.field private volatile transient mHandlerCode:I

.field private mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mReady2GoComplete:Z

.field private mReady2GoFlow:Z

.field private mRestoreMotoId:Z

.field private mShowGoogleSetup:Z

.field private mShowWelcomeLayout:Z

.field private mSilentRegistrationRequired:Z

.field private transient mSkipSetupExtra:Landroid/content/Intent;

.field private transient mStateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTabletFlow:Z

.field private mTosAccepted:Z

.field private mVerizonFlow:Z

.field private mVisitedBits:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/motorola/blur/setup/BlurAppSetup;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/motorola/blur/fsm/SetupFSM;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object v1, p0, Lcom/motorola/blur/fsm/SetupFSM;->mControllerContext:Landroid/content/Context;

    .line 141
    iput-object v1, p0, Lcom/motorola/blur/fsm/SetupFSM;->mControllerActivity:Landroid/app/Activity;

    .line 142
    iput-object v1, p0, Lcom/motorola/blur/fsm/SetupFSM;->mSkipSetupExtra:Landroid/content/Intent;

    .line 143
    iput-object v1, p0, Lcom/motorola/blur/fsm/SetupFSM;->mHandlerCallback:Landroid/os/Handler;

    .line 144
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mHandlerCode:I

    .line 145
    iput-object v1, p0, Lcom/motorola/blur/fsm/SetupFSM;->mStateMap:Ljava/util/HashMap;

    .line 146
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 147
    iput-boolean v2, p0, Lcom/motorola/blur/fsm/SetupFSM;->mSilentRegistrationRequired:Z

    .line 148
    iput-boolean v2, p0, Lcom/motorola/blur/fsm/SetupFSM;->mDeferredRegistrationRequired:Z

    .line 149
    iput-boolean v2, p0, Lcom/motorola/blur/fsm/SetupFSM;->mTabletFlow:Z

    .line 150
    iput-boolean v2, p0, Lcom/motorola/blur/fsm/SetupFSM;->mVerizonFlow:Z

    .line 151
    iput-boolean v2, p0, Lcom/motorola/blur/fsm/SetupFSM;->mEmaraFlatRatePlan:Z

    .line 152
    iput-boolean v2, p0, Lcom/motorola/blur/fsm/SetupFSM;->mReady2GoFlow:Z

    .line 153
    iput-boolean v2, p0, Lcom/motorola/blur/fsm/SetupFSM;->mTosAccepted:Z

    .line 154
    iput-boolean v2, p0, Lcom/motorola/blur/fsm/SetupFSM;->mRestoreMotoId:Z

    .line 155
    iput-boolean v2, p0, Lcom/motorola/blur/fsm/SetupFSM;->mAddSingleAccount:Z

    .line 156
    iput v2, p0, Lcom/motorola/blur/fsm/SetupFSM;->mCongratsBackgroundResId:I

    .line 157
    iput-boolean v3, p0, Lcom/motorola/blur/fsm/SetupFSM;->mChooserAllowed:Z

    .line 158
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mVisitedBits:J

    .line 159
    iput-boolean v3, p0, Lcom/motorola/blur/fsm/SetupFSM;->mShowWelcomeLayout:Z

    .line 160
    iput-boolean v3, p0, Lcom/motorola/blur/fsm/SetupFSM;->mShowGoogleSetup:Z

    .line 161
    iput-boolean v2, p0, Lcom/motorola/blur/fsm/SetupFSM;->mReady2GoComplete:Z

    .line 162
    iput-boolean v2, p0, Lcom/motorola/blur/fsm/SetupFSM;->mGoogleAccountCreated:Z

    .line 163
    iput-boolean v2, p0, Lcom/motorola/blur/fsm/SetupFSM;->mGoogleAccountPresent:Z

    .line 168
    iput-boolean v2, p0, Lcom/motorola/blur/fsm/SetupFSM;->mExtraIsInitialSetupFlow:Z

    .line 170
    iput-boolean v2, p0, Lcom/motorola/blur/fsm/SetupFSM;->mBackgroundSetupForQA:Z

    .line 177
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSMContext;

    invoke-direct {v0, p0}, Lcom/motorola/blur/fsm/SetupFSMContext;-><init>(Lcom/motorola/blur/fsm/SetupFSM;)V

    iput-object v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSMContext;

    .line 178
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSMContext;

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/motorola/blur/fsm/SetupFSM;->setLoggerHandler()V

    .line 182
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/motorola/blur/fsm/SetupFSM;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/fsm/SetupFSM;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mControllerActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/blur/fsm/SetupFSM;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/fsm/SetupFSM;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/blur/fsm/SetupFSM;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/fsm/SetupFSM;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mControllerContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/motorola/blur/fsm/SetupFSM;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/fsm/SetupFSM;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/motorola/blur/fsm/SetupFSM;->init(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/motorola/blur/fsm/SetupFSM;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addExtraIsInitialSetupFlow(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 615
    const-string v0, "is_initial_setup_flow"

    iget-boolean v1, p0, Lcom/motorola/blur/fsm/SetupFSM;->mExtraIsInitialSetupFlow:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 617
    return-void
.end method

.method public static dumpData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 13
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1166
    new-array v6, v11, [Ljava/lang/Object;

    const-string v7, "dumpData - begin for class "

    aput-object v7, v6, v9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {p0, v6}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1167
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 1169
    .local v2, "field":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    .line 1170
    .local v5, "modifiers":I
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1172
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, " = "

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {p0, v6}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1167
    .end local v5    # "modifiers":I
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1174
    :catch_0
    move-exception v1

    .line 1175
    .local v1, "e":Ljava/lang/Exception;
    new-array v6, v12, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const-string v7, " - failed to get field do to "

    aput-object v7, v6, v10

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {p0, v6}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 1178
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_1
    new-array v6, v11, [Ljava/lang/Object;

    const-string v7, "dumpData - end for class "

    aput-object v7, v6, v9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {p0, v6}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1179
    return-void
.end method

.method public static dumpTopActivity(Landroid/content/ContextWrapper;)V
    .locals 0
    .param p0, "wrapper"    # Landroid/content/ContextWrapper;

    .prologue
    .line 1194
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 194
    iget-object v6, p0, Lcom/motorola/blur/fsm/SetupFSM;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 263
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 200
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/motorola/blur/setup/SilentBlurUtility;->getSetupTypeFromBuild(Landroid/content/Context;)I

    .line 201
    invoke-static {p1}, Lcom/motorola/blur/setup/SilentBlurUtility;->isSilentRegistrationRequired(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/motorola/blur/fsm/SetupFSM;->mSilentRegistrationRequired:Z

    .line 202
    invoke-static {p1}, Lcom/motorola/blur/setup/SilentBlurUtility;->isBlurSetupDeferred(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/motorola/blur/fsm/SetupFSM;->mDeferredRegistrationRequired:Z

    .line 203
    sget-object v6, Lcom/motorola/blur/fsm/SetupFSM;->TAG:Ljava/lang/String;

    new-array v7, v11, [Ljava/lang/Object;

    const-string v8, "mSilentRegistrationRequired: "

    aput-object v8, v7, v9

    iget-boolean v8, p0, Lcom/motorola/blur/fsm/SetupFSM;->mSilentRegistrationRequired:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 204
    sget-object v6, Lcom/motorola/blur/fsm/SetupFSM;->TAG:Ljava/lang/String;

    new-array v7, v11, [Ljava/lang/Object;

    const-string v8, "mDeferredRegistrationRequired: "

    aput-object v8, v7, v9

    iget-boolean v8, p0, Lcom/motorola/blur/fsm/SetupFSM;->mDeferredRegistrationRequired:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 206
    invoke-static {p1}, Lcom/motorola/blur/setup/SetupUtility;->isVerizonFlow(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/motorola/blur/fsm/SetupFSM;->mVerizonFlow:Z

    .line 207
    invoke-static {}, Lcom/motorola/blur/setup/SetupUtility;->isTabletFlow()Z

    move-result v6

    iput-boolean v6, p0, Lcom/motorola/blur/fsm/SetupFSM;->mTabletFlow:Z

    .line 208
    invoke-static {p1}, Lcom/motorola/blur/setup/SetupUtility;->isEmaraFlow(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/motorola/blur/fsm/SetupFSM;->mEmaraFlatRatePlan:Z

    .line 209
    invoke-static {p1}, Lcom/motorola/blur/setup/SetupUtility;->isShowGoogleSetup(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/motorola/blur/fsm/SetupFSM;->mShowGoogleSetup:Z

    .line 221
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v6}, Lcom/motorola/blur/fsm/SetupFSM;->setTosAccepted(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_1
    iget-boolean v6, p0, Lcom/motorola/blur/fsm/SetupFSM;->mDeferredRegistrationRequired:Z

    if-nez v6, :cond_1

    .line 228
    const-string v6, "DeviceSetup"

    invoke-virtual {p1, v6, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 229
    .local v5, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 230
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "BlurServiceSlientRegistrationSystemUpdateRequest"

    invoke-interface {v3, v6, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 231
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 234
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "settings":Landroid/content/SharedPreferences;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "defaultProfile":Ljava/lang/String;
    invoke-static {v1, v9, p1}, Lcom/motorola/blur/setup/SetupUtility;->setPrivacyProfile(Ljava/lang/String;ZLandroid/content/Context;)V

    .line 240
    invoke-virtual {p0}, Lcom/motorola/blur/fsm/SetupFSM;->isTabletFlow()Z

    move-result v6

    if-nez v6, :cond_2

    .line 241
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 248
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const-string v6, "com.android.setupwizard"

    const-string v7, "com.android.setupwizard.SetupWizardActivity"

    invoke-static {v4, v6, v7, v10}, Lcom/motorola/blur/setup/SetupUtility;->disableComponent(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 261
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    iget-object v6, p0, Lcom/motorola/blur/fsm/SetupFSM;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v9, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 262
    invoke-direct {p0}, Lcom/motorola/blur/fsm/SetupFSM;->notifyInitHandler()V

    goto/16 :goto_0

    .line 222
    .end local v1    # "defaultProfile":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 223
    .local v2, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/motorola/blur/fsm/SetupFSM;->TAG:Ljava/lang/String;

    new-array v7, v11, [Ljava/lang/Object;

    const-string v8, "exception: "

    aput-object v8, v7, v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method private initStateMap()V
    .locals 5

    .prologue
    .line 271
    iget-object v2, p0, Lcom/motorola/blur/fsm/SetupFSM;->mStateMap:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 272
    const/4 v0, 0x0

    .line 275
    .local v0, "pos":I
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/motorola/blur/fsm/SetupFSM;->mStateMap:Ljava/util/HashMap;

    .line 278
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/motorola/blur/fsm/SetupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSMContext;

    invoke-virtual {v2, v0}, Lcom/motorola/blur/fsm/SetupFSMContext;->valueOf(I)Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    move-result-object v1

    .line 279
    .local v1, "state":Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;
    iget-object v2, p0, Lcom/motorola/blur/fsm/SetupFSM;->mStateMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lstatemap/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    .end local v1    # "state":Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;
    :catch_0
    move-exception v2

    .line 286
    .end local v0    # "pos":I
    :cond_0
    return-void
.end method

.method private notifyInitHandler()V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mHandlerCallback:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mHandlerCallback:Landroid/os/Handler;

    iget v1, p0, Lcom/motorola/blur/fsm/SetupFSM;->mHandlerCode:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 315
    :cond_0
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 7
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1088
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1090
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 1093
    .local v1, "stackSize":I
    new-instance v3, Lcom/motorola/blur/fsm/SetupFSMContext;

    invoke-direct {v3, p0}, Lcom/motorola/blur/fsm/SetupFSMContext;-><init>(Lcom/motorola/blur/fsm/SetupFSM;)V

    iput-object v3, p0, Lcom/motorola/blur/fsm/SetupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSMContext;

    .line 1096
    const/4 v0, 0x0

    .local v0, "pos":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1097
    iget-object v3, p0, Lcom/motorola/blur/fsm/SetupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSMContext;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/motorola/blur/fsm/SetupFSMContext;->valueOf(I)Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    move-result-object v2

    .line 1101
    .local v2, "state":Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;
    iget-object v3, p0, Lcom/motorola/blur/fsm/SetupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSMContext;

    invoke-virtual {v3, v2}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 1102
    iget-object v3, p0, Lcom/motorola/blur/fsm/SetupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSMContext;

    invoke-virtual {v3, v2}, Lstatemap/FSMContext;->pushState(Lstatemap/State;)V

    .line 1096
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1106
    .end local v2    # "state":Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;
    :cond_0
    iget-object v3, p0, Lcom/motorola/blur/fsm/SetupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSMContext;

    iget-object v4, p0, Lcom/motorola/blur/fsm/SetupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSMContext;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/motorola/blur/fsm/SetupFSMContext;->valueOf(I)Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 1109
    iget-object v3, p0, Lcom/motorola/blur/fsm/SetupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSMContext;

    invoke-virtual {v3, p0}, Lcom/motorola/blur/fsm/SetupFSMContext;->setOwner(Lcom/motorola/blur/fsm/SetupFSM;)V

    .line 1111
    invoke-virtual {p0}, Lcom/motorola/blur/fsm/SetupFSM;->setLoggerHandler()V

    .line 1113
    sget-object v3, Lcom/motorola/blur/fsm/SetupFSM;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Serializable - SetupFSM.readObject: fsmContext.State = "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/motorola/blur/fsm/SetupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSMContext;

    invoke-virtual {v6}, Lcom/motorola/blur/fsm/SetupFSMContext;->getState()Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    move-result-object v6

    invoke-virtual {v6}, Lstatemap/State;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1115
    return-void
.end method

.method private setControllerActivity(Landroid/app/Activity;Z)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "initFSM"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 672
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mControllerActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mControllerActivity:Landroid/app/Activity;

    check-cast v0, Lcom/motorola/blur/fsm/SetupActivityInterfaceFSM;

    invoke-interface {v0, v3}, Lcom/motorola/blur/fsm/SetupActivityInterfaceFSM;->setIsController(Z)V

    .line 677
    :cond_0
    iput-object p1, p0, Lcom/motorola/blur/fsm/SetupFSM;->mControllerActivity:Landroid/app/Activity;

    .line 678
    if-eqz p1, :cond_2

    move-object v0, p1

    .line 679
    check-cast v0, Lcom/motorola/blur/fsm/SetupActivityInterfaceFSM;

    invoke-interface {v0, v4}, Lcom/motorola/blur/fsm/SetupActivityInterfaceFSM;->setIsController(Z)V

    .line 680
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 681
    sget-object v0, Lcom/motorola/blur/fsm/SetupFSM;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "setControllerActivity - "

    aput-object v2, v1, v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 682
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mControllerContext:Landroid/content/Context;

    .line 685
    :cond_1
    if-eqz p2, :cond_2

    .line 687
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSM$1;

    invoke-direct {v0, p0}, Lcom/motorola/blur/fsm/SetupFSM$1;-><init>(Lcom/motorola/blur/fsm/SetupFSM;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 704
    :cond_2
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 9
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1042
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1044
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1047
    .local v3, "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;>;"
    iget-object v5, p0, Lcom/motorola/blur/fsm/SetupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSMContext;

    invoke-virtual {v5}, Lcom/motorola/blur/fsm/SetupFSMContext;->getState()Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    move-result-object v0

    .line 1050
    .local v0, "curState":Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;
    invoke-direct {p0}, Lcom/motorola/blur/fsm/SetupFSM;->initStateMap()V

    .line 1055
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/motorola/blur/fsm/SetupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSMContext;

    invoke-virtual {v5}, Lstatemap/FSMContext;->popState()V

    .line 1056
    iget-object v5, p0, Lcom/motorola/blur/fsm/SetupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSMContext;

    invoke-virtual {v5}, Lcom/motorola/blur/fsm/SetupFSMContext;->getState()Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1058
    :catch_0
    move-exception v5

    .line 1061
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1064
    .local v4, "stackSize":I
    add-int/lit8 v2, v4, -0x1

    .local v2, "pos":I
    :goto_1
    if-ltz v2, :cond_0

    .line 1065
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    .line 1068
    .local v1, "elem":Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;
    iget-object v5, p0, Lcom/motorola/blur/fsm/SetupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSMContext;

    invoke-virtual {v5, v1}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 1069
    iget-object v5, p0, Lcom/motorola/blur/fsm/SetupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSMContext;

    invoke-virtual {v5, v1}, Lstatemap/FSMContext;->pushState(Lstatemap/State;)V

    .line 1064
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1072
    .end local v1    # "elem":Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;
    :cond_0
    iget-object v5, p0, Lcom/motorola/blur/fsm/SetupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSMContext;

    invoke-virtual {v5, v0}, Lstatemap/FSMContext;->setState(Lstatemap/State;)V

    .line 1075
    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1076
    add-int/lit8 v2, v4, -0x1

    :goto_2
    if-ltz v2, :cond_1

    .line 1077
    iget-object v6, p0, Lcom/motorola/blur/fsm/SetupFSM;->mStateMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    invoke-virtual {v5}, Lstatemap/State;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1076
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1081
    :cond_1
    iget-object v5, p0, Lcom/motorola/blur/fsm/SetupFSM;->mStateMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lstatemap/State;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1083
    sget-object v5, Lcom/motorola/blur/fsm/SetupFSM;->TAG:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "Serializable - SetupFSM.writeObject: fsmContext.State = "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/motorola/blur/fsm/SetupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSMContext;

    invoke-virtual {v8}, Lcom/motorola/blur/fsm/SetupFSMContext;->getState()Lcom/motorola/blur/fsm/SetupFSMContext$SetupFSMState;

    move-result-object v8

    invoke-virtual {v8}, Lstatemap/State;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1085
    return-void
.end method


# virtual methods
.method public activityFinish(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 409
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 410
    return-void
.end method

.method public canGoBack(Landroid/app/Activity;)Z
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 338
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 339
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 340
    const-string v3, "call_from_main"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-ne v3, v1, :cond_0

    .line 344
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public canRestoreMotoId()Z
    .locals 1

    .prologue
    .line 913
    iget-boolean v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mRestoreMotoId:Z

    return v0
.end method

.method public checkDeferredRegistrationRequired(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 600
    invoke-virtual {p0}, Lcom/motorola/blur/fsm/SetupFSM;->isDeferredRegistrationRequired()Z

    move-result v2

    if-nez v2, :cond_0

    .line 602
    const-string v2, "DeviceSetup"

    invoke-virtual {p1, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 603
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 604
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "BlurServiceSlientRegistrationSystemUpdateRequest"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 605
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 607
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "settings":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public checkStartRootActivity(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "in"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 992
    if-eqz p2, :cond_1

    move-object v1, p2

    .line 993
    .local v1, "intent":Landroid/content/Intent;
    :goto_0
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 994
    .local v0, "action":Ljava/lang/String;
    const-string v5, "need_reset_fsm"

    invoke-virtual {v1, v5, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 995
    .local v2, "needReset":Z
    const/4 v4, 0x0

    .line 998
    .local v4, "reset":Z
    sget-object v5, Lcom/motorola/blur/fsm/SetupFSM;->TAG:Ljava/lang/String;

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "checkStartRootActivity: Activity="

    aput-object v7, v6, v9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    const/4 v7, 0x2

    const-string v8, "; Action="

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object v0, v6, v7

    const/4 v7, 0x4

    const-string v8, "; needReset="

    aput-object v8, v6, v7

    const/4 v7, 0x5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/motorola/blur/util/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1002
    if-nez v0, :cond_2

    .line 1036
    :cond_0
    :goto_1
    return-void

    .line 992
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "needReset":Z
    .end local v4    # "reset":Z
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    .line 1006
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "needReset":Z
    .restart local v4    # "reset":Z
    :cond_2
    if-eqz v2, :cond_4

    .line 1007
    const/4 v4, 0x1

    .line 1018
    :cond_3
    :goto_2
    if-eqz v4, :cond_0

    .line 1020
    const-string v5, "com.motorola.blur.setup.old_inst"

    invoke-virtual {v1, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1022
    .local v3, "oldInst":I
    if-nez v3, :cond_0

    .line 1025
    :try_start_0
    const-string v5, "com.motorola.blur.setup.old_inst"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1030
    :goto_3
    iget-object v5, p0, Lcom/motorola/blur/fsm/SetupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSMContext;

    invoke-virtual {v5}, Lstatemap/FSMContext;->popState()V
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1032
    :catch_0
    move-exception v5

    goto :goto_1

    .line 1010
    .end local v3    # "oldInst":I
    :cond_4
    instance-of v5, p1, Lcom/motorola/blur/privacy/TosActivity;

    if-eqz v5, :cond_3

    .line 1011
    const-string v5, "com.motorola.blur.ACTION_LAUNCH_MOTO_SERVICE_AGREEMENT"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1012
    const/4 v4, 0x1

    goto :goto_2
.end method

.method public clearVisited(J)V
    .locals 4
    .param p1, "bit"    # J

    .prologue
    .line 975
    iget-wide v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mVisitedBits:J

    const-wide/16 v2, -0x1

    xor-long/2addr v2, p1

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mVisitedBits:J

    .line 976
    return-void
.end method

.method public createBackgroundBlurAccount(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 589
    sget-object v1, Lcom/motorola/blur/fsm/SetupFSM;->TAG:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "Launching CBBAA"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 590
    const-string v1, "DeviceSetup"

    invoke-virtual {p1, v1, v5}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 591
    .local v0, "settings":Landroid/content/SharedPreferences;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "call_from_main"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "motoIdRestore"

    const-string v3, "motoIdRestore"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 596
    return-void
.end method

.method public disableBackgroundBlur(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 611
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/motorola/blur/setup/SetupUtility;->disableBackgroundBlur(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    .line 612
    return-void
.end method

.method public finish(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 394
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 395
    invoke-virtual {p0, p1}, Lcom/motorola/blur/fsm/SetupFSM;->onFinish(Landroid/app/Activity;)V

    .line 396
    return-void
.end method

.method public finishWithResult(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "resultCode"    # I

    .prologue
    .line 399
    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 400
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 401
    invoke-virtual {p0, p1}, Lcom/motorola/blur/fsm/SetupFSM;->onFinish(Landroid/app/Activity;)V

    .line 402
    return-void
.end method

.method public getBackgroundResId()I
    .locals 1

    .prologue
    .line 805
    iget v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mCongratsBackgroundResId:I

    return v0
.end method

.method public getBackgroundSetupForQA()Z
    .locals 1

    .prologue
    .line 953
    iget-boolean v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mBackgroundSetupForQA:Z

    return v0
.end method

.method public getControllerActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 627
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mControllerActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 628
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ControllerActivity is currently null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mControllerActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getSkipSetupExtra()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 945
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mSkipSetupExtra:Landroid/content/Intent;

    return-object v0
.end method

.method public hasVisited(J)Z
    .locals 6
    .param p1, "bit"    # J

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 982
    sget-object v2, Lcom/motorola/blur/fsm/SetupFSM;->TAG:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "hasVisited:bits="

    aput-object v4, v3, v1

    iget-wide v4, p0, Lcom/motorola/blur/fsm/SetupFSM;->mVisitedBits:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x2

    const-string v5, "; bit="

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 984
    iget-wide v2, p0, Lcom/motorola/blur/fsm/SetupFSM;->mVisitedBits:J

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isAddSingleAccount()Z
    .locals 1

    .prologue
    .line 917
    iget-boolean v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mAddSingleAccount:Z

    return v0
.end method

.method public isChooserAllowed()Z
    .locals 1

    .prologue
    .line 791
    iget-boolean v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mChooserAllowed:Z

    return v0
.end method

.method public isDeferredRegistrationRequired()Z
    .locals 4

    .prologue
    .line 722
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 723
    sget-object v0, Lcom/motorola/blur/fsm/SetupFSM;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "isDeferredRegistrationRequired() - not initialized!!!"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 726
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mDeferredRegistrationRequired:Z

    return v0
.end method

.method public isEmaraFlatRatePlan()Z
    .locals 4

    .prologue
    .line 733
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 734
    sget-object v0, Lcom/motorola/blur/fsm/SetupFSM;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "isEmaraFlatRatePlan() - not initialized!!!"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 737
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mEmaraFlatRatePlan:Z

    return v0
.end method

.method public isExtraIsInitialSetupFlow()Z
    .locals 1

    .prologue
    .line 925
    iget-boolean v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mExtraIsInitialSetupFlow:Z

    return v0
.end method

.method public isGoogleAccountCreated()Z
    .locals 4

    .prologue
    .line 851
    sget-object v0, Lcom/motorola/blur/fsm/SetupFSM;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "R2GDebug: Google account created: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/motorola/blur/fsm/SetupFSM;->mGoogleAccountCreated:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 853
    iget-boolean v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mGoogleAccountCreated:Z

    return v0
.end method

.method public isLearnMoreLinkShown(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 905
    iget-boolean v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mEmaraFlatRatePlan:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReady2GoComplete(Landroid/app/Activity;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 776
    invoke-static {p1}, Lcom/motorola/blur/setup/SetupUtility;->isReady2GoComplete(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isReady2GoFlow()Z
    .locals 1

    .prologue
    .line 765
    iget-boolean v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mReady2GoFlow:Z

    return v0
.end method

.method public isShowGoogleSetup()Z
    .locals 4

    .prologue
    .line 896
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 897
    sget-object v0, Lcom/motorola/blur/fsm/SetupFSM;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "isShowGoogleSetup() - not initialized!!!"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 900
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mShowGoogleSetup:Z

    return v0
.end method

.method public isShowSplashScreen()Z
    .locals 3

    .prologue
    .line 891
    invoke-virtual {p0}, Lcom/motorola/blur/fsm/SetupFSM;->getControllerActivity()Landroid/app/Activity;

    move-result-object v0

    .line 892
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f090000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    return v1
.end method

.method public isShowWelcomeLayout()Z
    .locals 1

    .prologue
    .line 837
    iget-boolean v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mShowWelcomeLayout:Z

    return v0
.end method

.method public isSilentRegistrationRequired()Z
    .locals 4

    .prologue
    .line 711
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 712
    sget-object v0, Lcom/motorola/blur/fsm/SetupFSM;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "isSilentRegistrationRequired() - not initialized!!!"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 715
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mSilentRegistrationRequired:Z

    return v0
.end method

.method public isSystemUpdateCase(Landroid/app/Activity;)Z
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x0

    .line 635
    const-string v2, "DeviceSetup"

    invoke-virtual {p1, v2, v5}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 637
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v2, "BlurServiceSlientRegistrationSystemUpdateRequest"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 639
    .local v1, "sysUpdate":Z
    sget-object v2, Lcom/motorola/blur/fsm/SetupFSM;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "R2GDebug: Is system update: "

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 640
    return v1
.end method

.method public isTabletFlow()Z
    .locals 1

    .prologue
    .line 757
    iget-boolean v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mTabletFlow:Z

    return v0
.end method

.method public isTosAccepted(Landroid/app/Activity;)Z
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x0

    .line 876
    const-class v1, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v4}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 878
    .local v0, "sharedPref":Landroid/content/SharedPreferences;
    sget-object v1, Lcom/motorola/blur/fsm/SetupFSM;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTosAccepted...tos.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "TOS_ACCEPTED"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    const-string v1, "TOS_ACCEPTED"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isTosShownDuringSetup()Z
    .locals 7

    .prologue
    const v6, 0x7f090005

    .line 884
    invoke-virtual {p0}, Lcom/motorola/blur/fsm/SetupFSM;->getControllerActivity()Landroid/app/Activity;

    move-result-object v0

    .line 885
    .local v0, "activity":Landroid/app/Activity;
    sget-object v1, Lcom/motorola/blur/fsm/SetupFSM;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isTosShownDuringSetup() !!:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 887
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    return v1
.end method

.method public isVerizonFlow()Z
    .locals 4

    .prologue
    .line 745
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 746
    sget-object v0, Lcom/motorola/blur/fsm/SetupFSM;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "isVerizonFlow() - not initialized!!!"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 749
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mVerizonFlow:Z

    return v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1123
    sget-object v0, Lcom/motorola/blur/fsm/SetupFSM;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/motorola/blur/util/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1125
    return-void
.end method

.method public logOnStartStop(ILandroid/app/Activity;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1130
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-nez p1, :cond_0

    .line 1131
    const-string v1, "OnStartActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    :goto_0
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/blur/fsm/SetupFSM;->log(Ljava/lang/String;)V

    .line 1139
    return-void

    .line 1132
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1133
    const-string v1, "OnStopActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1135
    :cond_1
    const-string v1, "Unknown Start/Stop Activity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public numGoogleAccountPresent(Landroid/app/Activity;)I
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 780
    invoke-static {p1}, Lcom/motorola/blur/setup/SetupUtility;->numGoogleAccountPresent(Landroid/content/Context;)I

    move-result v0

    .line 781
    .local v0, "numAccounts":I
    sget-object v1, Lcom/motorola/blur/fsm/SetupFSM;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "R2GDebug: Number of Google Accounts: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 783
    return v0
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 380
    sget-object v0, Lcom/motorola/blur/fsm/SetupFSM;->TAG:Ljava/lang/String;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onActivityResult: class="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "; requestCode="

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "; resultCode="

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 382
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSMContext;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/motorola/blur/fsm/SetupFSMContext;->OnActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 383
    return-void
.end method

.method public onBack(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 334
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSMContext;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/fsm/SetupFSMContext;->OnBack(Landroid/app/Activity;)V

    .line 335
    return-void
.end method

.method public onClick(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 388
    return-void
.end method

.method public onCreate(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 350
    sget-object v0, Lcom/motorola/blur/fsm/SetupFSM;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onCreate: class="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/motorola/blur/util/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 352
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 374
    sget-object v0, Lcom/motorola/blur/fsm/SetupFSM;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onDestroy: class="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/motorola/blur/util/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 376
    return-void
.end method

.method protected onFinish(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 367
    sget-object v0, Lcom/motorola/blur/fsm/SetupFSM;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onFnish: class="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/motorola/blur/util/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 369
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSMContext;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/fsm/SetupFSMContext;->OnFinish(Landroid/app/Activity;)V

    .line 370
    return-void
.end method

.method public onNext(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 326
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSMContext;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/fsm/SetupFSMContext;->OnNext(Landroid/app/Activity;)V

    .line 327
    return-void
.end method

.method public onNext(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "resultCode"    # I

    .prologue
    .line 330
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSMContext;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/blur/fsm/SetupFSMContext;->OnNext(Landroid/app/Activity;I)V

    .line 331
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 356
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/motorola/blur/fsm/SetupFSM;->logOnStartStop(ILandroid/app/Activity;)V

    .line 357
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSMContext;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/fsm/SetupFSMContext;->OnStartActivity(Landroid/app/Activity;)V

    .line 358
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 362
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/motorola/blur/fsm/SetupFSM;->logOnStartStop(ILandroid/app/Activity;)V

    .line 363
    return-void
.end method

.method public registerInitHandler(Landroid/os/Handler;I)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "code"    # I

    .prologue
    .line 292
    iput-object p1, p0, Lcom/motorola/blur/fsm/SetupFSM;->mHandlerCallback:Landroid/os/Handler;

    .line 293
    iput p2, p0, Lcom/motorola/blur/fsm/SetupFSM;->mHandlerCode:I

    .line 296
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-direct {p0}, Lcom/motorola/blur/fsm/SetupFSM;->notifyInitHandler()V

    .line 299
    :cond_0
    return-void
.end method

.method public setAddSingleAccount(Z)V
    .locals 0
    .param p1, "AddSingleAccount"    # Z

    .prologue
    .line 921
    iput-boolean p1, p0, Lcom/motorola/blur/fsm/SetupFSM;->mAddSingleAccount:Z

    .line 922
    return-void
.end method

.method public setBackgroundResId(I)V
    .locals 0
    .param p1, "congratsBackgroundResId"    # I

    .prologue
    .line 812
    iput p1, p0, Lcom/motorola/blur/fsm/SetupFSM;->mCongratsBackgroundResId:I

    .line 813
    return-void
.end method

.method public setBackgroundSetupForQA(Z)V
    .locals 0
    .param p1, "backgroundSetup"    # Z

    .prologue
    .line 961
    iput-boolean p1, p0, Lcom/motorola/blur/fsm/SetupFSM;->mBackgroundSetupForQA:Z

    .line 962
    return-void
.end method

.method public setChooserAllowed(Z)V
    .locals 0
    .param p1, "chooserAllowed"    # Z

    .prologue
    .line 798
    iput-boolean p1, p0, Lcom/motorola/blur/fsm/SetupFSM;->mChooserAllowed:Z

    .line 799
    return-void
.end method

.method public setControllerActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 661
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/motorola/blur/fsm/SetupFSM;->setControllerActivity(Landroid/app/Activity;Z)V

    .line 662
    return-void
.end method

.method public setControllerWithoutInitFSM(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 651
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/motorola/blur/fsm/SetupFSM;->setControllerActivity(Landroid/app/Activity;Z)V

    .line 652
    return-void
.end method

.method public setEmaraFlatRatePlan(Z)V
    .locals 0
    .param p1, "emaraFlatRatePlan"    # Z

    .prologue
    .line 741
    iput-boolean p1, p0, Lcom/motorola/blur/fsm/SetupFSM;->mEmaraFlatRatePlan:Z

    .line 742
    return-void
.end method

.method public setExtraIsInitialSetupFlow(Z)V
    .locals 0
    .param p1, "extraIsInitialSetupFlow"    # Z

    .prologue
    .line 929
    iput-boolean p1, p0, Lcom/motorola/blur/fsm/SetupFSM;->mExtraIsInitialSetupFlow:Z

    .line 930
    return-void
.end method

.method public setGoogleAccountCreated(Z)V
    .locals 0
    .param p1, "accountCreated"    # Z

    .prologue
    .line 860
    iput-boolean p1, p0, Lcom/motorola/blur/fsm/SetupFSM;->mGoogleAccountCreated:Z

    .line 861
    return-void
.end method

.method public setLoggerHandler()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 187
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSMContext;

    invoke-virtual {v0, v4}, Lstatemap/FSMContext;->setDebugFlag(Z)V

    .line 188
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSMContext;

    new-instance v1, Ljava/io/PrintStream;

    new-instance v2, Lcom/motorola/blur/fsm/SetupFSM$debugOutputStream;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/motorola/blur/fsm/SetupFSM$debugOutputStream;-><init>(Lcom/motorola/blur/fsm/SetupFSM;Lcom/motorola/blur/fsm/SetupFSM$1;)V

    invoke-direct {v1, v2, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;Z)V

    invoke-virtual {v0, v1}, Lstatemap/FSMContext;->setDebugStream(Ljava/io/PrintStream;)V

    .line 189
    return-void
.end method

.method public setReady2GoFlow(Z)V
    .locals 0
    .param p1, "ready2GoFlow"    # Z

    .prologue
    .line 769
    iput-boolean p1, p0, Lcom/motorola/blur/fsm/SetupFSM;->mReady2GoFlow:Z

    .line 770
    return-void
.end method

.method public setRestorMotoId(Z)V
    .locals 0
    .param p1, "restore"    # Z

    .prologue
    .line 909
    iput-boolean p1, p0, Lcom/motorola/blur/fsm/SetupFSM;->mRestoreMotoId:Z

    .line 910
    return-void
.end method

.method public setResult(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "resultCode"    # I

    .prologue
    .line 413
    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 414
    return-void
.end method

.method public setShowWelcomeLayout(Z)V
    .locals 0
    .param p1, "showWelcomeLayout"    # Z

    .prologue
    .line 844
    iput-boolean p1, p0, Lcom/motorola/blur/fsm/SetupFSM;->mShowWelcomeLayout:Z

    .line 845
    return-void
.end method

.method public setSkipSetupExtra(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 936
    iput-object p1, p0, Lcom/motorola/blur/fsm/SetupFSM;->mSkipSetupExtra:Landroid/content/Intent;

    .line 937
    return-void
.end method

.method public setTabletFlow(Z)V
    .locals 0
    .param p1, "tabletFlow"    # Z

    .prologue
    .line 761
    iput-boolean p1, p0, Lcom/motorola/blur/fsm/SetupFSM;->mTabletFlow:Z

    .line 762
    return-void
.end method

.method public setTosAccepted(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tosAccepted"    # Z

    .prologue
    .line 867
    iput-boolean p2, p0, Lcom/motorola/blur/fsm/SetupFSM;->mTosAccepted:Z

    .line 868
    new-instance v0, Lcom/motorola/blur/fsm/SetupFSM$setTosAcceptedTask;

    invoke-direct {v0, p0, p1}, Lcom/motorola/blur/fsm/SetupFSM$setTosAcceptedTask;-><init>(Lcom/motorola/blur/fsm/SetupFSM;Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/motorola/blur/fsm/SetupFSM;->mTosAccepted:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 869
    return-void
.end method

.method public setVerizonFlow(Z)V
    .locals 0
    .param p1, "verizonFlow"    # Z

    .prologue
    .line 753
    iput-boolean p1, p0, Lcom/motorola/blur/fsm/SetupFSM;->mVerizonFlow:Z

    .line 754
    return-void
.end method

.method public setVisited(J)V
    .locals 2
    .param p1, "bit"    # J

    .prologue
    .line 968
    iget-wide v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mVisitedBits:J

    or-long/2addr v0, p1

    iput-wide v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mVisitedBits:J

    .line 969
    return-void
.end method

.method public showBUA(Landroid/app/Activity;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 458
    sget-object v2, Lcom/motorola/blur/fsm/SetupFSM;->TAG:Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "Launching BUA"

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 459
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 460
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v0, Landroid/content/Intent;

    const v2, 0x7f080002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 461
    .local v0, "i":Landroid/content/Intent;
    const v2, 0x7f080003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 462
    const/high16 v2, 0x20000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 464
    const-wide/16 v2, 0x20

    invoke-virtual {p0, v2, v3}, Lcom/motorola/blur/fsm/SetupFSM;->hasVisited(J)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1, v0}, Lcom/motorola/blur/setup/SetupUtility;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 465
    invoke-virtual {p1, v0, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 472
    :goto_0
    return-void

    .line 468
    :cond_0
    sget-object v2, Lcom/motorola/blur/fsm/SetupFSM;->TAG:Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "BUA app skipped"

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 469
    iget-object v2, p0, Lcom/motorola/blur/fsm/SetupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSMContext;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v7, v3, v4}, Lcom/motorola/blur/fsm/SetupFSMContext;->OnActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public showBUAIntro(Landroid/app/Activity;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 443
    sget-object v1, Lcom/motorola/blur/fsm/SetupFSM;->TAG:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "Launching BUA Intro"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 444
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 445
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 447
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Lcom/motorola/blur/fsm/SetupFSM;->hasVisited(J)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1, v0}, Lcom/motorola/blur/setup/SetupUtility;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 448
    invoke-virtual {p1, v0, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 455
    :goto_0
    return-void

    .line 451
    :cond_0
    sget-object v1, Lcom/motorola/blur/fsm/SetupFSM;->TAG:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "BUA Intro skipped"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 452
    iget-object v1, p0, Lcom/motorola/blur/fsm/SetupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSMContext;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v6, v2, v3}, Lcom/motorola/blur/fsm/SetupFSMContext;->OnActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public showCheckUpdate(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 485
    sget-object v1, Lcom/motorola/blur/fsm/SetupFSM;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Launching Check Update"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 486
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 487
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.deviceinfo.CheckUpdate"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    invoke-direct {p0, v0}, Lcom/motorola/blur/fsm/SetupFSM;->addExtraIsInitialSetupFlow(Landroid/content/Intent;)V

    .line 489
    const/16 v1, 0x15

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 490
    return-void
.end method

.method public showCongrats(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 493
    sget-object v2, Lcom/motorola/blur/fsm/SetupFSM;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Launching Congrats"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 494
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 495
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/motorola/blur/fsm/SetupFSM;->getBackgroundResId()I

    move-result v0

    .line 497
    .local v0, "backgroundRes":I
    if-lez v0, :cond_0

    .line 498
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 500
    :cond_0
    const-class v2, Lcom/motorola/blur/setup/CongratsActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 501
    const/16 v2, 0xa

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 502
    return-void
.end method

.method public showDataRateSettings(Landroid/app/Activity;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 555
    sget-object v1, Lcom/motorola/blur/fsm/SetupFSM;->TAG:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "Launching dataswitch DATASETTINGS"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 556
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 558
    .local v0, "i":Landroid/content/Intent;
    invoke-static {p1, v0}, Lcom/motorola/blur/setup/SetupUtility;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 559
    invoke-virtual {p1, v0, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 565
    :goto_0
    return-void

    .line 562
    :cond_0
    sget-object v1, Lcom/motorola/blur/fsm/SetupFSM;->TAG:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "dataswitch DATASETTINGS skipped"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 563
    iget-object v1, p0, Lcom/motorola/blur/fsm/SetupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSMContext;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v6, v2, v3}, Lcom/motorola/blur/fsm/SetupFSMContext;->OnActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public showGoogleBackup(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 568
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const-string v3, "com.google"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 569
    .local v0, "accounts":[Landroid/accounts/Account;
    array-length v2, v0

    if-lez v2, :cond_0

    .line 570
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 571
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "com.google.android.gsf.login"

    const-string v3, "com.google.android.gsf.login.SyncIntroActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    const-string v2, "confirmCredentials"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 573
    const-string v2, "authAccount"

    aget-object v3, v0, v4

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 574
    const-string v2, "addAccount"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 575
    const-string v2, "firstRun"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 576
    const/16 v2, 0x13

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 578
    .end local v1    # "i":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public showGoogleSetup(Landroid/app/Activity;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/16 v6, 0xe

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 539
    sget-object v1, Lcom/motorola/blur/fsm/SetupFSM;->TAG:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "Launching AccountIntro"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 540
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.accounts.AccountIntro"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 542
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1, v0}, Lcom/motorola/blur/setup/SetupUtility;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/motorola/blur/fsm/SetupFSM;->mShowGoogleSetup:Z

    if-eqz v1, :cond_0

    .line 543
    const-string v1, "allowSkip"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 544
    const-string v1, "firstRun"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 546
    invoke-virtual {p1, v0, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 552
    :goto_0
    return-void

    .line 549
    :cond_0
    sget-object v1, Lcom/motorola/blur/fsm/SetupFSM;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "AccountIntro receiver skipped - enabled="

    aput-object v3, v2, v5

    iget-boolean v3, p0, Lcom/motorola/blur/fsm/SetupFSM;->mShowGoogleSetup:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 550
    iget-object v1, p0, Lcom/motorola/blur/fsm/SetupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSMContext;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v6, v2, v3}, Lcom/motorola/blur/fsm/SetupFSMContext;->OnActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public showHuxEmailWrapper(Landroid/app/Activity;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/16 v7, 0xd

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 526
    sget-object v2, Lcom/motorola/blur/fsm/SetupFSM;->TAG:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "Launching HuxEmail wrapper"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 527
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 528
    .local v0, "huxi":Landroid/content/Intent;
    invoke-static {p1, v0}, Lcom/motorola/blur/setup/SetupUtility;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 529
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/motorola/blur/setup/HuxEmailWrapperActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 530
    .local v1, "i":Landroid/content/Intent;
    invoke-virtual {p1, v1, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 536
    .end local v1    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 533
    :cond_0
    sget-object v2, Lcom/motorola/blur/fsm/SetupFSM;->TAG:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "No HuxEmail receiver available so skipping HuxEmail wrapper"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 534
    iget-object v2, p0, Lcom/motorola/blur/fsm/SetupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSMContext;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v7, v3, v4}, Lcom/motorola/blur/fsm/SetupFSMContext;->OnActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public showLocationConsent(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 505
    sget-object v1, Lcom/motorola/blur/fsm/SetupFSM;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Launching Location Consent"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 506
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 507
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/motorola/blur/setup/LocationConsentActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 508
    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 509
    return-void
.end method

.method public showMultipleGoogleBackup(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 583
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 584
    .local v0, "i":Landroid/content/Intent;
    const-class v1, Lcom/motorola/blur/setup/BackupRestoreActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 585
    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 586
    return-void
.end method

.method public showSimActivation(Landroid/app/Activity;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/16 v6, 0xc

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 512
    sget-object v1, Lcom/motorola/blur/fsm/SetupFSM;->TAG:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "Launching SIM Activation"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 513
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 515
    .local v0, "i":Landroid/content/Intent;
    const-wide/16 v1, 0x1000

    invoke-virtual {p0, v1, v2}, Lcom/motorola/blur/fsm/SetupFSM;->hasVisited(J)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1, v0}, Lcom/motorola/blur/setup/SetupUtility;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 516
    invoke-virtual {p1, v0, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 522
    :goto_0
    return-void

    .line 519
    :cond_0
    sget-object v1, Lcom/motorola/blur/fsm/SetupFSM;->TAG:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "SIM activiation skipped"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 520
    iget-object v1, p0, Lcom/motorola/blur/fsm/SetupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSMContext;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v6, v2, v3}, Lcom/motorola/blur/fsm/SetupFSMContext;->OnActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public showSkipSetup(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 475
    sget-object v1, Lcom/motorola/blur/fsm/SetupFSM;->TAG:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Launching Skip Setup"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 476
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/motorola/blur/setup/SkipSetupActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 477
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 478
    const-string v1, "is_initial_setup_flow"

    const-string v2, "is_initial_setup_flow"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 481
    :cond_0
    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 482
    return-void
.end method

.method public showSplashScreen(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x2

    .line 418
    const-wide/16 v1, 0x4

    invoke-virtual {p0, v1, v2}, Lcom/motorola/blur/fsm/SetupFSM;->hasVisited(J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 419
    sget-object v1, Lcom/motorola/blur/fsm/SetupFSM;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Launching Splash"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 420
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/motorola/blur/setup/SplashScreenActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 421
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v0, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 426
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 423
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/fsm/SetupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSMContext;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v5, v2, v3}, Lcom/motorola/blur/fsm/SetupFSMContext;->OnActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public showTermsOfService(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 430
    sget-object v1, Lcom/motorola/blur/fsm/SetupFSM;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Launching TOS"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 431
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 432
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 434
    const-string v1, "initial_setup"

    invoke-virtual {p0}, Lcom/motorola/blur/fsm/SetupFSM;->isExtraIsInitialSetupFlow()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 435
    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 436
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSMContext;

    invoke-virtual {v0}, Lcom/motorola/blur/fsm/SetupFSMContext;->Start()V

    .line 323
    return-void
.end method

.method public startQASilentLogin(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1197
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/motorola/blur/setup/QASilentLogin;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1198
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1199
    return-void
.end method

.method public tabletSetupComplete(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 439
    invoke-static {p1}, Lcom/motorola/blur/setup/SetupUtility;->tabletSetupComplete(Landroid/app/Activity;)V

    .line 440
    return-void
.end method

.method public unregisterInitHandler(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mHandlerCallback:Landroid/os/Handler;

    if-ne v0, p1, :cond_0

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mHandlerCallback:Landroid/os/Handler;

    .line 304
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/blur/fsm/SetupFSM;->mHandlerCode:I

    .line 306
    :cond_0
    return-void
.end method
