.class public Lcom/motorola/messaging/pdu/ReadRecInd;
.super Lcom/motorola/messaging/pdu/GenericPdu;
.source "ReadRecInd.java"


# direct methods
.method public constructor <init>(Lcom/motorola/messaging/pdu/EncodedStringValue;[BII[Lcom/motorola/messaging/pdu/EncodedStringValue;)V
    .locals 1
    .param p1, "from"    # Lcom/motorola/messaging/pdu/EncodedStringValue;
    .param p2, "messageId"    # [B
    .param p3, "mmsVersion"    # I
    .param p4, "readStatus"    # I
    .param p5, "to"    # [Lcom/motorola/messaging/pdu/EncodedStringValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/pdu/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/motorola/messaging/pdu/GenericPdu;-><init>()V

    .line 39
    const/16 v0, 0x87

    invoke-virtual {p0, v0}, Lcom/motorola/messaging/pdu/GenericPdu;->setMessageType(I)V

    .line 40
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/pdu/GenericPdu;->setFrom(Lcom/motorola/messaging/pdu/EncodedStringValue;)V

    .line 41
    invoke-virtual {p0, p2}, Lcom/motorola/messaging/pdu/ReadRecInd;->setMessageId([B)V

    .line 42
    invoke-virtual {p0, p3}, Lcom/motorola/messaging/pdu/GenericPdu;->setMmsVersion(I)V

    .line 43
    invoke-virtual {p0, p5}, Lcom/motorola/messaging/pdu/ReadRecInd;->setTo([Lcom/motorola/messaging/pdu/EncodedStringValue;)V

    .line 44
    invoke-virtual {p0, p4}, Lcom/motorola/messaging/pdu/ReadRecInd;->setReadStatus(I)V

    .line 45
    return-void
.end method

.method constructor <init>(Lcom/motorola/messaging/pdu/PduHeaders;)V
    .locals 0
    .param p1, "headers"    # Lcom/motorola/messaging/pdu/PduHeaders;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/motorola/messaging/pdu/GenericPdu;-><init>(Lcom/motorola/messaging/pdu/PduHeaders;)V

    .line 54
    return-void
.end method


# virtual methods
.method public setDate(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 71
    iget-object v0, p0, Lcom/motorola/messaging/pdu/GenericPdu;->mPduHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    const/16 v1, 0x85

    invoke-virtual {v0, p1, p2, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->setLongInteger(JI)V

    .line 72
    return-void
.end method

.method public setMessageId([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 90
    iget-object v0, p0, Lcom/motorola/messaging/pdu/GenericPdu;->mPduHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    const/16 v1, 0x8b

    invoke-virtual {v0, p1, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->setTextString([BI)V

    .line 91
    return-void
.end method

.method public setReadStatus(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/pdu/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/motorola/messaging/pdu/GenericPdu;->mPduHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    const/16 v1, 0x9b

    invoke-virtual {v0, p1, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->setOctet(II)V

    .line 129
    return-void
.end method

.method public setTo([Lcom/motorola/messaging/pdu/EncodedStringValue;)V
    .locals 2
    .param p1, "value"    # [Lcom/motorola/messaging/pdu/EncodedStringValue;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/motorola/messaging/pdu/GenericPdu;->mPduHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    const/16 v1, 0x97

    invoke-virtual {v0, p1, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->setEncodedStringValues([Lcom/motorola/messaging/pdu/EncodedStringValue;I)V

    .line 110
    return-void
.end method
