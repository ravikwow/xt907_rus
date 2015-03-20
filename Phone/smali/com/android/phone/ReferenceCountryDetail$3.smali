.class Lcom/android/phone/ReferenceCountryDetail$3;
.super Ljava/lang/Object;
.source "ReferenceCountryDetail.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/ReferenceCountryDetail;->addTextChangedListenerForEditText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ReferenceCountryDetail;


# direct methods
.method constructor <init>(Lcom/android/phone/ReferenceCountryDetail;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lcom/android/phone/ReferenceCountryDetail$3;->this$0:Lcom/android/phone/ReferenceCountryDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 447
    iget-object v3, p0, Lcom/android/phone/ReferenceCountryDetail$3;->this$0:Lcom/android/phone/ReferenceCountryDetail;

    # getter for: Lcom/android/phone/ReferenceCountryDetail;->mActPre:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/ReferenceCountryDetail;->access$500()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    .line 448
    .local v2, "etPre":Landroid/preference/EditTextPreference;
    if-eqz v2, :cond_1

    .line 449
    invoke-virtual {v2}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 450
    .local v0, "actDialog":Landroid/app/AlertDialog;
    if-eqz v0, :cond_1

    .line 451
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 452
    .local v1, "button":Landroid/widget/Button;
    if-eqz v1, :cond_0

    .line 453
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 454
    :cond_0
    # getter for: Lcom/android/phone/ReferenceCountryDetail;->VDBG:Z
    invoke-static {}, Lcom/android/phone/ReferenceCountryDetail;->access$600()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/ReferenceCountryDetail$3;->this$0:Lcom/android/phone/ReferenceCountryDetail;

    const-string v4, "Enable/Disable set button"

    # invokes: Lcom/android/phone/ReferenceCountryDetail;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/ReferenceCountryDetail;->access$700(Lcom/android/phone/ReferenceCountryDetail;Ljava/lang/String;)V

    .line 457
    .end local v0    # "actDialog":Landroid/app/AlertDialog;
    .end local v1    # "button":Landroid/widget/Button;
    :cond_1
    return-void

    .line 453
    .restart local v0    # "actDialog":Landroid/app/AlertDialog;
    .restart local v1    # "button":Landroid/widget/Button;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 459
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 460
    return-void
.end method
