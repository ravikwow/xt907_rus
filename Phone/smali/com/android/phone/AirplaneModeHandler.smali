.class public Lcom/android/phone/AirplaneModeHandler;
.super Landroid/app/Activity;
.source "AirplaneModeHandler.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private mApplication:Landroid/app/Application;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mHandler:Landroid/os/Handler;

.field private mIntent:Landroid/content/Intent;

.field private mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    sput-boolean v0, Lcom/android/phone/AirplaneModeHandler;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    new-instance v0, Lcom/android/phone/AirplaneModeHandler$1;

    invoke-direct {v0, p0}, Lcom/android/phone/AirplaneModeHandler$1;-><init>(Lcom/android/phone/AirplaneModeHandler;)V

    iput-object v0, p0, Lcom/android/phone/AirplaneModeHandler;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/android/phone/AirplaneModeHandler;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/AirplaneModeHandler;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/AirplaneModeHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/phone/AirplaneModeHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/AirplaneModeHandler;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/AirplaneModeHandler;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/phone/AirplaneModeHandler;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/AirplaneModeHandler;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/AirplaneModeHandler;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/phone/AirplaneModeHandler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/AirplaneModeHandler;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/AirplaneModeHandler;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/phone/AirplaneModeHandler;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/AirplaneModeHandler;)Landroid/app/Application;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/AirplaneModeHandler;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/phone/AirplaneModeHandler;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/AirplaneModeHandler;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/AirplaneModeHandler;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/phone/AirplaneModeHandler;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/phone/AirplaneModeHandler;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/AirplaneModeHandler;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/phone/AirplaneModeHandler;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method private constructDialog()Landroid/app/ProgressDialog;
    .locals 3

    .prologue
    .line 201
    sget-boolean v1, Lcom/android/phone/AirplaneModeHandler;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "constructDialog()..."

    invoke-direct {p0, v1}, Lcom/android/phone/AirplaneModeHandler;->log(Ljava/lang/String;)V

    .line 204
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 205
    .local v0, "pd":Landroid/app/ProgressDialog;
    const v1, 0x7f0c0406

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 206
    const v1, 0x7f0c028e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 207
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 208
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 209
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 211
    sget-boolean v1, Lcom/android/phone/PhoneApp;->BLUR_BEHIND_DIALOG:Z

    if-eqz v1, :cond_1

    .line 212
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 216
    :cond_1
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 218
    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 222
    const-string v0, "AirplaneModeHandler"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 147
    sget-boolean v3, Lcom/android/phone/AirplaneModeHandler;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "onCreate()..."

    invoke-direct {p0, v3}, Lcom/android/phone/AirplaneModeHandler;->log(Ljava/lang/String;)V

    .line 148
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 151
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v2, v3, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 154
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v3, p0, Lcom/android/phone/AirplaneModeHandler;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 155
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/AirplaneModeHandler;->mApplication:Landroid/app/Application;

    .line 156
    invoke-direct {p0}, Lcom/android/phone/AirplaneModeHandler;->constructDialog()Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/AirplaneModeHandler;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 158
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/AirplaneModeHandler;->mIntent:Landroid/content/Intent;

    .line 160
    iget-object v3, p0, Lcom/android/phone/AirplaneModeHandler;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 162
    iget-object v3, p0, Lcom/android/phone/AirplaneModeHandler;->mIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/phone/AirplaneModeHandler;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x10000000

    or-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 163
    sget-boolean v3, Lcom/android/phone/AirplaneModeHandler;->DBG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIntent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/AirplaneModeHandler;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/AirplaneModeHandler;->log(Ljava/lang/String;)V

    .line 171
    :cond_1
    iget-object v3, p0, Lcom/android/phone/AirplaneModeHandler;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v4, p0, Lcom/android/phone/AirplaneModeHandler;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v7}, Lcom/android/internal/telephony/CallManager;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 176
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_3

    .line 179
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 182
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 183
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "state"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 184
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 185
    sget-boolean v3, Lcom/android/phone/AirplaneModeHandler;->DBG:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcast intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/AirplaneModeHandler;->log(Ljava/lang/String;)V

    .line 193
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/phone/AirplaneModeHandler;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x67

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 194
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/phone/AirplaneModeHandler;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7530

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 195
    return-void

    .line 189
    .end local v1    # "msg":Landroid/os/Message;
    :cond_3
    sget-boolean v3, Lcom/android/phone/AirplaneModeHandler;->DBG:Z

    if-eqz v3, :cond_4

    const-string v3, "setRadioPower(true)"

    invoke-direct {p0, v3}, Lcom/android/phone/AirplaneModeHandler;->log(Ljava/lang/String;)V

    .line 190
    :cond_4
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 239
    sget-boolean v0, Lcom/android/phone/AirplaneModeHandler;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onDestroy"

    invoke-direct {p0, v0}, Lcom/android/phone/AirplaneModeHandler;->log(Ljava/lang/String;)V

    .line 240
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 241
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 227
    sget-boolean v0, Lcom/android/phone/AirplaneModeHandler;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onPause"

    invoke-direct {p0, v0}, Lcom/android/phone/AirplaneModeHandler;->log(Ljava/lang/String;)V

    .line 228
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 229
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 233
    sget-boolean v0, Lcom/android/phone/AirplaneModeHandler;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onStop"

    invoke-direct {p0, v0}, Lcom/android/phone/AirplaneModeHandler;->log(Ljava/lang/String;)V

    .line 234
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 235
    return-void
.end method
