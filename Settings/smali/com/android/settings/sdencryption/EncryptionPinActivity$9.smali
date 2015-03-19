.class Lcom/android/settings/sdencryption/EncryptionPinActivity$9;
.super Landroid/os/Handler;
.source "EncryptionPinActivity.java"


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
    .line 742
    iput-object p1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity$9;->this$0:Lcom/android/settings/sdencryption/EncryptionPinActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 745
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity$9;->this$0:Lcom/android/settings/sdencryption/EncryptionPinActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 757
    :goto_0
    return-void

    .line 749
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 750
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity$9;->this$0:Lcom/android/settings/sdencryption/EncryptionPinActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 755
    :cond_1
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity$9;->this$0:Lcom/android/settings/sdencryption/EncryptionPinActivity;

    iget v1, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/settings/sdencryption/EncryptionPinActivity;->processMessage(I)V
    invoke-static {v0, v1}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->access$600(Lcom/android/settings/sdencryption/EncryptionPinActivity;I)V

    goto :goto_0
.end method
