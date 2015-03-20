.class Lcom/android/contacts/activities/ContactSelectionActivity$4$1;
.super Landroid/os/AsyncTask;
.source "ContactSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ContactSelectionActivity$4;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lcom/android/contacts/activities/ContactSelectionActivity$4;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$expired_session_id:J

.field final synthetic val$selected_contact_values:Ljava/util/ArrayList;

.field final synthetic val$sessionid:J

.field final synthetic val$totalTargetNumbers:I

.field final synthetic val$userSelectedNumbers:I


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactSelectionActivity$4;Landroid/content/ContentResolver;JILjava/util/ArrayList;IJ)V
    .locals 0

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/android/contacts/activities/ContactSelectionActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactSelectionActivity$4;

    iput-object p2, p0, Lcom/android/contacts/activities/ContactSelectionActivity$4$1;->val$cr:Landroid/content/ContentResolver;

    iput-wide p3, p0, Lcom/android/contacts/activities/ContactSelectionActivity$4$1;->val$expired_session_id:J

    iput p5, p0, Lcom/android/contacts/activities/ContactSelectionActivity$4$1;->val$userSelectedNumbers:I

    iput-object p6, p0, Lcom/android/contacts/activities/ContactSelectionActivity$4$1;->val$selected_contact_values:Ljava/util/ArrayList;

    iput p7, p0, Lcom/android/contacts/activities/ContactSelectionActivity$4$1;->val$totalTargetNumbers:I

    iput-wide p8, p0, Lcom/android/contacts/activities/ContactSelectionActivity$4$1;->val$sessionid:J

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1112
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity$4$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1137
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity$4$1;->val$cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/motorola/contacts/list/ContactMultiplePickerResultContentProvider$Resultable;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "session_id<?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-wide v7, p0, Lcom/android/contacts/activities/ContactSelectionActivity$4$1;->val$expired_session_id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1140
    iget v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity$4$1;->val$userSelectedNumbers:I

    new-array v0, v2, [Landroid/content/ContentValues;

    .line 1141
    .local v0, "bulkValues":[Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity$4$1;->val$selected_contact_values:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1142
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity$4$1;->val$cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/motorola/contacts/list/ContactMultiplePickerResultContentProvider$Resultable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v1

    .line 1143
    .local v1, "numNewAddedRows":I
    const-string v2, "ContactSelectionActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inserted temp results:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    const/4 v2, 0x0

    return-object v2
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactSelectionActivity$4;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactSelectionActivity$4;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    # getter for: Lcom/android/contacts/activities/ContactSelectionActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->access$1200(Lcom/android/contacts/activities/ContactSelectionActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1173
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactSelectionActivity$4;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactSelectionActivity$4;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    # getter for: Lcom/android/contacts/activities/ContactSelectionActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->access$1200(Lcom/android/contacts/activities/ContactSelectionActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1174
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactSelectionActivity$4;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactSelectionActivity$4;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/contacts/activities/ContactSelectionActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->access$1202(Lcom/android/contacts/activities/ContactSelectionActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1179
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1112
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity$4$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    const/4 v3, 0x0

    .line 1154
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactSelectionActivity$4;

    iget-object v1, v1, Lcom/android/contacts/activities/ContactSelectionActivity$4;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    # getter for: Lcom/android/contacts/activities/ContactSelectionActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->access$1200(Lcom/android/contacts/activities/ContactSelectionActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1155
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactSelectionActivity$4;

    iget-object v1, v1, Lcom/android/contacts/activities/ContactSelectionActivity$4;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    # getter for: Lcom/android/contacts/activities/ContactSelectionActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->access$1200(Lcom/android/contacts/activities/ContactSelectionActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1156
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactSelectionActivity$4;

    iget-object v1, v1, Lcom/android/contacts/activities/ContactSelectionActivity$4;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    const/4 v2, 0x0

    # setter for: Lcom/android/contacts/activities/ContactSelectionActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lcom/android/contacts/activities/ContactSelectionActivity;->access$1202(Lcom/android/contacts/activities/ContactSelectionActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1160
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1161
    .local v0, "intent":Landroid/content/Intent;
    iget v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity$4$1;->val$userSelectedNumbers:I

    iget v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity$4$1;->val$totalTargetNumbers:I

    if-ne v1, v2, :cond_1

    .line 1162
    const-string v1, "com.android.contacts.SelectionResultAllSelected"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1166
    :goto_0
    const-string v1, "com.android.contacts.SelectionResultIncluded"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1167
    const-string v1, "com.android.contacts.SelectionResultSessionId"

    iget-wide v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity$4$1;->val$sessionid:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1168
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactSelectionActivity$4;

    iget-object v1, v1, Lcom/android/contacts/activities/ContactSelectionActivity$4;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-virtual {v1, v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->returnPickerResult(Landroid/content/Intent;)V

    .line 1169
    return-void

    .line 1164
    :cond_1
    const-string v1, "com.android.contacts.SelectionResultAllSelected"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1116
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactSelectionActivity$4;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactSelectionActivity$4;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactSelectionActivity$4;

    iget-object v2, v2, Lcom/android/contacts/activities/ContactSelectionActivity$4;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/contacts/activities/ContactSelectionActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->access$1202(Lcom/android/contacts/activities/ContactSelectionActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1117
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactSelectionActivity$4;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactSelectionActivity$4;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    # getter for: Lcom/android/contacts/activities/ContactSelectionActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->access$1200(Lcom/android/contacts/activities/ContactSelectionActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactSelectionActivity$4;

    iget-object v1, v1, Lcom/android/contacts/activities/ContactSelectionActivity$4;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    const v2, 0x7f0c022b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1118
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactSelectionActivity$4;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactSelectionActivity$4;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    # getter for: Lcom/android/contacts/activities/ContactSelectionActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->access$1200(Lcom/android/contacts/activities/ContactSelectionActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1119
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactSelectionActivity$4;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactSelectionActivity$4;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    # getter for: Lcom/android/contacts/activities/ContactSelectionActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->access$1200(Lcom/android/contacts/activities/ContactSelectionActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1120
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactSelectionActivity$4;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactSelectionActivity$4;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    # getter for: Lcom/android/contacts/activities/ContactSelectionActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->access$1200(Lcom/android/contacts/activities/ContactSelectionActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/activities/ContactSelectionActivity$4$1$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/activities/ContactSelectionActivity$4$1$1;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity$4$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1131
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactSelectionActivity$4;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactSelectionActivity$4;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    # getter for: Lcom/android/contacts/activities/ContactSelectionActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->access$1200(Lcom/android/contacts/activities/ContactSelectionActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1132
    return-void
.end method
