.class Lcom/android/settings/sdencryption/EncryptionServerActivity$8;
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
    .line 389
    iput-object p1, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity$8;->this$0:Lcom/android/settings/sdencryption/EncryptionServerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity$8;->this$0:Lcom/android/settings/sdencryption/EncryptionServerActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 392
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity$8;->this$0:Lcom/android/settings/sdencryption/EncryptionServerActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 393
    return-void
.end method
