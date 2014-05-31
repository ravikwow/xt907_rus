.class public Lcom/android/settings/nfc/NfcAlert;
.super Lcom/android/internal/app/AlertActivity;
.source "NfcAlert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public mCheckBox:Landroid/widget/CheckBox;

.field mNfcAdapter:Landroid/nfc/NfcAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 7

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcAlert;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040019

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 66
    const v0, 0x7f080037

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 67
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/NFCTermsOfServiceActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 69
    const v4, 0x7f0b0054

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 70
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 71
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 72
    new-instance v5, Lcom/android/settings/nfc/NfcAlert$1;

    invoke-direct {v5, p0, v2}, Lcom/android/settings/nfc/NfcAlert$1;-><init>(Lcom/android/settings/nfc/NfcAlert;Landroid/content/Intent;)V

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 87
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 89
    const v0, 0x7f080039

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/nfc/NfcAlert;->mCheckBox:Landroid/widget/CheckBox;

    .line 90
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 94
    packed-switch p2, :pswitch_data_0

    .line 110
    :goto_0
    return-void

    .line 96
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/nfc/NfcAlert;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "checkBoxRlt":Z
    iget-object v3, p0, Lcom/android/settings/nfc/NfcAlert;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 99
    :cond_0
    const-string v3, "NfcAlertNotice"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/nfc/NfcAlert;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 100
    .local v2, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 101
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "skipMessage"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 102
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcAlert;->finish()V

    goto :goto_0

    .line 107
    .end local v0    # "checkBoxRlt":Z
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "settings":Landroid/content/SharedPreferences;
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcAlert;->finish()V

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 42
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/nfc/NfcAlert;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 45
    const-string v3, "NfcAlertNotice"

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/nfc/NfcAlert;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 46
    .local v1, "settings":Landroid/content/SharedPreferences;
    const-string v3, "skipMessage"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 47
    .local v2, "skipAlert":Z
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 48
    iget-object v3, p0, Lcom/android/settings/nfc/NfcAlert;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v3, :cond_0

    .line 49
    iget-object v3, p0, Lcom/android/settings/nfc/NfcAlert;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcAlert;->finish()V

    .line 52
    :cond_1
    if-nez v2, :cond_2

    .line 53
    iget-object v0, p0, Lcom/android/settings/nfc/NfcAlert;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 54
    .local v0, "p":Lcom/android/internal/app/AlertController$AlertParams;
    const v3, 0x7f0b0052

    invoke-virtual {p0, v3}, Lcom/android/settings/nfc/NfcAlert;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 55
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcAlert;->createView()Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 56
    const v3, 0x7f0b0057

    invoke-virtual {p0, v3}, Lcom/android/settings/nfc/NfcAlert;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 57
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 58
    const v3, 0x7f0b0056

    invoke-virtual {p0, v3}, Lcom/android/settings/nfc/NfcAlert;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 59
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcAlert;->setupAlert()V

    .line 62
    .end local v0    # "p":Lcom/android/internal/app/AlertController$AlertParams;
    :cond_2
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 114
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcAlert;->finish()V

    .line 116
    return-void
.end method
