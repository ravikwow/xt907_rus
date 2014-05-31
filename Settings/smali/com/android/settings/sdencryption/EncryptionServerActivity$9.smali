.class Lcom/android/settings/sdencryption/EncryptionServerActivity$9;
.super Ljava/lang/Object;
.source "EncryptionServerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 396
    iput-object p1, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity$9;->this$0:Lcom/android/settings/sdencryption/EncryptionServerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity$9;->this$0:Lcom/android/settings/sdencryption/EncryptionServerActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/settings/sdencryption/EncryptionServerActivity;->removeDialog(I)V

    .line 399
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity$9;->this$0:Lcom/android/settings/sdencryption/EncryptionServerActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/sdencryption/EncryptionServerActivity;->showDialog(I)V

    .line 400
    return-void
.end method
