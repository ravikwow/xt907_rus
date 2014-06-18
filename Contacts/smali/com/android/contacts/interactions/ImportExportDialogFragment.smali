.class public Lcom/android/contacts/interactions/ImportExportDialogFragment;
.super Landroid/app/DialogFragment;
.source "ImportExportDialogFragment.java"

# interfaces
.implements Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;


# instance fields
.field private final LOOKUP_PROJECTION:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 66
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "lookup"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->LOOKUP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/interactions/ImportExportDialogFragment;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/interactions/ImportExportDialogFragment;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->handleImportRequest(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/contacts/interactions/ImportExportDialogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/interactions/ImportExportDialogFragment;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->doShareVisibleContacts()V

    return-void
.end method

.method private doShareVisibleContacts()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 200
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->LOOKUP_PROJECTION:[Ljava/lang/String;

    const-string v3, "in_visible_group!=0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 202
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 204
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0105

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .local v10, "uriListBuilder":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 212
    .local v7, "index":I
    :cond_2
    if-eqz v7, :cond_3

    .line 213
    const/16 v0, 0x3a

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    :cond_3
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    add-int/lit8 v7, v7, 0x1

    .line 216
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 217
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_MULTI_VCARD_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 221
    .local v9, "uri":Landroid/net/Uri;
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    .local v8, "intent":Landroid/content/Intent;
    const-string v0, "text/x-vcard"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v8, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 224
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7    # "index":I
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "uri":Landroid/net/Uri;
    .end local v10    # "uriListBuilder":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private handleImportRequest(I)Z
    .locals 8
    .param p1, "resId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 241
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 243
    .local v1, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountTypeManager;->getAccountsWithoutCard(Z)Ljava/util/List;

    move-result-object v0

    .line 245
    .local v0, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/account/AccountWithDataSet;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 246
    .local v3, "size":I
    if-le v3, v5, :cond_0

    .line 248
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 249
    .local v2, "args":Landroid/os/Bundle;
    const-string v5, "resourceId"

    invoke-virtual {v2, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 250
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f0b010d

    sget-object v7, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_WITHOUT_CARD:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    invoke-static {v5, p0, v6, v7, v2}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;ILcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V

    .line 265
    .end local v2    # "args":Landroid/os/Bundle;
    :goto_0
    return v4

    .line 263
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-ne v3, v5, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/account/AccountWithDataSet;

    :goto_1
    invoke-static {v6, p1, v4}, Lcom/android/contacts/util/AccountSelectionUtil;->doImport(Landroid/content/Context;ILcom/android/contacts/model/account/AccountWithDataSet;)V

    move v4, v5

    .line 265
    goto :goto_0

    .line 263
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static show(Landroid/app/FragmentManager;Z)V
    .locals 3
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p1, "contactsAreAvailable"    # Z

    .prologue
    .line 72
    new-instance v1, Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-direct {v1}, Lcom/android/contacts/interactions/ImportExportDialogFragment;-><init>()V

    .line 73
    .local v1, "fragment":Lcom/android/contacts/interactions/ImportExportDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 74
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "CONTACTS_ARE_AVAILABLE"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 75
    invoke-virtual {v1, v0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 76
    const-string v2, "ImportExportDialogFragment"

    invoke-virtual {v1, p0, v2}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 77
    return-void
.end method


# virtual methods
.method public onAccountChosen(Lcom/android/contacts/model/account/AccountWithDataSet;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "account"    # Lcom/android/contacts/model/account/AccountWithDataSet;
    .param p2, "extraArgs"    # Landroid/os/Bundle;

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "resourceId"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/android/contacts/util/AccountSelectionUtil;->doImport(Landroid/content/Context;ILcom/android/contacts/model/account/AccountWithDataSet;)V

    .line 277
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->dismiss()V

    .line 278
    return-void
.end method

.method public onAccountSelectorCancelled()V
    .locals 0

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->dismiss()V

    .line 284
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v8, 0x7f0b00bb

    .line 82
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 83
    .local v5, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 85
    .local v3, "dialogInflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "CONTACTS_ARE_AVAILABLE"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 88
    .local v2, "contactsAreAvailable":Z
    new-instance v0, Lcom/android/contacts/interactions/ImportExportDialogFragment$1;

    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f040087

    invoke-direct {v0, p0, v6, v7, v3}, Lcom/android/contacts/interactions/ImportExportDialogFragment$1;-><init>(Lcom/android/contacts/interactions/ImportExportDialogFragment;Landroid/content/Context;ILandroid/view/LayoutInflater;)V

    .line 101
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/motorola/contacts/util/SimManagerUtil;->isMotSimManagerInstalled(Landroid/content/Context;)Z

    move-result v4

    .line 103
    .local v4, "hasSimManager":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v6

    if-eqz v6, :cond_0

    const v6, 0x7f0a0012

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_0

    if-nez v4, :cond_0

    .line 106
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 108
    :cond_0
    const/high16 v6, 0x7f0a0000

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 109
    const v6, 0x7f0b00be

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 113
    :cond_1
    if-eqz v4, :cond_2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 114
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 118
    :cond_2
    const v6, 0x7f0a0003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 119
    if-eqz v2, :cond_3

    .line 120
    const v6, 0x7f0b00bf

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 125
    :cond_3
    if-eqz v4, :cond_4

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v2, :cond_4

    .line 127
    const v6, 0x7f0b00bc

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 129
    :cond_4
    if-eqz v4, :cond_5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 130
    const v6, 0x7f0b00bd

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 134
    :cond_5
    const v6, 0x7f0a0004

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 135
    if-eqz v2, :cond_6

    .line 136
    const v6, 0x7f0b00c0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 140
    :cond_6
    new-instance v1, Lcom/android/contacts/interactions/ImportExportDialogFragment$2;

    invoke-direct {v1, p0, v0}, Lcom/android/contacts/interactions/ImportExportDialogFragment$2;-><init>(Lcom/android/contacts/interactions/ImportExportDialogFragment;Landroid/widget/ArrayAdapter;)V

    .line 190
    .local v1, "clickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v7, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v2, :cond_7

    const v6, 0x7f0b0101

    :goto_0
    invoke-virtual {v7, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v6, v0, v7, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6

    :cond_7
    const v6, 0x7f0b0102

    goto :goto_0
.end method
