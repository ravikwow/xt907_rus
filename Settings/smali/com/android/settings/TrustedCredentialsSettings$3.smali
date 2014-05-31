.class Lcom/android/settings/TrustedCredentialsSettings$3;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TrustedCredentialsSettings;->showCertDialog(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TrustedCredentialsSettings;

.field final synthetic val$certHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;


# direct methods
.method constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$3;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    iput-object p2, p0, Lcom/android/settings/TrustedCredentialsSettings$3;->val$certHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 404
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$3;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    # getter for: Lcom/android/settings/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;
    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings;->access$2800(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->hasRestrictionsChallenge()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$3;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    # getter for: Lcom/android/settings/TrustedCredentialsSettings;->mChallengeSucceeded:Z
    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings;->access$2900(Lcom/android/settings/TrustedCredentialsSettings;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 405
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$3;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    # invokes: Lcom/android/settings/TrustedCredentialsSettings;->ensurePin()V
    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings;->access$3000(Lcom/android/settings/TrustedCredentialsSettings;)V

    .line 429
    :goto_0
    return-void

    .line 409
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$3;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {v1}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 410
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$3;->val$certHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    # getter for: Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/android/settings/TrustedCredentialsSettings$Tab;
    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$100(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings$3;->val$certHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    # invokes: Lcom/android/settings/TrustedCredentialsSettings$Tab;->getButtonConfirmation(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)I
    invoke-static {v1, v2}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$3100(Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 411
    const v1, 0x1040013

    new-instance v2, Lcom/android/settings/TrustedCredentialsSettings$3$1;

    invoke-direct {v2, p0}, Lcom/android/settings/TrustedCredentialsSettings$3$1;-><init>(Lcom/android/settings/TrustedCredentialsSettings$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 419
    const v1, 0x1040009

    new-instance v2, Lcom/android/settings/TrustedCredentialsSettings$3$2;

    invoke-direct {v2, p0}, Lcom/android/settings/TrustedCredentialsSettings$3$2;-><init>(Lcom/android/settings/TrustedCredentialsSettings$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 426
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$3;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    # setter for: Lcom/android/settings/TrustedCredentialsSettings;->disableSystemCertDialog:Landroid/app/Dialog;
    invoke-static {v1, v2}, Lcom/android/settings/TrustedCredentialsSettings;->access$3402(Lcom/android/settings/TrustedCredentialsSettings;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 427
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$3;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    # getter for: Lcom/android/settings/TrustedCredentialsSettings;->disableSystemCertDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings;->access$3400(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
