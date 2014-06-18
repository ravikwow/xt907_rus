.class public Lcom/android/contacts/activities/GroupEditorActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "GroupEditorActivity.java"

# interfaces
.implements Lcom/android/contacts/util/DialogManager$DialogShowingViewActivity;


# instance fields
.field private mDialogManager:Lcom/android/contacts/util/DialogManager;

.field private mFragment:Lcom/android/contacts/group/GroupEditorFragment;

.field private final mFragmentListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 49
    new-instance v0, Lcom/android/contacts/util/DialogManager;

    invoke-direct {v0, p0}, Lcom/android/contacts/util/DialogManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    .line 166
    new-instance v0, Lcom/android/contacts/activities/GroupEditorActivity$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/GroupEditorActivity$4;-><init>(Lcom/android/contacts/activities/GroupEditorActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragmentListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/GroupEditorActivity;)Lcom/android/contacts/group/GroupEditorFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/GroupEditorActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    return-object v0
.end method


# virtual methods
.method public getDialogManager()Lcom/android/contacts/util/DialogManager;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupEditorFragment;->save()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onBackPressed()V

    .line 150
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const v12, 0x7f0600db

    const/16 v11, 0x1a

    const/16 v10, 0x10

    .line 53
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "action":Ljava/lang/String;
    const-string v7, "saveCompleted"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->finish()V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    const v7, 0x7f04005c

    invoke-virtual {p0, v7}, Lcom/android/contacts/activities/GroupEditorActivity;->setContentView(I)V

    .line 64
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0024

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 66
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 67
    .local v1, "actionBar":Landroid/app/ActionBar;
    if-eqz v1, :cond_2

    .line 70
    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/android/contacts/activities/GroupEditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 72
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f04006f

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x0

    invoke-virtual {v4, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 74
    .local v3, "customActionBarView":Landroid/view/View;
    invoke-virtual {v3, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 75
    .local v5, "saveMenuItem":Landroid/view/View;
    new-instance v7, Lcom/android/contacts/activities/GroupEditorActivity$1;

    invoke-direct {v7, p0}, Lcom/android/contacts/activities/GroupEditorActivity$1;-><init>(Lcom/android/contacts/activities/GroupEditorActivity;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v7, 0x7f0600ff

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 83
    .local v2, "cancelMenuItem":Landroid/view/View;
    new-instance v7, Lcom/android/contacts/activities/GroupEditorActivity$2;

    invoke-direct {v7, p0}, Lcom/android/contacts/activities/GroupEditorActivity$2;-><init>(Lcom/android/contacts/activities/GroupEditorActivity;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-virtual {v1, v10, v11}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 94
    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 120
    .end local v2    # "cancelMenuItem":Landroid/view/View;
    .end local v3    # "customActionBarView":Landroid/view/View;
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "saveMenuItem":Landroid/view/View;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const v8, 0x7f0600ef

    invoke-virtual {v7, v8}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/group/GroupEditorFragment;

    iput-object v7, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    .line 122
    iget-object v7, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    iget-object v8, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragmentListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    invoke-virtual {v7, v8}, Lcom/android/contacts/group/GroupEditorFragment;->setListener(Lcom/android/contacts/group/GroupEditorFragment$Listener;)V

    .line 123
    iget-object v7, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/contacts/group/GroupEditorFragment;->setContentResolver(Landroid/content/ContentResolver;)V

    .line 127
    if-nez p1, :cond_0

    .line 128
    const-string v7, "android.intent.action.EDIT"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 129
    .local v6, "uri":Landroid/net/Uri;
    :cond_3
    iget-object v7, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v7, v0, v6, v8}, Lcom/android/contacts/group/GroupEditorFragment;->load(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 97
    .end local v1    # "actionBar":Landroid/app/ActionBar;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 98
    .restart local v1    # "actionBar":Landroid/app/ActionBar;
    if-eqz v1, :cond_2

    .line 101
    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/android/contacts/activities/GroupEditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 103
    .restart local v4    # "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f04004b

    invoke-virtual {v4, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 105
    .restart local v3    # "customActionBarView":Landroid/view/View;
    invoke-virtual {v3, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 106
    .restart local v5    # "saveMenuItem":Landroid/view/View;
    new-instance v7, Lcom/android/contacts/activities/GroupEditorActivity$3;

    invoke-direct {v7, p0}, Lcom/android/contacts/activities/GroupEditorActivity$3;-><init>(Lcom/android/contacts/activities/GroupEditorActivity;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    invoke-virtual {v1, v10, v11}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 116
    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    goto :goto_1
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 135
    invoke-static {p1}, Lcom/android/contacts/util/DialogManager;->isManagedId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/util/DialogManager;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 140
    :goto_0
    return-object v0

    .line 139
    :cond_0
    const-string v0, "GroupEditorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown dialog requested, id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", args: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 154
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 156
    iget-object v1, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    if-nez v1, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "action":Ljava/lang/String;
    const-string v1, "saveCompleted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/group/GroupEditorFragment;->onSaveCompleted(ZLandroid/net/Uri;)V

    goto :goto_0
.end method
