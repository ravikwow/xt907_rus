.class public Lcom/android/contacts/dialpad/DialpadFragment$VMDataRoamingDialogFragment;
.super Landroid/app/DialogFragment;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VMDataRoamingDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2405
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Fragment;)V
    .locals 3
    .param p0, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 2407
    # getter for: Lcom/android/contacts/dialpad/DialpadFragment;->DBG:Z
    invoke-static {}, Lcom/android/contacts/dialpad/DialpadFragment;->access$300()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "VMDataRoamingDialogFragment"

    # invokes: Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/contacts/dialpad/DialpadFragment;->access$400(Ljava/lang/String;)V

    .line 2408
    :cond_0
    new-instance v0, Lcom/android/contacts/dialpad/DialpadFragment$VMDataRoamingDialogFragment;

    invoke-direct {v0}, Lcom/android/contacts/dialpad/DialpadFragment$VMDataRoamingDialogFragment;-><init>()V

    .line 2409
    .local v0, "dialog":Lcom/android/contacts/dialpad/DialpadFragment$VMDataRoamingDialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2410
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "VMDataRoaming"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2411
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2415
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0400b5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2416
    .local v2, "dialogView":Landroid/view/View;
    const v4, 0x7f070179

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 2417
    .local v0, "VMVVM_roaming_remembermychoice":Landroid/widget/CheckBox;
    const v4, 0x7f070178

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2418
    .local v3, "textMsg":Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0287

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2420
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0c0286

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c0285

    new-instance v6, Lcom/android/contacts/dialpad/DialpadFragment$VMDataRoamingDialogFragment$2;

    invoke-direct {v6, p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment$VMDataRoamingDialogFragment$2;-><init>(Lcom/android/contacts/dialpad/DialpadFragment$VMDataRoamingDialogFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c00a5

    new-instance v6, Lcom/android/contacts/dialpad/DialpadFragment$VMDataRoamingDialogFragment$1;

    invoke-direct {v6, p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment$VMDataRoamingDialogFragment$1;-><init>(Lcom/android/contacts/dialpad/DialpadFragment$VMDataRoamingDialogFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 2443
    .local v1, "dialog":Landroid/app/AlertDialog;
    return-object v1
.end method
