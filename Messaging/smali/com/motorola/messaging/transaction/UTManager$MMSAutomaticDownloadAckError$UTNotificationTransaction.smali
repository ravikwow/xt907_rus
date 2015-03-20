.class Lcom/motorola/messaging/transaction/UTManager$MMSAutomaticDownloadAckError$UTNotificationTransaction;
.super Lcom/motorola/messaging/transaction/NotificationTransaction;
.source "UTManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/transaction/UTManager$MMSAutomaticDownloadAckError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UTNotificationTransaction"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;ILcom/motorola/messaging/transaction/TransactionSettings;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # I
    .param p3, "connectionSettings"    # Lcom/motorola/messaging/transaction/TransactionSettings;
    .param p4, "uriString"    # Ljava/lang/String;

    .prologue
    .line 331
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/messaging/transaction/NotificationTransaction;-><init>(Landroid/content/Context;ILcom/motorola/messaging/transaction/TransactionSettings;Ljava/lang/String;)V

    .line 332
    return-void
.end method


# virtual methods
.method protected sendNotifyRespInd(I)V
    .locals 2
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;,
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    new-instance v0, Lorg/apache/http/HttpException;

    const-string v1, "HTTP FAILURE"

    invoke-direct {v0, v1}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
