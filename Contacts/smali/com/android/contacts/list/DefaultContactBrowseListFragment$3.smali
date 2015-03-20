.class Lcom/android/contacts/list/DefaultContactBrowseListFragment$3;
.super Ljava/lang/Object;
.source "DefaultContactBrowseListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showDialog(ILandroid/os/AsyncTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

.field final synthetic val$task:Landroid/os/AsyncTask;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Landroid/os/AsyncTask;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$3;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iput-object p2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$3;->val$task:Landroid/os/AsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v5, 0x0

    .line 526
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$3;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$3;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$3;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const v3, 0x7f0c022b

    invoke-virtual {v2, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    # setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$202(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 528
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$3;->val$task:Landroid/os/AsyncTask;

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 529
    return-void
.end method
