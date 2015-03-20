.class public Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "ContactDetailVCardPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$VCardParseTask;
    }
.end annotation


# instance fields
.field private mCurrentVCardEntry:Lcom/android/vcard/VCardEntry;

.field private mCurrentVCardEntryIndex:I

.field private mCurrentVCardStr:Ljava/lang/String;

.field private mData:Landroid/net/Uri;

.field private mFragment:Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;

.field private mMenuBack:Landroid/view/MenuItem;

.field private mMenuNext:Landroid/view/MenuItem;

.field private mNeedSettingMenu:Z

.field private mPreviewRequest:Lcom/motorola/contacts/vcard/PreviewRequest;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mVCardParseTask:Landroid/os/AsyncTask;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mFragment:Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;

    .line 68
    iput-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mPreviewRequest:Lcom/motorola/contacts/vcard/PreviewRequest;

    .line 69
    iput-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mCurrentVCardEntry:Lcom/android/vcard/VCardEntry;

    .line 70
    iput-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mCurrentVCardStr:Ljava/lang/String;

    .line 71
    iput v1, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mCurrentVCardEntryIndex:I

    .line 72
    iput-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mData:Landroid/net/Uri;

    .line 73
    iput-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 74
    iput-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mVCardParseTask:Landroid/os/AsyncTask;

    .line 75
    iput-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mMenuBack:Landroid/view/MenuItem;

    .line 76
    iput-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mMenuNext:Landroid/view/MenuItem;

    .line 77
    iput-boolean v1, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mNeedSettingMenu:Z

    .line 276
    return-void
.end method

.method static synthetic access$100(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$1000(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mMenuNext:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->previewVCard()V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->cancelVCardParseTask()V

    return-void
.end method

.method static synthetic access$300(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;)Lcom/motorola/contacts/vcard/PreviewRequest;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mPreviewRequest:Lcom/motorola/contacts/vcard/PreviewRequest;

    return-object v0
.end method

.method static synthetic access$302(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;Lcom/motorola/contacts/vcard/PreviewRequest;)Lcom/motorola/contacts/vcard/PreviewRequest;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;
    .param p1, "x1"    # Lcom/motorola/contacts/vcard/PreviewRequest;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mPreviewRequest:Lcom/motorola/contacts/vcard/PreviewRequest;

    return-object p1
.end method

.method static synthetic access$400(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mData:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mNeedSettingMenu:Z

    return v0
.end method

.method static synthetic access$502(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mNeedSettingMenu:Z

    return p1
.end method

.method static synthetic access$600(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mCurrentVCardStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mCurrentVCardStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;

    .prologue
    .line 59
    iget v0, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mCurrentVCardEntryIndex:I

    return v0
.end method

.method static synthetic access$800(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;)Lcom/android/vcard/VCardEntry;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mCurrentVCardEntry:Lcom/android/vcard/VCardEntry;

    return-object v0
.end method

.method static synthetic access$802(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;Lcom/android/vcard/VCardEntry;)Lcom/android/vcard/VCardEntry;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;
    .param p1, "x1"    # Lcom/android/vcard/VCardEntry;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mCurrentVCardEntry:Lcom/android/vcard/VCardEntry;

    return-object p1
.end method

.method static synthetic access$900(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mMenuBack:Landroid/view/MenuItem;

    return-object v0
.end method

.method private declared-synchronized cancelVCardParseTask()V
    .locals 2

    .prologue
    .line 264
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mVCardParseTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mVCardParseTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mVCardParseTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    :cond_0
    monitor-exit p0

    return-void

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized dismissProgressDialog()V
    .locals 2

    .prologue
    .line 257
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    const-string v0, "ContactDetailVCardPreviewActivity"

    const-string v1, "Start to dismiss progressDialog."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    :cond_0
    monitor-exit p0

    return-void

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private previewVCard()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 190
    iget-object v5, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mCurrentVCardEntry:Lcom/android/vcard/VCardEntry;

    if-nez v5, :cond_0

    .line 191
    const v5, 0x7f0c0235

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 194
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 229
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v5, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mFragment:Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;

    if-nez v5, :cond_1

    .line 199
    const v5, 0x7f040085

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setContentView(I)V

    .line 201
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f070115

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;

    iput-object v5, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mFragment:Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;

    .line 205
    :cond_1
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 206
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 207
    .local v0, "actionBar":Landroid/app/ActionBar;
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 208
    iget-object v5, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mCurrentVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v5}, Lcom/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v5, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mCurrentVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v5}, Lcom/android/vcard/VCardEntry;->getOrganizationList()Ljava/util/List;

    move-result-object v3

    .line 211
    .local v3, "organizationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/vcard/VCardEntry$OrganizationData;>;"
    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_5

    .line 212
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/vcard/VCardEntry$OrganizationData;

    invoke-virtual {v5}, Lcom/android/vcard/VCardEntry$OrganizationData;->getOrganizationName()Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "company":Ljava/lang/String;
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/vcard/VCardEntry$OrganizationData;

    invoke-virtual {v5}, Lcom/android/vcard/VCardEntry$OrganizationData;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 214
    .local v4, "title":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 215
    move-object v2, v4

    .line 222
    .local v2, "companyName":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 228
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    .end local v1    # "company":Ljava/lang/String;
    .end local v2    # "companyName":Ljava/lang/String;
    .end local v3    # "organizationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/vcard/VCardEntry$OrganizationData;>;"
    .end local v4    # "title":Ljava/lang/String;
    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mFragment:Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;

    iget-object v6, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mCurrentVCardEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v5, v6}, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->previewVCard(Lcom/android/vcard/VCardEntry;)V

    goto :goto_0

    .line 216
    .restart local v0    # "actionBar":Landroid/app/ActionBar;
    .restart local v1    # "company":Ljava/lang/String;
    .restart local v3    # "organizationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/vcard/VCardEntry$OrganizationData;>;"
    .restart local v4    # "title":Ljava/lang/String;
    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 217
    move-object v2, v1

    .restart local v2    # "companyName":Ljava/lang/String;
    goto :goto_1

    .line 219
    .end local v2    # "companyName":Ljava/lang/String;
    :cond_4
    const v5, 0x7f0c01d0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v7

    aput-object v4, v6, v8

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "companyName":Ljava/lang/String;
    goto :goto_1

    .line 224
    .end local v1    # "company":Ljava/lang/String;
    .end local v2    # "companyName":Ljava/lang/String;
    .end local v4    # "title":Ljava/lang/String;
    :cond_5
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private declared-synchronized showProgressDialog()V
    .locals 3

    .prologue
    .line 232
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 233
    const-string v0, ""

    const v1, 0x7f0c0234

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 237
    iget-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$1;

    invoke-direct {v1, p0}, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$1;-><init>(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    :goto_0
    monitor-exit p0

    return-void

    .line 252
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public importVCard()V
    .locals 4

    .prologue
    .line 270
    move-object v0, p0

    .line 271
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 272
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.android.contacts"

    const-string v3, "com.android.contacts.vcard.ImportVCardActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 274
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    if-eqz p1, :cond_0

    .line 86
    const-string v1, "vcardPreviewRequest"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/motorola/contacts/vcard/PreviewRequest;

    iput-object v1, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mPreviewRequest:Lcom/motorola/contacts/vcard/PreviewRequest;

    .line 87
    const-string v1, "currentVCardStr"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mCurrentVCardStr:Ljava/lang/String;

    .line 88
    const-string v1, "currentVCardEntryIndex"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mCurrentVCardEntryIndex:I

    .line 89
    iget-object v1, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mCurrentVCardStr:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mPreviewRequest:Lcom/motorola/contacts/vcard/PreviewRequest;

    iget-object v2, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mCurrentVCardStr:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/motorola/contacts/vcard/VCardPreviewUtils;->parseVCardStr(Landroid/content/Context;Lcom/motorola/contacts/vcard/PreviewRequest;Ljava/lang/String;)Lcom/android/vcard/VCardEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mCurrentVCardEntry:Lcom/android/vcard/VCardEntry;

    .line 91
    invoke-direct {p0}, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->previewVCard()V

    .line 113
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 97
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mData:Landroid/net/Uri;

    .line 98
    iget-object v1, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mData:Landroid/net/Uri;

    if-nez v1, :cond_1

    .line 99
    const-string v1, "ContactDetailVCardPreviewActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to extract File Uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 105
    :cond_1
    invoke-direct {p0}, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->showProgressDialog()V

    .line 106
    iget-object v1, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mVCardParseTask:Landroid/os/AsyncTask;

    if-nez v1, :cond_2

    .line 107
    new-instance v1, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$VCardParseTask;

    invoke-direct {v1, p0, v2}, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$VCardParseTask;-><init>(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$1;)V

    iput-object v1, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mVCardParseTask:Landroid/os/AsyncTask;

    .line 109
    :cond_2
    iget-object v3, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mVCardParseTask:Landroid/os/AsyncTask;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v3, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 112
    const-string v1, "ContactDetailVCardPreviewActivity"

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    .line 134
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 136
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 137
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f10000e

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 139
    const v1, 0x7f0701ae

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mMenuBack:Landroid/view/MenuItem;

    .line 140
    const v1, 0x7f0701af

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mMenuNext:Landroid/view/MenuItem;

    .line 141
    iget v1, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mCurrentVCardEntryIndex:I

    if-nez v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mMenuBack:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mPreviewRequest:Lcom/motorola/contacts/vcard/PreviewRequest;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mCurrentVCardEntryIndex:I

    iget-object v2, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mPreviewRequest:Lcom/motorola/contacts/vcard/PreviewRequest;

    iget v2, v2, Lcom/motorola/contacts/vcard/PreviewRequest;->entryCount:I

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    .line 145
    iget-object v1, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mMenuNext:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 147
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 126
    const-string v0, "ContactDetailVCardPreviewActivity"

    const-string v1, "Enter onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-direct {p0}, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->dismissProgressDialog()V

    .line 128
    invoke-direct {p0}, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->cancelVCardParseTask()V

    .line 129
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    .line 130
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 152
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v0, v2

    .line 186
    :goto_0
    return v0

    .line 154
    :pswitch_0
    iget v3, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mCurrentVCardEntryIndex:I

    if-lez v3, :cond_2

    .line 155
    iget v3, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mCurrentVCardEntryIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mCurrentVCardEntryIndex:I

    .line 156
    iget v3, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mCurrentVCardEntryIndex:I

    if-nez v3, :cond_0

    .line 157
    iget-object v3, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mMenuBack:Landroid/view/MenuItem;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 159
    :cond_0
    iget-object v2, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mMenuNext:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 160
    iget-object v2, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mMenuNext:Landroid/view/MenuItem;

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 162
    :cond_1
    invoke-direct {p0}, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->showProgressDialog()V

    .line 163
    invoke-direct {p0}, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->cancelVCardParseTask()V

    .line 164
    new-instance v2, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$VCardParseTask;

    invoke-direct {v2, p0, v0}, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$VCardParseTask;-><init>(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$1;)V

    iput-object v2, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mVCardParseTask:Landroid/os/AsyncTask;

    .line 165
    iget-object v2, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mVCardParseTask:Landroid/os/AsyncTask;

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v2, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    move v0, v1

    .line 167
    goto :goto_0

    .line 170
    :pswitch_1
    iget v3, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mCurrentVCardEntryIndex:I

    iget-object v4, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mPreviewRequest:Lcom/motorola/contacts/vcard/PreviewRequest;

    iget v4, v4, Lcom/motorola/contacts/vcard/PreviewRequest;->entryCount:I

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_5

    .line 171
    iget v3, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mCurrentVCardEntryIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mCurrentVCardEntryIndex:I

    .line 172
    iget v3, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mCurrentVCardEntryIndex:I

    iget-object v4, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mPreviewRequest:Lcom/motorola/contacts/vcard/PreviewRequest;

    iget v4, v4, Lcom/motorola/contacts/vcard/PreviewRequest;->entryCount:I

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_3

    .line 173
    iget-object v3, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mMenuNext:Landroid/view/MenuItem;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 175
    :cond_3
    iget-object v2, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mMenuBack:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 176
    iget-object v2, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mMenuBack:Landroid/view/MenuItem;

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 178
    :cond_4
    invoke-direct {p0}, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->showProgressDialog()V

    .line 179
    invoke-direct {p0}, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->cancelVCardParseTask()V

    .line 180
    new-instance v2, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$VCardParseTask;

    invoke-direct {v2, p0, v0}, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$VCardParseTask;-><init>(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$1;)V

    iput-object v2, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mVCardParseTask:Landroid/os/AsyncTask;

    .line 181
    iget-object v2, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mVCardParseTask:Landroid/os/AsyncTask;

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v2, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_5
    move v0, v1

    .line 183
    goto :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x7f0701ae
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/android/contacts/activities/TransactionSafeActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 119
    const-string v0, "vcardPreviewRequest"

    iget-object v1, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mPreviewRequest:Lcom/motorola/contacts/vcard/PreviewRequest;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 120
    const-string v0, "currentVCardStr"

    iget-object v1, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mCurrentVCardStr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v0, "currentVCardEntryIndex"

    iget v1, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mCurrentVCardEntryIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 122
    return-void
.end method
