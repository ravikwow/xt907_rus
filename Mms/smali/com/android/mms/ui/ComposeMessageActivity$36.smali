.class Lcom/android/mms/ui/ComposeMessageActivity$36;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->processMultipleContactsSelection(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;

.field final synthetic val$selectedAddressesUris:Ljava/util/ArrayList;

.field final synthetic val$showProgress:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/util/ArrayList;Landroid/os/Handler;Ljava/lang/Runnable;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 3645
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$36;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$36;->val$selectedAddressesUris:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$36;->val$handler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/mms/ui/ComposeMessageActivity$36;->val$showProgress:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/android/mms/ui/ComposeMessageActivity$36;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 3650
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$36;->val$selectedAddressesUris:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/mms/data/ContactList;->blockingGetByUris(Ljava/util/ArrayList;)Lcom/android/mms/data/ContactList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3652
    .local v0, "list":Lcom/android/mms/data/ContactList;
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$36;->val$handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$36;->val$showProgress:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3653
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$36;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3657
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$36$1;

    invoke-direct {v1, p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity$36$1;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$36;Lcom/android/mms/data/ContactList;)V

    .line 3664
    .local v1, "populateWorker":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$36;->val$handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3665
    return-void

    .line 3652
    .end local v0    # "list":Lcom/android/mms/data/ContactList;
    .end local v1    # "populateWorker":Ljava/lang/Runnable;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$36;->val$handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$36;->val$showProgress:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3653
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$36;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    throw v2
.end method
