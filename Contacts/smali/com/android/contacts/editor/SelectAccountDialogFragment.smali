.class public final Lcom/android/contacts/editor/SelectAccountDialogFragment;
.super Landroid/app/DialogFragment;
.source "SelectAccountDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;
    }
.end annotation


# instance fields
.field private lastSelectedIndex:I

.field private userSelection:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment;->lastSelectedIndex:I

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/SelectAccountDialogFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/SelectAccountDialogFragment;

    .prologue
    .line 45
    iget v0, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment;->lastSelectedIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/contacts/editor/SelectAccountDialogFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/SelectAccountDialogFragment;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment;->lastSelectedIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/contacts/editor/SelectAccountDialogFragment;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/SelectAccountDialogFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment;->userSelection:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/editor/SelectAccountDialogFragment;Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/SelectAccountDialogFragment;
    .param p1, "x1"    # Lcom/android/contacts/model/AccountWithDataSet;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->onAccountSelected(Lcom/android/contacts/model/AccountWithDataSet;)V

    return-void
.end method

.method private onAccountSelected(Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 4
    .param p1, "account"    # Lcom/android/contacts/model/AccountWithDataSet;

    .prologue
    .line 188
    invoke-virtual {p0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    .line 189
    .local v1, "targetFragment":Landroid/app/Fragment;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 190
    check-cast v0, Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;

    .line 191
    .local v0, "target":Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "extra_args"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;->onAccountChosen(Lcom/android/contacts/model/AccountWithDataSet;Landroid/os/Bundle;)V

    .line 193
    .end local v0    # "target":Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;
    :cond_0
    return-void
.end method

.method public static show(Landroid/app/FragmentManager;Landroid/app/Fragment;ILcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p2, "titleResourceId"    # I
    .param p3, "accountListFilter"    # Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;
    .param p4, "extraArgs"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroid/app/Fragment;",
            ":",
            "Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;",
            ">(",
            "Landroid/app/FragmentManager;",
            "TF;I",
            "Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "targetFragment":Landroid/app/Fragment;, "TF;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 74
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "title_res_id"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 75
    const-string v2, "list_filter"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 76
    const-string v2, "extra_args"

    if-nez p4, :cond_0

    sget-object p4, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .end local p4    # "extraArgs":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 78
    new-instance v1, Lcom/android/contacts/editor/SelectAccountDialogFragment;

    invoke-direct {v1}, Lcom/android/contacts/editor/SelectAccountDialogFragment;-><init>()V

    .line 79
    .local v1, "instance":Lcom/android/contacts/editor/SelectAccountDialogFragment;
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 80
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 81
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 82
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 177
    invoke-virtual {p0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    .line 178
    .local v1, "targetFragment":Landroid/app/Fragment;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 179
    check-cast v0, Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;

    .line 180
    .local v0, "target":Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;
    invoke-interface {v0}, Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;->onAccountSelectorCancelled()V

    .line 182
    .end local v0    # "target":Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, -0x1

    const/4 v2, 0x1

    const/4 v10, 0x0

    .line 86
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v3, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 87
    .local v3, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 89
    .local v1, "args":Landroid/os/Bundle;
    const-string v9, "list_filter"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    .line 90
    .local v5, "filter":Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;
    new-instance v0, Lcom/android/contacts/util/AccountsListAdapter;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v0, v9, v5}, Lcom/android/contacts/util/AccountsListAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;)V

    .line 93
    .local v0, "accountAdapter":Lcom/android/contacts/util/AccountsListAdapter;
    new-instance v4, Lcom/android/contacts/editor/SelectAccountDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/android/contacts/editor/SelectAccountDialogFragment$1;-><init>(Lcom/android/contacts/editor/SelectAccountDialogFragment;)V

    .line 105
    .local v4, "clickListener":Landroid/content/DialogInterface$OnClickListener;
    const-string v9, "title_res_id"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 107
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v2}, Lcom/motorola/contacts/preference/ContactPreferenceUtilities;->GetUserPreferredAccountIndex(Landroid/content/Context;Z)I

    move-result v9

    iput v9, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment;->lastSelectedIndex:I

    .line 109
    iget v9, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment;->lastSelectedIndex:I

    if-ne v9, v12, :cond_0

    .line 110
    iput v10, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment;->lastSelectedIndex:I

    .line 112
    :cond_0
    iget v9, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment;->lastSelectedIndex:I

    invoke-virtual {v3, v0, v9, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 114
    const v9, 0x104000a

    new-instance v11, Lcom/android/contacts/editor/SelectAccountDialogFragment$2;

    invoke-direct {v11, p0, v3, v0}, Lcom/android/contacts/editor/SelectAccountDialogFragment$2;-><init>(Lcom/android/contacts/editor/SelectAccountDialogFragment;Landroid/app/AlertDialog$Builder;Lcom/android/contacts/util/AccountsListAdapter;)V

    invoke-virtual {v3, v9, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 128
    const/high16 v9, 0x1040000

    new-instance v11, Lcom/android/contacts/editor/SelectAccountDialogFragment$3;

    invoke-direct {v11, p0}, Lcom/android/contacts/editor/SelectAccountDialogFragment$3;-><init>(Lcom/android/contacts/editor/SelectAccountDialogFragment;)V

    invoke-virtual {v3, v9, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 138
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 139
    .local v6, "mInflater":Landroid/view/LayoutInflater;
    const v9, 0x7f040003

    const/4 v11, 0x0

    invoke-virtual {v6, v9, v11, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 141
    .local v8, "resultView":Landroid/view/View;
    const v9, 0x7f07001e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    iput-object v9, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment;->userSelection:Landroid/widget/CheckBox;

    .line 143
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/motorola/contacts/preference/ContactPreferenceUtilities;->IfUserChoiceRemembered(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v2}, Lcom/motorola/contacts/preference/ContactPreferenceUtilities;->GetUserPreferredAccountIndex(Landroid/content/Context;Z)I

    move-result v9

    if-eq v9, v12, :cond_1

    .line 145
    .local v2, "bRemembered":Z
    :goto_0
    iget-object v9, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment;->userSelection:Landroid/widget/CheckBox;

    invoke-virtual {v9, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 149
    iget-object v9, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment;->userSelection:Landroid/widget/CheckBox;

    new-instance v10, Lcom/android/contacts/editor/SelectAccountDialogFragment$4;

    invoke-direct {v10, p0}, Lcom/android/contacts/editor/SelectAccountDialogFragment$4;-><init>(Lcom/android/contacts/editor/SelectAccountDialogFragment;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    new-instance v9, Lcom/android/contacts/editor/SelectAccountDialogFragment$5;

    invoke-direct {v9, p0}, Lcom/android/contacts/editor/SelectAccountDialogFragment$5;-><init>(Lcom/android/contacts/editor/SelectAccountDialogFragment;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 170
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 171
    .local v7, "result":Landroid/app/AlertDialog;
    return-object v7

    .end local v2    # "bRemembered":Z
    .end local v7    # "result":Landroid/app/AlertDialog;
    :cond_1
    move v2, v10

    .line 143
    goto :goto_0
.end method
