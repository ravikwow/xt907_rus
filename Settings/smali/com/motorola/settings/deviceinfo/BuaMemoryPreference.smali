.class public Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;
.super Landroid/preference/PreferenceCategory;
.source "BuaMemoryPreference.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityDestroyListener;
.implements Landroid/preference/PreferenceManager$OnActivityResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;
    }
.end annotation


# instance fields
.field private mBuaAuthenPre:Landroid/preference/Preference;

.field private mBuaAvailablePercentage:F

.field private final mBuaCallBackHandler:Landroid/os/Handler;

.field private mBuaErrorPre:Landroid/preference/Preference;

.field private mBuaFreeStoragePre:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;

.field private mBuaServiceConnection:Landroid/content/ServiceConnection;

.field private mBuaSubscriblePre:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;

.field private mBuaTotalStoragePre:Landroid/preference/Preference;

.field private mBuaUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

.field private final mCallbackMessenger:Landroid/os/Messenger;

.field private mCheckStorageOnce:Z

.field private mClientMessenger:Landroid/os/Messenger;

.field private mConnectedToService:Z

.field private mContext:Landroid/content/Context;

.field private mMotoPreferenceManager:Landroid/preference/MotoPreferenceManager;

.field private mUpdateSpaceTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 182
    invoke-direct {p0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 59
    iput-boolean v0, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mCheckStorageOnce:Z

    .line 61
    iput-boolean v0, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mConnectedToService:Z

    .line 92
    new-instance v0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$1;

    invoke-direct {v0, p0}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$1;-><init>(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;)V

    iput-object v0, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaServiceConnection:Landroid/content/ServiceConnection;

    .line 112
    new-instance v0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$2;

    invoke-direct {v0, p0}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$2;-><init>(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;)V

    iput-object v0, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mUpdateSpaceTask:Ljava/lang/Runnable;

    .line 121
    new-instance v0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$3;

    invoke-direct {v0, p0}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$3;-><init>(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;)V

    iput-object v0, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaCallBackHandler:Landroid/os/Handler;

    .line 179
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaCallBackHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mCallbackMessenger:Landroid/os/Messenger;

    .line 183
    iput-object p1, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mContext:Landroid/content/Context;

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mCheckStorageOnce:Z

    .line 185
    return-void
.end method

.method static synthetic access$002(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;
    .param p1, "x1"    # Landroid/os/Messenger;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mClientMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$100(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;ILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->sendBuaRequest(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mCheckStorageOnce:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mCheckStorageOnce:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaErrorPre:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;)Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaSubscriblePre:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;I)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->startBuaSelfProvision(I)V

    return-void
.end method

.method static synthetic access$202(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mConnectedToService:Z

    return p1
.end method

.method static synthetic access$300(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaTotalStoragePre:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;)Lcom/android/settings/deviceinfo/UsageBarPreference;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;)Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaFreeStoragePre:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;)F
    .locals 1
    .param p0, "x0"    # Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    .prologue
    .line 44
    iget v0, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaAvailablePercentage:F

    return v0
.end method

.method static synthetic access$602(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;F)F
    .locals 0
    .param p0, "x0"    # Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;
    .param p1, "x1"    # F

    .prologue
    .line 44
    iput p1, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaAvailablePercentage:F

    return p1
.end method

.method static synthetic access$700(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mUpdateSpaceTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaCallBackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static createRectShape(III)Landroid/graphics/drawable/ShapeDrawable;
    .locals 2
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "color"    # I

    .prologue
    .line 301
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 302
    .local v0, "shape":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 303
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 304
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 305
    return-object v0
.end method

.method private doBindBuaService()V
    .locals 4

    .prologue
    .line 285
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 286
    .local v0, "bindIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.motorola.huxvmm.setting"

    const-string v3, "com.motorola.huxvmm.setting.HuxVmmSetupService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 288
    iget-object v1, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 289
    return-void
.end method

.method private sendBuaRequest(ILjava/lang/Object;)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 293
    const/4 v1, 0x0

    const/16 v2, 0xa

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v1, p1, v2, v3, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 294
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mCallbackMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 295
    iget-object v1, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mClientMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 296
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private startBuaSelfProvision(I)V
    .locals 6
    .param p1, "appData"    # I

    .prologue
    .line 258
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.motorola.SPG.ACTION_REQUEST_START_SPG"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 259
    .local v2, "spgIntent":Landroid/content/Intent;
    const-string v4, "com.motorola.SPG.FEATURE_CODE"

    const-string v5, "VMM"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const-string v4, "com.motorola.SPG.APP_DATA"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 261
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    .line 262
    const-string v3, "STANDARD"

    .line 269
    .local v3, "spgType":Ljava/lang/String;
    :goto_0
    const-string v4, "com.motorola.SPG.SPG_TYPE"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    iget-object v4, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mMotoPreferenceManager:Landroid/preference/MotoPreferenceManager;

    invoke-virtual {v4, p0}, Landroid/preference/MotoPreferenceManager;->registerOnActivityResultListener(Landroid/preference/PreferenceManager$OnActivityResultListener;)V

    .line 271
    iget-object v4, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mMotoPreferenceManager:Landroid/preference/MotoPreferenceManager;

    invoke-virtual {v4}, Landroid/preference/MotoPreferenceManager;->getFragment()Landroid/preference/PreferenceFragment;

    move-result-object v1

    .line 272
    .local v1, "owningFragment":Landroid/preference/PreferenceFragment;
    if-eqz v1, :cond_2

    .line 273
    invoke-virtual {v1, v2, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 282
    .end local v1    # "owningFragment":Landroid/preference/PreferenceFragment;
    .end local v3    # "spgType":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 263
    :cond_1
    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    .line 264
    const-string v3, "CHANGE_FEATURE"

    .line 265
    .restart local v3    # "spgType":Ljava/lang/String;
    const-string v4, "com.motorola.SPG.AVAILABLE_SPACE"

    iget-object v5, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaFreeStoragePre:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;

    invoke-virtual {v5}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 275
    .restart local v1    # "owningFragment":Landroid/preference/PreferenceFragment;
    :cond_2
    iget-object v4, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mMotoPreferenceManager:Landroid/preference/MotoPreferenceManager;

    invoke-virtual {v4}, Landroid/preference/MotoPreferenceManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 276
    .local v0, "owningActivity":Landroid/app/Activity;
    if-eqz v0, :cond_3

    .line 277
    invoke-virtual {v0, v2, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 279
    :cond_3
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "owningFragment and owningActivity are null"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public onActivityDestroy()V
    .locals 2

    .prologue
    .line 356
    const-string v0, "BuaMemoryPreference"

    const-string v1, "onActivityDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-boolean v0, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mConnectedToService:Z

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mCallbackMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 359
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->sendBuaRequest(ILjava/lang/Object;)V

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 362
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mConnectedToService:Z

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaCallBackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mUpdateSpaceTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 365
    iget-object v0, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mMotoPreferenceManager:Landroid/preference/MotoPreferenceManager;

    invoke-virtual {v0, p0}, Landroid/preference/MotoPreferenceManager;->unregisterOnActivityDestroyListener(Landroid/preference/PreferenceManager$OnActivityDestroyListener;)V

    .line 366
    iget-object v0, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mMotoPreferenceManager:Landroid/preference/MotoPreferenceManager;

    invoke-virtual {v0, p0}, Landroid/preference/MotoPreferenceManager;->unregisterOnActivityResultListener(Landroid/preference/PreferenceManager$OnActivityResultListener;)V

    .line 367
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x6

    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v1, 0x1

    .line 371
    const-string v2, "BuaMemoryPreference"

    const-string v3, "onActivityResult"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    if-eqz p3, :cond_3

    if-eq p1, v1, :cond_0

    if-ne p1, v5, :cond_3

    :cond_0
    const-string v2, "com.motorola.SPG.ACTION_SPG_RESULT"

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "VMM"

    const-string v3, "com.motorola.SPG.FEATURE_CODE"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 375
    iget-object v2, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mMotoPreferenceManager:Landroid/preference/MotoPreferenceManager;

    invoke-virtual {v2, p0}, Landroid/preference/MotoPreferenceManager;->unregisterOnActivityResultListener(Landroid/preference/PreferenceManager$OnActivityResultListener;)V

    .line 376
    const-string v2, "com.motorola.SPG.APP_DATA"

    invoke-virtual {p3, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 377
    .local v0, "appData":I
    if-ne p2, v4, :cond_1

    .line 378
    if-ne v0, v1, :cond_2

    .line 379
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 380
    iget-object v2, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.motorola.intent.action.LAUNCH_HUXVMMSETTINGACTIVITY"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 381
    invoke-direct {p0, v6, v7}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->sendBuaRequest(ILjava/lang/Object;)V

    .line 388
    .end local v0    # "appData":I
    :cond_1
    :goto_0
    return v1

    .line 382
    .restart local v0    # "appData":I
    :cond_2
    if-ne v0, v5, :cond_1

    .line 383
    invoke-direct {p0, v6, v7}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->sendBuaRequest(ILjava/lang/Object;)V

    goto :goto_0

    .line 388
    .end local v0    # "appData":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V
    .locals 6
    .param p1, "preferenceManager"    # Landroid/preference/PreferenceManager;

    .prologue
    const v5, 0x7f040016

    .line 189
    const-string v3, "BuaMemoryPreference"

    const-string v4, "onAttachedToHierarchy"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-super {p0, p1}, Landroid/preference/Preference;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    .line 192
    new-instance v3, Lcom/android/settings/deviceinfo/UsageBarPreference;

    iget-object v4, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/settings/deviceinfo/UsageBarPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    .line 194
    new-instance v3, Landroid/preference/Preference;

    iget-object v4, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaTotalStoragePre:Landroid/preference/Preference;

    .line 195
    iget-object v3, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaTotalStoragePre:Landroid/preference/Preference;

    const v4, 0x7f0b0427

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 197
    new-instance v3, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;

    iget-object v4, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaFreeStoragePre:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;

    .line 198
    iget-object v3, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaFreeStoragePre:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;

    const v4, 0x7f0b0426

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 199
    iget-object v3, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 200
    .local v1, "mResources":Landroid/content/res/Resources;
    const/high16 v3, 0x7f0d0000

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 201
    .local v2, "width":I
    const v3, 0x7f0d0001

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    .line 202
    .local v0, "height":I
    iget-object v3, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaFreeStoragePre:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;

    const v4, 0x7f0a0003

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v2, v0, v4}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->createRectShape(III)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 203
    iget-object v3, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaFreeStoragePre:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;

    const v4, 0x7f040018

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 204
    iget-object v3, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaFreeStoragePre:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;

    const v4, 0x1010003

    invoke-virtual {v3, v4}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;->setButtonResId(I)V

    .line 205
    iget-object v3, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaFreeStoragePre:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;

    new-instance v4, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$4;

    invoke-direct {v4, p0}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$4;-><init>(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;)V

    invoke-virtual {v3, v4}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v3, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaFreeStoragePre:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;

    new-instance v4, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$5;

    invoke-direct {v4, p0}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$5;-><init>(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;)V

    invoke-virtual {v3, v4}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;->setOnBindViewListener(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference$OnBindViewListener;)V

    .line 224
    new-instance v3, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;

    iget-object v4, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaSubscriblePre:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;

    .line 225
    iget-object v3, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaSubscriblePre:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;

    const v4, 0x7f040017

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 226
    iget-object v3, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaSubscriblePre:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;

    const v4, 0x1010002

    invoke-virtual {v3, v4}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;->setButtonResId(I)V

    .line 227
    iget-object v3, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaSubscriblePre:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;

    new-instance v4, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$6;

    invoke-direct {v4, p0}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$6;-><init>(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;)V

    invoke-virtual {v3, v4}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    new-instance v3, Landroid/preference/Preference;

    iget-object v4, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaAuthenPre:Landroid/preference/Preference;

    .line 234
    iget-object v3, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaAuthenPre:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 235
    iget-object v3, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaAuthenPre:Landroid/preference/Preference;

    const v4, 0x7f0b00a7

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 236
    iget-object v3, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaAuthenPre:Landroid/preference/Preference;

    new-instance v4, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$7;

    invoke-direct {v4, p0}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$7;-><init>(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;)V

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 246
    new-instance v3, Landroid/preference/Preference;

    iget-object v4, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaErrorPre:Landroid/preference/Preference;

    .line 247
    iget-object v3, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaErrorPre:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 248
    iget-object v3, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mBuaErrorPre:Landroid/preference/Preference;

    const v4, 0x7f0b00a8

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 250
    invoke-direct {p0}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->doBindBuaService()V

    .line 252
    invoke-static {p1}, Landroid/preference/MotoPreferenceManager;->getInstance(Landroid/preference/PreferenceManager;)Landroid/preference/MotoPreferenceManager;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mMotoPreferenceManager:Landroid/preference/MotoPreferenceManager;

    .line 253
    iget-object v3, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mMotoPreferenceManager:Landroid/preference/MotoPreferenceManager;

    invoke-virtual {v3, p0}, Landroid/preference/MotoPreferenceManager;->registerOnActivityDestroyListener(Landroid/preference/PreferenceManager$OnActivityDestroyListener;)V

    .line 254
    return-void
.end method
