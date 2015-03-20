.class public Lcom/android/phone/InternationalRoamingAlert;
.super Landroid/app/Activity;
.source "InternationalRoamingAlert.java"


# static fields
.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private DBG:Z

.field private mIntRoamingAlertDialog:Landroid/app/AlertDialog;

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private toneGen:Landroid/media/ToneGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    iput-boolean v0, p0, Lcom/android/phone/InternationalRoamingAlert;->DBG:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/InternationalRoamingAlert;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/InternationalRoamingAlert;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/phone/InternationalRoamingAlert;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/InternationalRoamingAlert;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/InternationalRoamingAlert;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/phone/InternationalRoamingAlert;->disable()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/InternationalRoamingAlert;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/InternationalRoamingAlert;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/phone/InternationalRoamingAlert;->confirm()V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 1

    .prologue
    .line 235
    sget-object v0, Lcom/android/phone/InternationalRoamingAlert;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 236
    sget-object v0, Lcom/android/phone/InternationalRoamingAlert;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 237
    :cond_0
    return-void
.end method

.method private confirm()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/phone/InternationalRoamingAlert;->releaseLocks()V

    .line 128
    return-void
.end method

.method private createWakeLock(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 218
    iget-boolean v1, p0, Lcom/android/phone/InternationalRoamingAlert;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "IntRoamingAlert"

    const-string v2, "Acquiring wake lock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    sget-object v1, Lcom/android/phone/InternationalRoamingAlert;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    .line 220
    sget-object v1, Lcom/android/phone/InternationalRoamingAlert;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 223
    :cond_1
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 226
    .local v0, "pm":Landroid/os/PowerManager;
    const v1, 0x3000001a

    const-string v2, "IntRoamingAlert"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/android/phone/InternationalRoamingAlert;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 231
    sget-object v1, Lcom/android/phone/InternationalRoamingAlert;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 233
    return-void
.end method

.method private disable()V
    .locals 3

    .prologue
    .line 133
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 134
    .local v0, "app":Lcom/android/phone/PhoneApp;
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 135
    invoke-direct {p0}, Lcom/android/phone/InternationalRoamingAlert;->releaseLocks()V

    .line 136
    return-void
.end method

.method private disableKeyguard()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/phone/InternationalRoamingAlert;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/phone/InternationalRoamingAlert;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string v1, "IntRoamingAlert"

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InternationalRoamingAlert;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 203
    iget-object v0, p0, Lcom/android/phone/InternationalRoamingAlert;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 206
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableExpandedView(Z)V

    .line 207
    return-void
.end method

.method private enableKeyguard()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/phone/InternationalRoamingAlert;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/phone/InternationalRoamingAlert;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InternationalRoamingAlert;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 197
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableExpandedView(Z)V

    .line 198
    return-void
.end method

.method private releaseLocks()V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/android/phone/InternationalRoamingAlert;->releaseWakeLock()V

    .line 214
    invoke-direct {p0}, Lcom/android/phone/InternationalRoamingAlert;->enableKeyguard()V

    .line 215
    return-void
.end method

.method private releaseWakeLock()V
    .locals 2

    .prologue
    .line 239
    const-string v0, "IntRoamingAlert"

    const-string v1, "Releasing wake lock"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    sget-object v0, Lcom/android/phone/InternationalRoamingAlert;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 241
    sget-object v0, Lcom/android/phone/InternationalRoamingAlert;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 242
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/InternationalRoamingAlert;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 244
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/4 v7, -0x2

    const/4 v8, 0x2

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/InternationalRoamingAlert;->createWakeLock(Landroid/content/Context;)V

    .line 66
    const-string v5, "IntRoamingAlert"

    const-string v6, "IntRoamingAlert.onCreate()"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 70
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 71
    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 77
    const/16 v5, 0x7d3

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 78
    const/4 v5, 0x0

    iput-object v5, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 80
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/Window;->addFlags(I)V

    .line 82
    const-string v5, "keyguard"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/KeyguardManager;

    iput-object v5, p0, Lcom/android/phone/InternationalRoamingAlert;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 84
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 87
    .local v4, "warningMsg":Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c041e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 89
    .local v1, "carrierName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c041f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 91
    .local v2, "carrierWebUrl":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0420

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 95
    .local v0, "carrierCenterNumber":Ljava/lang/String;
    const v5, 0x7f0c041a

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v9

    const/4 v7, 0x1

    aput-object v2, v6, v7

    aput-object v0, v6, v8

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    const/16 v5, 0xf

    invoke-static {v4, v5}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 99
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v6, 0x7f0c0419

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c02cd

    new-instance v7, Lcom/android/phone/InternationalRoamingAlert$2;

    invoke-direct {v7, p0}, Lcom/android/phone/InternationalRoamingAlert$2;-><init>(Lcom/android/phone/InternationalRoamingAlert;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c02ce

    new-instance v7, Lcom/android/phone/InternationalRoamingAlert$1;

    invoke-direct {v7, p0}, Lcom/android/phone/InternationalRoamingAlert$1;-><init>(Lcom/android/phone/InternationalRoamingAlert;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InternationalRoamingAlert;->mIntRoamingAlertDialog:Landroid/app/AlertDialog;

    .line 117
    iget-object v5, p0, Lcom/android/phone/InternationalRoamingAlert;->mIntRoamingAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d8

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 121
    new-instance v5, Landroid/media/ToneGenerator;

    const/4 v6, 0x5

    const/16 v7, 0x64

    invoke-direct {v5, v6, v7}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v5, p0, Lcom/android/phone/InternationalRoamingAlert;->toneGen:Landroid/media/ToneGenerator;

    .line 123
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 169
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 170
    iget-boolean v0, p0, Lcom/android/phone/InternationalRoamingAlert;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "IntRoamingAlert"

    const-string v1, "IntRoamingAlert.onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InternationalRoamingAlert;->toneGen:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/android/phone/InternationalRoamingAlert;->toneGen:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 174
    iput-object v2, p0, Lcom/android/phone/InternationalRoamingAlert;->toneGen:Landroid/media/ToneGenerator;

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InternationalRoamingAlert;->mIntRoamingAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/android/phone/InternationalRoamingAlert;->mIntRoamingAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 178
    iput-object v2, p0, Lcom/android/phone/InternationalRoamingAlert;->mIntRoamingAlertDialog:Landroid/app/AlertDialog;

    .line 180
    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 184
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 185
    const/4 v0, 0x1

    .line 187
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 140
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 141
    iget-boolean v0, p0, Lcom/android/phone/InternationalRoamingAlert;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "IntRoamingAlert"

    const-string v1, "IntRoamingAlert.onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InternationalRoamingAlert;->acquireWakeLock()V

    .line 143
    invoke-direct {p0}, Lcom/android/phone/InternationalRoamingAlert;->disableKeyguard()V

    .line 144
    iget-object v0, p0, Lcom/android/phone/InternationalRoamingAlert;->toneGen:Landroid/media/ToneGenerator;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 146
    iget-object v0, p0, Lcom/android/phone/InternationalRoamingAlert;->mIntRoamingAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/android/phone/InternationalRoamingAlert;->mIntRoamingAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 150
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 154
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 155
    iget-boolean v0, p0, Lcom/android/phone/InternationalRoamingAlert;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "IntRoamingAlert"

    const-string v1, "IntRoamingAlert.onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InternationalRoamingAlert;->toneGen:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 159
    invoke-direct {p0}, Lcom/android/phone/InternationalRoamingAlert;->releaseLocks()V

    .line 161
    iget-object v0, p0, Lcom/android/phone/InternationalRoamingAlert;->mIntRoamingAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/android/phone/InternationalRoamingAlert;->mIntRoamingAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 165
    :cond_1
    return-void
.end method
