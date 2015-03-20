.class public Lcom/motorola/messaging/pdu/NotificationInd;
.super Lcom/motorola/messaging/pdu/GenericPdu;
.source "NotificationInd.java"


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/pdu/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/motorola/messaging/pdu/GenericPdu;-><init>()V

    .line 36
    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Lcom/motorola/messaging/pdu/GenericPdu;->setMessageType(I)V

    .line 37
    return-void
.end method

.method constructor <init>(Lcom/motorola/messaging/pdu/PduHeaders;)V
    .locals 0
    .param p1, "headers"    # Lcom/motorola/messaging/pdu/PduHeaders;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/motorola/messaging/pdu/GenericPdu;-><init>(Lcom/motorola/messaging/pdu/PduHeaders;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getContentLocation()[B
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/motorola/messaging/pdu/GenericPdu;->mPduHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    const/16 v1, 0x83

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getExpiry()J
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/motorola/messaging/pdu/GenericPdu;->mPduHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    const/16 v1, 0x88

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFrom()Lcom/motorola/messaging/pdu/EncodedStringValue;
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/motorola/messaging/pdu/GenericPdu;->mPduHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    const/16 v1, 0x89

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public getMessageClass()[B
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/motorola/messaging/pdu/GenericPdu;->mPduHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    const/16 v1, 0x8a

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getMessageSize()J
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/motorola/messaging/pdu/GenericPdu;->mPduHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    const/16 v1, 0x8e

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSubject()Lcom/motorola/messaging/pdu/EncodedStringValue;
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/motorola/messaging/pdu/GenericPdu;->mPduHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionId()[B
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/motorola/messaging/pdu/GenericPdu;->mPduHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public setContentLocation([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 87
    iget-object v0, p0, Lcom/motorola/messaging/pdu/GenericPdu;->mPduHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    const/16 v1, 0x83

    invoke-virtual {v0, p1, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->setTextString([BI)V

    .line 88
    return-void
.end method

.method public setFrom(Lcom/motorola/messaging/pdu/EncodedStringValue;)V
    .locals 2
    .param p1, "value"    # Lcom/motorola/messaging/pdu/EncodedStringValue;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/motorola/messaging/pdu/GenericPdu;->mPduHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    const/16 v1, 0x89

    invoke-virtual {v0, p1, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->setEncodedStringValue(Lcom/motorola/messaging/pdu/EncodedStringValue;I)V

    .line 132
    return-void
.end method
