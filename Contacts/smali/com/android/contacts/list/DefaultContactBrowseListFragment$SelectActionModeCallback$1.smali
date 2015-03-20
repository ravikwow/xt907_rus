.class Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback$1;
.super Landroid/os/AsyncTask;
.source "DefaultContactBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;

.field final synthetic val$sCond:Ljava/lang/String;

.field final synthetic val$sdnFlag:Z


# direct methods
.method constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 710
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback$1;->this$1:Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;

    iput-boolean p2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback$1;->val$sdnFlag:Z

    iput-object p3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback$1;->val$sCond:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 713
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback$1;->this$1:Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;

    iget-object v4, v4, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 715
    .local v0, "mContext":Landroid/content/Context;
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 717
    .local v3, "uri":Landroid/net/Uri;
    :try_start_0
    iget-boolean v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback$1;->val$sdnFlag:Z

    if-eqz v4, :cond_0

    .line 718
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "(%s IS NULL OR %s!=?) AND %s in %s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "account_type"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "account_type"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "contact_id"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback$1;->val$sCond:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "com.motorola.ServiceDialingNumbers"

    aput-object v8, v6, v7

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 729
    :goto_0
    const-wide/16 v1, 0x0

    .line 730
    .local v1, "result":J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    return-object v4

    .line 724
    .end local v1    # "result":J
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contact_id in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback$1;->val$sCond:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 727
    :catchall_0
    move-exception v4

    throw v4
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 710
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Long;

    .prologue
    .line 735
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback$1;->this$1:Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$200(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback$1;->this$1:Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$200(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 736
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 710
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$SelectActionModeCallback$1;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method
