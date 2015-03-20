.class Lcom/android/certinstaller/CertInstaller$6;
.super Ljava/lang/Object;
.source "CertInstaller.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/certinstaller/CertInstaller;->createNameCredentialDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/certinstaller/CertInstaller;


# direct methods
.method constructor <init>(Lcom/android/certinstaller/CertInstaller;)V
    .locals 0

    .prologue
    .line 491
    iput-object p1, p0, Lcom/android/certinstaller/CertInstaller$6;->this$0:Lcom/android/certinstaller/CertInstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v4, 0x1

    .line 493
    iget-object v2, p0, Lcom/android/certinstaller/CertInstaller$6;->this$0:Lcom/android/certinstaller/CertInstaller;

    # getter for: Lcom/android/certinstaller/CertInstaller;->mView:Lcom/android/certinstaller/ViewHelper;
    invoke-static {v2}, Lcom/android/certinstaller/CertInstaller;->access$900(Lcom/android/certinstaller/CertInstaller;)Lcom/android/certinstaller/ViewHelper;

    move-result-object v2

    const v3, 0x7f080001

    invoke-virtual {v2, v3}, Lcom/android/certinstaller/ViewHelper;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 494
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 495
    iget-object v2, p0, Lcom/android/certinstaller/CertInstaller$6;->this$0:Lcom/android/certinstaller/CertInstaller;

    # getter for: Lcom/android/certinstaller/CertInstaller;->mView:Lcom/android/certinstaller/ViewHelper;
    invoke-static {v2}, Lcom/android/certinstaller/CertInstaller;->access$900(Lcom/android/certinstaller/CertInstaller;)Lcom/android/certinstaller/ViewHelper;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/certinstaller/ViewHelper;->setHasEmptyError(Z)V

    .line 496
    iget-object v2, p0, Lcom/android/certinstaller/CertInstaller$6;->this$0:Lcom/android/certinstaller/CertInstaller;

    invoke-virtual {v2, v4}, Landroid/app/Activity;->removeDialog(I)V

    .line 497
    iget-object v2, p0, Lcom/android/certinstaller/CertInstaller$6;->this$0:Lcom/android/certinstaller/CertInstaller;

    invoke-virtual {v2, v4}, Landroid/app/Activity;->showDialog(I)V

    .line 512
    :goto_0
    return-void

    .line 499
    :cond_0
    iget-object v2, p0, Lcom/android/certinstaller/CertInstaller$6;->this$0:Lcom/android/certinstaller/CertInstaller;

    invoke-virtual {v2, v4}, Landroid/app/Activity;->removeDialog(I)V

    .line 500
    iget-object v2, p0, Lcom/android/certinstaller/CertInstaller$6;->this$0:Lcom/android/certinstaller/CertInstaller;

    # getter for: Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;
    invoke-static {v2}, Lcom/android/certinstaller/CertInstaller;->access$200(Lcom/android/certinstaller/CertInstaller;)Lcom/android/certinstaller/CredentialHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/certinstaller/CredentialHelper;->setName(Ljava/lang/String;)V

    .line 504
    :try_start_0
    iget-object v2, p0, Lcom/android/certinstaller/CertInstaller$6;->this$0:Lcom/android/certinstaller/CertInstaller;

    iget-object v3, p0, Lcom/android/certinstaller/CertInstaller$6;->this$0:Lcom/android/certinstaller/CertInstaller;

    # getter for: Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;
    invoke-static {v3}, Lcom/android/certinstaller/CertInstaller;->access$200(Lcom/android/certinstaller/CertInstaller;)Lcom/android/certinstaller/CredentialHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/certinstaller/CredentialHelper;->createSystemInstallIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 507
    :catch_0
    move-exception v0

    .line 508
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "CertInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "systemInstall(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v2, p0, Lcom/android/certinstaller/CertInstaller$6;->this$0:Lcom/android/certinstaller/CertInstaller;

    const v3, 0x7f060014

    # invokes: Lcom/android/certinstaller/CertInstaller;->toastErrorAndFinish(I)V
    invoke-static {v2, v3}, Lcom/android/certinstaller/CertInstaller;->access$800(Lcom/android/certinstaller/CertInstaller;I)V

    goto :goto_0
.end method
