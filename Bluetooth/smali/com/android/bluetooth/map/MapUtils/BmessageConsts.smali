.class public Lcom/android/bluetooth/map/MapUtils/BmessageConsts;
.super Ljava/lang/Object;
.source "BmessageConsts.java"


# instance fields
.field public bmsg_version:Ljava/lang/String;

.field public body_charset:Ljava/lang/String;

.field public body_encoding:Ljava/lang/String;

.field public body_language:Ljava/lang/String;

.field public body_length:I

.field public body_msg:Ljava/lang/String;

.field public body_part_ID:Ljava/lang/String;

.field public folder:Ljava/lang/String;

.field public originator_vcard_email:Ljava/lang/String;

.field public originator_vcard_name:Ljava/lang/String;

.field public originator_vcard_phone_number:Ljava/lang/String;

.field public recipient_vcard_email:Ljava/lang/String;

.field public recipient_vcard_name:Ljava/lang/String;

.field public recipient_vcard_phone_number:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public subject:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public vcard_version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->bmsg_version:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->status:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->type:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->folder:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->vcard_version:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->recipient_vcard_name:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->recipient_vcard_phone_number:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->recipient_vcard_email:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->originator_vcard_name:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->originator_vcard_phone_number:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->originator_vcard_email:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_encoding:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_length:I

    .line 46
    iput-object v1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_msg:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_part_ID:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_language:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_charset:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->subject:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBody_msg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_msg:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginatorVcard_email()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->originator_vcard_email:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginatorVcard_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->originator_vcard_name:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientVcard_email()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->recipient_vcard_email:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientVcard_phone_number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->recipient_vcard_phone_number:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public setBmsg_version(Ljava/lang/String;)V
    .locals 0
    .param p1, "bmsg_version"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->bmsg_version:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setBody_charset(Ljava/lang/String;)V
    .locals 0
    .param p1, "body_charset"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_charset:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setBody_encoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "body_encoding"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_encoding:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setBody_length(I)V
    .locals 0
    .param p1, "body_length"    # I

    .prologue
    .line 192
    iput p1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_length:I

    .line 193
    return-void
.end method

.method public setBody_msg(Ljava/lang/String;)V
    .locals 0
    .param p1, "body_msg"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_msg:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setFolder(Ljava/lang/String;)V
    .locals 0
    .param p1, "folder"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->folder:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setOriginatorVcard_email(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->originator_vcard_email:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setOriginatorVcard_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "vcard_name"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->originator_vcard_name:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setOriginatorVcard_phone_number(Ljava/lang/String;)V
    .locals 0
    .param p1, "vcard_phone_number"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->originator_vcard_phone_number:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setRecipientVcard_email(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->recipient_vcard_email:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setRecipientVcard_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "vcard_name"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->recipient_vcard_name:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setRecipientVcard_phone_number(Ljava/lang/String;)V
    .locals 0
    .param p1, "vcard_phone_number"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->recipient_vcard_phone_number:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->status:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->subject:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->type:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setVcard_version(Ljava/lang/String;)V
    .locals 0
    .param p1, "vcard_version"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->vcard_version:Ljava/lang/String;

    .line 108
    return-void
.end method
