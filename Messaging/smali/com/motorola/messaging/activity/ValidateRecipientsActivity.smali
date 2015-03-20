.class public Lcom/motorola/messaging/activity/ValidateRecipientsActivity;
.super Landroid/app/Activity;
.source "ValidateRecipientsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final DEBUG:Z

.field private static final LOCAL_LOG:Z


# instance fields
.field private mDialogText:Ljava/lang/String;

.field private mReplyIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 43
    sput-boolean v0, Lcom/motorola/messaging/activity/ValidateRecipientsActivity;->DEBUG:Z

    .line 44
    sget-boolean v1, Lcom/motorola/messaging/activity/ValidateRecipientsActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/activity/ValidateRecipientsActivity;->LOCAL_LOG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/activity/ValidateRecipientsActivity;->mReplyIntent:Landroid/content/Intent;

    return-void
.end method

.method private validateIntent(Landroid/content/Intent;Ljava/lang/StringBuilder;)Z
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 162
    .line 163
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsMmsMaxNumRecipients()I

    move-result v5

    .line 165
    if-eqz p1, :cond_6

    .line 167
    invoke-static {p1}, Lcom/motorola/messaging/util/MessageUtils;->adjustIntent(Landroid/content/Intent;)V

    .line 171
    const-string v0, "address"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 172
    const/4 v0, 0x0

    .line 175
    if-eqz v4, :cond_7

    .line 176
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v0, ";"

    invoke-direct {v2, v4, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    .line 178
    if-le v0, v3, :cond_0

    .line 179
    const-string v4, "multiple_recipients"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 184
    :cond_0
    :goto_0
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsMmsMaxNumRecipientsEnable()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 185
    if-le v0, v5, :cond_6

    .line 186
    const-string v4, "KEY_CUT_RECIPIENTS_AND_PROCEED"

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 189
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move v4, v1

    .line 192
    :goto_1
    if-ge v4, v5, :cond_2

    .line 193
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 195
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 196
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 199
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const-string v8, ";"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v4, v8

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 201
    const-string v8, ", "

    move v4, v5

    .line 202
    :goto_2
    if-ge v4, v0, :cond_4

    .line 203
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 205
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 206
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 210
    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 212
    const v0, 0x7f0b0069

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    aput-object v7, v2, v3

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    iput-object p1, p0, Lcom/motorola/messaging/activity/ValidateRecipientsActivity;->mReplyIntent:Landroid/content/Intent;

    .line 218
    iget-object v0, p0, Lcom/motorola/messaging/activity/ValidateRecipientsActivity;->mReplyIntent:Landroid/content/Intent;

    const-string v2, "address"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    iget-object v0, p0, Lcom/motorola/messaging/activity/ValidateRecipientsActivity;->mReplyIntent:Landroid/content/Intent;

    const-string v2, "KEY_ADDRESSES_REMOVED"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 220
    iget-object v0, p0, Lcom/motorola/messaging/activity/ValidateRecipientsActivity;->mReplyIntent:Landroid/content/Intent;

    const-class v2, Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 230
    :goto_3
    return v1

    .line 224
    :cond_5
    iget-object v0, p0, Lcom/motorola/messaging/activity/ValidateRecipientsActivity;->mReplyIntent:Landroid/content/Intent;

    const-string v2, "KEY_MAX_RECIPIENTS"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 225
    const v0, 0x7f0b0068

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    move v1, v3

    goto :goto_3

    :cond_7
    move-object v2, v0

    move v0, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 152
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 153
    iget-object v0, p0, Lcom/motorola/messaging/activity/ValidateRecipientsActivity;->mReplyIntent:Landroid/content/Intent;

    const-string v1, "KEY_ADDRESSES_REMOVED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/motorola/messaging/activity/ValidateRecipientsActivity;->mReplyIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    const/16 v0, 0x64

    iget-object v1, p0, Lcom/motorola/messaging/activity/ValidateRecipientsActivity;->mReplyIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    sget-boolean v0, Lcom/motorola/messaging/activity/ValidateRecipientsActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "ValidateRecipientsActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_0
    if-nez p1, :cond_3

    .line 82
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    invoke-direct {p0, v0, v1}, Lcom/motorola/messaging/activity/ValidateRecipientsActivity;->validateIntent(Landroid/content/Intent;Ljava/lang/StringBuilder;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    const-class v1, Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 89
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 103
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/activity/ValidateRecipientsActivity;->mDialogText:Ljava/lang/String;

    .line 102
    :cond_2
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 95
    :cond_3
    const-string v0, "SAVED_DIALOG_TEXT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/activity/ValidateRecipientsActivity;->mDialogText:Ljava/lang/String;

    .line 96
    const-string v0, "SAVED_REPLY_INTENT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_2

    .line 98
    iget-object v1, p0, Lcom/motorola/messaging/activity/ValidateRecipientsActivity;->mReplyIntent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_1
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 129
    if-nez p1, :cond_0

    .line 130
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 131
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b019d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 132
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 133
    iget-object v2, p0, Lcom/motorola/messaging/activity/ValidateRecipientsActivity;->mDialogText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 134
    const v2, 0x7f0b007a

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 136
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 137
    .local v1, "dialog":Landroid/app/Dialog;
    new-instance v2, Lcom/motorola/messaging/activity/ValidateRecipientsActivity$1;

    invoke-direct {v2, p0}, Lcom/motorola/messaging/activity/ValidateRecipientsActivity$1;-><init>(Lcom/motorola/messaging/activity/ValidateRecipientsActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 145
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialog":Landroid/app/Dialog;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 117
    if-eqz p1, :cond_0

    .line 118
    const-string v1, "SAVED_DIALOG_TEXT"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/messaging/activity/ValidateRecipientsActivity;->mDialogText:Ljava/lang/String;

    .line 119
    const-string v1, "SAVED_REPLY_INTENT"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 120
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 121
    iget-object v1, p0, Lcom/motorola/messaging/activity/ValidateRecipientsActivity;->mReplyIntent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 124
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 107
    const-string v1, "SAVED_DIALOG_TEXT"

    iget-object v2, p0, Lcom/motorola/messaging/activity/ValidateRecipientsActivity;->mDialogText:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/motorola/messaging/activity/ValidateRecipientsActivity;->mReplyIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 109
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 110
    const-string v1, "SAVED_REPLY_INTENT"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 112
    :cond_0
    return-void
.end method
