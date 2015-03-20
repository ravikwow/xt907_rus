.class Lcom/motorola/blur/setup/RestoreService$RestoreObserver;
.super Landroid/app/backup/IRestoreObserver$Stub;
.source "RestoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/RestoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreObserver"
.end annotation


# instance fields
.field finished:Z

.field resultSets:[Landroid/app/backup/RestoreSet;

.field final synthetic this$0:Lcom/motorola/blur/setup/RestoreService;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/RestoreService;)V
    .locals 1

    .prologue
    .line 31
    iput-object p1, p0, Lcom/motorola/blur/setup/RestoreService$RestoreObserver;->this$0:Lcom/motorola/blur/setup/RestoreService;

    invoke-direct {p0}, Landroid/app/backup/IRestoreObserver$Stub;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/setup/RestoreService$RestoreObserver;->resultSets:[Landroid/app/backup/RestoreSet;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/setup/RestoreService$RestoreObserver;->finished:Z

    return-void
.end method


# virtual methods
.method public onUpdate(ILjava/lang/String;)V
    .locals 3
    .param p1, "nowBeingRestored"    # I
    .param p2, "currentPackage"    # Ljava/lang/String;

    .prologue
    .line 36
    const-string v0, "Ready2GoBackupSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method

.method public restoreFinished(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    .line 40
    const-string v0, "Ready2GoBackupSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restore Finished "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lcom/motorola/blur/setup/RestoreService$RestoreObserver;->this$0:Lcom/motorola/blur/setup/RestoreService;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/RestoreService;->finishService()V

    .line 42
    return-void
.end method

.method public restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    .locals 3
    .param p1, "result"    # [Landroid/app/backup/RestoreSet;

    .prologue
    .line 49
    const-string v0, "Ready2GoBackupSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restore Sets available "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/motorola/blur/setup/RestoreService$RestoreObserver;->this$0:Lcom/motorola/blur/setup/RestoreService;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    # invokes: Lcom/motorola/blur/setup/RestoreService;->doRestore(Landroid/app/backup/RestoreSet;)V
    invoke-static {v0, v1}, Lcom/motorola/blur/setup/RestoreService;->access$000(Lcom/motorola/blur/setup/RestoreService;Landroid/app/backup/RestoreSet;)V

    .line 55
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/setup/RestoreService$RestoreObserver;->this$0:Lcom/motorola/blur/setup/RestoreService;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/RestoreService;->finishService()V

    goto :goto_0
.end method

.method public restoreStarting(I)V
    .locals 3
    .param p1, "numPackages"    # I

    .prologue
    .line 45
    const-string v0, "Ready2GoBackupSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restore starting for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " packages"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method
