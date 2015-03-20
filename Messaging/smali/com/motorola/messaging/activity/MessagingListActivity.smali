.class public Lcom/motorola/messaging/activity/MessagingListActivity;
.super Landroid/app/ListActivity;
.source "MessagingListActivity.java"


# instance fields
.field protected mWaitingForSubActivity:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 52
    packed-switch p1, :pswitch_data_0

    .line 59
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 54
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 55
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {p0, v0}, Lcom/motorola/messaging/util/MessageUtils;->fillBuilderForActivityNotFound(Landroid/content/Context;Landroid/app/AlertDialog$Builder;)V

    .line 56
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
    .end packed-switch
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 35
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/motorola/messaging/activity/MessagingListActivity;->mWaitingForSubActivity:Z

    .line 36
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/motorola/messaging/util/KeyboardUtils;->hideSoftInputFromWindow(Landroid/view/Window;ILandroid/content/Context;)V

    .line 41
    if-ltz p2, :cond_0

    .line 42
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/messaging/activity/MessagingListActivity;->mWaitingForSubActivity:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "MessagingListActivity"

    const-string v2, "Activity could not be found!"

    invoke-static {v1, v2, v0}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    const/16 v1, 0x1f4

    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0
.end method
