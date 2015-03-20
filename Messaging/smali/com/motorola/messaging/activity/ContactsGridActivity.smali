.class public Lcom/motorola/messaging/activity/ContactsGridActivity;
.super Lcom/motorola/messaging/activity/MessagingActivity;
.source "ContactsGridActivity.java"

# interfaces
.implements Lcom/motorola/messaging/contact/Contact$ContactUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/activity/ContactsGridActivity$ContactGridAdapter;
    }
.end annotation


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mAdapter:Lcom/motorola/messaging/activity/ContactsGridActivity$ContactGridAdapter;

.field private mContactList:Lcom/motorola/messaging/contact/ContactList;

.field private mGrid:Landroid/widget/GridView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/motorola/messaging/activity/MessagingActivity;-><init>()V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/messaging/activity/ContactsGridActivity;)Lcom/motorola/messaging/contact/ContactList;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ContactsGridActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/motorola/messaging/activity/ContactsGridActivity;->mContactList:Lcom/motorola/messaging/contact/ContactList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/messaging/activity/ContactsGridActivity;)Landroid/app/ActionBar;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ContactsGridActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/motorola/messaging/activity/ContactsGridActivity;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/messaging/activity/ContactsGridActivity;)Lcom/motorola/messaging/activity/ContactsGridActivity$ContactGridAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/ContactsGridActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/motorola/messaging/activity/ContactsGridActivity;->mAdapter:Lcom/motorola/messaging/activity/ContactsGridActivity$ContactGridAdapter;

    return-object v0
.end method

.method private setupActionBar()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 96
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/activity/ContactsGridActivity;->mActionBar:Landroid/app/ActionBar;

    .line 97
    iget-object v0, p0, Lcom/motorola/messaging/activity/ContactsGridActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ContactsGridActivity;->mContactList:Lcom/motorola/messaging/contact/ContactList;

    invoke-virtual {v1, p0}, Lcom/motorola/messaging/contact/ContactList;->getFormattedListName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/motorola/messaging/activity/ContactsGridActivity;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f0b004b

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/motorola/messaging/activity/ContactsGridActivity;->mContactList:Lcom/motorola/messaging/contact/ContactList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/motorola/messaging/activity/ContactsGridActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 102
    iget-object v0, p0, Lcom/motorola/messaging/activity/ContactsGridActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0xc

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 104
    return-void
.end method

.method private setupGrid()V
    .locals 4

    .prologue
    .line 83
    const v2, 0x7f09002c

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/motorola/messaging/activity/ContactsGridActivity;->mGrid:Landroid/widget/GridView;

    .line 84
    new-instance v2, Lcom/motorola/messaging/activity/ContactsGridActivity$ContactGridAdapter;

    invoke-direct {v2, p0, p0}, Lcom/motorola/messaging/activity/ContactsGridActivity$ContactGridAdapter;-><init>(Lcom/motorola/messaging/activity/ContactsGridActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/motorola/messaging/activity/ContactsGridActivity;->mAdapter:Lcom/motorola/messaging/activity/ContactsGridActivity$ContactGridAdapter;

    .line 85
    iget-object v2, p0, Lcom/motorola/messaging/activity/ContactsGridActivity;->mGrid:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/motorola/messaging/activity/ContactsGridActivity;->mAdapter:Lcom/motorola/messaging/activity/ContactsGridActivity$ContactGridAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 89
    .local v1, "res":Landroid/content/res/Resources;
    const/high16 v2, 0x7f0a0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 91
    .local v0, "cols":I
    iget-object v2, p0, Lcom/motorola/messaging/activity/ContactsGridActivity;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 93
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 77
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 78
    return-void
.end method

.method public onContactInvalidated(Lcom/motorola/messaging/contact/Contact;)V
    .locals 1
    .param p1, "contact"    # Lcom/motorola/messaging/contact/Contact;

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/motorola/messaging/contact/Contact;->refresh(Z)V

    .line 149
    return-void
.end method

.method public onContactUpdated(Lcom/motorola/messaging/contact/Contact;)V
    .locals 1
    .param p1, "contact"    # Lcom/motorola/messaging/contact/Contact;

    .prologue
    .line 153
    new-instance v0, Lcom/motorola/messaging/activity/ContactsGridActivity$1;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/ContactsGridActivity$1;-><init>(Lcom/motorola/messaging/activity/ContactsGridActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 163
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 54
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "contacts"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "contacts":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 56
    invoke-static {v0}, Lcom/motorola/messaging/conversation/Conversation;->getCached([Ljava/lang/String;)Lcom/motorola/messaging/conversation/Conversation;

    move-result-object v1

    .line 57
    .local v1, "conv":Lcom/motorola/messaging/conversation/Conversation;
    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v1}, Lcom/motorola/messaging/conversation/Conversation;->getRecipients()Lcom/motorola/messaging/contact/ContactList;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/messaging/activity/ContactsGridActivity;->mContactList:Lcom/motorola/messaging/contact/ContactList;

    .line 62
    .end local v1    # "conv":Lcom/motorola/messaging/conversation/Conversation;
    :cond_0
    iget-object v3, p0, Lcom/motorola/messaging/activity/ContactsGridActivity;->mContactList:Lcom/motorola/messaging/contact/ContactList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/motorola/messaging/activity/ContactsGridActivity;->mContactList:Lcom/motorola/messaging/contact/ContactList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 63
    const v3, 0x7f03000b

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 64
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ContactsGridActivity;->setupActionBar()V

    .line 65
    invoke-direct {p0}, Lcom/motorola/messaging/activity/ContactsGridActivity;->setupGrid()V

    .line 67
    iget-object v3, p0, Lcom/motorola/messaging/activity/ContactsGridActivity;->mContactList:Lcom/motorola/messaging/contact/ContactList;

    invoke-virtual {v3, p0}, Lcom/motorola/messaging/contact/ContactList;->addListener(Lcom/motorola/messaging/contact/Contact$ContactUpdateListener;)V

    .line 73
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 167
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 172
    :goto_0
    return v1

    .line 169
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 143
    invoke-static {}, Lcom/motorola/messaging/contact/Contact;->invalidateCache()V

    .line 144
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 145
    return-void
.end method
