.class Lcom/android/settings/sdencryption/EncryptionUserActivity$8;
.super Ljava/lang/Object;
.source "EncryptionUserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sdencryption/EncryptionUserActivity;->onSDEncrStatusChange()V
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
    .line 537
    iput-object p1, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity$8;->this$0:Lcom/android/settings/sdencryption/EncryptionUserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity$8;->this$0:Lcom/android/settings/sdencryption/EncryptionUserActivity;

    # invokes: Lcom/android/settings/sdencryption/EncryptionUserActivity;->dismissProgressDialog()V
    invoke-static {v0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->access$1200(Lcom/android/settings/sdencryption/EncryptionUserActivity;)V

    .line 540
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity$8;->this$0:Lcom/android/settings/sdencryption/EncryptionUserActivity;

    # invokes: Lcom/android/settings/sdencryption/EncryptionUserActivity;->initCurrentServerPoliciesAndUserPermissions()V
    invoke-static {v0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->access$1300(Lcom/android/settings/sdencryption/EncryptionUserActivity;)V

    .line 541
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity$8;->this$0:Lcom/android/settings/sdencryption/EncryptionUserActivity;

    # invokes: Lcom/android/settings/sdencryption/EncryptionUserActivity;->setPreferencesCheckAndSummary()V
    invoke-static {v0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->access$1400(Lcom/android/settings/sdencryption/EncryptionUserActivity;)V

    .line 542
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity$8;->this$0:Lcom/android/settings/sdencryption/EncryptionUserActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->enablePreferences(Z)V

    .line 543
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity$8;->this$0:Lcom/android/settings/sdencryption/EncryptionUserActivity;

    # invokes: Lcom/android/settings/sdencryption/EncryptionUserActivity;->resetUserSelection()V
    invoke-static {v0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->access$1500(Lcom/android/settings/sdencryption/EncryptionUserActivity;)V

    .line 544
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity$8;->this$0:Lcom/android/settings/sdencryption/EncryptionUserActivity;

    # invokes: Lcom/android/settings/sdencryption/EncryptionUserActivity;->disableButtons()V
    invoke-static {v0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->access$1600(Lcom/android/settings/sdencryption/EncryptionUserActivity;)V

    .line 545
    return-void
.end method
