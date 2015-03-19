.class Lcom/android/settings/sdencryption/EncryptionUserActivity$9;
.super Ljava/lang/Object;
.source "EncryptionUserActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sdencryption/EncryptionUserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sdencryption/EncryptionUserActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/sdencryption/EncryptionUserActivity;)V
    .locals 0

    .prologue
    .line 582
    iput-object p1, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity$9;->this$0:Lcom/android/settings/sdencryption/EncryptionUserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity$9;->this$0:Lcom/android/settings/sdencryption/EncryptionUserActivity;

    check-cast p2, Lcom/android/settings/sdencryption/EncryptionSettingsService$LocalBinder;

    .end local p2    # "service":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/android/settings/sdencryption/EncryptionSettingsService$LocalBinder;->getService()Lcom/android/settings/sdencryption/EncryptionSettingsService;

    move-result-object v1

    # setter for: Lcom/android/settings/sdencryption/EncryptionUserActivity;->mEncryptionService:Lcom/android/settings/sdencryption/EncryptionSettingsService;
    invoke-static {v0, v1}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->access$1702(Lcom/android/settings/sdencryption/EncryptionUserActivity;Lcom/android/settings/sdencryption/EncryptionSettingsService;)Lcom/android/settings/sdencryption/EncryptionSettingsService;

    .line 585
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity$9;->this$0:Lcom/android/settings/sdencryption/EncryptionUserActivity;

    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity$9;->this$0:Lcom/android/settings/sdencryption/EncryptionUserActivity;

    # getter for: Lcom/android/settings/sdencryption/EncryptionUserActivity;->mEncryptionService:Lcom/android/settings/sdencryption/EncryptionSettingsService;
    invoke-static {v1}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->access$1700(Lcom/android/settings/sdencryption/EncryptionUserActivity;)Lcom/android/settings/sdencryption/EncryptionSettingsService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/sdencryption/EncryptionSettingsService;->getEncryptionState()Lcom/android/settings/sdencryption/EncryptionState;

    move-result-object v1

    # setter for: Lcom/android/settings/sdencryption/EncryptionUserActivity;->mEncryptionState:Lcom/android/settings/sdencryption/EncryptionState;
    invoke-static {v0, v1}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->access$1802(Lcom/android/settings/sdencryption/EncryptionUserActivity;Lcom/android/settings/sdencryption/EncryptionState;)Lcom/android/settings/sdencryption/EncryptionState;

    .line 586
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity$9;->this$0:Lcom/android/settings/sdencryption/EncryptionUserActivity;

    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity$9;->this$0:Lcom/android/settings/sdencryption/EncryptionUserActivity;

    # getter for: Lcom/android/settings/sdencryption/EncryptionUserActivity;->mEncryptionState:Lcom/android/settings/sdencryption/EncryptionState;
    invoke-static {v1}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->access$1800(Lcom/android/settings/sdencryption/EncryptionUserActivity;)Lcom/android/settings/sdencryption/EncryptionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/sdencryption/EncryptionState;->getWorker()Lcom/android/settings/sdencryption/Worker;

    move-result-object v1

    # setter for: Lcom/android/settings/sdencryption/EncryptionUserActivity;->mWorker:Lcom/android/settings/sdencryption/Worker;
    invoke-static {v0, v1}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->access$1902(Lcom/android/settings/sdencryption/EncryptionUserActivity;Lcom/android/settings/sdencryption/Worker;)Lcom/android/settings/sdencryption/Worker;

    .line 587
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity$9;->this$0:Lcom/android/settings/sdencryption/EncryptionUserActivity;

    # invokes: Lcom/android/settings/sdencryption/EncryptionUserActivity;->runOnCreate()V
    invoke-static {v0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->access$2000(Lcom/android/settings/sdencryption/EncryptionUserActivity;)V

    .line 588
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity$9;->this$0:Lcom/android/settings/sdencryption/EncryptionUserActivity;

    # invokes: Lcom/android/settings/sdencryption/EncryptionUserActivity;->runOnResume()V
    invoke-static {v0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->access$2100(Lcom/android/settings/sdencryption/EncryptionUserActivity;)V

    .line 589
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity$9;->this$0:Lcom/android/settings/sdencryption/EncryptionUserActivity;

    invoke-virtual {v0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->doUnbindService()V

    .line 590
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity$9;->this$0:Lcom/android/settings/sdencryption/EncryptionUserActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/sdencryption/EncryptionUserActivity;->mEncryptionService:Lcom/android/settings/sdencryption/EncryptionSettingsService;
    invoke-static {v0, v1}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->access$1702(Lcom/android/settings/sdencryption/EncryptionUserActivity;Lcom/android/settings/sdencryption/EncryptionSettingsService;)Lcom/android/settings/sdencryption/EncryptionSettingsService;

    .line 594
    return-void
.end method
