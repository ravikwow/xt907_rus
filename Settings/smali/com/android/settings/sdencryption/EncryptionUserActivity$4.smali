.class Lcom/android/settings/sdencryption/EncryptionUserActivity$4;
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
    .line 472
    iput-object p1, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity$4;->this$0:Lcom/android/settings/sdencryption/EncryptionUserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity$4;->this$0:Lcom/android/settings/sdencryption/EncryptionUserActivity;

    const/4 v1, 0x1

    # invokes: Lcom/android/settings/sdencryption/EncryptionUserActivity;->removeDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->access$700(Lcom/android/settings/sdencryption/EncryptionUserActivity;I)V

    .line 476
    return-void
.end method
