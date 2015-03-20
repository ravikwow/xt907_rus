.class Lcom/motorola/messaging/dom/smil/PduHelper;
.super Lcom/motorola/messaging/pdu/PduParser;
.source "SmilHelper.java"


# static fields
.field private static final LOCAL_LOG:Z


# instance fields
.field private mPduDataStream:Ljava/io/ByteArrayInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    sput-boolean v0, Lcom/motorola/messaging/dom/smil/PduHelper;->LOCAL_LOG:Z

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "pduDataStream"    # [B

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/motorola/messaging/pdu/PduParser;-><init>([B)V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/messaging/dom/smil/PduHelper;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 80
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/motorola/messaging/dom/smil/PduHelper;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 81
    return-void
.end method


# virtual methods
.method public getBody()Lcom/motorola/messaging/pdu/PduBody;
    .locals 6

    .prologue
    .line 87
    :try_start_0
    iget-object v3, p0, Lcom/motorola/messaging/dom/smil/PduHelper;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, v3}, Lcom/motorola/messaging/pdu/PduParser;->parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/motorola/messaging/pdu/PduHeaders;

    move-result-object v2

    .line 88
    .local v2, "headers":Lcom/motorola/messaging/pdu/PduHeaders;
    sget-boolean v3, Lcom/motorola/messaging/dom/smil/PduHelper;->LOCAL_LOG:Z

    if-eqz v3, :cond_0

    .line 89
    const-string v3, "PduHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "header="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_0
    iget-object v3, p0, Lcom/motorola/messaging/dom/smil/PduHelper;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-static {v3}, Lcom/motorola/messaging/dom/smil/PduHelper;->parseParts(Ljava/io/ByteArrayInputStream;)Lcom/motorola/messaging/pdu/PduBody;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 99
    .end local v2    # "headers":Lcom/motorola/messaging/pdu/PduHeaders;
    .local v0, "body":Lcom/motorola/messaging/pdu/PduBody;
    :goto_0
    return-object v0

    .line 94
    .end local v0    # "body":Lcom/motorola/messaging/pdu/PduBody;
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "PduHelper"

    const-string v4, "exception to get body"

    invoke-static {v3, v4, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    const/4 v0, 0x0

    .restart local v0    # "body":Lcom/motorola/messaging/pdu/PduBody;
    goto :goto_0
.end method
