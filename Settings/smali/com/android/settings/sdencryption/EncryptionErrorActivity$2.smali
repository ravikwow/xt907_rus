.class Lcom/android/settings/sdencryption/EncryptionErrorActivity$2;
.super Ljava/lang/Object;
.source "EncryptionErrorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sdencryption/EncryptionErrorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sdencryption/EncryptionErrorActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/sdencryption/EncryptionErrorActivity;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/settings/sdencryption/EncryptionErrorActivity$2;->this$0:Lcom/android/settings/sdencryption/EncryptionErrorActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionErrorActivity$2;->this$0:Lcom/android/settings/sdencryption/EncryptionErrorActivity;

    invoke-virtual {v0}, Lcom/android/settings/sdencryption/EncryptionErrorActivity;->finish()V

    .line 72
    return-void
.end method
