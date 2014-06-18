.class Lcom/android/contacts/activities/ContactEditorActivity$4;
.super Ljava/lang/Object;
.source "ContactEditorActivity.java"

# interfaces
.implements Lcom/android/contacts/editor/ContactEditorFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ContactEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactEditorActivity;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactNotFound()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    .line 223
    return-void
.end method

.method public onContactSplit(Landroid/net/Uri;)V
    .locals 1
    .param p1, "newLookupUri"    # Landroid/net/Uri;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    .line 218
    return-void
.end method

.method public onCustomCreateContactActivityRequested(Lcom/android/contacts/model/account/AccountWithDataSet;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "account"    # Lcom/android/contacts/model/account/AccountWithDataSet;
    .param p2, "intentExtras"    # Landroid/os/Bundle;

    .prologue
    .line 245
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-static {v3}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 247
    .local v1, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v0

    .line 250
    .local v0, "accountType":Lcom/android/contacts/model/account/AccountType;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 251
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, v0, Lcom/android/contacts/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/contacts/model/account/AccountType;->getCreateContactActivityClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const-string v3, "android.intent.action.INSERT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    const-string v3, "vnd.android.cursor.item/contact"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    if-eqz p2, :cond_0

    .line 256
    invoke-virtual {v2, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 258
    :cond_0
    const-string v3, "account_name"

    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    const-string v3, "account_type"

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const-string v3, "data_set"

    iget-object v4, p1, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const/high16 v3, 0x2800000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 263
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v3, v2}, Lcom/android/contacts/activities/ContactEditorActivity;->startActivity(Landroid/content/Intent;)V

    .line 264
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v3}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    .line 265
    return-void
.end method

.method public onCustomEditContactActivityRequested(Lcom/android/contacts/model/account/AccountWithDataSet;Landroid/net/Uri;Landroid/os/Bundle;Z)V
    .locals 5
    .param p1, "account"    # Lcom/android/contacts/model/account/AccountWithDataSet;
    .param p2, "rawContactUri"    # Landroid/net/Uri;
    .param p3, "intentExtras"    # Landroid/os/Bundle;
    .param p4, "redirect"    # Z

    .prologue
    .line 270
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-static {v3}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 272
    .local v1, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v0

    .line 275
    .local v0, "accountType":Lcom/android/contacts/model/account/AccountType;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 276
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, v0, Lcom/android/contacts/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/contacts/model/account/AccountType;->getEditContactActivityClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string v3, "android.intent.action.EDIT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    invoke-virtual {v2, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 280
    if-eqz p3, :cond_0

    .line 281
    invoke-virtual {v2, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 284
    :cond_0
    if-eqz p4, :cond_1

    .line 285
    const/high16 v3, 0x2800000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 287
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v3, v2}, Lcom/android/contacts/activities/ContactEditorActivity;->startActivity(Landroid/content/Intent;)V

    .line 288
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v3}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    .line 292
    :goto_0
    return-void

    .line 290
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v3, v2}, Lcom/android/contacts/activities/ContactEditorActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onEditOtherContactRequested(Landroid/net/Uri;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "contactLookupUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 229
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x2800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 231
    const-string v1, "addToDefaultDirectory"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    const-string v1, "data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 238
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v1, v0}, Lcom/android/contacts/activities/ContactEditorActivity;->startActivity(Landroid/content/Intent;)V

    .line 239
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    .line 240
    return-void
.end method

.method public onReverted()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    .line 203
    return-void
.end method

.method public onSaveFinished(Landroid/content/Intent;)V
    .locals 2
    .param p1, "resultIntent"    # Landroid/content/Intent;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    # getter for: Lcom/android/contacts/activities/ContactEditorActivity;->mFinishActivityOnSaveCompleted:Z
    invoke-static {v0}, Lcom/android/contacts/activities/ContactEditorActivity;->access$100(Lcom/android/contacts/activities/ContactEditorActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0, p1}, Lcom/android/contacts/activities/ContactEditorActivity;->setResult(ILandroid/content/Intent;)V

    .line 212
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    .line 213
    return-void

    .line 208
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 209
    :cond_2
    if-eqz p1, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v0, p1}, Lcom/android/contacts/activities/ContactEditorActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
