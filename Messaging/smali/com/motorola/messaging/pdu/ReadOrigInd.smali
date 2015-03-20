.class public Lcom/motorola/messaging/pdu/ReadOrigInd;
.super Lcom/motorola/messaging/pdu/GenericPdu;
.source "ReadOrigInd.java"


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
    const/16 v0, 0x88

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
.method public getFrom()Lcom/motorola/messaging/pdu/EncodedStringValue;
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/motorola/messaging/pdu/GenericPdu;->mPduHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    const/16 v1, 0x89

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public getMessageId()[B
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/motorola/messaging/pdu/GenericPdu;->mPduHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    const/16 v1, 0x8b

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public setFrom(Lcom/motorola/messaging/pdu/EncodedStringValue;)V
    .locals 2
    .param p1, "value"    # Lcom/motorola/messaging/pdu/EncodedStringValue;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/motorola/messaging/pdu/GenericPdu;->mPduHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    const/16 v1, 0x89

    invoke-virtual {v0, p1, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->setEncodedStringValue(Lcom/motorola/messaging/pdu/EncodedStringValue;I)V

    .line 81
    return-void
.end method
