.class Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1$1;
.super Ljava/lang/Object;
.source "ContactDetailPartialFieldPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1;->onDetailsLoaded(Lcom/android/contacts/ContactLoader$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1;

.field final synthetic val$result:Lcom/android/contacts/ContactLoader$Result;


# direct methods
.method constructor <init>(Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1;Lcom/android/contacts/ContactLoader$Result;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1$1;->this$1:Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1;

    iput-object p2, p0, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1$1;->val$result:Lcom/android/contacts/ContactLoader$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 91
    iget-object v1, p0, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1$1;->this$1:Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1;

    iget-object v1, v1, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1;->this$0:Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1$1;->this$1:Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1;

    iget-object v1, v1, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1;->this$0:Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;

    # getter for: Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;
    invoke-static {v1}, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;->access$000(Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;)Lcom/android/contacts/detail/ContactLoaderFragment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 95
    iget-object v1, p0, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1$1;->this$1:Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1;

    iget-object v1, v1, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1;->this$0:Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;

    # getter for: Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;->mLookupUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;->access$100(Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1$1;->this$1:Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1;

    iget-object v1, v1, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1;->this$0:Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;

    iget-object v2, p0, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1$1;->val$result:Lcom/android/contacts/ContactLoader$Result;

    # setter for: Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v1, v2}, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;->access$202(Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;Lcom/android/contacts/ContactLoader$Result;)Lcom/android/contacts/ContactLoader$Result;

    .line 97
    iget-object v1, p0, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1$1;->this$1:Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1;

    iget-object v1, v1, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1;->this$0:Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;

    iget-object v2, p0, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1$1;->val$result:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->getLookupUri()Landroid/net/Uri;

    move-result-object v2

    # setter for: Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;->mLookupUri:Landroid/net/Uri;
    invoke-static {v1, v2}, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;->access$102(Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 99
    iget-object v1, p0, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1$1;->this$1:Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1;

    iget-object v1, v1, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1;->this$0:Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;

    # getter for: Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;->mFragment:Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;
    invoke-static {v1}, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;->access$300(Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;)Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1$1;->this$1:Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1;

    iget-object v1, v1, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1;->this$0:Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;

    # getter for: Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;->mFragment:Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;
    invoke-static {v1}, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;->access$300(Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;)Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1$1;->this$1:Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1;

    iget-object v2, v2, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1;->this$0:Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;

    # getter for: Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;->mLookupUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;->access$100(Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1$1;->this$1:Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1;

    iget-object v3, v3, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1;->this$0:Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;

    # getter for: Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v3}, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;->access$200(Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/detail/ContactDetailFragment;->setData(Landroid/net/Uri;Lcom/android/contacts/ContactLoader$Result;)V

    .line 102
    iget-object v1, p0, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1$1;->this$1:Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1;

    iget-object v1, v1, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1;->this$0:Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1$1;->this$1:Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1;

    iget-object v1, v1, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1;->this$0:Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 104
    .local v0, "actionBar":Landroid/app/ActionBar;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 105
    iget-object v1, p0, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1$1;->this$1:Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1;

    iget-object v1, v1, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1;->this$0:Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;

    # getter for: Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v1}, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;->access$200(Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v1, p0, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1$1;->this$1:Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1;

    iget-object v1, v1, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1;->this$0:Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;

    iget-object v2, p0, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1$1;->this$1:Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1;

    iget-object v2, v2, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1;->this$0:Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;

    # getter for: Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v2}, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;->access$200(Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getCompany(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
