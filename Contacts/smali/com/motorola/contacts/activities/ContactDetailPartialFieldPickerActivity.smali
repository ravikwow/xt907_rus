.class public Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "ContactDetailPartialFieldPickerActivity.java"


# instance fields
.field private mContactData:Lcom/android/contacts/ContactLoader$Result;

.field private mFragment:Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;

.field private mHandler:Landroid/os/Handler;

.field private mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

.field private final mLoaderFragmentListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

.field private mLookupUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;->mLookupUri:Landroid/net/Uri;

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;->mHandler:Landroid/os/Handler;

    .line 72
    new-instance v0, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1;

    invoke-direct {v0, p0}, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1;-><init>(Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;)V

    iput-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;->mLoaderFragmentListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;)Lcom/android/contacts/detail/ContactLoaderFragment;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$102(Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;->mLookupUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$200(Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;)Lcom/android/contacts/ContactLoader$Result;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    return-object v0
.end method

.method static synthetic access$202(Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;Lcom/android/contacts/ContactLoader$Result;)Lcom/android/contacts/ContactLoader$Result;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;
    .param p1, "x1"    # Lcom/android/contacts/ContactLoader$Result;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    return-object p1
.end method

.method static synthetic access$300(Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;)Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;->mFragment:Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v0, 0x7f040082

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f070115

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;

    iput-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;->mFragment:Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;

    .line 65
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f070067

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactLoaderFragment;

    iput-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    .line 67
    iget-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    iget-object v1, p0, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;->mLoaderFragmentListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->setListener(Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;)V

    .line 68
    iget-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->loadUri(Landroid/net/Uri;)V

    .line 69
    const-string v0, "ContactDetailPartialFieldPickerActivity"

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method
