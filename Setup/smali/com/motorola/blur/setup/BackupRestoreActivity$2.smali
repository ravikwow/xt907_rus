.class Lcom/motorola/blur/setup/BackupRestoreActivity$2;
.super Ljava/lang/Object;
.source "BackupRestoreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/BackupRestoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/BackupRestoreActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/BackupRestoreActivity;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/motorola/blur/setup/BackupRestoreActivity$2;->this$0:Lcom/motorola/blur/setup/BackupRestoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 82
    iget-object v2, p0, Lcom/motorola/blur/setup/BackupRestoreActivity$2;->this$0:Lcom/motorola/blur/setup/BackupRestoreActivity;

    # getter for: Lcom/motorola/blur/setup/BackupRestoreActivity;->mAutoRestoreBox:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/motorola/blur/setup/BackupRestoreActivity;->access$000(Lcom/motorola/blur/setup/BackupRestoreActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 84
    .local v0, "curState":Z
    :try_start_0
    iget-object v2, p0, Lcom/motorola/blur/setup/BackupRestoreActivity$2;->this$0:Lcom/motorola/blur/setup/BackupRestoreActivity;

    # getter for: Lcom/motorola/blur/setup/BackupRestoreActivity;->mBackupManager:Landroid/app/backup/IBackupManager;
    invoke-static {v2}, Lcom/motorola/blur/setup/BackupRestoreActivity;->access$100(Lcom/motorola/blur/setup/BackupRestoreActivity;)Landroid/app/backup/IBackupManager;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/motorola/blur/setup/BackupRestoreActivity$2;->this$0:Lcom/motorola/blur/setup/BackupRestoreActivity;

    # getter for: Lcom/motorola/blur/setup/BackupRestoreActivity;->mAutoRestoreBox:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/motorola/blur/setup/BackupRestoreActivity;->access$000(Lcom/motorola/blur/setup/BackupRestoreActivity;)Landroid/widget/CheckBox;

    move-result-object v3

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method
