.class public Lcom/motorola/blur/setup/BackupRestoreActivity;
.super Landroid/app/Activity;
.source "BackupRestoreActivity.java"


# static fields
.field private static final DEBUG:Z = true

.field static final RESTORE_FINISHED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BackupRestoreActivity"


# instance fields
.field private mAutoRestoreBox:Landroid/widget/CheckBox;

.field public mAutoRestoreBoxListener:Landroid/view/View$OnClickListener;

.field private mBackupBox:Landroid/widget/CheckBox;

.field public mBackupBoxListener:Landroid/view/View$OnClickListener;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private final mBackupServiceConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mNextButton:Landroid/widget/Button;

.field public nextButtonListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    new-instance v0, Lcom/motorola/blur/setup/BackupRestoreActivity$1;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/BackupRestoreActivity$1;-><init>(Lcom/motorola/blur/setup/BackupRestoreActivity;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/BackupRestoreActivity;->mHandler:Landroid/os/Handler;

    .line 79
    new-instance v0, Lcom/motorola/blur/setup/BackupRestoreActivity$2;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/BackupRestoreActivity$2;-><init>(Lcom/motorola/blur/setup/BackupRestoreActivity;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/BackupRestoreActivity;->mAutoRestoreBoxListener:Landroid/view/View$OnClickListener;

    .line 92
    new-instance v0, Lcom/motorola/blur/setup/BackupRestoreActivity$3;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/BackupRestoreActivity$3;-><init>(Lcom/motorola/blur/setup/BackupRestoreActivity;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/BackupRestoreActivity;->mBackupBoxListener:Landroid/view/View$OnClickListener;

    .line 106
    new-instance v0, Lcom/motorola/blur/setup/BackupRestoreActivity$4;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/BackupRestoreActivity$4;-><init>(Lcom/motorola/blur/setup/BackupRestoreActivity;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/BackupRestoreActivity;->nextButtonListener:Landroid/view/View$OnClickListener;

    .line 186
    new-instance v0, Lcom/motorola/blur/setup/BackupRestoreActivity$5;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/BackupRestoreActivity$5;-><init>(Lcom/motorola/blur/setup/BackupRestoreActivity;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/BackupRestoreActivity;->mBackupServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/blur/setup/BackupRestoreActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/setup/BackupRestoreActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/motorola/blur/setup/BackupRestoreActivity;->mAutoRestoreBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/blur/setup/BackupRestoreActivity;)Landroid/app/backup/IBackupManager;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/setup/BackupRestoreActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/motorola/blur/setup/BackupRestoreActivity;->mBackupManager:Landroid/app/backup/IBackupManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/blur/setup/BackupRestoreActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/setup/BackupRestoreActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/motorola/blur/setup/BackupRestoreActivity;->mBackupBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/blur/setup/BackupRestoreActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/setup/BackupRestoreActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/motorola/blur/setup/BackupRestoreActivity;->setBackupEnabled(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/motorola/blur/setup/BackupRestoreActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/setup/BackupRestoreActivity;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/motorola/blur/setup/BackupRestoreActivity;->performRestore()V

    return-void
.end method

.method static synthetic access$500(Lcom/motorola/blur/setup/BackupRestoreActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/setup/BackupRestoreActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/motorola/blur/setup/BackupRestoreActivity;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/motorola/blur/setup/BackupRestoreActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/setup/BackupRestoreActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/motorola/blur/setup/BackupRestoreActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private performRestore()V
    .locals 3

    .prologue
    .line 214
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/motorola/blur/setup/RestoreService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 215
    .local v0, "restoreIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 216
    iget-object v1, p0, Lcom/motorola/blur/setup/BackupRestoreActivity;->mBackupServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 217
    const-string v1, "RestoreActivity"

    const-string v2, "Could not connect to restore service... skipping"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 219
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 221
    :cond_0
    return-void
.end method

.method private setBackupEnabled(Z)V
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, "configIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/motorola/blur/setup/BackupRestoreActivity;->mBackupManager:Landroid/app/backup/IBackupManager;

    if-eqz v3, :cond_0

    .line 169
    :try_start_0
    iget-object v3, p0, Lcom/motorola/blur/setup/BackupRestoreActivity;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v3, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V

    .line 170
    if-eqz p1, :cond_0

    .line 171
    iget-object v3, p0, Lcom/motorola/blur/setup/BackupRestoreActivity;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v3}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "transport":Ljava/lang/String;
    iget-object v3, p0, Lcom/motorola/blur/setup/BackupRestoreActivity;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v3, v2}, Landroid/app/backup/IBackupManager;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 173
    iget-object v3, p0, Lcom/motorola/blur/setup/BackupRestoreActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .end local v2    # "transport":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/motorola/blur/setup/BackupRestoreActivity;->mBackupBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 182
    iget-object v3, p0, Lcom/motorola/blur/setup/BackupRestoreActivity;->mAutoRestoreBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 183
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v1

    .line 176
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v6, p0, Lcom/motorola/blur/setup/BackupRestoreActivity;->mBackupBox:Landroid/widget/CheckBox;

    if-nez p1, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 177
    iget-object v3, p0, Lcom/motorola/blur/setup/BackupRestoreActivity;->mAutoRestoreBox:Landroid/widget/CheckBox;

    if-nez p1, :cond_2

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    move v3, v5

    .line 176
    goto :goto_1

    :cond_2
    move v4, v5

    .line 177
    goto :goto_2
.end method

.method private updateToggles()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 147
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 149
    .local v2, "res":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 152
    .local v0, "backupEnabled":Z
    :try_start_0
    iget-object v5, p0, Lcom/motorola/blur/setup/BackupRestoreActivity;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v5}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 157
    :goto_0
    iget-object v5, p0, Lcom/motorola/blur/setup/BackupRestoreActivity;->mBackupBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 159
    iget-object v5, p0, Lcom/motorola/blur/setup/BackupRestoreActivity;->mAutoRestoreBox:Landroid/widget/CheckBox;

    const-string v6, "backup_auto_restore"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v3, :cond_0

    :goto_1
    invoke-virtual {v5, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 161
    iget-object v3, p0, Lcom/motorola/blur/setup/BackupRestoreActivity;->mAutoRestoreBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 162
    return-void

    .line 153
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v5, p0, Lcom/motorola/blur/setup/BackupRestoreActivity;->mBackupBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    move v3, v4

    .line 159
    goto :goto_1
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 143
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const-string v0, "BackupRestoreActivity"

    const-string v1, "BackupRestore activity is created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iput-object p0, p0, Lcom/motorola/blur/setup/BackupRestoreActivity;->mContext:Landroid/content/Context;

    .line 62
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 64
    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/BackupRestoreActivity;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 66
    const v0, 0x7f0c001c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/motorola/blur/setup/BackupRestoreActivity;->mAutoRestoreBox:Landroid/widget/CheckBox;

    .line 67
    const v0, 0x7f0c0019

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/motorola/blur/setup/BackupRestoreActivity;->mBackupBox:Landroid/widget/CheckBox;

    .line 69
    const v0, 0x7f0c001e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/motorola/blur/setup/BackupRestoreActivity;->mNextButton:Landroid/widget/Button;

    .line 72
    iget-object v0, p0, Lcom/motorola/blur/setup/BackupRestoreActivity;->mAutoRestoreBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/motorola/blur/setup/BackupRestoreActivity;->mAutoRestoreBoxListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/motorola/blur/setup/BackupRestoreActivity;->mBackupBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/motorola/blur/setup/BackupRestoreActivity;->mBackupBoxListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/motorola/blur/setup/BackupRestoreActivity;->mNextButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/motorola/blur/setup/BackupRestoreActivity;->nextButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-direct {p0}, Lcom/motorola/blur/setup/BackupRestoreActivity;->updateToggles()V

    .line 77
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 131
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 132
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 122
    invoke-direct {p0}, Lcom/motorola/blur/setup/BackupRestoreActivity;->updateToggles()V

    .line 123
    return-void
.end method
