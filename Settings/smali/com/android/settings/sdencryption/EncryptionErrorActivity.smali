.class public Lcom/android/settings/sdencryption/EncryptionErrorActivity;
.super Landroid/app/Activity;
.source "EncryptionErrorActivity.java"


# instance fields
.field private onCancelListenerErrorDialog:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    new-instance v0, Lcom/android/settings/sdencryption/EncryptionErrorActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/sdencryption/EncryptionErrorActivity$2;-><init>(Lcom/android/settings/sdencryption/EncryptionErrorActivity;)V

    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionErrorActivity;->onCancelListenerErrorDialog:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 25
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .param p1, "dialogId"    # I

    .prologue
    .line 36
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 37
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0b00ee

    .line 38
    .local v5, "title":I
    const v6, 0x7f0b00ef

    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 39
    .local v4, "message":Ljava/lang/String;
    const-string v6, "\n\n"

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 40
    const v6, 0x7f0b00f0

    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 45
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 47
    const-string v6, "mount_error"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 48
    const-string v6, "mount_error"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 50
    .local v3, "mediaError":I
    const/4 v6, 0x2

    if-ne v3, v6, :cond_0

    .line 51
    const-string v6, "\n\n"

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 52
    const v6, 0x7f0b00f1

    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 57
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v3    # "mediaError":I
    :cond_0
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 58
    const v6, 0x7f0b0114

    new-instance v7, Lcom/android/settings/sdencryption/EncryptionErrorActivity$1;

    invoke-direct {v7, p0}, Lcom/android/settings/sdencryption/EncryptionErrorActivity$1;-><init>(Lcom/android/settings/sdencryption/EncryptionErrorActivity;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/sdencryption/EncryptionErrorActivity;->onCancelListenerErrorDialog:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 66
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 31
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 32
    return-void
.end method
