.class public Lcom/motorola/messaging/pdu/SendConf;
.super Lcom/motorola/messaging/pdu/GenericPdu;
.source "SendConf.java"


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/pdu/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/motorola/messaging/pdu/GenericPdu;-><init>()V

    .line 32
    const/16 v0, 0x81

    invoke-virtual {p0, v0}, Lcom/motorola/messaging/pdu/GenericPdu;->setMessageType(I)V

    .line 33
    return-void
.end method

.method constructor <init>(Lcom/motorola/messaging/pdu/PduHeaders;)V
    .locals 0
    .param p1, "headers"    # Lcom/motorola/messaging/pdu/PduHeaders;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/motorola/messaging/pdu/GenericPdu;-><init>(Lcom/motorola/messaging/pdu/PduHeaders;)V

    .line 42
    return-void
.end method


# virtual methods
.method public getMessageId()[B
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/motorola/messaging/pdu/GenericPdu;->mPduHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    const/16 v1, 0x8b

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getResponseStatus()I
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/motorola/messaging/pdu/GenericPdu;->mPduHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    const/16 v1, 0x92

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public getTransactionId()[B
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/motorola/messaging/pdu/GenericPdu;->mPduHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method
