.class Lcom/android/settings/sdencryption/EncryptionPinActivity$8;
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
    .line 390
    iput-object p1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity$8;->this$0:Lcom/android/settings/sdencryption/EncryptionPinActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity$8;->this$0:Lcom/android/settings/sdencryption/EncryptionPinActivity;

    const-string v1, "done"

    # invokes: Lcom/android/settings/sdencryption/EncryptionPinActivity;->syncVolume(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->access$500(Lcom/android/settings/sdencryption/EncryptionPinActivity;Ljava/lang/String;)V

    .line 393
    return-void
.end method
