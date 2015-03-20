.class Lcom/android/contacts/calllog/ClearCallLogDialog$1$1;
.super Landroid/os/AsyncTask;
.source "ClearCallLogDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/calllog/ClearCallLogDialog$1;->onClick(Landroid/content/DialogInterface;I)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/calllog/ClearCallLogDialog$1;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/android/contacts/calllog/ClearCallLogDialog$1;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/contacts/calllog/ClearCallLogDialog$1$1;->this$1:Lcom/android/contacts/calllog/ClearCallLogDialog$1;

    iput-object p2, p0, Lcom/android/contacts/calllog/ClearCallLogDialog$1$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 61
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/calllog/ClearCallLogDialog$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v2, 0x0

    .line 64
    iget-object v0, p0, Lcom/android/contacts/calllog/ClearCallLogDialog$1$1;->this$1:Lcom/android/contacts/calllog/ClearCallLogDialog$1;

    iget-object v0, v0, Lcom/android/contacts/calllog/ClearCallLogDialog$1;->val$resolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 65
    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 61
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/calllog/ClearCallLogDialog$1$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 69
    iget-object v1, p0, Lcom/android/contacts/calllog/ClearCallLogDialog$1$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "fragment":Lcom/android/contacts/calllog/CallLogFragment;
    iget-object v1, p0, Lcom/android/contacts/calllog/ClearCallLogDialog$1$1;->this$1:Lcom/android/contacts/calllog/ClearCallLogDialog$1;

    iget-object v1, v1, Lcom/android/contacts/calllog/ClearCallLogDialog$1;->this$0:Lcom/android/contacts/calllog/ClearCallLogDialog;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/contacts/activities/DialtactsActivity;

    if-eqz v1, :cond_2

    .line 73
    iget-object v1, p0, Lcom/android/contacts/calllog/ClearCallLogDialog$1$1;->this$1:Lcom/android/contacts/calllog/ClearCallLogDialog$1;

    iget-object v1, v1, Lcom/android/contacts/calllog/ClearCallLogDialog$1;->this$0:Lcom/android/contacts/calllog/ClearCallLogDialog;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/activities/DialtactsActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/contacts/activities/DialtactsActivity;->getFragmentAt(I)Landroid/app/Fragment;

    move-result-object v0

    .end local v0    # "fragment":Lcom/android/contacts/calllog/CallLogFragment;
    check-cast v0, Lcom/android/contacts/calllog/CallLogFragment;

    .line 77
    .restart local v0    # "fragment":Lcom/android/contacts/calllog/CallLogFragment;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogFragment;->getAdapter()Lcom/android/contacts/calllog/CallLogAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 79
    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogFragment;->getAdapter()Lcom/android/contacts/calllog/CallLogAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/calllog/CallLogAdapter;->clearAllCache()V

    .line 83
    :cond_1
    return-void

    .line 74
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/calllog/ClearCallLogDialog$1$1;->this$1:Lcom/android/contacts/calllog/ClearCallLogDialog$1;

    iget-object v1, v1, Lcom/android/contacts/calllog/ClearCallLogDialog$1;->this$0:Lcom/android/contacts/calllog/ClearCallLogDialog;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/contacts/activities/CallLogActivity;

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/android/contacts/calllog/ClearCallLogDialog$1$1;->this$1:Lcom/android/contacts/calllog/ClearCallLogDialog$1;

    iget-object v1, v1, Lcom/android/contacts/calllog/ClearCallLogDialog$1;->this$0:Lcom/android/contacts/calllog/ClearCallLogDialog;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f070043

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .end local v0    # "fragment":Lcom/android/contacts/calllog/CallLogFragment;
    check-cast v0, Lcom/android/contacts/calllog/CallLogFragment;

    .restart local v0    # "fragment":Lcom/android/contacts/calllog/CallLogFragment;
    goto :goto_0
.end method
