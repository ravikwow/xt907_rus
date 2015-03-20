.class public Lcom/motorola/simmanager/SeparatorSpinner;
.super Landroid/widget/Spinner;
.source "SeparatorSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/simmanager/SeparatorSpinner$DropdownAdapter;
    }
.end annotation


# instance fields
.field private mBuilder:Landroid/app/AlertDialog$Builder;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDropdownTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object v0, p0, Lcom/motorola/simmanager/SeparatorSpinner;->mDropdownTitle:Ljava/lang/CharSequence;

    .line 25
    iput-object v0, p0, Lcom/motorola/simmanager/SeparatorSpinner;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 26
    iput-object v0, p0, Lcom/motorola/simmanager/SeparatorSpinner;->mDialog:Landroid/app/AlertDialog;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    iput-object v0, p0, Lcom/motorola/simmanager/SeparatorSpinner;->mDropdownTitle:Ljava/lang/CharSequence;

    .line 25
    iput-object v0, p0, Lcom/motorola/simmanager/SeparatorSpinner;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 26
    iput-object v0, p0, Lcom/motorola/simmanager/SeparatorSpinner;->mDialog:Landroid/app/AlertDialog;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    iput-object v0, p0, Lcom/motorola/simmanager/SeparatorSpinner;->mDropdownTitle:Ljava/lang/CharSequence;

    .line 25
    iput-object v0, p0, Lcom/motorola/simmanager/SeparatorSpinner;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 26
    iput-object v0, p0, Lcom/motorola/simmanager/SeparatorSpinner;->mDialog:Landroid/app/AlertDialog;

    .line 30
    return-void
.end method


# virtual methods
.method public getDropdownAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public performClick()Z
    .locals 4

    .prologue
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 47
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Lcom/motorola/simmanager/SeparatorSpinner$DropdownAdapter;

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/motorola/simmanager/SeparatorSpinner$DropdownAdapter;-><init>(Lcom/motorola/simmanager/SeparatorSpinner;Landroid/widget/SpinnerAdapter;)V

    .line 50
    .local v0, "adapter":Lcom/motorola/simmanager/SeparatorSpinner$DropdownAdapter;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/motorola/simmanager/SeparatorSpinner;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 52
    iget-object v2, p0, Lcom/motorola/simmanager/SeparatorSpinner;->mDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/simmanager/SeparatorSpinner;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    iget-object v2, p0, Lcom/motorola/simmanager/SeparatorSpinner;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 54
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/simmanager/SeparatorSpinner;->mDialog:Landroid/app/AlertDialog;

    .line 56
    :cond_0
    iget-object v2, p0, Lcom/motorola/simmanager/SeparatorSpinner;->mDropdownTitle:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 57
    iget-object v2, p0, Lcom/motorola/simmanager/SeparatorSpinner;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/motorola/simmanager/SeparatorSpinner;->mDropdownTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 59
    :cond_1
    iget-object v2, p0, Lcom/motorola/simmanager/SeparatorSpinner;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v2, v0, v3, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/simmanager/SeparatorSpinner;->mDialog:Landroid/app/AlertDialog;

    .line 62
    const/4 v2, 0x1

    return v2
.end method
