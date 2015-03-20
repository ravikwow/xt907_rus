.class public Lcom/motorola/messaging/activity/MessagingActivity;
.super Landroid/app/Activity;
.source "MessagingActivity.java"


# instance fields
.field protected mWaitingForSubActivity:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 48
    packed-switch p1, :pswitch_data_0

    .line 55
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 50
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 51
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {p0, v0}, Lcom/motorola/messaging/util/MessageUtils;->fillBuilderForActivityNotFound(Landroid/content/Context;Landroid/app/AlertDialog$Builder;)V

    .line 52
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
    .end packed-switch
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 34
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/motorola/messaging/activity/MessagingActivity;->mWaitingForSubActivity:Z

    .line 35
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 37
    if-ltz p2, :cond_0

    .line 38
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/messaging/activity/MessagingActivity;->mWaitingForSubActivity:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "MessagingActivity"

    const-string v2, "Activity could not be found!"

    invoke-static {v1, v2, v0}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    const/16 v1, 0x1f4

    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0
.end method
