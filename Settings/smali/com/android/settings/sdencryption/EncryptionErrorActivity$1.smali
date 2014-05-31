.class Lcom/android/settings/sdencryption/EncryptionErrorActivity$1;
.super Ljava/lang/Object;
.source "EncryptionErrorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sdencryption/EncryptionErrorActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 59
    iput-object p1, p0, Lcom/android/settings/sdencryption/EncryptionErrorActivity$1;->this$0:Lcom/android/settings/sdencryption/EncryptionErrorActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionErrorActivity$1;->this$0:Lcom/android/settings/sdencryption/EncryptionErrorActivity;

    invoke-virtual {v0}, Lcom/android/settings/sdencryption/EncryptionErrorActivity;->finish()V

    .line 63
    return-void
.end method
