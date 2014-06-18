.class public Lcom/android/contacts/activities/ContactEditorActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "ContactEditorActivity.java"

# interfaces
.implements Lcom/android/contacts/util/DialogManager$DialogShowingViewActivity;


# instance fields
.field private mDialogManager:Lcom/android/contacts/util/DialogManager;

.field private mFinishActivityOnSaveCompleted:Z

.field private mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

.field private final mFragmentListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 66
    new-instance v0, Lcom/android/contacts/util/DialogManager;

    invoke-direct {v0, p0}, Lcom/android/contacts/util/DialogManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    .line 198
    new-instance v0, Lcom/android/contacts/activities/ContactEditorActivity$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ContactEditorActivity$4;-><init>(Lcom/android/contacts/activities/ContactEditorActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragmentListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/ContactEditorActivity;)Lcom/android/contacts/editor/ContactEditorFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactEditorActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/activities/ContactEditorActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ContactEditorActivity;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFinishActivityOnSaveCompleted:Z

    return v0
.end method


# virtual methods
.method public getDialogManager()Lcom/android/contacts/util/DialogManager;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->save(I)Z

    .line 196
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const v13, 0x7f0600db

    const/16 v12, 0x1a

    const/16 v11, 0x10

    const/4 v10, 0x0

    .line 70
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 73
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "action":Ljava/lang/String;
    const-string v8, "finishActivityOnSaveCompleted"

    invoke-virtual {v5, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFinishActivityOnSaveCompleted:Z

    .line 84
    const-string v8, "joinCompleted"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    .line 161
    :goto_0
    return-void

    .line 89
    :cond_0
    const-string v8, "saveCompleted"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    goto :goto_0

    .line 94
    :cond_1
    const v8, 0x7f040020

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/ContactEditorActivity;->setContentView(I)V

    .line 97
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0024

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 99
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 100
    .local v1, "actionBar":Landroid/app/ActionBar;
    if-eqz v1, :cond_2

    .line 103
    const-string v8, "layout_inflater"

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/ContactEditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 105
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f04006f

    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 106
    .local v3, "customActionBarView":Landroid/view/View;
    invoke-virtual {v3, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 107
    .local v6, "saveMenuItem":Landroid/view/View;
    new-instance v8, Lcom/android/contacts/activities/ContactEditorActivity$1;

    invoke-direct {v8, p0}, Lcom/android/contacts/activities/ContactEditorActivity$1;-><init>(Lcom/android/contacts/activities/ContactEditorActivity;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const v8, 0x7f0600ff

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 115
    .local v2, "cancelMenuItem":Landroid/view/View;
    new-instance v8, Lcom/android/contacts/activities/ContactEditorActivity$2;

    invoke-direct {v8, p0}, Lcom/android/contacts/activities/ContactEditorActivity$2;-><init>(Lcom/android/contacts/activities/ContactEditorActivity;)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    invoke-virtual {v1, v11, v12}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 126
    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 151
    .end local v2    # "cancelMenuItem":Landroid/view/View;
    .end local v3    # "customActionBarView":Landroid/view/View;
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    .end local v6    # "saveMenuItem":Landroid/view/View;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    const v9, 0x7f060080

    invoke-virtual {v8, v9}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/editor/ContactEditorFragment;

    iput-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    .line 153
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v9, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragmentListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    invoke-virtual {v8, v9}, Lcom/android/contacts/editor/ContactEditorFragment;->setListener(Lcom/android/contacts/editor/ContactEditorFragment$Listener;)V

    .line 154
    const-string v8, "android.intent.action.EDIT"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 156
    .local v7, "uri":Landroid/net/Uri;
    :cond_3
    if-eqz p1, :cond_4

    .line 157
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v8}, Lcom/android/contacts/editor/ContactEditorFragment;->getLookupUri()Landroid/net/Uri;

    move-result-object v7

    .line 160
    :cond_4
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v8, v0, v7, v9}, Lcom/android/contacts/editor/ContactEditorFragment;->load(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 129
    .end local v1    # "actionBar":Landroid/app/ActionBar;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_5
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 130
    .restart local v1    # "actionBar":Landroid/app/ActionBar;
    if-eqz v1, :cond_2

    .line 133
    const-string v8, "layout_inflater"

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/ContactEditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 135
    .restart local v4    # "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f04004b

    invoke-virtual {v4, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 136
    .restart local v3    # "customActionBarView":Landroid/view/View;
    invoke-virtual {v3, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 137
    .restart local v6    # "saveMenuItem":Landroid/view/View;
    new-instance v8, Lcom/android/contacts/activities/ContactEditorActivity$3;

    invoke-direct {v8, p0}, Lcom/android/contacts/activities/ContactEditorActivity$3;-><init>(Lcom/android/contacts/activities/ContactEditorActivity;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    invoke-virtual {v1, v11, v12}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 147
    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    goto :goto_1
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 186
    invoke-static {p1}, Lcom/android/contacts/util/DialogManager;->isManagedId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/util/DialogManager;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 190
    :goto_0
    return-object v0

    .line 189
    :cond_0
    const-string v0, "ContactEditorActivity"

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

    .line 190
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 165
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 167
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    if-nez v1, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 173
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->setIntentExtras(Landroid/os/Bundle;)V

    goto :goto_0

    .line 174
    :cond_2
    const-string v1, "saveCompleted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 175
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    const/4 v2, 0x1

    const-string v3, "saveMode"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "saveSucceeded"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/contacts/editor/ContactEditorFragment;->onSaveCompleted(ZIZLandroid/net/Uri;)V

    goto :goto_0

    .line 179
    :cond_3
    const-string v1, "joinCompleted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->onJoinCompleted(Landroid/net/Uri;)V

    goto :goto_0
.end method
