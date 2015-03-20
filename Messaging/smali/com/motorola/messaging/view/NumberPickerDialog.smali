.class public Lcom/motorola/messaging/view/NumberPickerDialog;
.super Landroid/app/AlertDialog;
.source "NumberPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/view/NumberPickerDialog$OnNumberSetListener;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/motorola/messaging/view/NumberPickerDialog$OnNumberSetListener;

.field private final mNumberPicker:Landroid/widget/NumberPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/motorola/messaging/view/NumberPickerDialog$OnNumberSetListener;III)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/motorola/messaging/view/NumberPickerDialog$OnNumberSetListener;
    .param p3, "number"    # I
    .param p4, "rangeMin"    # I
    .param p5, "rangeMax"    # I

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 63
    iput-object p2, p0, Lcom/motorola/messaging/view/NumberPickerDialog;->mCallback:Lcom/motorola/messaging/view/NumberPickerDialog$OnNumberSetListener;

    .line 65
    const v2, 0x7f0b0095

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->setTitle(I)V

    .line 67
    const/4 v2, -0x1

    const v4, 0x7f0b007c

    invoke-virtual {p1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v2, v4, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 68
    const/4 v4, -0x2

    const v2, 0x7f0b007b

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v2, v3

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v4, v5, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 71
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 73
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030018

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 74
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 75
    const v2, 0x7f090050

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/NumberPicker;

    iput-object v2, p0, Lcom/motorola/messaging/view/NumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    .line 77
    iget-object v2, p0, Lcom/motorola/messaging/view/NumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    new-instance v3, Lcom/motorola/messaging/view/NumberPickerDialog$1;

    invoke-direct {v3, p0}, Lcom/motorola/messaging/view/NumberPickerDialog$1;-><init>(Lcom/motorola/messaging/view/NumberPickerDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 84
    iget-object v2, p0, Lcom/motorola/messaging/view/NumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2, p4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 85
    iget-object v2, p0, Lcom/motorola/messaging/view/NumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2, p5}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 86
    iget-object v2, p0, Lcom/motorola/messaging/view/NumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2, p3}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 87
    iget-object v2, p0, Lcom/motorola/messaging/view/NumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 89
    iget-object v2, p0, Lcom/motorola/messaging/view/NumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/messaging/view/NumberPickerDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/view/NumberPickerDialog;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/motorola/messaging/view/NumberPickerDialog;->updateInputState()V

    return-void
.end method

.method private updateInputState()V
    .locals 3

    .prologue
    .line 120
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 121
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 122
    iget-object v1, p0, Lcom/motorola/messaging/view/NumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/motorola/messaging/view/NumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->clearFocus()V

    .line 124
    iget-object v1, p0, Lcom/motorola/messaging/view/NumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 127
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/motorola/messaging/view/NumberPickerDialog;->mCallback:Lcom/motorola/messaging/view/NumberPickerDialog$OnNumberSetListener;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/motorola/messaging/view/NumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearFocus()V

    .line 95
    iget-object v0, p0, Lcom/motorola/messaging/view/NumberPickerDialog;->mCallback:Lcom/motorola/messaging/view/NumberPickerDialog$OnNumberSetListener;

    iget-object v1, p0, Lcom/motorola/messaging/view/NumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/motorola/messaging/view/NumberPickerDialog$OnNumberSetListener;->onNumberSet(I)V

    .line 96
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 98
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 110
    const-string v1, "number"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 111
    .local v0, "number":I
    iget-object v1, p0, Lcom/motorola/messaging/view/NumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 112
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 103
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "number"

    iget-object v2, p0, Lcom/motorola/messaging/view/NumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 104
    return-object v0
.end method
