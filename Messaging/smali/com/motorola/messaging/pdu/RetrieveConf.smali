.class public Lcom/motorola/messaging/pdu/RetrieveConf;
.super Lcom/motorola/messaging/pdu/MultimediaMessagePdu;
.source "RetrieveConf.java"


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/pdu/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;-><init>()V

    .line 35
    const/16 v0, 0x84

    invoke-virtual {p0, v0}, Lcom/motorola/messaging/pdu/GenericPdu;->setMessageType(I)V

    .line 36
    return-void
.end method

.method constructor <init>(Lcom/motorola/messaging/pdu/PduHeaders;)V
    .locals 0
    .param p1, "headers"    # Lcom/motorola/messaging/pdu/PduHeaders;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;-><init>(Lcom/motorola/messaging/pdu/PduHeaders;)V

    .line 45
    return-void
.end method

.method constructor <init>(Lcom/motorola/messaging/pdu/PduHeaders;Lcom/motorola/messaging/pdu/PduBody;)V
    .locals 0
    .param p1, "headers"    # Lcom/motorola/messaging/pdu/PduHeaders;
    .param p2, "body"    # Lcom/motorola/messaging/pdu/PduBody;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;-><init>(Lcom/motorola/messaging/pdu/PduHeaders;Lcom/motorola/messaging/pdu/PduBody;)V

    .line 55
    return-void
.end method


# virtual methods
.method public getCc()[Lcom/motorola/messaging/pdu/EncodedStringValue;
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/motorola/messaging/pdu/GenericPdu;->mPduHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()[B
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/motorola/messaging/pdu/GenericPdu;->mPduHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    const/16 v1, 0x84

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getFrom()Lcom/motorola/messaging/pdu/EncodedStringValue;
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/motorola/messaging/pdu/GenericPdu;->mPduHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    const/16 v1, 0x89

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public getMessageId()[B
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/motorola/messaging/pdu/GenericPdu;->mPduHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    const/16 v1, 0x8b

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getRetrieveStatus()I
    .locals 3

    .prologue
    .line 201
    iget-object v1, p0, Lcom/motorola/messaging/pdu/GenericPdu;->mPduHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    const/16 v2, 0x99

    invoke-virtual {v1, v2}, Lcom/motorola/messaging/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    .line 206
    .local v0, "status":I
    if-nez v0, :cond_0

    const/16 v0, 0x80

    .end local v0    # "status":I
    :cond_0
    return v0
.end method

.method public getTransactionId()[B
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/motorola/messaging/pdu/GenericPdu;->mPduHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public setFrom(Lcom/motorola/messaging/pdu/EncodedStringValue;)V
    .locals 2
    .param p1, "value"    # Lcom/motorola/messaging/pdu/EncodedStringValue;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/motorola/messaging/pdu/GenericPdu;->mPduHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    const/16 v1, 0x89

    invoke-virtual {v0, p1, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->setEncodedStringValue(Lcom/motorola/messaging/pdu/EncodedStringValue;I)V

    .line 133
    return-void
.end method
