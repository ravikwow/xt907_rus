.class public Lcom/motorola/messaging/pdu/GenericPdu;
.super Ljava/lang/Object;
.source "GenericPdu.java"


# instance fields
.field mPduHeaders:Lcom/motorola/messaging/pdu/PduHeaders;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/messaging/pdu/GenericPdu;->mPduHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    .line 31
    new-instance v0, Lcom/motorola/messaging/pdu/PduHeaders;

    invoke-direct {v0}, Lcom/motorola/messaging/pdu/PduHeaders;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/pdu/GenericPdu;->mPduHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    .line 32
    return-void
.end method

.method constructor <init>(Lcom/motorola/messaging/pdu/PduHeaders;)V
    .locals 1
    .param p1, "headers"    # Lcom/motorola/messaging/pdu/PduHeaders;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/messaging/pdu/GenericPdu;->mPduHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    .line 40
    iput-object p1, p0, Lcom/motorola/messaging/pdu/GenericPdu;->mPduHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    .line 41
    return-void
.end method


# virtual methods
.method public getFrom()Lcom/motorola/messaging/pdu/EncodedStringValue;
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/motorola/messaging/pdu/GenericPdu;->mPduHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    const/16 v1, 0x89

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public getMessageType()I
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/motorola/messaging/pdu/GenericPdu;->mPduHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    const/16 v1, 0x8c

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method getPduHeaders()Lcom/motorola/messaging/pdu/PduHeaders;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/motorola/messaging/pdu/GenericPdu;->mPduHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    return-object v0
.end method

.method public getRetrieveStatus()I
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/motorola/messaging/pdu/GenericPdu;->mPduHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    const/16 v1, 0x99

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public setFrom(Lcom/motorola/messaging/pdu/EncodedStringValue;)V
    .locals 2
    .param p1, "value"    # Lcom/motorola/messaging/pdu/EncodedStringValue;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/motorola/messaging/pdu/GenericPdu;->mPduHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    const/16 v1, 0x89

    invoke-virtual {v0, p1, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->setEncodedStringValue(Lcom/motorola/messaging/pdu/EncodedStringValue;I)V

    .line 120
    return-void
.end method

.method public setMessageType(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/pdu/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/motorola/messaging/pdu/GenericPdu;->mPduHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    const/16 v1, 0x8c

    invoke-virtual {v0, p1, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->setOctet(II)V

    .line 70
    return-void
.end method

.method public setMmsVersion(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/pdu/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/motorola/messaging/pdu/GenericPdu;->mPduHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    const/16 v1, 0x8d

    invoke-virtual {v0, p1, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->setOctet(II)V

    .line 90
    return-void
.end method
