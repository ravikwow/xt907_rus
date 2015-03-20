.class public Lcom/android/certinstaller/CertInstaller;
.super Landroid/app/Activity;
.source "CertInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/certinstaller/CertInstaller$OnExtractionDoneAction;,
        Lcom/android/certinstaller/CertInstaller$InstallOthersAction;,
        Lcom/android/certinstaller/CertInstaller$Pkcs12ExtractAction;,
        Lcom/android/certinstaller/CertInstaller$MyAction;,
        Lcom/android/certinstaller/CertInstaller$MyMap;,
        Lcom/android/certinstaller/CertInstaller$InstallCaCertsToKeyChainTask;
    }
.end annotation


# instance fields
.field private mCertName:Ljava/lang/String;

.field private mCredentials:Lcom/android/certinstaller/CredentialHelper;

.field private mDisableDialogFlag:Z

.field private mEdmError:Lcom/motorola/motepm/EdmErrorCode;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;

.field private mPassword:Ljava/lang/String;

.field private mState:I

.field private final mView:Lcom/android/certinstaller/ViewHelper;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mKeyStore:Landroid/security/KeyStore;

    .line 72
    new-instance v0, Lcom/android/certinstaller/ViewHelper;

    invoke-direct {v0}, Lcom/android/certinstaller/ViewHelper;-><init>()V

    iput-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mView:Lcom/android/certinstaller/ViewHelper;

    .line 79
    iput-object v1, p0, Lcom/android/certinstaller/CertInstaller;->mPassword:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/android/certinstaller/CertInstaller;->mCertName:Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/certinstaller/CertInstaller;->mDisableDialogFlag:Z

    .line 82
    new-instance v0, Lcom/motorola/motepm/EdmErrorCode;

    invoke-direct {v0, p0}, Lcom/motorola/motepm/EdmErrorCode;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mEdmError:Lcom/motorola/motepm/EdmErrorCode;

    .line 586
    return-void
.end method

.method static synthetic access$200(Lcom/android/certinstaller/CertInstaller;)Lcom/android/certinstaller/CredentialHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/certinstaller/CertInstaller;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/certinstaller/CertInstaller;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/certinstaller/CertInstaller;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/certinstaller/CertInstaller;->mDisableDialogFlag:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/certinstaller/CertInstaller;)Lcom/motorola/motepm/EdmErrorCode;
    .locals 1
    .param p0, "x0"    # Lcom/android/certinstaller/CertInstaller;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mEdmError:Lcom/motorola/motepm/EdmErrorCode;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/certinstaller/CertInstaller;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/certinstaller/CertInstaller;

    .prologue
    .line 52
    iget v0, p0, Lcom/android/certinstaller/CertInstaller;->mState:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/certinstaller/CertInstaller;)Lcom/android/certinstaller/CertInstaller$MyAction;
    .locals 1
    .param p0, "x0"    # Lcom/android/certinstaller/CertInstaller;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/certinstaller/CertInstaller;Lcom/android/certinstaller/CertInstaller$MyAction;)Lcom/android/certinstaller/CertInstaller$MyAction;
    .locals 0
    .param p0, "x0"    # Lcom/android/certinstaller/CertInstaller;
    .param p1, "x1"    # Lcom/android/certinstaller/CertInstaller$MyAction;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/certinstaller/CertInstaller;->mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/certinstaller/CertInstaller;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/certinstaller/CertInstaller;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/certinstaller/CertInstaller;->toastErrorAndFinish(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/certinstaller/CertInstaller;)Lcom/android/certinstaller/ViewHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/certinstaller/CertInstaller;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mView:Lcom/android/certinstaller/ViewHelper;

    return-object v0
.end method

.method private createCredentialHelper(Landroid/content/Intent;)Lcom/android/certinstaller/CredentialHelper;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 89
    :try_start_0
    new-instance v1, Lcom/android/certinstaller/CredentialHelper;

    invoke-direct {v1, p1}, Lcom/android/certinstaller/CredentialHelper;-><init>(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-object v1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "CertInstaller"

    const-string v2, "createCredentialHelper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    const v1, 0x7f060016

    invoke-direct {p0, v1}, Lcom/android/certinstaller/CertInstaller;->toastErrorAndFinish(I)V

    .line 93
    new-instance v1, Lcom/android/certinstaller/CredentialHelper;

    invoke-direct {v1}, Lcom/android/certinstaller/CredentialHelper;-><init>()V

    goto :goto_0
.end method

.method private createNameCredentialDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 478
    const/high16 v3, 0x7f020000

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 479
    .local v2, "view":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/android/certinstaller/CertInstaller;->mView:Lcom/android/certinstaller/ViewHelper;

    invoke-virtual {v3, v2}, Lcom/android/certinstaller/ViewHelper;->setView(Landroid/view/View;)V

    .line 480
    iget-object v3, p0, Lcom/android/certinstaller/CertInstaller;->mView:Lcom/android/certinstaller/ViewHelper;

    invoke-virtual {v3}, Lcom/android/certinstaller/ViewHelper;->getHasEmptyError()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 481
    iget-object v3, p0, Lcom/android/certinstaller/CertInstaller;->mView:Lcom/android/certinstaller/ViewHelper;

    const v4, 0x7f060010

    invoke-virtual {v3, v4}, Lcom/android/certinstaller/ViewHelper;->showError(I)V

    .line 482
    iget-object v3, p0, Lcom/android/certinstaller/CertInstaller;->mView:Lcom/android/certinstaller/ViewHelper;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/certinstaller/ViewHelper;->setHasEmptyError(Z)V

    .line 484
    :cond_0
    iget-object v3, p0, Lcom/android/certinstaller/CertInstaller;->mView:Lcom/android/certinstaller/ViewHelper;

    const v4, 0x7f080002

    iget-object v5, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v5, p0}, Lcom/android/certinstaller/CredentialHelper;->getDescription(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/certinstaller/ViewHelper;->setText(ILjava/lang/String;)V

    .line 485
    const v3, 0x7f080001

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 486
    .local v1, "nameInput":Landroid/widget/EditText;
    invoke-direct {p0}, Lcom/android/certinstaller/CertInstaller;->getDefaultName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    .line 488
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f060005

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/certinstaller/CertInstaller$6;

    invoke-direct {v5, p0}, Lcom/android/certinstaller/CertInstaller$6;-><init>(Lcom/android/certinstaller/CertInstaller;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/certinstaller/CertInstaller$5;

    invoke-direct {v5, p0}, Lcom/android/certinstaller/CertInstaller$5;-><init>(Lcom/android/certinstaller/CertInstaller;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 520
    .local v0, "d":Landroid/app/Dialog;
    new-instance v3, Lcom/android/certinstaller/CertInstaller$7;

    invoke-direct {v3, p0}, Lcom/android/certinstaller/CertInstaller$7;-><init>(Lcom/android/certinstaller/CertInstaller;)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 525
    return-object v0
.end method

.method private createPkcs12PasswordDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 442
    const v3, 0x7f020001

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 443
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/android/certinstaller/CertInstaller;->mView:Lcom/android/certinstaller/ViewHelper;

    invoke-virtual {v3, v2}, Lcom/android/certinstaller/ViewHelper;->setView(Landroid/view/View;)V

    .line 444
    iget-object v3, p0, Lcom/android/certinstaller/CertInstaller;->mView:Lcom/android/certinstaller/ViewHelper;

    invoke-virtual {v3}, Lcom/android/certinstaller/ViewHelper;->getHasEmptyError()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 445
    iget-object v3, p0, Lcom/android/certinstaller/CertInstaller;->mView:Lcom/android/certinstaller/ViewHelper;

    const v4, 0x7f06000f

    invoke-virtual {v3, v4}, Lcom/android/certinstaller/ViewHelper;->showError(I)V

    .line 446
    iget-object v3, p0, Lcom/android/certinstaller/CertInstaller;->mView:Lcom/android/certinstaller/ViewHelper;

    invoke-virtual {v3, v5}, Lcom/android/certinstaller/ViewHelper;->setHasEmptyError(Z)V

    .line 449
    :cond_0
    iget-object v3, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v3}, Lcom/android/certinstaller/CredentialHelper;->getName()Ljava/lang/String;

    move-result-object v1

    .line 450
    .local v1, "title":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f060002

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 453
    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/certinstaller/CertInstaller$3;

    invoke-direct {v5, p0}, Lcom/android/certinstaller/CertInstaller$3;-><init>(Lcom/android/certinstaller/CertInstaller;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/certinstaller/CertInstaller$2;

    invoke-direct {v5, p0}, Lcom/android/certinstaller/CertInstaller$2;-><init>(Lcom/android/certinstaller/CertInstaller;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 469
    .local v0, "d":Landroid/app/Dialog;
    new-instance v3, Lcom/android/certinstaller/CertInstaller$4;

    invoke-direct {v3, p0}, Lcom/android/certinstaller/CertInstaller$4;-><init>(Lcom/android/certinstaller/CertInstaller;)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 474
    return-object v0

    .line 450
    .end local v0    # "d":Landroid/app/Dialog;
    :cond_1
    const v3, 0x7f060004

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getDefaultName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 529
    iget-object v2, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v2}, Lcom/android/certinstaller/CredentialHelper;->getName()Ljava/lang/String;

    move-result-object v1

    .line 530
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 531
    const/4 v2, 0x0

    .line 536
    :goto_0
    return-object v2

    .line 534
    :cond_0
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 535
    .local v0, "index":I
    if-lez v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v2, v1

    .line 536
    goto :goto_0
.end method

.method private getPkeyMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 380
    iget-object v2, p0, Lcom/android/certinstaller/CertInstaller;->mKeyStore:Landroid/security/KeyStore;

    const-string v3, "PKEY_MAP"

    invoke-virtual {v2, v3}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    .line 381
    .local v0, "bytes":[B
    if-eqz v0, :cond_0

    .line 382
    invoke-static {v0}, Lcom/android/certinstaller/Util;->fromBytes([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 384
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    if-eqz v1, :cond_0

    .line 386
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/certinstaller/CertInstaller$MyMap;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/certinstaller/CertInstaller$MyMap;-><init>(Lcom/android/certinstaller/CertInstaller$1;)V

    goto :goto_0
.end method

.method private nameCredential()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, -0x138f

    const/4 v4, 0x1

    .line 324
    iget-object v1, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v1}, Lcom/android/certinstaller/CredentialHelper;->hasAnyForSystemInstall()Z

    move-result v1

    if-nez v1, :cond_1

    .line 325
    const v1, 0x7f060015

    invoke-direct {p0, v1}, Lcom/android/certinstaller/CertInstaller;->toastErrorAndFinish(I)V

    .line 327
    iget-boolean v1, p0, Lcom/android/certinstaller/CertInstaller;->mDisableDialogFlag:Z

    if-ne v1, v4, :cond_0

    .line 328
    iget-object v1, p0, Lcom/android/certinstaller/CertInstaller;->mEdmError:Lcom/motorola/motepm/EdmErrorCode;

    invoke-virtual {v1, v5, v6}, Lcom/motorola/motepm/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    iget-boolean v1, p0, Lcom/android/certinstaller/CertInstaller;->mDisableDialogFlag:Z

    if-nez v1, :cond_2

    .line 335
    invoke-virtual {p0, v4}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 337
    :cond_2
    iget-object v1, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    iget-object v2, p0, Lcom/android/certinstaller/CertInstaller;->mCertName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/certinstaller/CredentialHelper;->setName(Ljava/lang/String;)V

    .line 340
    :try_start_0
    const-string v1, "CertInstaller"

    const-string v2, "start certificate installing..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v1, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v1}, Lcom/android/certinstaller/CredentialHelper;->createSystemInstallIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "CertInstaller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "systemInstall(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const v1, 0x7f060014

    invoke-direct {p0, v1}, Lcom/android/certinstaller/CertInstaller;->toastErrorAndFinish(I)V

    .line 346
    iget-boolean v1, p0, Lcom/android/certinstaller/CertInstaller;->mDisableDialogFlag:Z

    if-ne v1, v4, :cond_0

    .line 347
    iget-object v1, p0, Lcom/android/certinstaller/CertInstaller;->mEdmError:Lcom/motorola/motepm/EdmErrorCode;

    invoke-virtual {v1, v5, v6}, Lcom/motorola/motepm/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private needsKeyStoreAccess()Z
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v0}, Lcom/android/certinstaller/CredentialHelper;->hasKeyPair()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v0}, Lcom/android/certinstaller/CredentialHelper;->hasUserCertificate()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private saveKeyPair()V
    .locals 6

    .prologue
    .line 358
    iget-object v3, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    const-string v4, "PKEY"

    invoke-virtual {v3, v4}, Lcom/android/certinstaller/CredentialHelper;->getData(Ljava/lang/String;)[B

    move-result-object v2

    .line 359
    .local v2, "privatekey":[B
    iget-object v3, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    const-string v4, "KEY"

    invoke-virtual {v3, v4}, Lcom/android/certinstaller/CredentialHelper;->getData(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/certinstaller/Util;->toMd5([B)Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "key":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/certinstaller/CertInstaller;->getPkeyMap()Ljava/util/Map;

    move-result-object v1

    .line 361
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    invoke-direct {p0, v1}, Lcom/android/certinstaller/CertInstaller;->savePkeyMap(Ljava/util/Map;)V

    .line 363
    const-string v3, "CertInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "save privatekey: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " --> #keys:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    return-void
.end method

.method private savePkeyMap(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .prologue
    .line 367
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 368
    iget-object v1, p0, Lcom/android/certinstaller/CertInstaller;->mKeyStore:Landroid/security/KeyStore;

    const-string v2, "PKEY_MAP"

    invoke-virtual {v1, v2}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 369
    const-string v1, "CertInstaller"

    const-string v2, "savePkeyMap(): failed to delete pkey map"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    invoke-static {p1}, Lcom/android/certinstaller/Util;->toBytes(Ljava/lang/Object;)[B

    move-result-object v0

    .line 374
    .local v0, "bytes":[B
    iget-object v1, p0, Lcom/android/certinstaller/CertInstaller;->mKeyStore:Landroid/security/KeyStore;

    const-string v2, "PKEY_MAP"

    invoke-virtual {v1, v2, v0}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 375
    const-string v1, "CertInstaller"

    const-string v2, "savePkeyMap(): failed to write pkey map"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendUnlockKeyStoreIntent()V
    .locals 1

    .prologue
    .line 320
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    .line 321
    return-void
.end method

.method private toastErrorAndFinish(I)V
    .locals 1
    .param p1, "msgId"    # I

    .prologue
    .line 541
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 542
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 543
    return-void
.end method


# virtual methods
.method extractPkcs12InBackground(Ljava/lang/String;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 391
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 393
    new-instance v0, Lcom/android/certinstaller/CertInstaller$1;

    invoke-direct {v0, p0, p1}, Lcom/android/certinstaller/CertInstaller$1;-><init>(Lcom/android/certinstaller/CertInstaller;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 415
    return-void
.end method

.method installOthers()V
    .locals 7

    .prologue
    .line 295
    iget-object v4, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v4}, Lcom/android/certinstaller/CredentialHelper;->hasKeyPair()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 296
    invoke-direct {p0}, Lcom/android/certinstaller/CertInstaller;->saveKeyPair()V

    .line 297
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 317
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v4, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v4}, Lcom/android/certinstaller/CredentialHelper;->getUserCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 300
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_1

    .line 302
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/certinstaller/Util;->toMd5([B)Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, "key":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/certinstaller/CertInstaller;->getPkeyMap()Ljava/util/Map;

    move-result-object v2

    .line 304
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 305
    .local v3, "privatekey":[B
    if-eqz v3, :cond_2

    .line 306
    const-string v4, "CertInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "found matched key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-direct {p0, v2}, Lcom/android/certinstaller/CertInstaller;->savePkeyMap(Ljava/util/Map;)V

    .line 310
    iget-object v4, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v4, v3}, Lcom/android/certinstaller/CredentialHelper;->setPrivateKey([B)V

    .line 315
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    .end local v3    # "privatekey":[B
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/certinstaller/CertInstaller;->nameCredential()V

    goto :goto_0

    .line 312
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    .restart local v3    # "privatekey":[B
    :cond_2
    const-string v4, "CertInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "didn\'t find matched private key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 238
    if-ne p1, v3, :cond_4

    .line 239
    if-ne p2, v6, :cond_2

    .line 240
    const-string v0, "CertInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "credential is added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v2}, Lcom/android/certinstaller/CredentialHelper;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-boolean v0, p0, Lcom/android/certinstaller/CertInstaller;->mDisableDialogFlag:Z

    if-ne v0, v3, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mEdmError:Lcom/motorola/motepm/EdmErrorCode;

    invoke-virtual {v0, v4, v5}, Lcom/motorola/motepm/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    .line 246
    :cond_0
    const v0, 0x7f060017

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v2}, Lcom/android/certinstaller/CredentialHelper;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 249
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v0}, Lcom/android/certinstaller/CredentialHelper;->hasCaCerts()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    new-instance v0, Lcom/android/certinstaller/CertInstaller$InstallCaCertsToKeyChainTask;

    invoke-direct {v0, p0, v5}, Lcom/android/certinstaller/CertInstaller$InstallCaCertsToKeyChainTask;-><init>(Lcom/android/certinstaller/CertInstaller;Lcom/android/certinstaller/CertInstaller$1;)V

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 268
    :goto_0
    return-void

    .line 254
    :cond_1
    invoke-virtual {p0, v6}, Landroid/app/Activity;->setResult(I)V

    .line 267
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 256
    :cond_2
    const-string v0, "CertInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "credential not saved, err: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-boolean v0, p0, Lcom/android/certinstaller/CertInstaller;->mDisableDialogFlag:Z

    if-ne v0, v3, :cond_3

    .line 259
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mEdmError:Lcom/motorola/motepm/EdmErrorCode;

    const/16 v1, -0x138a

    invoke-virtual {v0, v1, v5}, Lcom/motorola/motepm/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    .line 262
    :cond_3
    const v0, 0x7f060014

    invoke-direct {p0, v0}, Lcom/android/certinstaller/CertInstaller;->toastErrorAndFinish(I)V

    goto :goto_1

    .line 265
    :cond_4
    const-string v0, "CertInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown request code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedStates"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 99
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 102
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "CertInstaller"

    const-string v5, "CertInstaller app started."

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    if-nez v1, :cond_0

    .line 105
    const-string v2, "CertInstaller"

    const-string v3, "Getting intent failed "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 180
    :goto_0
    return-void

    .line 110
    :cond_0
    const-string v2, "com.motorola.intent.action.INSTALL_CERTIFICATE"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 111
    const-string v2, "PASSWORD"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/certinstaller/CertInstaller;->mPassword:Ljava/lang/String;

    .line 112
    const-string v2, "name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/certinstaller/CertInstaller;->mCertName:Ljava/lang/String;

    .line 113
    const-string v2, "PASSWORD"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 114
    const-string v2, "CertInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPassword = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/certinstaller/CertInstaller;->mPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mCertName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/certinstaller/CertInstaller;->mCertName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v2, p0, Lcom/android/certinstaller/CertInstaller;->mPassword:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/certinstaller/CertInstaller;->mCertName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 116
    const-string v2, "CertInstaller"

    const-string v5, "Disabling Diaglog boxes "

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iput-boolean v3, p0, Lcom/android/certinstaller/CertInstaller;->mDisableDialogFlag:Z

    .line 119
    iget-object v2, p0, Lcom/android/certinstaller/CertInstaller;->mCertName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 120
    iget-object v2, p0, Lcom/android/certinstaller/CertInstaller;->mEdmError:Lcom/motorola/motepm/EdmErrorCode;

    const/16 v3, -0x138c

    invoke-virtual {v2, v3, v7}, Lcom/motorola/motepm/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    .line 122
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 126
    :cond_1
    iget-object v2, p0, Lcom/android/certinstaller/CertInstaller;->mEdmError:Lcom/motorola/motepm/EdmErrorCode;

    const/16 v3, -0x1389

    invoke-virtual {v2, v3, v7}, Lcom/motorola/motepm/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    .line 128
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 134
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/certinstaller/CertInstaller;->createCredentialHelper(Landroid/content/Intent;)Lcom/android/certinstaller/CredentialHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    .line 136
    if-nez p1, :cond_4

    move v2, v3

    :goto_1
    iput v2, p0, Lcom/android/certinstaller/CertInstaller;->mState:I

    .line 138
    iget v2, p0, Lcom/android/certinstaller/CertInstaller;->mState:I

    if-ne v2, v3, :cond_a

    .line 139
    iget-object v2, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v2}, Lcom/android/certinstaller/CredentialHelper;->containsAnyRawData()Z

    move-result v2

    if-nez v2, :cond_5

    .line 141
    const-string v2, "CertInstaller"

    const-string v4, "There is no  raw data"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-boolean v2, p0, Lcom/android/certinstaller/CertInstaller;->mDisableDialogFlag:Z

    if-ne v2, v3, :cond_3

    .line 143
    iget-object v2, p0, Lcom/android/certinstaller/CertInstaller;->mEdmError:Lcom/motorola/motepm/EdmErrorCode;

    const/16 v3, -0x138d

    invoke-virtual {v2, v3, v7}, Lcom/motorola/motepm/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    .line 147
    :cond_3
    const v2, 0x7f060015

    invoke-direct {p0, v2}, Lcom/android/certinstaller/CertInstaller;->toastErrorAndFinish(I)V

    .line 148
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :cond_4
    move v2, v4

    .line 136
    goto :goto_1

    .line 149
    :cond_5
    iget-object v2, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v2}, Lcom/android/certinstaller/CredentialHelper;->hasPkcs12KeyStore()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 151
    const-string v2, "CertInstaller"

    const-string v3, "data is in PCKS12 format"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-boolean v2, p0, Lcom/android/certinstaller/CertInstaller;->mDisableDialogFlag:Z

    if-nez v2, :cond_6

    .line 153
    invoke-virtual {p0, v4}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0

    .line 155
    :cond_6
    new-instance v2, Lcom/android/certinstaller/CertInstaller$Pkcs12ExtractAction;

    iget-object v3, p0, Lcom/android/certinstaller/CertInstaller;->mPassword:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/android/certinstaller/CertInstaller$Pkcs12ExtractAction;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/certinstaller/CertInstaller;->mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;

    .line 156
    iget-object v2, p0, Lcom/android/certinstaller/CertInstaller;->mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;

    invoke-interface {v2, p0}, Lcom/android/certinstaller/CertInstaller$MyAction;->run(Lcom/android/certinstaller/CertInstaller;)V

    goto/16 :goto_0

    .line 161
    :cond_7
    const-string v2, "CertInstaller"

    const-string v4, " there is no PKCS12 or CERT data"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-boolean v2, p0, Lcom/android/certinstaller/CertInstaller;->mDisableDialogFlag:Z

    if-ne v2, v3, :cond_8

    .line 163
    iget-object v2, p0, Lcom/android/certinstaller/CertInstaller;->mEdmError:Lcom/motorola/motepm/EdmErrorCode;

    const/16 v3, -0x138e

    invoke-virtual {v2, v3, v7}, Lcom/motorola/motepm/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    .line 167
    :cond_8
    new-instance v0, Lcom/android/certinstaller/CertInstaller$InstallOthersAction;

    invoke-direct {v0, v7}, Lcom/android/certinstaller/CertInstaller$InstallOthersAction;-><init>(Lcom/android/certinstaller/CertInstaller$1;)V

    .line 168
    .local v0, "action":Lcom/android/certinstaller/CertInstaller$MyAction;
    invoke-direct {p0}, Lcom/android/certinstaller/CertInstaller;->needsKeyStoreAccess()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 169
    invoke-direct {p0}, Lcom/android/certinstaller/CertInstaller;->sendUnlockKeyStoreIntent()V

    .line 170
    iput-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;

    goto/16 :goto_0

    .line 172
    :cond_9
    invoke-interface {v0, p0}, Lcom/android/certinstaller/CertInstaller$MyAction;->run(Lcom/android/certinstaller/CertInstaller;)V

    goto/16 :goto_0

    .line 176
    .end local v0    # "action":Lcom/android/certinstaller/CertInstaller$MyAction;
    :cond_a
    iget-object v2, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v2, p1}, Lcom/android/certinstaller/CredentialHelper;->onRestoreStates(Landroid/os/Bundle;)V

    .line 177
    const-string v2, "na"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/android/certinstaller/CertInstaller$MyAction;

    iput-object v2, p0, Lcom/android/certinstaller/CertInstaller;->mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .param p1, "dialogId"    # I

    .prologue
    .line 217
    packed-switch p1, :pswitch_data_0

    .line 232
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 219
    :pswitch_0
    invoke-direct {p0}, Lcom/android/certinstaller/CertInstaller;->createPkcs12PasswordDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 222
    :pswitch_1
    invoke-direct {p0}, Lcom/android/certinstaller/CertInstaller;->createNameCredentialDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 225
    :pswitch_2
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 226
    .local v0, "dialog":Landroid/app/ProgressDialog;
    const v1, 0x7f060003

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 227
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 228
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    goto :goto_0

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method onExtractionDone(Z)V
    .locals 4
    .param p1, "success"    # Z

    .prologue
    const/4 v3, 0x2

    .line 418
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;

    .line 419
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->removeDialog(I)V

    .line 420
    if-eqz p1, :cond_1

    .line 422
    iget-boolean v0, p0, Lcom/android/certinstaller/CertInstaller;->mDisableDialogFlag:Z

    if-nez v0, :cond_0

    .line 423
    invoke-virtual {p0, v3}, Landroid/app/Activity;->removeDialog(I)V

    .line 426
    :cond_0
    invoke-direct {p0}, Lcom/android/certinstaller/CertInstaller;->nameCredential()V

    .line 439
    :goto_0
    return-void

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mView:Lcom/android/certinstaller/ViewHelper;

    const v1, 0x7f080003

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/certinstaller/ViewHelper;->setText(ILjava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mView:Lcom/android/certinstaller/ViewHelper;

    const v1, 0x7f06000e

    invoke-virtual {v0, v1}, Lcom/android/certinstaller/ViewHelper;->showError(I)V

    .line 431
    iget-boolean v0, p0, Lcom/android/certinstaller/CertInstaller;->mDisableDialogFlag:Z

    if-nez v0, :cond_2

    .line 432
    invoke-virtual {p0, v3}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 434
    :cond_2
    new-instance v0, Lcom/android/certinstaller/CertInstaller$Pkcs12ExtractAction;

    iget-object v1, p0, Lcom/android/certinstaller/CertInstaller;->mPassword:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/certinstaller/CertInstaller$Pkcs12ExtractAction;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;

    .line 435
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;

    invoke-interface {v0, p0}, Lcom/android/certinstaller/CertInstaller$MyAction;->run(Lcom/android/certinstaller/CertInstaller;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 202
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 203
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/certinstaller/CertInstaller;->mState:I

    .line 204
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 184
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 186
    iget v0, p0, Lcom/android/certinstaller/CertInstaller;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 187
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/certinstaller/CertInstaller;->mState:I

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;

    invoke-interface {v0, p0}, Lcom/android/certinstaller/CertInstaller$MyAction;->run(Lcom/android/certinstaller/CertInstaller;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outStates"    # Landroid/os/Bundle;

    .prologue
    .line 208
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 209
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v0, p1}, Lcom/android/certinstaller/CredentialHelper;->onSaveStates(Landroid/os/Bundle;)V

    .line 210
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;

    if-eqz v0, :cond_0

    .line 211
    const-string v0, "na"

    iget-object v1, p0, Lcom/android/certinstaller/CertInstaller;->mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 213
    :cond_0
    return-void
.end method
