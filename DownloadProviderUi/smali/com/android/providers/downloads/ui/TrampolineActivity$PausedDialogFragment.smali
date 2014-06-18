.class public Lcom/android/providers/downloads/ui/TrampolineActivity$PausedDialogFragment;
.super Landroid/app/DialogFragment;
.source "TrampolineActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/ui/TrampolineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PausedDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/FragmentManager;J)V
    .locals 3
    .param p0, "fm"    # Landroid/app/FragmentManager;
    .param p1, "id"    # J

    .prologue
    .line 117
    new-instance v1, Lcom/android/providers/downloads/ui/TrampolineActivity$PausedDialogFragment;

    invoke-direct {v1}, Lcom/android/providers/downloads/ui/TrampolineActivity$PausedDialogFragment;-><init>()V

    .line 118
    .local v1, "dialog":Lcom/android/providers/downloads/ui/TrampolineActivity$PausedDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 119
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "id"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 120
    invoke-virtual {v1, v0}, Lcom/android/providers/downloads/ui/TrampolineActivity$PausedDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 121
    const-string v2, "paused"

    invoke-virtual {v1, p0, v2}, Lcom/android/providers/downloads/ui/TrampolineActivity$PausedDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 122
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/TrampolineActivity$PausedDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 128
    .local v1, "context":Landroid/content/Context;
    const-string v5, "download"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/DownloadManager;

    .line 130
    .local v2, "dm":Landroid/app/DownloadManager;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/app/DownloadManager;->setAccessAllDownloads(Z)V

    .line 132
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/TrampolineActivity$PausedDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "id"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 134
    .local v3, "id":J
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 136
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v5, 0x7f07000d

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 137
    const v5, 0x7f07000e

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 139
    const v5, 0x7f070018

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 141
    const v5, 0x7f070016

    new-instance v6, Lcom/android/providers/downloads/ui/TrampolineActivity$PausedDialogFragment$1;

    invoke-direct {v6, p0, v2, v3, v4}, Lcom/android/providers/downloads/ui/TrampolineActivity$PausedDialogFragment$1;-><init>(Lcom/android/providers/downloads/ui/TrampolineActivity$PausedDialogFragment;Landroid/app/DownloadManager;J)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 149
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 154
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/TrampolineActivity$PausedDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 161
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 165
    :cond_0
    return-void
.end method
