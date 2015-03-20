.class Lcom/motorola/blur/privacy/LegalReaderActivity$LegalService$1$1;
.super Ljava/lang/Object;
.source "LegalReaderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/privacy/LegalReaderActivity$LegalService$1;->handleResponse(Lcom/motorola/blur/service/blur/WSResponseParcel;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/blur/privacy/LegalReaderActivity$LegalService$1;

.field final synthetic val$activity:Lcom/motorola/blur/privacy/LegalReaderActivity;

.field final synthetic val$content:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/motorola/blur/privacy/LegalReaderActivity$LegalService$1;Lcom/motorola/blur/privacy/LegalReaderActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lcom/motorola/blur/privacy/LegalReaderActivity$LegalService$1$1;->this$1:Lcom/motorola/blur/privacy/LegalReaderActivity$LegalService$1;

    iput-object p2, p0, Lcom/motorola/blur/privacy/LegalReaderActivity$LegalService$1$1;->val$activity:Lcom/motorola/blur/privacy/LegalReaderActivity;

    iput-object p3, p0, Lcom/motorola/blur/privacy/LegalReaderActivity$LegalService$1$1;->val$content:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 463
    :try_start_0
    const-string v1, "BlurLRA"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LegalService handleResponse progressDialogShowing:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/blur/privacy/LegalReaderActivity$LegalService$1$1;->val$activity:Lcom/motorola/blur/privacy/LegalReaderActivity;

    iget-boolean v5, v5, Lcom/motorola/blur/privacy/LegalReaderActivity;->mProgressShowing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 464
    iget-object v1, p0, Lcom/motorola/blur/privacy/LegalReaderActivity$LegalService$1$1;->val$activity:Lcom/motorola/blur/privacy/LegalReaderActivity;

    iget-boolean v1, v1, Lcom/motorola/blur/privacy/LegalReaderActivity;->mProgressShowing:Z

    if-ne v1, v6, :cond_0

    .line 465
    iget-object v1, p0, Lcom/motorola/blur/privacy/LegalReaderActivity$LegalService$1$1;->val$activity:Lcom/motorola/blur/privacy/LegalReaderActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/motorola/blur/privacy/LegalReaderActivity$LegalService$1$1;->val$content:Ljava/lang/String;

    invoke-static {v1}, Lcom/motorola/blur/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 472
    iget-object v1, p0, Lcom/motorola/blur/privacy/LegalReaderActivity$LegalService$1$1;->val$activity:Lcom/motorola/blur/privacy/LegalReaderActivity;

    invoke-virtual {v1, v8}, Landroid/app/Activity;->showDialog(I)V

    .line 476
    :goto_1
    return-void

    .line 467
    :catch_0
    move-exception v0

    .line 468
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "BlurLRA"

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "Dialog wasn\'t present"

    aput-object v3, v2, v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 474
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    iget-object v1, p0, Lcom/motorola/blur/privacy/LegalReaderActivity$LegalService$1$1;->val$activity:Lcom/motorola/blur/privacy/LegalReaderActivity;

    iget-object v1, v1, Lcom/motorola/blur/privacy/LegalReaderActivity;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/motorola/blur/privacy/LegalReaderActivity$LegalService$1$1;->val$content:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
