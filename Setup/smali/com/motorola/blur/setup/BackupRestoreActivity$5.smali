.class Lcom/motorola/blur/setup/BackupRestoreActivity$5;
.super Ljava/lang/Object;
.source "BackupRestoreActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 186
    iput-object p1, p0, Lcom/motorola/blur/setup/BackupRestoreActivity$5;->this$0:Lcom/motorola/blur/setup/BackupRestoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "paramComponentName"    # Landroid/content/ComponentName;
    .param p2, "paramIBinder"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x0

    .line 190
    const-string v0, "RestoreActivity"

    const-string v1, "Waiting for restore to finish"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/motorola/blur/setup/BackupRestoreActivity$5;->this$0:Lcom/motorola/blur/setup/BackupRestoreActivity;

    # getter for: Lcom/motorola/blur/setup/BackupRestoreActivity;->mAutoRestoreBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/motorola/blur/setup/BackupRestoreActivity;->access$000(Lcom/motorola/blur/setup/BackupRestoreActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 192
    iget-object v0, p0, Lcom/motorola/blur/setup/BackupRestoreActivity$5;->this$0:Lcom/motorola/blur/setup/BackupRestoreActivity;

    # getter for: Lcom/motorola/blur/setup/BackupRestoreActivity;->mBackupBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/motorola/blur/setup/BackupRestoreActivity;->access$200(Lcom/motorola/blur/setup/BackupRestoreActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 193
    iget-object v0, p0, Lcom/motorola/blur/setup/BackupRestoreActivity$5;->this$0:Lcom/motorola/blur/setup/BackupRestoreActivity;

    const v1, 0x7f0c001d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/motorola/blur/setup/BackupRestoreActivity$5;->this$0:Lcom/motorola/blur/setup/BackupRestoreActivity;

    # getter for: Lcom/motorola/blur/setup/BackupRestoreActivity;->mNextButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/motorola/blur/setup/BackupRestoreActivity;->access$500(Lcom/motorola/blur/setup/BackupRestoreActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 195
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "paramComponentName"    # Landroid/content/ComponentName;

    .prologue
    .line 199
    const-string v1, "RestoreActivity"

    const-string v2, "Restore Finished"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/motorola/blur/setup/BackupRestoreActivity$5;->this$0:Lcom/motorola/blur/setup/BackupRestoreActivity;

    invoke-virtual {v1, p0}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 203
    iget-object v1, p0, Lcom/motorola/blur/setup/BackupRestoreActivity$5;->this$0:Lcom/motorola/blur/setup/BackupRestoreActivity;

    # getter for: Lcom/motorola/blur/setup/BackupRestoreActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/blur/setup/BackupRestoreActivity;->access$600(Lcom/motorola/blur/setup/BackupRestoreActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 207
    .local v0, "localException":Ljava/lang/Exception;
    const-string v1, "RestoreActivity"

    const-string v2, "Restore returned Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
