.class public Lcom/android/providers/downloads/ui/TrampolineActivity$FailedDialogFragment;
.super Landroid/app/DialogFragment;
.source "TrampolineActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/ui/TrampolineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FailedDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/FragmentManager;JI)V
    .locals 3
    .parameter "fm"
    .parameter "id"
    .parameter "reason"

    .prologue
    .line 170
    new-instance v1, Lcom/android/providers/downloads/ui/TrampolineActivity$FailedDialogFragment;

    invoke-direct {v1}, Lcom/android/providers/downloads/ui/TrampolineActivity$FailedDialogFragment;-><init>()V

    .line 171
    .local v1, dialog:Lcom/android/providers/downloads/ui/TrampolineActivity$FailedDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 172
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "id"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 173
    const-string v2, "reason"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 174
    invoke-virtual {v1, v0}, Lcom/android/providers/downloads/ui/TrampolineActivity$FailedDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 175
    const-string v2, "failed"

    invoke-virtual {v1, p0, v2}, Lcom/android/providers/downloads/ui/TrampolineActivity$FailedDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 176
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/TrampolineActivity$FailedDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 182
    .local v1, context:Landroid/content/Context;
    const-string v6, "download"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/DownloadManager;

    .line 184
    .local v2, dm:Landroid/app/DownloadManager;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/app/DownloadManager;->setAccessAllDownloads(Z)V

    .line 186
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/TrampolineActivity$FailedDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "id"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 187
    .local v3, id:J
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/TrampolineActivity$FailedDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "reason"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 189
    .local v5, reason:I
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 191
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f07000b

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 194
    packed-switch v5, :pswitch_data_0

    .line 208
    const v6, 0x7f07000c

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 211
    :goto_0
    const v6, 0x7f070017

    new-instance v7, Lcom/android/providers/downloads/ui/TrampolineActivity$FailedDialogFragment$1;

    invoke-direct {v7, p0, v2, v3, v4}, Lcom/android/providers/downloads/ui/TrampolineActivity$FailedDialogFragment$1;-><init>(Lcom/android/providers/downloads/ui/TrampolineActivity$FailedDialogFragment;Landroid/app/DownloadManager;J)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 219
    const v6, 0x7f07001a

    new-instance v7, Lcom/android/providers/downloads/ui/TrampolineActivity$FailedDialogFragment$2;

    invoke-direct {v7, p0, v2, v3, v4}, Lcom/android/providers/downloads/ui/TrampolineActivity$FailedDialogFragment$2;-><init>(Lcom/android/providers/downloads/ui/TrampolineActivity$FailedDialogFragment;Landroid/app/DownloadManager;J)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 227
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6

    .line 196
    :pswitch_0
    const v6, 0x7f070013

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 199
    :pswitch_1
    const v6, 0x7f070010

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 202
    :pswitch_2
    const v6, 0x7f070014

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 205
    :pswitch_3
    const v6, 0x7f070012

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 194
    :pswitch_data_0
    .packed-switch 0x3ee
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 232
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 238
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/TrampolineActivity$FailedDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 239
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 243
    :cond_0
    return-void
.end method
