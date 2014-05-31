.class Lcom/android/settings/sdencryption/EncryptionServerActivity$5;
.super Ljava/lang/Object;
.source "EncryptionServerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sdencryption/EncryptionServerActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 313
    iput-object p1, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity$5;->this$0:Lcom/android/settings/sdencryption/EncryptionServerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity$5;->this$0:Lcom/android/settings/sdencryption/EncryptionServerActivity;

    const/4 v1, -0x1

    # setter for: Lcom/android/settings/sdencryption/EncryptionServerActivity;->mLastDislogId:I
    invoke-static {v0, v1}, Lcom/android/settings/sdencryption/EncryptionServerActivity;->access$002(Lcom/android/settings/sdencryption/EncryptionServerActivity;I)I

    .line 316
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity$5;->this$0:Lcom/android/settings/sdencryption/EncryptionServerActivity;

    # invokes: Lcom/android/settings/sdencryption/EncryptionServerActivity;->postponeChangeEncryptionSettingsIndefinitely()V
    invoke-static {v0}, Lcom/android/settings/sdencryption/EncryptionServerActivity;->access$400(Lcom/android/settings/sdencryption/EncryptionServerActivity;)V

    .line 317
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity$5;->this$0:Lcom/android/settings/sdencryption/EncryptionServerActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/settings/sdencryption/EncryptionServerActivity;->removeDialog(I)V

    .line 318
    return-void
.end method
