.class Lcom/android/contacts/activities/ConfirmAddDetailActivity$PersistTask;
.super Landroid/os/AsyncTask;
.source "ConfirmAddDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ConfirmAddDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PersistTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/contacts/model/RawContactDeltaList;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private activityTarget:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

.field private mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;


# direct methods
.method public constructor <init>(Lcom/android/contacts/activities/ConfirmAddDetailActivity;Lcom/android/contacts/model/AccountTypeManager;)V
    .locals 0
    .param p1, "target"    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;
    .param p2, "accountTypeManager"    # Lcom/android/contacts/model/AccountTypeManager;

    .prologue
    .line 789
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 790
    iput-object p1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$PersistTask;->activityTarget:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    .line 791
    iput-object p2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$PersistTask;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    .line 792
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/contacts/model/RawContactDeltaList;)Ljava/lang/Integer;
    .locals 12
    .param p1, "params"    # [Lcom/android/contacts/model/RawContactDeltaList;

    .prologue
    const/4 v11, 0x2

    const/4 v9, 0x0

    .line 807
    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$PersistTask;->activityTarget:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    .line 808
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 810
    .local v3, "resolver":Landroid/content/ContentResolver;
    aget-object v6, p1, v9

    .line 812
    .local v6, "state":Lcom/android/contacts/model/RawContactDeltaList;
    if-nez v6, :cond_1

    .line 813
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 849
    :cond_0
    :goto_0
    return-object v4

    .line 817
    :cond_1
    iget-object v10, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$PersistTask;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    invoke-static {v6, v10}, Lcom/android/contacts/model/RawContactModifier;->trimEmpty(Lcom/android/contacts/model/RawContactDeltaList;Lcom/android/contacts/model/AccountTypeManager;)V

    .line 820
    const/4 v7, 0x0

    .line 821
    .local v7, "tries":I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 822
    .local v4, "result":Ljava/lang/Integer;
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "tries":I
    .local v8, "tries":I
    const/4 v10, 0x3

    if-ge v7, v10, :cond_0

    .line 828
    :try_start_0
    invoke-virtual {v6}, Lcom/android/contacts/model/RawContactDeltaList;->buildDiff()Ljava/util/ArrayList;

    move-result-object v1

    .line 829
    .local v1, "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v5, 0x0

    .line 830
    .local v5, "results":[Landroid/content/ContentProviderResult;
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 831
    const-string v10, "com.android.contacts"

    invoke-virtual {v3, v10, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v5

    .line 834
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_3

    const/4 v9, 0x1

    :cond_3
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    goto :goto_0

    .line 837
    .end local v1    # "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v5    # "results":[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v2

    .line 839
    .local v2, "e":Landroid/os/RemoteException;
    const-string v9, "ConfirmAdd"

    const-string v10, "Problem persisting user edits"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 842
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 844
    .local v2, "e":Landroid/content/OperationApplicationException;
    const-string v9, "ConfirmAdd"

    const-string v10, "Version consistency failed"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 776
    check-cast p1, [Lcom/android/contacts/model/RawContactDeltaList;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/ConfirmAddDetailActivity$PersistTask;->doInBackground([Lcom/android/contacts/model/RawContactDeltaList;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 855
    iget-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$PersistTask;->activityTarget:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    .line 857
    # invokes: Lcom/android/contacts/activities/ConfirmAddDetailActivity;->dismissProgressDialog()V
    invoke-static {}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$1600()V

    .line 860
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 861
    const v3, 0x7f0b0060

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 867
    :cond_0
    :goto_0
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/contacts/util/EmptyService;

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 868
    iget-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$PersistTask;->activityTarget:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v5, :cond_2

    :goto_1
    # invokes: Lcom/android/contacts/activities/ConfirmAddDetailActivity;->onSaveCompleted(Z)V
    invoke-static {v2, v0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$100(Lcom/android/contacts/activities/ConfirmAddDetailActivity;Z)V

    .line 869
    return-void

    .line 862
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 863
    const v3, 0x7f0b0061

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 868
    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 776
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/ConfirmAddDetailActivity$PersistTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 796
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$PersistTask;->activityTarget:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$PersistTask;->activityTarget:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    const v4, 0x7f0b005e

    invoke-virtual {v3, v4}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    # setter for: Lcom/android/contacts/activities/ConfirmAddDetailActivity;->sProgressDialog:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$1502(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 801
    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$PersistTask;->activityTarget:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    .line 802
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/util/EmptyService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 803
    return-void
.end method
