.class public Lcom/android/settings/deviceinfo/CheckUpdate;
.super Landroid/app/Activity;
.source "CheckUpdate.java"


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final PROJ:[Ljava/lang/String;

.field private static final URI_BLUR_DEVICE_ID:Landroid/net/Uri;

.field private static final URI_SINGLE_PARENT_MODE:Landroid/net/Uri;


# instance fields
.field private mUpdateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 240
    const-string v0, "content://com.motorola.blur.service.blur.bsmotherprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/deviceinfo/CheckUpdate;->CONTENT_URI:Landroid/net/Uri;

    .line 241
    sget-object v0, Lcom/android/settings/deviceinfo/CheckUpdate;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "SingleParentMode"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/deviceinfo/CheckUpdate;->URI_SINGLE_PARENT_MODE:Landroid/net/Uri;

    .line 242
    sget-object v0, Lcom/android/settings/deviceinfo/CheckUpdate;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "DeviceId"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/deviceinfo/CheckUpdate;->URI_BLUR_DEVICE_ID:Landroid/net/Uri;

    .line 243
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/deviceinfo/CheckUpdate;->PROJ:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/CheckUpdate;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/CheckUpdate;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/CheckUpdate;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/deviceinfo/CheckUpdate;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/deviceinfo/CheckUpdate;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/CheckUpdate;
    .param p1, "x1"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/settings/deviceinfo/CheckUpdate;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method private isBlurAccountProvisioned()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 264
    const/4 v8, 0x0

    .line 265
    .local v8, "value":Ljava/lang/String;
    const/4 v6, 0x0

    .line 267
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/deviceinfo/CheckUpdate;->URI_BLUR_DEVICE_ID:Landroid/net/Uri;

    sget-object v2, Lcom/android/settings/deviceinfo/CheckUpdate;->PROJ:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 268
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 274
    :cond_0
    if-eqz v6, :cond_1

    .line 275
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 278
    :cond_1
    :goto_0
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 271
    :catch_0
    move-exception v7

    .line 272
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "CheckUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    if-eqz v6, :cond_1

    .line 275
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 274
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 275
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    move v0, v9

    .line 278
    goto :goto_1
.end method

.method private isBlurSingleParentMode()Z
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 246
    const/4 v8, 0x0

    .line 247
    .local v8, "value":Ljava/lang/String;
    const/4 v6, 0x0

    .line 249
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/deviceinfo/CheckUpdate;->URI_SINGLE_PARENT_MODE:Landroid/net/Uri;

    sget-object v2, Lcom/android/settings/deviceinfo/CheckUpdate;->PROJ:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 250
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 256
    :cond_0
    if-eqz v6, :cond_1

    .line 257
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 260
    :cond_1
    :goto_0
    if-eqz v8, :cond_3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v9, :cond_3

    move v0, v9

    :goto_1
    return v0

    .line 253
    :catch_0
    move-exception v7

    .line 254
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "CheckUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    if-eqz v6, :cond_1

    .line 257
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 256
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 257
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    move v0, v10

    .line 260
    goto :goto_1
.end method

.method private registerUpdateReceiver()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 122
    iget-object v1, p0, Lcom/android/settings/deviceinfo/CheckUpdate;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 123
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.motorola.blur.service.blur.Actions.UPGRADE_CHECK_FOR_UPDATE_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, "filter":Landroid/content/IntentFilter;
    new-instance v1, Lcom/android/settings/deviceinfo/CheckUpdate$1;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/CheckUpdate$1;-><init>(Lcom/android/settings/deviceinfo/CheckUpdate;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/CheckUpdate;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 179
    iget-object v1, p0, Lcom/android/settings/deviceinfo/CheckUpdate;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0, v2, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 181
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/CheckUpdate;->isBlurSingleParentMode()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/CheckUpdate;->isBlurAccountProvisioned()Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.motorola.blur.setup.SETUP_BLUR_ACCOUNT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "app_name"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string v2, "title"

    const v3, 0x7f0b003d

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v2, "message"

    const v3, 0x7f0b003e

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 118
    :goto_1
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "CheckUpdate"

    const-string v3, "FAILED TO LAUNCH BLUR SETUP!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_0
    const v2, 0x7f040019

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 107
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/CheckUpdate;->registerUpdateReceiver()V

    .line 110
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.motorola.blur.service.blur.Actions.MANUAL_CHECK_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 114
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v2, "com.motorola.blur.service.blur.Actions.UPGRADE_CHECK_FOR_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "com.motorola.blur.service.blur.upgrade.bootstrap"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 116
    const-string v2, "com.motorola.blur.service.blur.upgrade.requestid"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 117
    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 202
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 203
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 204
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/deviceinfo/CheckUpdate$2;

    invoke-direct {v3, p0}, Lcom/android/settings/deviceinfo/CheckUpdate$2;-><init>(Lcom/android/settings/deviceinfo/CheckUpdate;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 223
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 224
    .local v1, "dialog":Landroid/app/AlertDialog;
    new-instance v2, Lcom/android/settings/deviceinfo/CheckUpdate$3;

    invoke-direct {v2, p0}, Lcom/android/settings/deviceinfo/CheckUpdate$3;-><init>(Lcom/android/settings/deviceinfo/CheckUpdate;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 235
    return-object v1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 192
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 193
    iget-object v0, p0, Lcom/android/settings/deviceinfo/CheckUpdate;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const-string v0, "CheckUpdate"

    const-string v1, "unregister receiver in onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/android/settings/deviceinfo/CheckUpdate;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/CheckUpdate;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 198
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 186
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 187
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/CheckUpdate;->registerUpdateReceiver()V

    .line 188
    return-void
.end method
