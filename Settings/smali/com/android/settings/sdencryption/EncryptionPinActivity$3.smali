.class Lcom/android/settings/sdencryption/EncryptionPinActivity$3;
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
    .line 318
    iput-object p1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity$3;->this$0:Lcom/android/settings/sdencryption/EncryptionPinActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity$3;->this$0:Lcom/android/settings/sdencryption/EncryptionPinActivity;

    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity$3;->this$0:Lcom/android/settings/sdencryption/EncryptionPinActivity;

    # invokes: Lcom/android/settings/sdencryption/EncryptionPinActivity;->getUserPwd()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->access$100(Lcom/android/settings/sdencryption/EncryptionPinActivity;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/settings/sdencryption/EncryptionPinActivity;->validateVolume(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->access$200(Lcom/android/settings/sdencryption/EncryptionPinActivity;Ljava/lang/String;)V

    .line 321
    return-void
.end method
