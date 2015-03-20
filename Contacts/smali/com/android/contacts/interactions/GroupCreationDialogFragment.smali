.class public Lcom/android/contacts/interactions/GroupCreationDialogFragment;
.super Lcom/android/contacts/interactions/GroupNameDialogFragment;
.source "GroupCreationDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;
    }
.end annotation


# instance fields
.field private final mListener:Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/contacts/interactions/GroupNameDialogFragment;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->mListener:Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;

    .line 59
    return-void
.end method

.method private constructor <init>(Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/contacts/interactions/GroupNameDialogFragment;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->mListener:Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;

    .line 64
    return-void
.end method

.method public static show(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;)V
    .locals 3
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "dataSet"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;

    .prologue
    .line 47
    new-instance v1, Lcom/android/contacts/interactions/GroupCreationDialogFragment;

    invoke-direct {v1, p4}, Lcom/android/contacts/interactions/GroupCreationDialogFragment;-><init>(Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;)V

    .line 48
    .local v1, "dialog":Lcom/android/contacts/interactions/GroupCreationDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 49
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "accountType"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v2, "accountName"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v2, "dataSet"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 53
    const-string v2, "createGroupDialog"

    invoke-virtual {v1, p0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected getTitleResourceId()I
    .locals 1

    .prologue
    .line 76
    const v0, 0x7f0c01dd

    return v0
.end method

.method protected initializeGroupLabelEditText(Landroid/widget/EditText;)V
    .locals 0
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 72
    return-void
.end method

.method protected onCompleted(Ljava/lang/String;)V
    .locals 10
    .param p1, "groupLabel"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    .line 82
    .local v8, "arguments":Landroid/os/Bundle;
    const-string v1, "accountType"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 83
    .local v7, "accountType":Ljava/lang/String;
    const-string v1, "accountName"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 84
    .local v6, "accountName":Ljava/lang/String;
    const-string v1, "dataSet"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 89
    .local v9, "dataSet":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->mListener:Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->mListener:Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;

    invoke-interface {v1}, Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;->onGroupCreated()V

    .line 93
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 94
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Lcom/android/contacts/model/AccountWithDataSet;

    invoke-direct {v1, v6, v7, v9}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "android.intent.action.EDIT"

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/ContactSaveService;->createNewGroupIntent(Landroid/content/Context;Lcom/android/contacts/model/AccountWithDataSet;Ljava/lang/String;[JLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 98
    return-void
.end method
