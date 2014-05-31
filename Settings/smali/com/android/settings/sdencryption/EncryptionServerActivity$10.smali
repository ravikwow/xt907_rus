.class Lcom/android/settings/sdencryption/EncryptionServerActivity$10;
.super Ljava/lang/Object;
.source "EncryptionServerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sdencryption/EncryptionServerActivity;->onSDEncrStatusChange()V
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
    .line 485
    iput-object p1, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity$10;->this$0:Lcom/android/settings/sdencryption/EncryptionServerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity$10;->this$0:Lcom/android/settings/sdencryption/EncryptionServerActivity;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/settings/sdencryption/EncryptionServerActivity;->removeDialog(I)V

    .line 488
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity$10;->this$0:Lcom/android/settings/sdencryption/EncryptionServerActivity;

    const/4 v1, -0x1

    # setter for: Lcom/android/settings/sdencryption/EncryptionServerActivity;->mLastDislogId:I
    invoke-static {v0, v1}, Lcom/android/settings/sdencryption/EncryptionServerActivity;->access$002(Lcom/android/settings/sdencryption/EncryptionServerActivity;I)I

    .line 489
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity$10;->this$0:Lcom/android/settings/sdencryption/EncryptionServerActivity;

    invoke-virtual {v0}, Lcom/android/settings/sdencryption/EncryptionServerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/sdencryption/Util;->stopEncryptionService(Landroid/content/Context;)V

    .line 490
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity$10;->this$0:Lcom/android/settings/sdencryption/EncryptionServerActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/sdencryption/EncryptionServerActivity;->mEncryptionState:Lcom/android/settings/sdencryption/EncryptionState;
    invoke-static {v0, v1}, Lcom/android/settings/sdencryption/EncryptionServerActivity;->access$602(Lcom/android/settings/sdencryption/EncryptionServerActivity;Lcom/android/settings/sdencryption/EncryptionState;)Lcom/android/settings/sdencryption/EncryptionState;

    .line 491
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity$10;->this$0:Lcom/android/settings/sdencryption/EncryptionServerActivity;

    # invokes: Lcom/android/settings/sdencryption/EncryptionServerActivity;->selfClose()V
    invoke-static {v0}, Lcom/android/settings/sdencryption/EncryptionServerActivity;->access$500(Lcom/android/settings/sdencryption/EncryptionServerActivity;)V

    .line 492
    return-void
.end method
