.class Lcom/motorola/blur/setup/BackupRestoreActivity$3;
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
    .line 92
    iput-object p1, p0, Lcom/motorola/blur/setup/BackupRestoreActivity$3;->this$0:Lcom/motorola/blur/setup/BackupRestoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/motorola/blur/setup/BackupRestoreActivity$3;->this$0:Lcom/motorola/blur/setup/BackupRestoreActivity;

    # getter for: Lcom/motorola/blur/setup/BackupRestoreActivity;->mBackupBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/motorola/blur/setup/BackupRestoreActivity;->access$200(Lcom/motorola/blur/setup/BackupRestoreActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const-string v0, "BackupRestoreActivity"

    const-string v1, "mBackupbox is checked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/motorola/blur/setup/BackupRestoreActivity$3;->this$0:Lcom/motorola/blur/setup/BackupRestoreActivity;

    const/4 v1, 0x1

    # invokes: Lcom/motorola/blur/setup/BackupRestoreActivity;->setBackupEnabled(Z)V
    invoke-static {v0, v1}, Lcom/motorola/blur/setup/BackupRestoreActivity;->access$300(Lcom/motorola/blur/setup/BackupRestoreActivity;Z)V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/setup/BackupRestoreActivity$3;->this$0:Lcom/motorola/blur/setup/BackupRestoreActivity;

    const/4 v1, 0x0

    # invokes: Lcom/motorola/blur/setup/BackupRestoreActivity;->setBackupEnabled(Z)V
    invoke-static {v0, v1}, Lcom/motorola/blur/setup/BackupRestoreActivity;->access$300(Lcom/motorola/blur/setup/BackupRestoreActivity;Z)V

    goto :goto_0
.end method
