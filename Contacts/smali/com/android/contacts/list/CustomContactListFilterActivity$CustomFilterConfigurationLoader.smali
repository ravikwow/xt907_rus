.class public Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;
.super Landroid/content/AsyncTaskLoader;
.source "CustomContactListFilterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/CustomContactListFilterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomFilterConfigurationLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountSet:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 130
    return-void
.end method


# virtual methods
.method public deliverResult(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;)V
    .locals 1
    .param p1, "cursor"    # Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iput-object p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->mAccountSet:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    .line 194
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 124
    check-cast p1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->deliverResult(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;)V

    return-void
.end method

.method public loadInBackground()Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;
    .locals 18

    .prologue
    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 135
    .local v11, "context":Landroid/content/Context;
    invoke-static {v11}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v9

    .line 136
    .local v9, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 138
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v10, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    invoke-direct {v10}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;-><init>()V

    .line 139
    .local v10, "accounts":Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/account/AccountWithDataSet;

    .line 140
    .local v6, "account":Lcom/android/contacts/model/account/AccountWithDataSet;
    invoke-virtual {v9, v6}, Lcom/android/contacts/model/AccountTypeManager;->getAccountTypeForAccount(Lcom/android/contacts/model/account/AccountWithDataSet;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v8

    .line 141
    .local v8, "accountType":Lcom/android/contacts/model/account/AccountType;
    invoke-virtual {v8}, Lcom/android/contacts/model/account/AccountType;->isExtension()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v6, v11}, Lcom/android/contacts/model/account/AccountWithDataSet;->hasData(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    :cond_1
    new-instance v7, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    iget-object v1, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v4, v6, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-direct {v7, v0, v1, v2, v4}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .local v7, "accountDisplay":Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "account_name"

    iget-object v4, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "account_type"

    iget-object v4, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v13

    .line 152
    .local v13, "groupsUri":Landroid/net/Uri$Builder;
    iget-object v1, v6, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 153
    const-string v1, "data_set"

    iget-object v2, v6, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v13, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 156
    :cond_2
    const-string v3, "deleted=0"

    .line 157
    .local v3, "selection":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/ContactsContract$Groups;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v16

    .line 162
    .local v16, "iterator":Landroid/content/EntityIterator;
    const/4 v14, 0x0

    .line 165
    .local v14, "hasGroups":Z
    :goto_1
    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 166
    invoke-interface/range {v16 .. v16}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Entity;

    invoke-virtual {v1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v17

    .line 167
    .local v17, "values":Landroid/content/ContentValues;
    invoke-static/range {v17 .. v17}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->fromBefore(Landroid/content/ContentValues;)Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    move-result-object v12

    .line 168
    .local v12, "group":Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    # invokes: Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->addGroup(Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;)V
    invoke-static {v7, v12}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->access$000(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;)V

    .line 169
    const/4 v14, 0x1

    .line 170
    goto :goto_1

    .line 172
    .end local v12    # "group":Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    .end local v17    # "values":Landroid/content/ContentValues;
    :cond_3
    iget-object v1, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v4, v6, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-static {v0, v1, v2, v4, v14}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->fromSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    move-result-object v1

    iput-object v1, v7, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mUngrouped:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    .line 175
    iget-object v1, v7, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mUngrouped:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    # invokes: Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->addGroup(Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;)V
    invoke-static {v7, v1}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->access$000(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-interface/range {v16 .. v16}, Landroid/content/EntityIterator;->close()V

    .line 180
    invoke-virtual {v10, v7}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 177
    :catchall_0
    move-exception v1

    invoke-interface/range {v16 .. v16}, Landroid/content/EntityIterator;->close()V

    throw v1

    .line 183
    .end local v3    # "selection":Ljava/lang/String;
    .end local v6    # "account":Lcom/android/contacts/model/account/AccountWithDataSet;
    .end local v7    # "accountDisplay":Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;
    .end local v8    # "accountType":Lcom/android/contacts/model/account/AccountType;
    .end local v13    # "groupsUri":Landroid/net/Uri$Builder;
    .end local v14    # "hasGroups":Z
    .end local v16    # "iterator":Landroid/content/EntityIterator;
    :cond_4
    return-object v10
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->loadInBackground()Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 216
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 217
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->onStopLoading()V

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->mAccountSet:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    .line 219
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->mAccountSet:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->mAccountSet:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->deliverResult(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;)V

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->mAccountSet:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    if-nez v0, :cond_2

    .line 205
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->forceLoad()V

    .line 207
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->cancelLoad()Z

    .line 212
    return-void
.end method
