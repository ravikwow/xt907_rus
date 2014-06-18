.class public Lcom/android/contacts/activities/ContactDetailActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "ContactDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;
    }
.end annotation


# instance fields
.field private mContactData:Lcom/android/contacts/model/Contact;

.field private final mContactDetailFragmentListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

.field private mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

.field private mHandler:Landroid/os/Handler;

.field private mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

.field private final mLoaderFragmentListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

.field private mLookupUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mHandler:Landroid/os/Handler;

    .line 210
    new-instance v0, Lcom/android/contacts/activities/ContactDetailActivity$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ContactDetailActivity$3;-><init>(Lcom/android/contacts/activities/ContactDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragmentListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    .line 285
    new-instance v0, Lcom/android/contacts/activities/ContactDetailActivity$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ContactDetailActivity$4;-><init>(Lcom/android/contacts/activities/ContactDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailFragmentListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    .line 317
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/ContactDetailActivity;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactDetailActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/contacts/activities/ContactDetailActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactDetailActivity;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/android/contacts/model/Contact;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactDetailActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/model/Contact;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/contacts/activities/ContactDetailActivity;Lcom/android/contacts/model/Contact;)Lcom/android/contacts/model/Contact;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactDetailActivity;
    .param p1, "x1"    # Lcom/android/contacts/model/Contact;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/model/Contact;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/contacts/activities/ContactDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactDetailActivity;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->setupTitle()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/android/contacts/detail/ContactDetailLayoutController;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactDetailActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/activities/ContactDetailActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactDetailActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private setupTitle()V
    .locals 6

    .prologue
    .line 267
    iget-object v5, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-static {p0, v5}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getDisplayName(Landroid/content/Context;Lcom/android/contacts/model/Contact;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 268
    .local v4, "displayName":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-static {p0, v5}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getCompany(Landroid/content/Context;Lcom/android/contacts/model/Contact;)Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, "company":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 271
    .local v1, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 272
    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 274
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 275
    const-string v5, "accessibility"

    invoke-virtual {p0, v5}, Lcom/android/contacts/activities/ContactDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 277
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 279
    .local v3, "decorView":Landroid/view/View;
    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 280
    const/16 v5, 0x20

    invoke-virtual {v3, v5}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 283
    .end local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v3    # "decorView":Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 125
    instance-of v0, p1, Lcom/android/contacts/detail/ContactLoaderFragment;

    if-eqz v0, :cond_0

    .line 126
    check-cast p1, Lcom/android/contacts/detail/ContactLoaderFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    .line 127
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragmentListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->setListener(Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;)V

    .line 128
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->loadUri(Landroid/net/Uri;)V

    .line 130
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 76
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 77
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactDetailActivity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    const v2, 0x1000c000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 93
    :goto_0
    const-string v2, "RequestFromFavorites"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 94
    if-eqz v0, :cond_0

    .line 95
    const-string v0, "RequestFromFavorites"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 98
    :cond_0
    const-class v0, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->finish()V

    .line 121
    :goto_1
    return-void

    .line 87
    :cond_1
    const/high16 v2, 0x26800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 104
    :cond_2
    const v0, 0x7f040010

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ContactDetailActivity;->setContentView(I)V

    .line 106
    new-instance v0, Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const/4 v4, 0x0

    const v1, 0x7f06005d

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailFragmentListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/detail/ContactDetailLayoutController;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/app/FragmentManager;Lcom/android/contacts/widget/TransitionAnimationView;Landroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$Listener;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    .line 112
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_3

    .line 114
    const/16 v1, 0xc

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 117
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 120
    :cond_3
    const-string v0, "ContactDetailActivity"

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 135
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 136
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f10000c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 150
    const/4 v1, 0x1

    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 192
    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v2, p1}, Lcom/android/contacts/detail/ContactLoaderFragment;->handleKeyDown(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    :cond_0
    :goto_0
    return v1

    .line 195
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-virtual {v2}, Lcom/android/contacts/detail/ContactDetailLayoutController;->getCurrentPage()Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;

    move-result-object v0

    .line 196
    .local v0, "mCurrentFragment":Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;
    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;->handleKeyDown(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 199
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ContactsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 155
    const v1, 0x7f060174

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 156
    .local v0, "starredMenuItem":Landroid/view/MenuItem;
    new-instance v1, Lcom/android/contacts/activities/ContactDetailActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/android/contacts/activities/ContactDetailActivity$2;-><init>(Lcom/android/contacts/activities/ContactDetailActivity;Landroid/view/MenuItem;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 181
    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/model/Contact;

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v1}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v2}, Lcom/android/contacts/model/Contact;->isUserProfile()Z

    move-result v2

    iget-object v3, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v3}, Lcom/android/contacts/model/Contact;->getStarred()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->configureStarredMenuItem(Landroid/view/MenuItem;ZZZ)V

    .line 186
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 204
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 205
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-virtual {v0, p1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 208
    :cond_0
    return-void
.end method
