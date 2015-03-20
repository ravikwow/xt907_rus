.class public Lcom/motorola/contacts/preference/DefaultAccountPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "DefaultAccountPreferenceFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;


# instance fields
.field private mPreference:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-static {p1}, Lcom/motorola/contacts/preference/ContactPreferenceUtilities;->IfUserChoiceRemembered(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/motorola/contacts/preference/ContactPreferenceUtilities;->GetUserPreferredAccountIndex(Landroid/content/Context;Z)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 86
    invoke-static {p1}, Lcom/motorola/contacts/preference/ContactPreferenceUtilities;->GetUserPreferredAccountFromSharedPreferences(Landroid/content/Context;)Lcom/android/contacts/model/AccountWithDataSet;

    move-result-object v0

    .line 87
    .local v0, "userPreAcc":Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 88
    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 91
    .end local v0    # "userPreAcc":Landroid/accounts/Account;
    :goto_0
    return-object v1

    :cond_0
    const v1, 0x7f0c022e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public onAccountChosen(Lcom/android/contacts/model/AccountWithDataSet;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "account"    # Lcom/android/contacts/model/AccountWithDataSet;
    .param p2, "extraArgs"    # Landroid/os/Bundle;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/motorola/contacts/preference/DefaultAccountPreferenceFragment;->mPreference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/motorola/contacts/preference/DefaultAccountPreferenceFragment;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/motorola/contacts/preference/DefaultAccountPreferenceFragment;->getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 74
    return-void
.end method

.method public onAccountSelectorCancelled()V
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 79
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 27
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const/high16 v1, 0x7f050000

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 37
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "contact_storage_preference"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/contacts/preference/DefaultAccountPreferenceFragment;->mPreference:Landroid/preference/Preference;

    .line 38
    iget-object v1, p0, Lcom/motorola/contacts/preference/DefaultAccountPreferenceFragment;->mPreference:Landroid/preference/Preference;

    if-nez v1, :cond_0

    .line 39
    const-string v1, "DefaultAccountPreferenceFragment"

    const-string v2, "can\'t find preference: contact_storage_preference"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/motorola/contacts/preference/DefaultAccountPreferenceFragment;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 43
    iget-object v1, p0, Lcom/motorola/contacts/preference/DefaultAccountPreferenceFragment;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/motorola/contacts/preference/ContactPreferenceUtilities;->GetAvailableAccounts(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v0

    .line 45
    .local v0, "mAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 46
    iget-object v1, p0, Lcom/motorola/contacts/preference/DefaultAccountPreferenceFragment;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/motorola/contacts/preference/DefaultAccountPreferenceFragment;->mPreference:Landroid/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 64
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0c0134

    sget-object v2, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    const/4 v3, 0x0

    invoke-static {v0, p0, v1, v2, v3}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;ILcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V

    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 55
    iget-object v0, p0, Lcom/motorola/contacts/preference/DefaultAccountPreferenceFragment;->mPreference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/motorola/contacts/preference/DefaultAccountPreferenceFragment;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/motorola/contacts/preference/DefaultAccountPreferenceFragment;->getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 56
    return-void
.end method
