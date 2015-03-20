.class Lcom/motorola/messaging/transaction/UTManager$MMSExpiredMessage;
.super Lcom/motorola/messaging/transaction/UTManager;
.source "UTManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/transaction/UTManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MMSExpiredMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/transaction/UTManager$MMSExpiredMessage$UTDownloadManager;
    }
.end annotation


# instance fields
.field mUTDownloadManager:Lcom/motorola/messaging/transaction/UTManager$MMSExpiredMessage$UTDownloadManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 559
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/UTManager;-><init>()V

    .line 563
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/messaging/transaction/UTManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/messaging/transaction/UTManager$1;

    .prologue
    .line 559
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/UTManager$MMSExpiredMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownloadManager()Lcom/motorola/messaging/transaction/DownloadManager;
    .locals 2

    .prologue
    .line 575
    sget-boolean v0, Lcom/motorola/messaging/transaction/UTManager$MMSExpiredMessage;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 576
    const-string v0, "UTManager"

    const-string v1, "getDownloadManager"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/transaction/UTManager$MMSExpiredMessage;->mUTDownloadManager:Lcom/motorola/messaging/transaction/UTManager$MMSExpiredMessage$UTDownloadManager;

    if-nez v0, :cond_1

    .line 580
    new-instance v0, Lcom/motorola/messaging/transaction/UTManager$MMSExpiredMessage$UTDownloadManager;

    invoke-direct {v0}, Lcom/motorola/messaging/transaction/UTManager$MMSExpiredMessage$UTDownloadManager;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/transaction/UTManager$MMSExpiredMessage;->mUTDownloadManager:Lcom/motorola/messaging/transaction/UTManager$MMSExpiredMessage$UTDownloadManager;

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/motorola/messaging/transaction/UTManager$MMSExpiredMessage;->mUTDownloadManager:Lcom/motorola/messaging/transaction/UTManager$MMSExpiredMessage$UTDownloadManager;

    return-object v0
.end method
