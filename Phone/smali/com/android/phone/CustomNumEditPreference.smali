.class public Lcom/android/phone/CustomNumEditPreference;
.super Landroid/preference/EditTextPreference;
.source "CustomNumEditPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CustomNumEditPreference$CustomNumberEditorTextWatcher;,
        Lcom/android/phone/CustomNumEditPreference$OnDialogClosedListener;
    }
.end annotation


# static fields
.field private static final VDBG:Z


# instance fields
.field private customNumEdit:Landroid/widget/EditText;

.field private customNumberEditorTextWatcher:Landroid/text/TextWatcher;

.field private mDialogOnClosedListener:Lcom/android/phone/CustomNumEditPreference$OnDialogClosedListener;

.field private mOKButtonState:Z

.field private mRestoreFlag:Z

.field private okButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    sput-boolean v0, Lcom/android/phone/CustomNumEditPreference;->VDBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CustomNumEditPreference;->customNumberEditorTextWatcher:Landroid/text/TextWatcher;

    .line 59
    iput-boolean v1, p0, Lcom/android/phone/CustomNumEditPreference;->mRestoreFlag:Z

    .line 61
    iput-boolean v1, p0, Lcom/android/phone/CustomNumEditPreference;->mOKButtonState:Z

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CustomNumEditPreference;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CustomNumEditPreference;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/phone/CustomNumEditPreference;->okButton:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 2
    .param p1, "positiveResult"    # Z

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/phone/CustomNumEditPreference;->customNumberEditorTextWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/phone/CustomNumEditPreference;->customNumEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/CustomNumEditPreference;->customNumberEditorTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CustomNumEditPreference;->mDialogOnClosedListener:Lcom/android/phone/CustomNumEditPreference$OnDialogClosedListener;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/android/phone/CustomNumEditPreference;->mDialogOnClosedListener:Lcom/android/phone/CustomNumEditPreference$OnDialogClosedListener;

    invoke-interface {v0, p0, p1}, Lcom/android/phone/CustomNumEditPreference$OnDialogClosedListener;->onDialogClosed(Lcom/android/phone/CustomNumEditPreference;Z)V

    .line 131
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    .line 132
    return-void
.end method

.method public setDialogOnClosedListener(Lcom/android/phone/CustomNumEditPreference$OnDialogClosedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/phone/CustomNumEditPreference$OnDialogClosedListener;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/phone/CustomNumEditPreference;->mDialogOnClosedListener:Lcom/android/phone/CustomNumEditPreference$OnDialogClosedListener;

    .line 149
    return-void
.end method

.method public setRestoreState(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/android/phone/CustomNumEditPreference;->mOKButtonState:Z

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CustomNumEditPreference;->mRestoreFlag:Z

    .line 158
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 76
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CustomNumEditPreference;->customNumEdit:Landroid/widget/EditText;

    .line 79
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    check-cast v2, Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CustomNumEditPreference;->okButton:Landroid/widget/Button;

    .line 81
    iget-boolean v2, p0, Lcom/android/phone/CustomNumEditPreference;->mRestoreFlag:Z

    if-nez v2, :cond_4

    .line 83
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "auto_dialpad_sharedpreferences"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 85
    .local v0, "mDiapadPref":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .line 86
    .local v1, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 87
    const-string v2, "auto_diapad_custom_phone_number"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 96
    iget-object v2, p0, Lcom/android/phone/CustomNumEditPreference;->customNumEdit:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :cond_1
    iget-object v2, p0, Lcom/android/phone/CustomNumEditPreference;->okButton:Landroid/widget/Button;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/CustomNumEditPreference;->okButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 106
    .end local v0    # "mDiapadPref":Landroid/content/SharedPreferences;
    .end local v1    # "str":Ljava/lang/String;
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/phone/CustomNumEditPreference;->customNumberEditorTextWatcher:Landroid/text/TextWatcher;

    if-nez v2, :cond_3

    .line 107
    new-instance v2, Lcom/android/phone/CustomNumEditPreference$CustomNumberEditorTextWatcher;

    invoke-direct {v2, p0}, Lcom/android/phone/CustomNumEditPreference$CustomNumberEditorTextWatcher;-><init>(Lcom/android/phone/CustomNumEditPreference;)V

    iput-object v2, p0, Lcom/android/phone/CustomNumEditPreference;->customNumberEditorTextWatcher:Landroid/text/TextWatcher;

    .line 111
    :cond_3
    iget-object v2, p0, Lcom/android/phone/CustomNumEditPreference;->customNumEdit:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/phone/CustomNumEditPreference;->customNumberEditorTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 112
    return-void

    .line 102
    :cond_4
    iget-object v2, p0, Lcom/android/phone/CustomNumEditPreference;->okButton:Landroid/widget/Button;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/CustomNumEditPreference;->okButton:Landroid/widget/Button;

    iget-boolean v3, p0, Lcom/android/phone/CustomNumEditPreference;->mOKButtonState:Z

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 103
    :cond_5
    iput-boolean v4, p0, Lcom/android/phone/CustomNumEditPreference;->mRestoreFlag:Z

    goto :goto_0
.end method
