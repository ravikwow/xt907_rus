.class Lcom/android/providers/downloads/ui/TrampolineActivity$FailedDialogFragment$1;
.super Ljava/lang/Object;
.source "TrampolineActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/TrampolineActivity$FailedDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/TrampolineActivity$FailedDialogFragment;

.field final synthetic val$dm:Landroid/app/DownloadManager;

.field final synthetic val$id:J


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/ui/TrampolineActivity$FailedDialogFragment;Landroid/app/DownloadManager;J)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/providers/downloads/ui/TrampolineActivity$FailedDialogFragment$1;->this$0:Lcom/android/providers/downloads/ui/TrampolineActivity$FailedDialogFragment;

    iput-object p2, p0, Lcom/android/providers/downloads/ui/TrampolineActivity$FailedDialogFragment$1;->val$dm:Landroid/app/DownloadManager;

    iput-wide p3, p0, Lcom/android/providers/downloads/ui/TrampolineActivity$FailedDialogFragment$1;->val$id:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/providers/downloads/ui/TrampolineActivity$FailedDialogFragment$1;->val$dm:Landroid/app/DownloadManager;

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/android/providers/downloads/ui/TrampolineActivity$FailedDialogFragment$1;->val$id:J

    aput-wide v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->remove([J)I

    .line 216
    return-void
.end method
