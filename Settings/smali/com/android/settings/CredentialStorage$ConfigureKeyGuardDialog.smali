.class Lcom/android/settings/CredentialStorage$ConfigureKeyGuardDialog;
.super Ljava/lang/Object;
.source "CredentialStorage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CredentialStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigureKeyGuardDialog"
.end annotation


# instance fields
.field private mConfigureConfirmed:Z

.field final synthetic this$0:Lcom/android/settings/CredentialStorage;


# direct methods
.method private constructor <init>(Lcom/android/settings/CredentialStorage;)V
    .locals 2

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/settings/CredentialStorage$ConfigureKeyGuardDialog;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 365
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0783

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    # setter for: Lcom/android/settings/CredentialStorage;->mConfigureKeyGuardDialog:Landroid/app/AlertDialog;
    invoke-static {p1, v0}, Lcom/android/settings/CredentialStorage;->access$602(Lcom/android/settings/CredentialStorage;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 374
    # getter for: Lcom/android/settings/CredentialStorage;->mConfigureKeyGuardDialog:Landroid/app/AlertDialog;
    invoke-static {p1}, Lcom/android/settings/CredentialStorage;->access$600(Lcom/android/settings/CredentialStorage;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 375
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/CredentialStorage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/CredentialStorage;
    .param p2, "x1"    # Lcom/android/settings/CredentialStorage$1;

    .prologue
    .line 358
    invoke-direct {p0, p1}, Lcom/android/settings/CredentialStorage$ConfigureKeyGuardDialog;-><init>(Lcom/android/settings/CredentialStorage;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 379
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 380
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 381
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "minimum_quality"

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 382
    iget-object v1, p0, Lcom/android/settings/CredentialStorage$ConfigureKeyGuardDialog;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-virtual {v1, v0}, Lcom/android/settings/CredentialStorage;->startActivity(Landroid/content/Intent;)V

    .line 384
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/CredentialStorage$ConfigureKeyGuardDialog;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-virtual {v1}, Lcom/android/settings/CredentialStorage;->finish()V

    .line 386
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 389
    iget-boolean v1, p0, Lcom/android/settings/CredentialStorage$ConfigureKeyGuardDialog;->mConfigureConfirmed:Z

    if-eqz v1, :cond_0

    .line 390
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/CredentialStorage$ConfigureKeyGuardDialog;->mConfigureConfirmed:Z

    .line 391
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 392
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "minimum_quality"

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 394
    iget-object v1, p0, Lcom/android/settings/CredentialStorage$ConfigureKeyGuardDialog;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-virtual {v1, v0}, Lcom/android/settings/CredentialStorage;->startActivity(Landroid/content/Intent;)V

    .line 398
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 397
    :cond_0
    iget-object v1, p0, Lcom/android/settings/CredentialStorage$ConfigureKeyGuardDialog;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-virtual {v1}, Lcom/android/settings/CredentialStorage;->finish()V

    goto :goto_0
.end method
