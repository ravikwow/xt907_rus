.class Lcom/android/settings/sdencryption/EncryptionServerActivity$11;
.super Ljava/lang/Object;
.source "EncryptionServerActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sdencryption/EncryptionServerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sdencryption/EncryptionServerActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/sdencryption/EncryptionServerActivity;)V
    .locals 0

    .prologue
    .line 496
    iput-object p1, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity$11;->this$0:Lcom/android/settings/sdencryption/EncryptionServerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity$11;->this$0:Lcom/android/settings/sdencryption/EncryptionServerActivity;

    check-cast p2, Lcom/android/settings/sdencryption/EncryptionSettingsService$LocalBinder;

    .end local p2    # "service":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/android/settings/sdencryption/EncryptionSettingsService$LocalBinder;->getService()Lcom/android/settings/sdencryption/EncryptionSettingsService;

    move-result-object v1

    # setter for: Lcom/android/settings/sdencryption/EncryptionServerActivity;->mEncryptionService:Lcom/android/settings/sdencryption/EncryptionSettingsService;
    invoke-static {v0, v1}, Lcom/android/settings/sdencryption/EncryptionServerActivity;->access$702(Lcom/android/settings/sdencryption/EncryptionServerActivity;Lcom/android/settings/sdencryption/EncryptionSettingsService;)Lcom/android/settings/sdencryption/EncryptionSettingsService;

    .line 499
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity$11;->this$0:Lcom/android/settings/sdencryption/EncryptionServerActivity;

    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity$11;->this$0:Lcom/android/settings/sdencryption/EncryptionServerActivity;

    # getter for: Lcom/android/settings/sdencryption/EncryptionServerActivity;->mEncryptionService:Lcom/android/settings/sdencryption/EncryptionSettingsService;
    invoke-static {v1}, Lcom/android/settings/sdencryption/EncryptionServerActivity;->access$700(Lcom/android/settings/sdencryption/EncryptionServerActivity;)Lcom/android/settings/sdencryption/EncryptionSettingsService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/sdencryption/EncryptionSettingsService;->getEncryptionState()Lcom/android/settings/sdencryption/EncryptionState;

    move-result-object v1

    # setter for: Lcom/android/settings/sdencryption/EncryptionServerActivity;->mEncryptionState:Lcom/android/settings/sdencryption/EncryptionState;
    invoke-static {v0, v1}, Lcom/android/settings/sdencryption/EncryptionServerActivity;->access$602(Lcom/android/settings/sdencryption/EncryptionServerActivity;Lcom/android/settings/sdencryption/EncryptionState;)Lcom/android/settings/sdencryption/EncryptionState;

    .line 500
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity$11;->this$0:Lcom/android/settings/sdencryption/EncryptionServerActivity;

    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity$11;->this$0:Lcom/android/settings/sdencryption/EncryptionServerActivity;

    # getter for: Lcom/android/settings/sdencryption/EncryptionServerActivity;->mEncryptionState:Lcom/android/settings/sdencryption/EncryptionState;
    invoke-static {v1}, Lcom/android/settings/sdencryption/EncryptionServerActivity;->access$600(Lcom/android/settings/sdencryption/EncryptionServerActivity;)Lcom/android/settings/sdencryption/EncryptionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/sdencryption/EncryptionState;->getWorker()Lcom/android/settings/sdencryption/Worker;

    move-result-object v1

    # setter for: Lcom/android/settings/sdencryption/EncryptionServerActivity;->mWorker:Lcom/android/settings/sdencryption/Worker;
    invoke-static {v0, v1}, Lcom/android/settings/sdencryption/EncryptionServerActivity;->access$802(Lcom/android/settings/sdencryption/EncryptionServerActivity;Lcom/android/settings/sdencryption/Worker;)Lcom/android/settings/sdencryption/Worker;

    .line 501
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity$11;->this$0:Lcom/android/settings/sdencryption/EncryptionServerActivity;

    # invokes: Lcom/android/settings/sdencryption/EncryptionServerActivity;->runOnCreate()V
    invoke-static {v0}, Lcom/android/settings/sdencryption/EncryptionServerActivity;->access$900(Lcom/android/settings/sdencryption/EncryptionServerActivity;)V

    .line 502
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity$11;->this$0:Lcom/android/settings/sdencryption/EncryptionServerActivity;

    # invokes: Lcom/android/settings/sdencryption/EncryptionServerActivity;->runOnResume()V
    invoke-static {v0}, Lcom/android/settings/sdencryption/EncryptionServerActivity;->access$1000(Lcom/android/settings/sdencryption/EncryptionServerActivity;)V

    .line 503
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity$11;->this$0:Lcom/android/settings/sdencryption/EncryptionServerActivity;

    invoke-virtual {v0}, Lcom/android/settings/sdencryption/EncryptionServerActivity;->doUnbindService()V

    .line 504
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity$11;->this$0:Lcom/android/settings/sdencryption/EncryptionServerActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/sdencryption/EncryptionServerActivity;->mEncryptionService:Lcom/android/settings/sdencryption/EncryptionSettingsService;
    invoke-static {v0, v1}, Lcom/android/settings/sdencryption/EncryptionServerActivity;->access$702(Lcom/android/settings/sdencryption/EncryptionServerActivity;Lcom/android/settings/sdencryption/EncryptionSettingsService;)Lcom/android/settings/sdencryption/EncryptionSettingsService;

    .line 508
    return-void
.end method
