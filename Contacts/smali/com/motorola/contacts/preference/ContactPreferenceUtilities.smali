.class public Lcom/motorola/contacts/preference/ContactPreferenceUtilities;
.super Ljava/lang/Object;
.source "ContactPreferenceUtilities.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetAvailableAccounts(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "writableOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    .line 80
    .local v0, "mAccountTypes":Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual {v0, p1}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v1

    .line 81
    .local v1, "mAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    return-object v1
.end method

.method public static GetUserPreferredAccountFromSharedPreferences(Landroid/content/Context;)Lcom/android/contacts/model/AccountWithDataSet;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 40
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 41
    .local v2, "sp":Landroid/content/SharedPreferences;
    if-eqz v2, :cond_0

    .line 42
    const-string v3, "com.motorola.contacts.userPreferredAccountType"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "acc_type":Ljava/lang/String;
    const-string v3, "com.motorola.contacts.userPreferredAccountName"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "acc_name":Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 45
    new-instance v3, Lcom/android/contacts/model/AccountWithDataSet;

    invoke-direct {v3, v0, v1, v4}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .end local v0    # "acc_name":Ljava/lang/String;
    .end local v1    # "acc_type":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 48
    :cond_0
    const-string v3, "MotorolaContactPreferenceUtilities"

    const-string v5, "SharedPreferences sp is null"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v3, v4

    .line 50
    goto :goto_0
.end method

.method public static GetUserPreferredAccountIndex(Landroid/content/Context;Z)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "writableOnly"    # Z

    .prologue
    .line 65
    invoke-static {p0, p1}, Lcom/motorola/contacts/preference/ContactPreferenceUtilities;->GetAvailableAccounts(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v1

    .line 66
    .local v1, "mAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-static {p0}, Lcom/motorola/contacts/preference/ContactPreferenceUtilities;->GetUserPreferredAccountFromSharedPreferences(Landroid/content/Context;)Lcom/android/contacts/model/AccountWithDataSet;

    move-result-object v2

    .line 67
    .local v2, "userAccount":Landroid/accounts/Account;
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 68
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 69
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/AccountWithDataSet;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v4, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/AccountWithDataSet;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v4, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 68
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static IfUserChoiceRemembered(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 56
    .local v0, "sp":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 57
    const-string v2, "com.motorola.contacts.userPreferRemembered"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 61
    :goto_0
    return v1

    .line 59
    :cond_0
    const-string v2, "MotorolaContactPreferenceUtilities"

    const-string v3, "SharedPreferences sp is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static SaveUserPreferredAccountToSharedPreferences(Landroid/content/Context;ZLandroid/accounts/Account;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isRemembered"    # Z
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    .line 19
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 20
    .local v1, "sp":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_2

    .line 21
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 22
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_1

    .line 23
    const-string v2, "com.motorola.contacts.userPreferRemembered"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 24
    if-eqz p2, :cond_0

    .line 25
    const-string v2, "com.motorola.contacts.userPreferredAccountType"

    iget-object v3, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 26
    const-string v2, "com.motorola.contacts.userPreferredAccountName"

    iget-object v3, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 28
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 36
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 30
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const-string v2, "MotorolaContactPreferenceUtilities"

    const-string v3, "SharedPreferences.Editor is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 34
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    const-string v2, "MotorolaContactPreferenceUtilities"

    const-string v3, "SharedPreferences sp is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
