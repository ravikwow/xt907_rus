.class Lcom/motorola/messaging/transaction/UTManager$MMSManualDownloadAckError;
.super Lcom/motorola/messaging/transaction/UTManager;
.source "UTManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/transaction/UTManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MMSManualDownloadAckError"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/transaction/UTManager$MMSManualDownloadAckError$UTRetrieveTransaction;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/UTManager;-><init>()V

    .line 348
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/messaging/transaction/UTManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/messaging/transaction/UTManager$1;

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/UTManager$MMSManualDownloadAckError;-><init>()V

    return-void
.end method


# virtual methods
.method public createRetrieveTransaction(Landroid/content/Context;ILcom/motorola/messaging/transaction/TransactionSettings;Ljava/lang/String;)Lcom/motorola/messaging/transaction/RetrieveTransaction;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # I
    .param p3, "connectionSettings"    # Lcom/motorola/messaging/transaction/TransactionSettings;
    .param p4, "uriString"    # Ljava/lang/String;

    .prologue
    .line 362
    new-instance v0, Lcom/motorola/messaging/transaction/UTManager$MMSManualDownloadAckError$UTRetrieveTransaction;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/motorola/messaging/transaction/UTManager$MMSManualDownloadAckError$UTRetrieveTransaction;-><init>(Landroid/content/Context;ILcom/motorola/messaging/transaction/TransactionSettings;Ljava/lang/String;)V

    return-object v0
.end method
