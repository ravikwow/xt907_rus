.class Lcom/motorola/messaging/transaction/UTManager$MMSLongDownload$UTRetrieveTransaction;
.super Lcom/motorola/messaging/transaction/RetrieveTransaction;
.source "UTManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/transaction/UTManager$MMSLongDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UTRetrieveTransaction"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;ILcom/motorola/messaging/transaction/TransactionSettings;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # I
    .param p3, "connectionSettings"    # Lcom/motorola/messaging/transaction/TransactionSettings;
    .param p4, "uriString"    # Ljava/lang/String;

    .prologue
    .line 394
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/messaging/transaction/RetrieveTransaction;-><init>(Landroid/content/Context;ILcom/motorola/messaging/transaction/TransactionSettings;Ljava/lang/String;)V

    .line 395
    return-void
.end method


# virtual methods
.method protected getPdu(Ljava/lang/String;)[B
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 398
    const-string v0, "MMSLongDownload"

    const-wide/32 v1, 0xd6d8

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/transaction/TransactionManager;->sleep(Ljava/lang/String;J)V

    .line 399
    invoke-super {p0, p1}, Lcom/motorola/messaging/transaction/Transaction;->getPdu(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
