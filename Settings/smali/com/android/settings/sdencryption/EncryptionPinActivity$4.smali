.class Lcom/android/settings/sdencryption/EncryptionPinActivity$4;
.super Ljava/lang/Object;
.source "EncryptionPinActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sdencryption/EncryptionPinActivity;->processMessage(I)V
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
    .line 335
    iput-object p1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity$4;->this$0:Lcom/android/settings/sdencryption/EncryptionPinActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity$4;->this$0:Lcom/android/settings/sdencryption/EncryptionPinActivity;

    # getter for: Lcom/android/settings/sdencryption/EncryptionPinActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->access$300(Lcom/android/settings/sdencryption/EncryptionPinActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 338
    return-void
.end method
