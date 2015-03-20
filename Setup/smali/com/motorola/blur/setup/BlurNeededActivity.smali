.class public Lcom/motorola/blur/setup/BlurNeededActivity;
.super Landroid/app/Activity;
.source "BlurNeededActivity.java"


# static fields
.field private static final MOT_TOS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BlurNeededActivity"


# instance fields
.field private mMotoId:Z

.field private mSilentSetup:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    iput-boolean v0, p0, Lcom/motorola/blur/setup/BlurNeededActivity;->mSilentSetup:Z

    .line 34
    iput-boolean v0, p0, Lcom/motorola/blur/setup/BlurNeededActivity;->mMotoId:Z

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/blur/setup/BlurNeededActivity;Landroid/app/Activity;Landroid/content/DialogInterface;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/setup/BlurNeededActivity;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Landroid/content/DialogInterface;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/motorola/blur/setup/BlurNeededActivity;->performCancel(Landroid/app/Activity;Landroid/content/DialogInterface;)V

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/blur/setup/BlurNeededActivity;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/setup/BlurNeededActivity;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/motorola/blur/setup/BlurNeededActivity;->launchSetup(Landroid/app/Activity;)V

    return-void
.end method

.method private final launchSetup(Landroid/app/Activity;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 164
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    .local v0, "in":Landroid/content/Intent;
    const-string v1, "motoid"

    iget-boolean v2, p0, Lcom/motorola/blur/setup/BlurNeededActivity;->mMotoId:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 166
    const-string v1, "is_initial_setup_flow"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 168
    const-string v1, "need_reset_fsm"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 169
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 170
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setResult(I)V

    .line 171
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 172
    return-void
.end method

.method private performCancel(Landroid/app/Activity;Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 103
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 104
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 105
    return-void
.end method

.method private final showDialogAndRunSetup(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 108
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x4

    invoke-direct {v1, p1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 109
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 110
    .local v2, "positiveButtonClicked":Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f08007c

    new-instance v5, Lcom/motorola/blur/setup/BlurNeededActivity$2;

    invoke-direct {v5, p0, v2, p1}, Lcom/motorola/blur/setup/BlurNeededActivity$2;-><init>(Lcom/motorola/blur/setup/BlurNeededActivity;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/app/Activity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0800bd

    new-instance v5, Lcom/motorola/blur/setup/BlurNeededActivity$1;

    invoke-direct {v5, p0, p1}, Lcom/motorola/blur/setup/BlurNeededActivity$1;-><init>(Lcom/motorola/blur/setup/BlurNeededActivity;Landroid/app/Activity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 125
    new-instance v3, Lcom/motorola/blur/setup/BlurNeededActivity$3;

    invoke-direct {v3, p0, p1}, Lcom/motorola/blur/setup/BlurNeededActivity$3;-><init>(Lcom/motorola/blur/setup/BlurNeededActivity;Landroid/app/Activity;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 130
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 131
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    new-instance v3, Lcom/motorola/blur/setup/BlurNeededActivity$4;

    invoke-direct {v3, p0, p1, v2}, Lcom/motorola/blur/setup/BlurNeededActivity$4;-><init>(Lcom/motorola/blur/setup/BlurNeededActivity;Landroid/app/Activity;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 140
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 141
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 146
    if-ne p2, v1, :cond_1

    .line 149
    invoke-static {p0}, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->hasBlurAccount(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 151
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 160
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-direct {p0, p0}, Lcom/motorola/blur/setup/BlurNeededActivity;->launchSetup(Landroid/app/Activity;)V

    goto :goto_0

    .line 157
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 158
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 42
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 43
    invoke-static {p0}, Lcom/motorola/blur/setup/SilentBlurUtility;->isSilentRegistrationRequired(Landroid/content/Context;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/motorola/blur/setup/BlurNeededActivity;->mSilentSetup:Z

    .line 44
    const-string v8, "app_name"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "appName":Ljava/lang/String;
    const-string v8, "motoid"

    invoke-virtual {v2, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/motorola/blur/setup/BlurNeededActivity;->mMotoId:Z

    .line 48
    invoke-static {p0}, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->isTosAccepted(Landroid/content/Context;)Z

    move-result v3

    .line 49
    .local v3, "isTosAccepted":Z
    if-nez v3, :cond_1

    .line 50
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 51
    .local v7, "tosIntent":Landroid/content/Intent;
    const-class v8, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;

    invoke-virtual {v7, p0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 54
    invoke-virtual {p0, v7, v9}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 99
    .end local v0    # "appName":Ljava/lang/String;
    .end local v3    # "isTosAccepted":Z
    .end local v7    # "tosIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 59
    .restart local v0    # "appName":Ljava/lang/String;
    .restart local v3    # "isTosAccepted":Z
    :cond_1
    invoke-static {p0}, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->isBlurAccountProvisioned(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 60
    const/4 v8, -0x1

    invoke-virtual {p0, v8}, Landroid/app/Activity;->setResult(I)V

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 65
    :cond_2
    if-eqz v0, :cond_7

    .line 69
    iget-boolean v8, p0, Lcom/motorola/blur/setup/BlurNeededActivity;->mSilentSetup:Z

    if-eqz v8, :cond_5

    .line 70
    const-string v8, "com.android.settings.deviceinfo.CheckUpdate"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 71
    const-string v8, "DeviceSetup"

    invoke-virtual {p0, v8, v10}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 72
    .local v5, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 73
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v8, "BlurServiceSlientRegistrationSystemUpdateRequest"

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 74
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 76
    const v8, 0x7f080088

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 77
    .local v6, "title":Ljava/lang/String;
    const v8, 0x7f080089

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v0, v9, v10

    invoke-static {v8, v9}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 94
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "settings":Landroid/content/SharedPreferences;
    .local v4, "message":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-direct {p0, p0, v6, v4}, Lcom/motorola/blur/setup/BlurNeededActivity;->showDialogAndRunSetup(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 79
    .end local v4    # "message":Ljava/lang/String;
    .end local v6    # "title":Ljava/lang/String;
    :cond_4
    const v8, 0x7f08008a

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 80
    .restart local v6    # "title":Ljava/lang/String;
    const v8, 0x7f08008b

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v0, v9, v10

    invoke-static {v8, v9}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "message":Ljava/lang/String;
    goto :goto_1

    .line 83
    .end local v4    # "message":Ljava/lang/String;
    .end local v6    # "title":Ljava/lang/String;
    :cond_5
    const-string v8, "title"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 84
    .restart local v6    # "title":Ljava/lang/String;
    const-string v8, "message"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 86
    .restart local v4    # "message":Ljava/lang/String;
    if-nez v4, :cond_6

    .line 87
    const v8, 0x7f0800be

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v0, v9, v10

    invoke-static {v8, v9}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 89
    :cond_6
    if-nez v6, :cond_3

    .line 90
    const v8, 0x7f08007b

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 96
    .end local v4    # "message":Ljava/lang/String;
    .end local v6    # "title":Ljava/lang/String;
    :cond_7
    invoke-direct {p0, p0}, Lcom/motorola/blur/setup/BlurNeededActivity;->launchSetup(Landroid/app/Activity;)V

    goto/16 :goto_0
.end method
