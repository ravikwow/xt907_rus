.class Lcom/motorola/messaging/activity/ComposeMessageActivity$ProtectMessagesTask;
.super Landroid/os/AsyncTask;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProtectMessagesTask"
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
.field private mCount:I

.field private mDoProtect:Z

.field private mMmsWhereClause:Ljava/lang/StringBuilder;

.field private mSmsWhereClause:Ljava/lang/StringBuilder;

.field private mValues:Landroid/content/ContentValues;

.field final synthetic this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;[J[JZ)V
    .locals 4
    .param p2, "smsIds"    # [J
    .param p3, "mmsIds"    # [J
    .param p4, "doProtect"    # Z

    .prologue
    const/4 v0, 0x1

    .line 2113
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ProtectMessagesTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2110
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v0}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ProtectMessagesTask;->mValues:Landroid/content/ContentValues;

    .line 2114
    iput-boolean p4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ProtectMessagesTask;->mDoProtect:Z

    .line 2115
    const-string v1, "_id"

    invoke-static {v1, p2}, Lcom/motorola/messaging/util/MessageUtils;->buildMultipleWhereClause(Ljava/lang/String;[J)Ljava/lang/StringBuilder;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ProtectMessagesTask;->mSmsWhereClause:Ljava/lang/StringBuilder;

    .line 2116
    iget v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ProtectMessagesTask;->mCount:I

    array-length v2, p2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ProtectMessagesTask;->mCount:I

    .line 2117
    const-string v1, "_id"

    invoke-static {v1, p3}, Lcom/motorola/messaging/util/MessageUtils;->buildMultipleWhereClause(Ljava/lang/String;[J)Ljava/lang/StringBuilder;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ProtectMessagesTask;->mMmsWhereClause:Ljava/lang/StringBuilder;

    .line 2118
    iget v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ProtectMessagesTask;->mCount:I

    array-length v2, p3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ProtectMessagesTask;->mCount:I

    .line 2119
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ProtectMessagesTask;->mValues:Landroid/content/ContentValues;

    const-string v2, "locked"

    iget-boolean v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ProtectMessagesTask;->mDoProtect:Z

    if-eqz v3, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2120
    return-void

    .line 2119
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 2105
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ProtectMessagesTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v5, 0x0

    .line 2134
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ProtectMessagesTask;->mSmsWhereClause:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 2135
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ProtectMessagesTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ProtectMessagesTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/motorola/messaging/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ProtectMessagesTask;->mValues:Landroid/content/ContentValues;

    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ProtectMessagesTask;->mSmsWhereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/motorola/messaging/provider/SqliteManager;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2138
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ProtectMessagesTask;->mMmsWhereClause:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    .line 2139
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ProtectMessagesTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ProtectMessagesTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/motorola/messaging/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ProtectMessagesTask;->mValues:Landroid/content/ContentValues;

    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ProtectMessagesTask;->mMmsWhereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/motorola/messaging/provider/SqliteManager;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2143
    :cond_1
    return-object v5
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2105
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ProtectMessagesTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 2148
    iget v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ProtectMessagesTask;->mCount:I

    if-le v2, v4, :cond_0

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ProtectMessagesTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2149
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ProtectMessagesTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/app/Activity;->dismissDialog(I)V

    .line 2152
    :cond_0
    iget-boolean v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ProtectMessagesTask;->mDoProtect:Z

    if-eqz v2, :cond_1

    const v1, 0x7f0c0005

    .line 2154
    .local v1, "toastResId":I
    :goto_0
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ProtectMessagesTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ProtectMessagesTask;->mCount:I

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ProtectMessagesTask;->mCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2156
    .local v0, "toastBody":Ljava/lang/String;
    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ProtectMessagesTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-static {v2, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2157
    return-void

    .line 2152
    .end local v0    # "toastBody":Ljava/lang/String;
    .end local v1    # "toastResId":I
    :cond_1
    const v1, 0x7f0c0006

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 2124
    iget v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ProtectMessagesTask;->mCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 2126
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ProtectMessagesTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "protect_count"

    iget v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ProtectMessagesTask;->mCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2127
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ProtectMessagesTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "do_protect"

    iget-boolean v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ProtectMessagesTask;->mDoProtect:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2128
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ProtectMessagesTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/16 v1, 0x65

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ProtectMessagesTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mDialogBundle:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    .line 2130
    :cond_0
    return-void
.end method
