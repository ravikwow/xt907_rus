.class public Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;
.super Ljava/lang/Object;
.source "MsgListingConsts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/MapUtils/MsgListingConsts$MsgInfo;
    }
.end annotation


# instance fields
.field public attachment_size:I

.field public contains_text:Ljava/lang/String;

.field public datetime:Ljava/lang/String;

.field public msgInfo:Lcom/android/bluetooth/map/MapUtils/MsgListingConsts$MsgInfo;

.field public msg_handle:J

.field public msg_protected:Ljava/lang/String;

.field public priority:Ljava/lang/String;

.field public read:Ljava/lang/String;

.field public recepient_addressing:Ljava/lang/String;

.field public recepient_name:Ljava/lang/String;

.field public reception_status:Ljava/lang/String;

.field public replyto_addressing:Ljava/lang/String;

.field public sendRecipient_addressing:Z

.field public sendSubject:Z

.field public sender_addressing:Ljava/lang/String;

.field public sender_name:Ljava/lang/String;

.field public sent:Ljava/lang/String;

.field public size:I

.field public subject:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts$MsgInfo;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts$MsgInfo;-><init>(Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->msgInfo:Lcom/android/bluetooth/map/MapUtils/MsgListingConsts$MsgInfo;

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->msg_handle:J

    .line 48
    iput-object v2, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->subject:Ljava/lang/String;

    .line 49
    iput-boolean v3, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sendSubject:Z

    .line 50
    iput-object v2, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->datetime:Ljava/lang/String;

    .line 51
    iput-object v2, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sender_name:Ljava/lang/String;

    .line 52
    iput-object v2, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sender_addressing:Ljava/lang/String;

    .line 53
    iput-object v2, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->recepient_name:Ljava/lang/String;

    .line 54
    iput-boolean v3, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sendRecipient_addressing:Z

    .line 55
    iput-object v2, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->recepient_addressing:Ljava/lang/String;

    .line 56
    iput-object v2, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->type:Ljava/lang/String;

    .line 57
    iput v3, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->size:I

    .line 58
    iput-object v2, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->reception_status:Ljava/lang/String;

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->attachment_size:I

    .line 60
    iput-object v2, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->contains_text:Ljava/lang/String;

    .line 61
    iput-object v2, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->priority:Ljava/lang/String;

    .line 62
    iput-object v2, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->read:Ljava/lang/String;

    .line 63
    iput-object v2, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sent:Ljava/lang/String;

    .line 64
    iput-object v2, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->msg_protected:Ljava/lang/String;

    .line 65
    iput-object v2, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->replyto_addressing:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSender_addressing()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sender_addressing:Ljava/lang/String;

    return-object v0
.end method

.method public setAttachment_size(I)V
    .locals 0
    .param p1, "attachment_size"    # I

    .prologue
    .line 161
    iput p1, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->attachment_size:I

    .line 162
    return-void
.end method

.method public setContains_text(Ljava/lang/String;)V
    .locals 0
    .param p1, "contains_text"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->contains_text:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setDatetime(Ljava/lang/String;)V
    .locals 0
    .param p1, "datetime"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->datetime:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setMsg_handle(J)V
    .locals 0
    .param p1, "msg_handle"    # J

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->msg_handle:J

    .line 73
    return-void
.end method

.method public setMsg_protected(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg_protected"    # Ljava/lang/String;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->msg_protected:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setPriority(Ljava/lang/String;)V
    .locals 0
    .param p1, "priority"    # Ljava/lang/String;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->priority:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setRead(Ljava/lang/String;)V
    .locals 0
    .param p1, "read"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->read:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setRecepient_addressing(Ljava/lang/String;)V
    .locals 0
    .param p1, "recepient_addressing"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->recepient_addressing:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setRecepient_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "recepient_name"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->recepient_name:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setReception_status(Ljava/lang/String;)V
    .locals 0
    .param p1, "reception_status"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->reception_status:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setReplyTo_addressing(Ljava/lang/String;)V
    .locals 0
    .param p1, "replyto_addressing"    # Ljava/lang/String;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->replyto_addressing:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setSendRecipient_addressing(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sendRecipient_addressing:Z

    .line 125
    return-void
.end method

.method public setSendSubject(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sendSubject:Z

    .line 85
    return-void
.end method

.method public setSender_addressing(Ljava/lang/String;)V
    .locals 0
    .param p1, "sender_addressing"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sender_addressing:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setSender_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "sender_name"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sender_name:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setSent(Ljava/lang/String;)V
    .locals 0
    .param p1, "sent"    # Ljava/lang/String;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sent:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 145
    iput p1, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->size:I

    .line 146
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->subject:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->type:Ljava/lang/String;

    .line 138
    return-void
.end method
