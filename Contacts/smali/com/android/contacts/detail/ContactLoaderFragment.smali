.class public Lcom/android/contacts/detail/ContactLoaderFragment;
.super Landroid/app/Fragment;
.source "ContactLoaderFragment.java"

# interfaces
.implements Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContactData:Lcom/android/contacts/model/Contact;

.field private mContext:Landroid/content/Context;

.field private mCustomRingtone:Ljava/lang/String;

.field private final mDetailLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/contacts/model/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

.field private mLookupUri:Landroid/net/Uri;

.field private mOptionsMenuCanCreateShortcut:Z

.field private mOptionsMenuEditable:Z

.field private mOptionsMenuOptions:Z

.field private mOptionsMenuShareable:Z

.field private mSendToVoicemailState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 183
    new-instance v0, Lcom/android/contacts/detail/ContactLoaderFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactLoaderFragment$1;-><init>(Lcom/android/contacts/detail/ContactLoaderFragment;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mDetailLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/detail/ContactLoaderFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactLoaderFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/detail/ContactLoaderFragment;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactLoaderFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/detail/ContactLoaderFragment;)Lcom/android/contacts/model/Contact;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactLoaderFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/model/Contact;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/contacts/detail/ContactLoaderFragment;Lcom/android/contacts/model/Contact;)Lcom/android/contacts/model/Contact;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactLoaderFragment;
    .param p1, "x1"    # Lcom/android/contacts/model/Contact;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/model/Contact;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/contacts/detail/ContactLoaderFragment;)Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactLoaderFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    return-object v0
.end method

.method private createLauncherShortcutWithContact()V
    .locals 3

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 361
    .local v1, "parentActivity":Landroid/app/Activity;
    new-instance v0, Lcom/android/contacts/list/ShortcutIntentBuilder;

    new-instance v2, Lcom/android/contacts/detail/ContactLoaderFragment$2;

    invoke-direct {v2, p0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment$2;-><init>(Lcom/android/contacts/detail/ContactLoaderFragment;Landroid/app/Activity;)V

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/list/ShortcutIntentBuilder;-><init>(Landroid/content/Context;Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;)V

    .line 379
    .local v0, "builder":Lcom/android/contacts/list/ShortcutIntentBuilder;
    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ShortcutIntentBuilder;->createContactShortcutIntent(Landroid/net/Uri;)V

    .line 380
    return-void
.end method

.method private doPickRingtone()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 414
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 416
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 418
    const-string v2, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 420
    const-string v2, "android.intent.extra.ringtone.SHOW_SILENT"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 423
    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mCustomRingtone:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 424
    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mCustomRingtone:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 431
    .local v1, "ringtoneUri":Landroid/net/Uri;
    :goto_0
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 434
    invoke-virtual {p0, v0, v4}, Lcom/android/contacts/detail/ContactLoaderFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 435
    return-void

    .line 427
    .end local v1    # "ringtoneUri":Landroid/net/Uri;
    :cond_0
    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    .restart local v1    # "ringtoneUri":Landroid/net/Uri;
    goto :goto_0
.end method

.method private getPreAuthorizedUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 386
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 387
    .local v1, "uriBundle":Landroid/os/Bundle;
    const-string v2, "uri_to_authorize"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 388
    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "authorize"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 393
    .local v0, "authResponse":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 394
    const-string v2, "authorized_uri"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 397
    :goto_0
    return-object v2

    :cond_0
    move-object v2, p1

    goto :goto_0
.end method

.method private handleRingtonePicked(Landroid/net/Uri;)V
    .locals 4
    .param p1, "pickedUri"    # Landroid/net/Uri;

    .prologue
    .line 453
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 454
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mCustomRingtone:Ljava/lang/String;

    .line 458
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mCustomRingtone:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/contacts/ContactSaveService;->createSetRingtone(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 460
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 461
    return-void

    .line 456
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mCustomRingtone:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public handleKeyDown(I)Z
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    .line 403
    packed-switch p1, :pswitch_data_0

    .line 409
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 405
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;->onDeleteRequested(Landroid/net/Uri;)V

    .line 406
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 403
    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch
.end method

.method public isContactCanCreateShortcut()Z
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/model/Contact;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->isUserProfile()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContactEditable()Z
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/model/Contact;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContactOptionsChangeEnabled()Z
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/model/Contact;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContactShareable()Z
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/model/Contact;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOptionsMenuChanged()Z
    .locals 2

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuOptions:Z

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactOptionsChangeEnabled()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactEditable()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuShareable:Z

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactShareable()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuCanCreateShortcut:Z

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactCanCreateShortcut()Z

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadUri(Landroid/net/Uri;)V
    .locals 4
    .param p1, "lookupUri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x1

    .line 157
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-static {p1, v1}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iput-object p1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    .line 163
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-nez v1, :cond_2

    .line 164
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 165
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/model/Contact;

    .line 166
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-interface {v1, v2}, Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;->onDetailsLoaded(Lcom/android/contacts/model/Contact;)V

    goto :goto_0

    .line 169
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 170
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 171
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "contactUri"

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 172
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mDetailLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v3, v0, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 147
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 149
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 150
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 151
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "contactUri"

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mDetailLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 154
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 439
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 450
    :goto_0
    return-void

    .line 443
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 445
    :pswitch_0
    const-string v1, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 446
    .local v0, "pickedUri":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->handleRingtonePicked(Landroid/net/Uri;)V

    goto :goto_0

    .line 443
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 133
    iput-object p1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    .line 134
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 119
    if-eqz p1, :cond_0

    .line 120
    const-string v0, "contactUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    .line 122
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 228
    const v0, 0x7f10000d

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 229
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 138
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->setHasOptionsMenu(Z)V

    .line 142
    const v0, 0x7f040018

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 294
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :cond_0
    :goto_0
    move v7, v6

    .line 350
    :cond_1
    :goto_1
    return v7

    .line 296
    :pswitch_0
    iget-object v7, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-interface {v7, v8}, Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;->onEditRequested(Landroid/net/Uri;)V

    goto :goto_0

    .line 300
    :pswitch_1
    iget-object v6, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-interface {v6, v8}, Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;->onDeleteRequested(Landroid/net/Uri;)V

    goto :goto_1

    .line 304
    :pswitch_2
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/model/Contact;

    if-nez v8, :cond_2

    move v7, v6

    goto :goto_1

    .line 305
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->doPickRingtone()V

    goto :goto_1

    .line 309
    :pswitch_3
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/model/Contact;

    if-nez v8, :cond_3

    move v7, v6

    goto :goto_1

    .line 311
    :cond_3
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v8}, Lcom/android/contacts/model/Contact;->getLookupKey()Ljava/lang/String;

    move-result-object v4

    .line 312
    .local v4, "lookupKey":Ljava/lang/String;
    sget-object v8, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    invoke-static {v8, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 313
    .local v5, "shareUri":Landroid/net/Uri;
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v8}, Lcom/android/contacts/model/Contact;->isUserProfile()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 317
    invoke-direct {p0, v5}, Lcom/android/contacts/detail/ContactLoaderFragment;->getPreAuthorizedUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 320
    :cond_4
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.SEND"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    .local v3, "intent":Landroid/content/Intent;
    const-string v8, "text/x-vcard"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    const-string v8, "android.intent.extra.STREAM"

    invoke-virtual {v3, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 325
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    const v9, 0x7f0b0104

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 326
    .local v1, "chooseTitle":Ljava/lang/CharSequence;
    invoke-static {v3, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 329
    .local v0, "chooseIntent":Landroid/content/Intent;
    :try_start_0
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 330
    :catch_0
    move-exception v2

    .line 331
    .local v2, "ex":Landroid/content/ActivityNotFoundException;
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    const v9, 0x7f0b0105

    invoke-static {v8, v9, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 337
    .end local v0    # "chooseIntent":Landroid/content/Intent;
    .end local v1    # "chooseTitle":Ljava/lang/CharSequence;
    .end local v2    # "ex":Landroid/content/ActivityNotFoundException;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "lookupKey":Ljava/lang/String;
    .end local v5    # "shareUri":Landroid/net/Uri;
    :pswitch_4
    iget-boolean v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSendToVoicemailState:Z

    if-nez v8, :cond_5

    move v6, v7

    :cond_5
    iput-boolean v6, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSendToVoicemailState:Z

    .line 338
    iget-boolean v6, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSendToVoicemailState:Z

    invoke-interface {p1, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 339
    iget-object v6, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    iget-boolean v9, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSendToVoicemailState:Z

    invoke-static {v6, v8, v9}, Lcom/android/contacts/ContactSaveService;->createSetSendToVoicemail(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v3

    .line 341
    .restart local v3    # "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 346
    .end local v3    # "intent":Landroid/content/Intent;
    :pswitch_5
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->createLauncherShortcutWithContact()V

    goto/16 :goto_1

    .line 294
    nop

    :pswitch_data_0
    .packed-switch 0x7f060175
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactOptionsChangeEnabled()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuOptions:Z

    .line 241
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactEditable()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    .line 242
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactShareable()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuShareable:Z

    .line 243
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactCanCreateShortcut()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuCanCreateShortcut:Z

    .line 244
    iget-object v6, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/model/Contact;

    if-eqz v6, :cond_0

    .line 245
    iget-object v6, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v6}, Lcom/android/contacts/model/Contact;->isSendToVoicemail()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSendToVoicemailState:Z

    .line 246
    iget-object v6, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v6}, Lcom/android/contacts/model/Contact;->getCustomRingtone()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mCustomRingtone:Ljava/lang/String;

    .line 251
    :cond_0
    const v6, 0x7f060179

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 252
    .local v4, "optionsSendToVoicemail":Landroid/view/MenuItem;
    if-eqz v4, :cond_1

    .line 253
    iget-boolean v6, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSendToVoicemailState:Z

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 254
    iget-boolean v6, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuOptions:Z

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 256
    :cond_1
    const v6, 0x7f060178

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 257
    .local v3, "optionsRingtone":Landroid/view/MenuItem;
    if-eqz v3, :cond_2

    .line 258
    iget-boolean v6, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuOptions:Z

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 261
    :cond_2
    const v6, 0x7f060175

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 262
    .local v2, "editMenu":Landroid/view/MenuItem;
    iget-boolean v6, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 264
    const v6, 0x7f060177

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 265
    .local v1, "deleteMenu":Landroid/view/MenuItem;
    iget-boolean v6, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 267
    const v6, 0x7f060176

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 268
    .local v5, "shareMenu":Landroid/view/MenuItem;
    iget-boolean v6, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuShareable:Z

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 270
    const v6, 0x7f06017a

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 271
    .local v0, "createContactShortcutMenu":Landroid/view/MenuItem;
    iget-boolean v6, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuCanCreateShortcut:Z

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 272
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 127
    const-string v0, "contactUri"

    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 128
    return-void
.end method

.method public setListener(Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;)V
    .locals 0
    .param p1, "value"    # Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    .line 178
    return-void
.end method
