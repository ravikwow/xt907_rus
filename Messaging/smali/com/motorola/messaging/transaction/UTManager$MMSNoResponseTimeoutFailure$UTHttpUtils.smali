.class Lcom/motorola/messaging/transaction/UTManager$MMSNoResponseTimeoutFailure$UTHttpUtils;
.super Lcom/motorola/messaging/transaction/HttpUtils;
.source "UTManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/transaction/UTManager$MMSNoResponseTimeoutFailure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UTHttpUtils"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/motorola/messaging/transaction/Transaction;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "transaction"    # Lcom/motorola/messaging/transaction/Transaction;

    .prologue
    .line 599
    invoke-direct {p0, p1, p2}, Lcom/motorola/messaging/transaction/HttpUtils;-><init>(Landroid/content/Context;Lcom/motorola/messaging/transaction/Transaction;)V

    .line 600
    return-void
.end method


# virtual methods
.method protected httpConnection(JLjava/net/InetAddress;Ljava/lang/String;[BILcom/motorola/messaging/transaction/Transaction$TransactionTimeout;ZLjava/lang/String;I)[B
    .locals 3
    .param p1, "token"    # J
    .param p3, "inetAddr"    # Ljava/net/InetAddress;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "pdu"    # [B
    .param p6, "method"    # I
    .param p7, "timeout"    # Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;
    .param p8, "isProxySet"    # Z
    .param p9, "proxyHost"    # Ljava/lang/String;
    .param p10, "proxyPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 605
    const-string v0, "no response"

    const-wide/32 v1, 0x1d4c0

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/transaction/TransactionManager;->sleep(Ljava/lang/String;J)V

    .line 606
    const/4 v0, 0x0

    return-object v0
.end method
