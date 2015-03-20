.class Lcom/android/phone/RespondViaSmsManager$Settings$1;
.super Ljava/lang/Object;
.source "RespondViaSmsManager.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/RespondViaSmsManager$Settings;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RespondViaSmsManager$Settings;

.field final synthetic val$mEditText:Landroid/widget/EditText;

.field final synthetic val$mOKButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/android/phone/RespondViaSmsManager$Settings;Landroid/widget/EditText;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lcom/android/phone/RespondViaSmsManager$Settings$1;->this$0:Lcom/android/phone/RespondViaSmsManager$Settings;

    iput-object p2, p0, Lcom/android/phone/RespondViaSmsManager$Settings$1;->val$mEditText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/phone/RespondViaSmsManager$Settings$1;->val$mOKButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 475
    iget-object v1, p0, Lcom/android/phone/RespondViaSmsManager$Settings$1;->val$mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 477
    iget-object v1, p0, Lcom/android/phone/RespondViaSmsManager$Settings$1;->val$mOKButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 481
    :goto_0
    return-void

    .line 479
    :cond_0
    iget-object v1, p0, Lcom/android/phone/RespondViaSmsManager$Settings$1;->val$mOKButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 482
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 483
    return-void
.end method
