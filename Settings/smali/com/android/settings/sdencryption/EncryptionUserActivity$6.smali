.class Lcom/android/settings/sdencryption/EncryptionUserActivity$6;
.super Ljava/lang/Object;
.source "EncryptionUserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sdencryption/EncryptionUserActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sdencryption/EncryptionUserActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/sdencryption/EncryptionUserActivity;)V
    .locals 0

    .prologue
    .line 497
    iput-object p1, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity$6;->this$0:Lcom/android/settings/sdencryption/EncryptionUserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity$6;->this$0:Lcom/android/settings/sdencryption/EncryptionUserActivity;

    # invokes: Lcom/android/settings/sdencryption/EncryptionUserActivity;->selfClose()V
    invoke-static {v0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->access$900(Lcom/android/settings/sdencryption/EncryptionUserActivity;)V

    .line 500
    return-void
.end method
