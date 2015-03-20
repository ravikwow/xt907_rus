.class public Lcom/android/contacts/util/AccountSelectionUtil;
.super Ljava/lang/Object;
.source "AccountSelectionUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static lastSelectedIndex:I

.field public static mPath:Landroid/net/Uri;

.field public static mVCardShare:Z

.field public static onGlobalCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public static onGlobalClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public static userSelection:Landroid/widget/CheckBox;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/util/AccountSelectionUtil;->mVCardShare:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public static doImport(Landroid/content/Context;ILcom/android/contacts/model/AccountWithDataSet;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "account"    # Lcom/android/contacts/model/AccountWithDataSet;

    .prologue
    .line 266
    packed-switch p1, :pswitch_data_0

    .line 278
    :goto_0
    :pswitch_0
    return-void

    .line 269
    :pswitch_1
    invoke-static {p0, p2}, Lcom/android/contacts/util/AccountSelectionUtil;->doImportFromSimManager(Landroid/content/Context;Lcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_0

    .line 274
    :pswitch_2
    invoke-static {p0, p2}, Lcom/android/contacts/util/AccountSelectionUtil;->doImportFromSdCard(Landroid/content/Context;Lcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_0

    .line 266
    :pswitch_data_0
    .packed-switch 0x7f0c00dd
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static doImportFromSdCard(Landroid/content/Context;Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 3

    .prologue
    .line 306
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 308
    if-eqz p1, :cond_0

    .line 309
    const-string v1, "account_name"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const-string v1, "account_type"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    const-string v1, "data_set"

    iget-object v2, p1, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    :cond_0
    sget-boolean v1, Lcom/android/contacts/util/AccountSelectionUtil;->mVCardShare:Z

    if-eqz v1, :cond_1

    .line 315
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    sget-object v1, Lcom/android/contacts/util/AccountSelectionUtil;->mPath:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 318
    :cond_1
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/contacts/util/AccountSelectionUtil;->mVCardShare:Z

    .line 319
    const/4 v1, 0x0

    sput-object v1, Lcom/android/contacts/util/AccountSelectionUtil;->mPath:Landroid/net/Uri;

    .line 320
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 321
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 322
    return-void
.end method

.method public static doImportFromSimManager(Landroid/content/Context;Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/android/contacts/model/AccountWithDataSet;

    .prologue
    .line 282
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.android.simmanager.ACTION_IMPORT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 283
    .local v0, "importIntent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 284
    const-string v1, "account_name"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    const-string v1, "account_type"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    const-string v1, "data_set"

    iget-object v2, p1, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    :cond_0
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 289
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 290
    return-void
.end method

.method public static getSelectAccountDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 117
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 118
    .local v1, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v7

    .line 120
    .local v7, "writableAccountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    const-string v8, "AccountSelectionUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The number of available accounts: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    if-nez p2, :cond_1

    .line 159
    new-instance v8, Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;

    invoke-direct {v8, p0, v7, p1}, Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    sput-object v8, Lcom/android/contacts/util/AccountSelectionUtil;->onGlobalClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 166
    :goto_0
    if-nez p3, :cond_2

    .line 167
    new-instance v8, Lcom/android/contacts/util/AccountSelectionUtil$1;

    invoke-direct {v8}, Lcom/android/contacts/util/AccountSelectionUtil$1;-><init>()V

    sput-object v8, Lcom/android/contacts/util/AccountSelectionUtil;->onGlobalCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 175
    :goto_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 178
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v0, Lcom/android/contacts/util/AccountsListAdapter;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v8

    sget-object v9, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    invoke-direct {v0, v8, v9}, Lcom/android/contacts/util/AccountsListAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;)V

    .line 182
    .local v0, "accountAdapter":Lcom/android/contacts/util/AccountsListAdapter;
    new-instance v3, Lcom/android/contacts/util/AccountSelectionUtil$2;

    invoke-direct {v3}, Lcom/android/contacts/util/AccountSelectionUtil$2;-><init>()V

    .line 190
    .local v3, "clickListener":Landroid/content/DialogInterface$OnClickListener;
    const v8, 0x7f0c0134

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 192
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/motorola/contacts/preference/ContactPreferenceUtilities;->GetUserPreferredAccountIndex(Landroid/content/Context;Z)I

    move-result v8

    sput v8, Lcom/android/contacts/util/AccountSelectionUtil;->lastSelectedIndex:I

    .line 194
    sget v8, Lcom/android/contacts/util/AccountSelectionUtil;->lastSelectedIndex:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    .line 195
    const/4 v8, 0x0

    sput v8, Lcom/android/contacts/util/AccountSelectionUtil;->lastSelectedIndex:I

    .line 197
    :cond_0
    sget v8, Lcom/android/contacts/util/AccountSelectionUtil;->lastSelectedIndex:I

    invoke-virtual {v2, v0, v8, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 199
    const v8, 0x104000a

    new-instance v9, Lcom/android/contacts/util/AccountSelectionUtil$3;

    invoke-direct {v9, v0, v2}, Lcom/android/contacts/util/AccountSelectionUtil$3;-><init>(Lcom/android/contacts/util/AccountsListAdapter;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v2, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 218
    const/high16 v8, 0x1040000

    new-instance v9, Lcom/android/contacts/util/AccountSelectionUtil$4;

    invoke-direct {v9}, Lcom/android/contacts/util/AccountSelectionUtil$4;-><init>()V

    invoke-virtual {v2, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 225
    invoke-virtual {v0}, Lcom/android/contacts/util/AccountsListAdapter;->getCount()I

    move-result v8

    if-eqz v8, :cond_3

    sget v8, Lcom/android/contacts/util/AccountSelectionUtil;->lastSelectedIndex:I

    invoke-virtual {v0}, Lcom/android/contacts/util/AccountsListAdapter;->getCount()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 226
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 227
    .local v4, "mInflater":Landroid/view/LayoutInflater;
    const v8, 0x7f040003

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v4, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 228
    .local v5, "resultView":Landroid/view/View;
    const v8, 0x7f07001e

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    sput-object v8, Lcom/android/contacts/util/AccountSelectionUtil;->userSelection:Landroid/widget/CheckBox;

    .line 229
    sget-object v8, Lcom/android/contacts/util/AccountSelectionUtil;->userSelection:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/motorola/contacts/preference/ContactPreferenceUtilities;->IfUserChoiceRemembered(Landroid/content/Context;)Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 232
    sget-object v8, Lcom/android/contacts/util/AccountSelectionUtil;->userSelection:Landroid/widget/CheckBox;

    new-instance v9, Lcom/android/contacts/util/AccountSelectionUtil$5;

    invoke-direct {v9}, Lcom/android/contacts/util/AccountSelectionUtil$5;-><init>()V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    new-instance v8, Lcom/android/contacts/util/AccountSelectionUtil$6;

    invoke-direct {v8}, Lcom/android/contacts/util/AccountSelectionUtil$6;-><init>()V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 259
    .end local v4    # "mInflater":Landroid/view/LayoutInflater;
    .end local v5    # "resultView":Landroid/view/View;
    :goto_2
    sget-object v8, Lcom/android/contacts/util/AccountSelectionUtil;->onGlobalCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 261
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    return-object v8

    .line 163
    .end local v0    # "accountAdapter":Lcom/android/contacts/util/AccountsListAdapter;
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "clickListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_1
    sput-object p2, Lcom/android/contacts/util/AccountSelectionUtil;->onGlobalClickListener:Landroid/content/DialogInterface$OnClickListener;

    goto/16 :goto_0

    .line 173
    :cond_2
    sput-object p3, Lcom/android/contacts/util/AccountSelectionUtil;->onGlobalCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    goto/16 :goto_1

    .line 253
    .restart local v0    # "accountAdapter":Lcom/android/contacts/util/AccountsListAdapter;
    .restart local v2    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v3    # "clickListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_3
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 254
    .local v6, "textview":Landroid/widget/TextView;
    const v8, 0x7f0c023c

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    .line 255
    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    goto :goto_2
.end method
