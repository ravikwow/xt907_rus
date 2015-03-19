.class Lcom/android/settings/sdencryption/EncryptionServerActivity$4;
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
    .line 279
    iput-object p1, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity$4;->this$0:Lcom/android/settings/sdencryption/EncryptionServerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x3

    .line 283
    iget-object v3, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity$4;->this$0:Lcom/android/settings/sdencryption/EncryptionServerActivity;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070057

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 284
    .local v0, "items":[I
    aget v2, v0, p2

    .line 286
    .local v2, "posponeTimeInHours":I
    if-lez v2, :cond_0

    .line 287
    iget-object v3, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity$4;->this$0:Lcom/android/settings/sdencryption/EncryptionServerActivity;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/settings/sdencryption/Util;->getFormattedPostponeMsgString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, "msg":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity$4;->this$0:Lcom/android/settings/sdencryption/EncryptionServerActivity;

    invoke-virtual {v3, v5}, Landroid/app/Activity;->removeDialog(I)V

    .line 289
    iget-object v3, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity$4;->this$0:Lcom/android/settings/sdencryption/EncryptionServerActivity;

    int-to-long v4, v2

    # invokes: Lcom/android/settings/sdencryption/EncryptionServerActivity;->postponeChangeEncryptionSettings(JLjava/lang/String;)V
    invoke-static {v3, v4, v5, v1}, Lcom/android/settings/sdencryption/EncryptionServerActivity;->access$300(Lcom/android/settings/sdencryption/EncryptionServerActivity;JLjava/lang/String;)V

    .line 290
    iget-object v3, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity$4;->this$0:Lcom/android/settings/sdencryption/EncryptionServerActivity;

    const/4 v4, -0x1

    # setter for: Lcom/android/settings/sdencryption/EncryptionServerActivity;->mLastDislogId:I
    invoke-static {v3, v4}, Lcom/android/settings/sdencryption/EncryptionServerActivity;->access$002(Lcom/android/settings/sdencryption/EncryptionServerActivity;I)I

    .line 297
    .end local v1    # "msg":Ljava/lang/String;
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v3, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity$4;->this$0:Lcom/android/settings/sdencryption/EncryptionServerActivity;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->showDialog(I)V

    .line 295
    iget-object v3, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity$4;->this$0:Lcom/android/settings/sdencryption/EncryptionServerActivity;

    invoke-virtual {v3, v5}, Landroid/app/Activity;->removeDialog(I)V

    goto :goto_0
.end method
