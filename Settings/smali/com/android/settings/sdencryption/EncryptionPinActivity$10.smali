.class Lcom/android/settings/sdencryption/EncryptionPinActivity$10;
.super Ljava/lang/Object;
.source "EncryptionPinActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sdencryption/EncryptionPinActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sdencryption/EncryptionPinActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/sdencryption/EncryptionPinActivity;)V
    .locals 0

    .prologue
    .line 761
    iput-object p1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity$10;->this$0:Lcom/android/settings/sdencryption/EncryptionPinActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 763
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 765
    .local v0, "status":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity$10;->this$0:Lcom/android/settings/sdencryption/EncryptionPinActivity;

    # getter for: Lcom/android/settings/sdencryption/EncryptionPinActivity;->mInProgress:Z
    invoke-static {v1}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->access$700(Lcom/android/settings/sdencryption/EncryptionPinActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 766
    :cond_0
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity$10;->this$0:Lcom/android/settings/sdencryption/EncryptionPinActivity;

    # invokes: Lcom/android/settings/sdencryption/EncryptionPinActivity;->myUnregisterReceiver()V
    invoke-static {v1}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->access$800(Lcom/android/settings/sdencryption/EncryptionPinActivity;)V

    .line 767
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity$10;->this$0:Lcom/android/settings/sdencryption/EncryptionPinActivity;

    const-string v2, "cancel"

    # invokes: Lcom/android/settings/sdencryption/EncryptionPinActivity;->syncVolume(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->access$500(Lcom/android/settings/sdencryption/EncryptionPinActivity;Ljava/lang/String;)V

    .line 769
    :cond_1
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity$10;->this$0:Lcom/android/settings/sdencryption/EncryptionPinActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 770
    return-void
.end method
