.class public Lcom/motorola/messaging/pdu/DeliveryInd;
.super Lcom/motorola/messaging/pdu/GenericPdu;
.source "DeliveryInd.java"


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
    invoke-direct {p0}, Lcom/motorola/messaging/pdu/GenericPdu;-><init>()V

    .line 35
    const/16 v0, 0x86

    invoke-virtual {p0, v0}, Lcom/motorola/messaging/pdu/GenericPdu;->setMessageType(I)V

    .line 36
    return-void
.end method

.method constructor <init>(Lcom/motorola/messaging/pdu/PduHeaders;)V
    .locals 0
    .param p1, "headers"    # Lcom/motorola/messaging/pdu/PduHeaders;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/motorola/messaging/pdu/GenericPdu;-><init>(Lcom/motorola/messaging/pdu/PduHeaders;)V

    .line 45
    return-void
.end method


# virtual methods
.method public getMessageId()[B
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/motorola/messaging/pdu/GenericPdu;->mPduHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    const/16 v1, 0x8b

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/motorola/messaging/pdu/GenericPdu;->mPduHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    const/16 v1, 0x95

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method
