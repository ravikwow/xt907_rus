.class public Lcom/motorola/messaging/pdu/MultimediaMessagePdu;
.super Lcom/motorola/messaging/pdu/GenericPdu;
.source "MultimediaMessagePdu.java"


# instance fields
.field private mMessageBody:Lcom/motorola/messaging/pdu/PduBody;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/motorola/messaging/pdu/GenericPdu;-><init>()V

    .line 35
    return-void
.end method

.method constructor <init>(Lcom/motorola/messaging/pdu/PduHeaders;)V
    .locals 0
    .param p1, "headers"    # Lcom/motorola/messaging/pdu/PduHeaders;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/motorola/messaging/pdu/GenericPdu;-><init>(Lcom/motorola/messaging/pdu/PduHeaders;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/motorola/messaging/pdu/PduHeaders;Lcom/motorola/messaging/pdu/PduBody;)V
    .locals 0
    .param p1, "header"    # Lcom/motorola/messaging/pdu/PduHeaders;
    .param p2, "body"    # Lcom/motorola/messaging/pdu/PduBody;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/motorola/messaging/pdu/GenericPdu;-><init>(Lcom/motorola/messaging/pdu/PduHeaders;)V

    .line 45
    iput-object p2, p0, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;->mMessageBody:Lcom/motorola/messaging/pdu/PduBody;

    .line 46
    return-void
.end method


# virtual methods
.method public getBcc()[Lcom/motorola/messaging/pdu/EncodedStringValue;
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/motorola/messaging/pdu/GenericPdu;->mPduHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public getBody()Lcom/motorola/messaging/pdu/PduBody;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;->mMessageBody:Lcom/motorola/messaging/pdu/PduBody;

    return-object v0
.end method

.method public getCc()[Lcom/motorola/messaging/pdu/EncodedStringValue;
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/motorola/messaging/pdu/GenericPdu;->mPduHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/motorola/messaging/pdu/GenericPdu;->mPduHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    const/16 v1, 0x85

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPriority()I
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/motorola/messaging/pdu/GenericPdu;->mPduHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    const/16 v1, 0x8f

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public getSubject()Lcom/motorola/messaging/pdu/EncodedStringValue;
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/motorola/messaging/pdu/GenericPdu;->mPduHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public getTo()[Lcom/motorola/messaging/pdu/EncodedStringValue;
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/motorola/messaging/pdu/GenericPdu;->mPduHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    const/16 v1, 0x97

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public setBody(Lcom/motorola/messaging/pdu/PduBody;)V
    .locals 0
    .param p1, "body"    # Lcom/motorola/messaging/pdu/PduBody;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;->mMessageBody:Lcom/motorola/messaging/pdu/PduBody;

    .line 73
    return-void
.end method

.method public setDate(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 185
    iget-object v0, p0, Lcom/motorola/messaging/pdu/GenericPdu;->mPduHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    const/16 v1, 0x85

    invoke-virtual {v0, p1, p2, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->setLongInteger(JI)V

    .line 186
    return-void
.end method

.method public setPriority(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/pdu/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/motorola/messaging/pdu/GenericPdu;->mPduHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    const/16 v1, 0x8f

    invoke-virtual {v0, p1, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->setOctet(II)V

    .line 168
    return-void
.end method

.method public setSubject(Lcom/motorola/messaging/pdu/EncodedStringValue;)V
    .locals 2
    .param p1, "value"    # Lcom/motorola/messaging/pdu/EncodedStringValue;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/motorola/messaging/pdu/GenericPdu;->mPduHeaders:Lcom/motorola/messaging/pdu/PduHeaders;

    const/16 v1, 0x96

    invoke-virtual {v0, p1, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->setEncodedStringValue(Lcom/motorola/messaging/pdu/EncodedStringValue;I)V

    .line 92
    return-void
.end method
