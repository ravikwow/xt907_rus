.class public Lcom/motorola/blur/privacy/LegalReaderActivity$LegalService;
.super Landroid/app/Service;
.source "LegalReaderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/privacy/LegalReaderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LegalService"
.end annotation


# instance fields
.field private final mWSResponseHandler:Lcom/motorola/blur/service/blur/IWSRequestCallback$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 415
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 431
    new-instance v0, Lcom/motorola/blur/privacy/LegalReaderActivity$LegalService$1;

    invoke-direct {v0, p0}, Lcom/motorola/blur/privacy/LegalReaderActivity$LegalService$1;-><init>(Lcom/motorola/blur/privacy/LegalReaderActivity$LegalService;)V

    iput-object v0, p0, Lcom/motorola/blur/privacy/LegalReaderActivity$LegalService;->mWSResponseHandler:Lcom/motorola/blur/service/blur/IWSRequestCallback$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 421
    const-string v0, "BlurLRA"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LegalService onBind:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 423
    const-string v0, "com.motorola.blur.service.blur.devicesetup.getlegaltext.resp"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.motorola.blur.service.blur.devicesetup.getlegaltext.resp"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/privacy/LegalReaderActivity$LegalService;->mWSResponseHandler:Lcom/motorola/blur/service/blur/IWSRequestCallback$Stub;

    .line 428
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
