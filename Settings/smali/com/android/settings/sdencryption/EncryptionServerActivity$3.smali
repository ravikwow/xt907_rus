.class Lcom/android/settings/sdencryption/EncryptionServerActivity$3;
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
    .line 263
    iput-object p1, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity$3;->this$0:Lcom/android/settings/sdencryption/EncryptionServerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity$3;->this$0:Lcom/android/settings/sdencryption/EncryptionServerActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/settings/sdencryption/EncryptionServerActivity;->showDialog(I)V

    .line 267
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity$3;->this$0:Lcom/android/settings/sdencryption/EncryptionServerActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/sdencryption/EncryptionServerActivity;->removeDialog(I)V

    .line 268
    return-void
.end method
