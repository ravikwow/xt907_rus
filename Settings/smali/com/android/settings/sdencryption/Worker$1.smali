.class Lcom/android/settings/sdencryption/Worker$1;
.super Landroid/os/storage/StorageEventListener;
.source "Worker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sdencryption/Worker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sdencryption/Worker;


# direct methods
.method constructor <init>(Lcom/android/settings/sdencryption/Worker;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/settings/sdencryption/Worker$1;->this$0:Lcom/android/settings/sdencryption/Worker;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 213
    const-string v0, "Worker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encryption received storage state changed notification that "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " changed state from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; mCurrentStep = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sdencryption/Worker$1;->this$0:Lcom/android/settings/sdencryption/Worker;

    # getter for: Lcom/android/settings/sdencryption/Worker;->mCurrentStep:I
    invoke-static {v2}, Lcom/android/settings/sdencryption/Worker;->access$100(Lcom/android/settings/sdencryption/Worker;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/android/settings/sdencryption/Worker$1;->this$0:Lcom/android/settings/sdencryption/Worker;

    # getter for: Lcom/android/settings/sdencryption/Worker;->mIsMediaListenerRegister:Z
    invoke-static {v0}, Lcom/android/settings/sdencryption/Worker;->access$200(Lcom/android/settings/sdencryption/Worker;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    const-string v0, "Worker"

    const-string v1, "onStorageStateChanged(): MediaListenerRegister == false; Not register"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sdencryption/Worker$1;->this$0:Lcom/android/settings/sdencryption/Worker;

    # getter for: Lcom/android/settings/sdencryption/Worker;->SD_CARD_PATH:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/sdencryption/Worker;->access$300(Lcom/android/settings/sdencryption/Worker;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "unmounted"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/sdencryption/Worker$1;->this$0:Lcom/android/settings/sdencryption/Worker;

    # getter for: Lcom/android/settings/sdencryption/Worker;->mCurrentStep:I
    invoke-static {v0}, Lcom/android/settings/sdencryption/Worker;->access$100(Lcom/android/settings/sdencryption/Worker;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/sdencryption/Worker$1;->this$0:Lcom/android/settings/sdencryption/Worker;

    # getter for: Lcom/android/settings/sdencryption/Worker;->STEP_UNMOUNT:I
    invoke-static {v1}, Lcom/android/settings/sdencryption/Worker;->access$400(Lcom/android/settings/sdencryption/Worker;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 222
    const-string v0, "Worker"

    const-string v1, "In MEDIA_UNMOUNTED case"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/android/settings/sdencryption/Worker$1;->this$0:Lcom/android/settings/sdencryption/Worker;

    # invokes: Lcom/android/settings/sdencryption/Worker;->stopTimer()V
    invoke-static {v0}, Lcom/android/settings/sdencryption/Worker;->access$500(Lcom/android/settings/sdencryption/Worker;)V

    .line 226
    iget-object v0, p0, Lcom/android/settings/sdencryption/Worker$1;->this$0:Lcom/android/settings/sdencryption/Worker;

    # getter for: Lcom/android/settings/sdencryption/Worker;->mEsph:Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;
    invoke-static {v0}, Lcom/android/settings/sdencryption/Worker;->access$600(Lcom/android/settings/sdencryption/Worker;)Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/android/settings/sdencryption/Worker$1;->this$0:Lcom/android/settings/sdencryption/Worker;

    # getter for: Lcom/android/settings/sdencryption/Worker;->mEsph:Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;
    invoke-static {v0}, Lcom/android/settings/sdencryption/Worker;->access$600(Lcom/android/settings/sdencryption/Worker;)Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;->writePersistMemorySystemProperties()V

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/android/settings/sdencryption/Worker$1;->this$0:Lcom/android/settings/sdencryption/Worker;

    iget-object v1, p0, Lcom/android/settings/sdencryption/Worker$1;->this$0:Lcom/android/settings/sdencryption/Worker;

    # getter for: Lcom/android/settings/sdencryption/Worker;->STEP_MOUNT:I
    invoke-static {v1}, Lcom/android/settings/sdencryption/Worker;->access$700(Lcom/android/settings/sdencryption/Worker;)I

    move-result v1

    # setter for: Lcom/android/settings/sdencryption/Worker;->mCurrentStep:I
    invoke-static {v0, v1}, Lcom/android/settings/sdencryption/Worker;->access$102(Lcom/android/settings/sdencryption/Worker;I)I

    .line 230
    iget-object v0, p0, Lcom/android/settings/sdencryption/Worker$1;->this$0:Lcom/android/settings/sdencryption/Worker;

    # invokes: Lcom/android/settings/sdencryption/Worker;->mount()V
    invoke-static {v0}, Lcom/android/settings/sdencryption/Worker;->access$800(Lcom/android/settings/sdencryption/Worker;)V

    goto :goto_0

    .line 232
    :cond_2
    iget-object v0, p0, Lcom/android/settings/sdencryption/Worker$1;->this$0:Lcom/android/settings/sdencryption/Worker;

    # getter for: Lcom/android/settings/sdencryption/Worker;->SD_CARD_PATH:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/sdencryption/Worker;->access$300(Lcom/android/settings/sdencryption/Worker;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "mounted"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "mounted_ro"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/settings/sdencryption/Worker$1;->this$0:Lcom/android/settings/sdencryption/Worker;

    # getter for: Lcom/android/settings/sdencryption/Worker;->mCurrentStep:I
    invoke-static {v0}, Lcom/android/settings/sdencryption/Worker;->access$100(Lcom/android/settings/sdencryption/Worker;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/sdencryption/Worker$1;->this$0:Lcom/android/settings/sdencryption/Worker;

    # getter for: Lcom/android/settings/sdencryption/Worker;->STEP_MOUNT:I
    invoke-static {v1}, Lcom/android/settings/sdencryption/Worker;->access$700(Lcom/android/settings/sdencryption/Worker;)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 234
    const-string v0, "Worker"

    const-string v1, "In MEDIA_MOUNTED or MEDIA_MOUNTED_READ_ONLY case"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/android/settings/sdencryption/Worker$1;->this$0:Lcom/android/settings/sdencryption/Worker;

    iget-object v1, p0, Lcom/android/settings/sdencryption/Worker$1;->this$0:Lcom/android/settings/sdencryption/Worker;

    # getter for: Lcom/android/settings/sdencryption/Worker;->STEP_START:I
    invoke-static {v1}, Lcom/android/settings/sdencryption/Worker;->access$900(Lcom/android/settings/sdencryption/Worker;)I

    move-result v1

    # setter for: Lcom/android/settings/sdencryption/Worker;->mCurrentStep:I
    invoke-static {v0, v1}, Lcom/android/settings/sdencryption/Worker;->access$102(Lcom/android/settings/sdencryption/Worker;I)I

    .line 237
    iget-object v0, p0, Lcom/android/settings/sdencryption/Worker$1;->this$0:Lcom/android/settings/sdencryption/Worker;

    # invokes: Lcom/android/settings/sdencryption/Worker;->postMountAction(ZI)V
    invoke-static {v0, v3, v3}, Lcom/android/settings/sdencryption/Worker;->access$000(Lcom/android/settings/sdencryption/Worker;ZI)V

    goto/16 :goto_0

    .line 239
    :cond_4
    iget-object v0, p0, Lcom/android/settings/sdencryption/Worker$1;->this$0:Lcom/android/settings/sdencryption/Worker;

    # getter for: Lcom/android/settings/sdencryption/Worker;->SD_CARD_PATH:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/sdencryption/Worker;->access$300(Lcom/android/settings/sdencryption/Worker;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "checking"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 240
    const-string v0, "Worker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping event for the state \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'. Doing nothing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 242
    :cond_5
    iget-object v0, p0, Lcom/android/settings/sdencryption/Worker$1;->this$0:Lcom/android/settings/sdencryption/Worker;

    # getter for: Lcom/android/settings/sdencryption/Worker;->SD_CARD_PATH:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/sdencryption/Worker;->access$300(Lcom/android/settings/sdencryption/Worker;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "removed"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "nofs"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "shared"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "bad_removal"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "unmountable"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 245
    :cond_6
    const-string v0, "Worker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error!!!! The event for the new state \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' consider as an error."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcom/android/settings/sdencryption/Worker$1;->this$0:Lcom/android/settings/sdencryption/Worker;

    iget-object v1, p0, Lcom/android/settings/sdencryption/Worker$1;->this$0:Lcom/android/settings/sdencryption/Worker;

    # getter for: Lcom/android/settings/sdencryption/Worker;->STEP_START:I
    invoke-static {v1}, Lcom/android/settings/sdencryption/Worker;->access$900(Lcom/android/settings/sdencryption/Worker;)I

    move-result v1

    # setter for: Lcom/android/settings/sdencryption/Worker;->mCurrentStep:I
    invoke-static {v0, v1}, Lcom/android/settings/sdencryption/Worker;->access$102(Lcom/android/settings/sdencryption/Worker;I)I

    .line 248
    iget-object v0, p0, Lcom/android/settings/sdencryption/Worker$1;->this$0:Lcom/android/settings/sdencryption/Worker;

    # invokes: Lcom/android/settings/sdencryption/Worker;->postMountAction(ZI)V
    invoke-static {v0, v4, v4}, Lcom/android/settings/sdencryption/Worker;->access$000(Lcom/android/settings/sdencryption/Worker;ZI)V

    goto/16 :goto_0

    .line 251
    :cond_7
    const-string v0, "Worker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported event for the state \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' and mCurrentStep="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sdencryption/Worker$1;->this$0:Lcom/android/settings/sdencryption/Worker;

    # getter for: Lcom/android/settings/sdencryption/Worker;->mCurrentStep:I
    invoke-static {v2}, Lcom/android/settings/sdencryption/Worker;->access$100(Lcom/android/settings/sdencryption/Worker;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Doing nothing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lcom/android/settings/sdencryption/Worker$1;->this$0:Lcom/android/settings/sdencryption/Worker;

    # invokes: Lcom/android/settings/sdencryption/Worker;->postMountAction(ZI)V
    invoke-static {v0, v3, v3}, Lcom/android/settings/sdencryption/Worker;->access$000(Lcom/android/settings/sdencryption/Worker;ZI)V

    goto/16 :goto_0
.end method
