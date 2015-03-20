.class public Lcom/motorola/messaging/pdu/PduPersister;
.super Ljava/lang/Object;
.source "PduPersister.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ADDRESS_FIELDS:[I

.field private static final CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOCAL_LOG:Z

.field private static final LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MESSAGE_BOX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PART_PROJECTION:[Ljava/lang/String;

.field private static final PDU_CACHE_INSTANCE:Lcom/motorola/messaging/pdu/util/PduCache;

.field private static final PDU_PROJECTION:[Ljava/lang/String;

.field private static final TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPersister:Lcom/motorola/messaging/pdu/PduPersister;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x9a

    const/16 v6, 0x96

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v4, 0x4

    .line 60
    const-class v0, Lcom/motorola/messaging/pdu/PduPersister;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/pdu/PduPersister;->$assertionsDisabled:Z

    .line 63
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    sput-boolean v0, Lcom/motorola/messaging/pdu/PduPersister;->LOCAL_LOG:Z

    .line 86
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/messaging/pdu/PduPersister;->ADDRESS_FIELDS:[I

    .line 93
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/4 v2, 0x2

    const-string v3, "thread_id"

    aput-object v3, v0, v2

    const-string v2, "retr_txt"

    aput-object v2, v0, v5

    const-string v2, "sub"

    aput-object v2, v0, v4

    const/4 v2, 0x5

    const-string v3, "ct_l"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "ct_t"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "m_cls"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "m_id"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "resp_txt"

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string v3, "tr_id"

    aput-object v3, v0, v2

    const/16 v2, 0xb

    const-string v3, "ct_cls"

    aput-object v3, v0, v2

    const/16 v2, 0xc

    const-string v3, "d_rpt"

    aput-object v3, v0, v2

    const/16 v2, 0xd

    const-string v3, "m_type"

    aput-object v3, v0, v2

    const/16 v2, 0xe

    const-string v3, "v"

    aput-object v3, v0, v2

    const/16 v2, 0xf

    const-string v3, "pri"

    aput-object v3, v0, v2

    const/16 v2, 0x10

    const-string v3, "rr"

    aput-object v3, v0, v2

    const/16 v2, 0x11

    const-string v3, "read_status"

    aput-object v3, v0, v2

    const/16 v2, 0x12

    const-string v3, "rpt_a"

    aput-object v3, v0, v2

    const/16 v2, 0x13

    const-string v3, "retr_st"

    aput-object v3, v0, v2

    const/16 v2, 0x14

    const-string v3, "st"

    aput-object v3, v0, v2

    const/16 v2, 0x15

    const-string v3, "date"

    aput-object v3, v0, v2

    const/16 v2, 0x16

    const-string v3, "d_tm"

    aput-object v3, v0, v2

    const/16 v2, 0x17

    const-string v3, "exp"

    aput-object v3, v0, v2

    const/16 v2, 0x18

    const-string v3, "m_size"

    aput-object v3, v0, v2

    const/16 v2, 0x19

    const-string v3, "sub_cs"

    aput-object v3, v0, v2

    const/16 v2, 0x1a

    const-string v3, "retr_txt_cs"

    aput-object v3, v0, v2

    const/16 v2, 0x1b

    const-string v3, "date_sent"

    aput-object v3, v0, v2

    sput-object v0, Lcom/motorola/messaging/pdu/PduPersister;->PDU_PROJECTION:[Ljava/lang/String;

    .line 152
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v2, "chset"

    aput-object v2, v0, v1

    const/4 v2, 0x2

    const-string v3, "cd"

    aput-object v3, v0, v2

    const-string v2, "cid"

    aput-object v2, v0, v5

    const-string v2, "cl"

    aput-object v2, v0, v4

    const/4 v2, 0x5

    const-string v3, "ct"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "fn"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "name"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "text"

    aput-object v3, v0, v2

    sput-object v0, Lcom/motorola/messaging/pdu/PduPersister;->PART_PROJECTION:[Ljava/lang/String;

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/messaging/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    .line 189
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v2, Lcom/motorola/messaging/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v1, Lcom/motorola/messaging/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v1, Lcom/motorola/messaging/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v1, Lcom/motorola/messaging/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/messaging/pdu/PduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 195
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/messaging/pdu/PduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 199
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sub_cs"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "retr_txt_cs"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/messaging/pdu/PduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 204
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/messaging/pdu/PduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 208
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "retr_txt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sub"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/messaging/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 213
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x93

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x98

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/messaging/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 221
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ct_l"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ct_t"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_cls"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x93

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "resp_txt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x98

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tr_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/messaging/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 230
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0xba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x9b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x99

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x95

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/messaging/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 242
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0xba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ct_cls"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "d_rpt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "v"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x9b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "read_status"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rpt_a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x99

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "retr_st"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x95

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "st"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/messaging/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 255
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x88

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/messaging/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 261
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "d_tm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x88

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "exp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_size"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    invoke-static {}, Lcom/motorola/messaging/pdu/util/PduCache;->getInstance()Lcom/motorola/messaging/pdu/util/PduCache;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/motorola/messaging/pdu/util/PduCache;

    .line 267
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 86
    :array_0
    .array-data 4
        0x81
        0x82
        0x89
        0x97
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput-object p1, p0, Lcom/motorola/messaging/pdu/PduPersister;->mContext:Landroid/content/Context;

    .line 274
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    .line 275
    return-void
.end method

.method private genericPersist(Lcom/motorola/messaging/pdu/GenericPdu;Landroid/net/Uri;Ljava/util/Set;)Landroid/net/Uri;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/messaging/pdu/GenericPdu;",
            "Landroid/net/Uri;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;
        }
    .end annotation

    .prologue
    .line 1210
    if-nez p2, :cond_0

    .line 1211
    new-instance v1, Lcom/motorola/messaging/util/MmsException;

    const-string v2, "Uri may not be null."

    invoke-direct {v1, v2}, Lcom/motorola/messaging/util/MmsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1213
    :cond_0
    const-wide/16 v8, -0x1

    .line 1215
    :try_start_0
    invoke-static/range {p2 .. p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v8

    .line 1219
    :goto_0
    const-wide/16 v1, -0x1

    cmp-long v1, v8, v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move v7, v1

    .line 1221
    :goto_1
    sget-object v1, Lcom/motorola/messaging/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1222
    if-nez v7, :cond_2

    if-nez v1, :cond_2

    .line 1223
    new-instance v1, Lcom/motorola/messaging/util/MmsException;

    const-string v2, "Bad destination, must be one of content://mms/inbox, content://mms/sent, content://mms/drafts, content://mms/outbox, content://mms/temp."

    invoke-direct {v1, v2}, Lcom/motorola/messaging/util/MmsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1219
    :cond_1
    const/4 v1, 0x0

    move v7, v1

    goto :goto_1

    .line 1230
    :cond_2
    sget-object v3, Lcom/motorola/messaging/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/motorola/messaging/pdu/util/PduCache;

    monitor-enter v3

    .line 1233
    :try_start_1
    sget-object v2, Lcom/motorola/messaging/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/motorola/messaging/pdu/util/PduCache;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/motorola/messaging/pdu/util/PduCache;->isUpdating(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1234
    sget-boolean v2, Lcom/motorola/messaging/pdu/PduPersister;->LOCAL_LOG:Z

    if-eqz v2, :cond_3

    .line 1235
    const-string v2, "PduPersister"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " blocked by isUpdating()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1238
    :cond_3
    :try_start_2
    sget-object v2, Lcom/motorola/messaging/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/motorola/messaging/pdu/util/PduCache;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1243
    :cond_4
    :goto_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1245
    sget-object v2, Lcom/motorola/messaging/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/motorola/messaging/pdu/util/PduCache;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/motorola/messaging/pdu/util/PduCache;->purge(Landroid/net/Uri;)Lcom/motorola/messaging/pdu/util/PduCacheEntry;

    .line 1247
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/messaging/pdu/GenericPdu;->getPduHeaders()Lcom/motorola/messaging/pdu/PduHeaders;

    move-result-object v5

    .line 1249
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1252
    sget-object v2, Lcom/motorola/messaging/pdu/PduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 1253
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1254
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1255
    invoke-virtual {v5, v3}, Lcom/motorola/messaging/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v10

    .line 1256
    if-eqz v10, :cond_5

    .line 1257
    sget-object v11, Lcom/motorola/messaging/pdu/PduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1258
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v10}, Lcom/motorola/messaging/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v11

    invoke-static {v11}, Lcom/motorola/messaging/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    invoke-virtual {v10}, Lcom/motorola/messaging/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    .line 1239
    :catch_0
    move-exception v2

    .line 1240
    :try_start_4
    const-string v4, "PduPersister"

    const-string v5, "persist1: "

    invoke-static {v4, v5, v2}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1243
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 1263
    :cond_6
    sget-object v2, Lcom/motorola/messaging/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 1264
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1265
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/motorola/messaging/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v3

    .line 1266
    if-eqz v3, :cond_7

    .line 1267
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v3}, Lcom/motorola/messaging/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1271
    :cond_8
    sget-object v2, Lcom/motorola/messaging/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 1272
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1273
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/motorola/messaging/pdu/PduHeaders;->getOctet(I)I

    move-result v3

    .line 1274
    if-eqz v3, :cond_9

    .line 1275
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_5

    .line 1279
    :cond_a
    sget-object v2, Lcom/motorola/messaging/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 1280
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1281
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/motorola/messaging/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v10

    .line 1282
    const-wide/16 v12, -0x1

    cmp-long v3, v10, v12

    if-eqz v3, :cond_b

    .line 1283
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_6

    .line 1288
    :cond_c
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 1289
    const-string v1, "date_sent"

    const/16 v2, 0x85

    invoke-virtual {v5, v2}, Lcom/motorola/messaging/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1290
    const-string v1, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v10, 0x3e8

    div-long/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1293
    :cond_d
    new-instance v11, Ljava/util/HashMap;

    sget-object v1, Lcom/motorola/messaging/pdu/PduPersister;->ADDRESS_FIELDS:[I

    array-length v1, v1

    invoke-direct {v11, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 1296
    sget-object v3, Lcom/motorola/messaging/pdu/PduPersister;->ADDRESS_FIELDS:[I

    array-length v6, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v2, v6, :cond_10

    aget v10, v3, v2

    .line 1297
    const/4 v1, 0x0

    .line 1298
    const/16 v12, 0x89

    if-ne v10, v12, :cond_f

    .line 1299
    invoke-virtual {v5, v10}, Lcom/motorola/messaging/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v12

    .line 1300
    if-eqz v12, :cond_e

    .line 1301
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/motorola/messaging/pdu/EncodedStringValue;

    .line 1302
    const/4 v13, 0x0

    aput-object v12, v1, v13

    .line 1307
    :cond_e
    :goto_8
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v11, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1296
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_7

    .line 1305
    :cond_f
    invoke-virtual {v5, v10}, Lcom/motorola/messaging/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v1

    goto :goto_8

    .line 1310
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/messaging/pdu/GenericPdu;->getMessageType()I

    move-result v2

    .line 1315
    const/16 v1, 0x82

    if-eq v2, v1, :cond_11

    const/16 v1, 0x84

    if-eq v2, v1, :cond_11

    const/16 v1, 0x80

    if-ne v2, v1, :cond_14

    .line 1318
    :cond_11
    if-nez p3, :cond_13

    .line 1319
    const/4 v1, 0x0

    .line 1320
    packed-switch v2, :pswitch_data_0

    .line 1330
    :goto_9
    :pswitch_0
    new-instance p3, Ljava/util/HashSet;

    invoke-direct/range {p3 .. p3}, Ljava/util/HashSet;-><init>()V

    .line 1331
    if-eqz v1, :cond_13

    .line 1332
    array-length v3, v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v3, :cond_13

    aget-object v5, v1, v2

    .line 1333
    if-eqz v5, :cond_12

    .line 1334
    invoke-virtual {v5}, Lcom/motorola/messaging/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1332
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1323
    :pswitch_1
    const/16 v1, 0x89

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/motorola/messaging/pdu/EncodedStringValue;

    goto :goto_9

    .line 1326
    :pswitch_2
    const/16 v1, 0x97

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/motorola/messaging/pdu/EncodedStringValue;

    goto :goto_9

    .line 1340
    :cond_13
    invoke-interface/range {p3 .. p3}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    .line 1341
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-static {v1, v0}, Lcom/motorola/messaging/conversation/ConversationManager;->getOrCreateThreadId(ZLjava/util/Set;)J

    move-result-wide v1

    .line 1342
    const-string v3, "thread_id"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1348
    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1350
    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;

    if-eqz v1, :cond_15

    .line 1351
    check-cast p1, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;

    invoke-virtual/range {p1 .. p1}, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;->getBody()Lcom/motorola/messaging/pdu/PduBody;

    move-result-object v2

    .line 1353
    if-eqz v2, :cond_15

    .line 1354
    invoke-virtual {v2}, Lcom/motorola/messaging/pdu/PduBody;->getPartsNum()I

    move-result v3

    .line 1355
    const/4 v1, 0x0

    :goto_b
    if-ge v1, v3, :cond_15

    .line 1356
    invoke-virtual {v2, v1}, Lcom/motorola/messaging/pdu/PduBody;->getPart(I)Lcom/motorola/messaging/pdu/PduPart;

    move-result-object v5

    .line 1357
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12, v13}, Lcom/motorola/messaging/pdu/PduPersister;->persistPart(Lcom/motorola/messaging/pdu/PduPart;J)Landroid/net/Uri;

    .line 1355
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1363
    :cond_15
    if-eqz v7, :cond_18

    .line 1365
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/messaging/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p2

    invoke-static/range {v1 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-wide v14, v8

    move-wide v9, v14

    move-object/from16 v8, p2

    .line 1376
    :goto_c
    new-instance v4, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v4, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1377
    const-string v1, "mid"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1378
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/messaging/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://mms/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/part"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1387
    if-nez v7, :cond_16

    .line 1388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 1392
    :cond_16
    sget-object v3, Lcom/motorola/messaging/pdu/PduPersister;->ADDRESS_FIELDS:[I

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_d
    if-ge v2, v4, :cond_1a

    aget v5, v3, v2

    .line 1393
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/motorola/messaging/pdu/EncodedStringValue;

    .line 1394
    if-eqz v1, :cond_17

    .line 1395
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10, v5, v1}, Lcom/motorola/messaging/pdu/PduPersister;->persistAddress(JI[Lcom/motorola/messaging/pdu/EncodedStringValue;)V

    .line 1392
    :cond_17
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_d

    .line 1367
    :cond_18
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/messaging/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p2

    invoke-static {v1, v2, v0, v4}, Lcom/motorola/messaging/provider/SqliteManager;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 1368
    if-nez v1, :cond_19

    .line 1369
    new-instance v1, Lcom/motorola/messaging/util/MmsException;

    const-string v2, "persist() failed: return null."

    invoke-direct {v1, v2}, Lcom/motorola/messaging/util/MmsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1373
    :cond_19
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    move-object v8, v1

    move-wide v9, v2

    goto/16 :goto_c

    .line 1216
    :catch_1
    move-exception v1

    goto/16 :goto_0

    .line 1399
    :cond_1a
    return-object v8

    .line 1320
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I

    .prologue
    .line 334
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/messaging/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 337
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 3

    .prologue
    .line 1454
    :try_start_0
    const-string v0, "iso-8859-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1458
    :goto_0
    return-object v0

    .line 1455
    :catch_0
    move-exception v0

    .line 1457
    const-string v1, "PduPersister"

    const-string v2, "ISO_8859_1 must be supported!"

    invoke-static {v1, v2, v0}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1458
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method

.method private getIntegerFromPartColumn(Landroid/database/Cursor;I)Ljava/lang/Integer;
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I

    .prologue
    .line 327
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 330
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPduPersister(Landroid/content/Context;)Lcom/motorola/messaging/pdu/PduPersister;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 279
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->sPersister:Lcom/motorola/messaging/pdu/PduPersister;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->sPersister:Lcom/motorola/messaging/pdu/PduPersister;

    iget-object v0, v0, Lcom/motorola/messaging/pdu/PduPersister;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 280
    :cond_0
    new-instance v0, Lcom/motorola/messaging/pdu/PduPersister;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/pdu/PduPersister;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/motorola/messaging/pdu/PduPersister;->sPersister:Lcom/motorola/messaging/pdu/PduPersister;

    .line 283
    :cond_1
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->sPersister:Lcom/motorola/messaging/pdu/PduPersister;

    return-object v0
.end method

.method private loadAddress(JLcom/motorola/messaging/pdu/PduHeaders;)V
    .locals 12
    .param p1, "msgId"    # J
    .param p3, "headers"    # Lcom/motorola/messaging/pdu/PduHeaders;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 477
    iget-object v0, p0, Lcom/motorola/messaging/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/messaging/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/addr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v5, "address"

    aput-object v5, v3, v10

    const-string v5, "charset"

    aput-object v5, v3, v6

    const-string v5, "type"

    aput-object v5, v3, v11

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 482
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 484
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 486
    .local v7, "addr":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 487
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 488
    .local v8, "addrType":I
    sparse-switch v8, :sswitch_data_0

    .line 502
    const-string v0, "PduPersister"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown address type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 508
    .end local v7    # "addr":Ljava/lang/String;
    .end local v8    # "addrType":I
    :catchall_0
    move-exception v0

    invoke-static {v9}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v0

    .line 490
    .restart local v7    # "addr":Ljava/lang/String;
    .restart local v8    # "addrType":I
    :sswitch_0
    :try_start_1
    new-instance v0, Lcom/motorola/messaging/pdu/EncodedStringValue;

    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v7}, Lcom/motorola/messaging/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/motorola/messaging/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {p3, v0, v8}, Lcom/motorola/messaging/pdu/PduHeaders;->setEncodedStringValue(Lcom/motorola/messaging/pdu/EncodedStringValue;I)V

    goto :goto_0

    .line 497
    :sswitch_1
    new-instance v0, Lcom/motorola/messaging/pdu/EncodedStringValue;

    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v7}, Lcom/motorola/messaging/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/motorola/messaging/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {p3, v0, v8}, Lcom/motorola/messaging/pdu/PduHeaders;->appendEncodedStringValue(Lcom/motorola/messaging/pdu/EncodedStringValue;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 508
    .end local v7    # "addr":Ljava/lang/String;
    .end local v8    # "addrType":I
    :cond_1
    invoke-static {v9}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 511
    :cond_2
    return-void

    .line 488
    nop

    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_1
        0x82 -> :sswitch_1
        0x89 -> :sswitch_0
        0x97 -> :sswitch_1
    .end sparse-switch
.end method

.method private loadParts(J)[Lcom/motorola/messaging/pdu/PduPart;
    .locals 34
    .param p1, "msgId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;
        }
    .end annotation

    .prologue
    .line 341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/messaging/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://mms/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/part"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/motorola/messaging/pdu/PduPersister;->PART_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 345
    .local v12, "c":Landroid/database/Cursor;
    const/16 v31, 0x0

    .line 348
    .local v31, "parts":[Lcom/motorola/messaging/pdu/PduPart;
    if-eqz v12, :cond_0

    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 349
    :cond_0
    sget-boolean v2, Lcom/motorola/messaging/pdu/PduPersister;->LOCAL_LOG:Z

    if-eqz v2, :cond_1

    .line 350
    const-string v2, "PduPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadParts("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): no part to load."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    :cond_1
    const/4 v2, 0x0

    .line 470
    invoke-static {v12}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 473
    :goto_0
    return-object v2

    .line 355
    :cond_2
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v25

    .line 356
    .local v25, "partCount":I
    const/16 v28, 0x0

    .line 357
    .local v28, "partIdx":I
    move/from16 v0, v25

    new-array v0, v0, [Lcom/motorola/messaging/pdu/PduPart;

    move-object/from16 v31, v0

    move/from16 v29, v28

    .line 358
    .end local v28    # "partIdx":I
    .local v29, "partIdx":I
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 359
    new-instance v24, Lcom/motorola/messaging/pdu/PduPart;

    invoke-direct/range {v24 .. v24}, Lcom/motorola/messaging/pdu/PduPart;-><init>()V

    .line 360
    .local v24, "part":Lcom/motorola/messaging/pdu/PduPart;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/motorola/messaging/pdu/PduPersister;->getIntegerFromPartColumn(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v13

    .line 362
    .local v13, "charset":Ljava/lang/Integer;
    if-eqz v13, :cond_3

    .line 363
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/motorola/messaging/pdu/PduPart;->setCharset(I)V

    .line 366
    :cond_3
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/motorola/messaging/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v14

    .line 368
    .local v14, "contentDisposition":[B
    if-eqz v14, :cond_4

    .line 369
    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Lcom/motorola/messaging/pdu/PduPart;->setContentDisposition([B)V

    .line 374
    :cond_4
    const/4 v2, 0x3

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 375
    .local v15, "contentId":Ljava/lang/String;
    if-eqz v15, :cond_5

    .line 376
    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/motorola/messaging/pdu/PduPart;->setContentId([B)V

    .line 379
    :cond_5
    const/4 v2, 0x4

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 380
    .local v16, "contentLocation":Ljava/lang/String;
    if-eqz v16, :cond_6

    .line 381
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/motorola/messaging/pdu/PduPart;->setContentLocation([B)V

    .line 384
    :cond_6
    const/4 v2, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/motorola/messaging/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v17

    .line 386
    .local v17, "contentType":[B
    if-eqz v17, :cond_d

    .line 387
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduPart;->setContentType([B)V

    .line 394
    const/4 v2, 0x6

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 395
    .local v19, "fileName":Ljava/lang/String;
    if-eqz v19, :cond_7

    .line 396
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/motorola/messaging/pdu/PduPart;->setFilename([B)V

    .line 399
    :cond_7
    const/4 v2, 0x7

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 400
    .local v23, "name":Ljava/lang/String;
    if-eqz v23, :cond_8

    .line 401
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/motorola/messaging/pdu/PduPart;->setName([B)V

    .line 405
    :cond_8
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 406
    .local v26, "partId":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms/part/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v26

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v30

    .line 407
    .local v30, "partURI":Landroid/net/Uri;
    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 411
    invoke-static/range {v17 .. v17}, Lcom/motorola/messaging/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v33

    .line 412
    .local v33, "type":Ljava/lang/String;
    invoke-static/range {v33 .. v33}, Lcom/motorola/messaging/mime/MmsContentType;->isImageType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-static/range {v33 .. v33}, Lcom/motorola/messaging/mime/MmsContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-static/range {v33 .. v33}, Lcom/motorola/messaging/mime/MmsContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 415
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 416
    .local v9, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v20, 0x0

    .line 421
    .local v20, "is":Ljava/io/InputStream;
    const-string v2, "text/plain"

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "application/smil"

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "text/html"

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 423
    :cond_9
    const/16 v2, 0x8

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 424
    .local v32, "text":Ljava/lang/String;
    new-instance v3, Lcom/motorola/messaging/pdu/EncodedStringValue;

    if-eqz v32, :cond_e

    move-object/from16 v2, v32

    :goto_2
    invoke-direct {v3, v2}, Lcom/motorola/messaging/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/motorola/messaging/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v10

    .line 427
    .local v10, "blob":[B
    if-eqz v32, :cond_a

    .line 428
    invoke-virtual/range {v24 .. v24}, Lcom/motorola/messaging/pdu/PduPart;->getCharset()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_f

    .line 430
    :try_start_2
    invoke-virtual/range {v24 .. v24}, Lcom/motorola/messaging/pdu/PduPart;->getCharset()I

    move-result v2

    invoke-static {v2}, Lcom/motorola/messaging/pdu/CharacterSets;->getMimeName(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v22

    .line 431
    .local v22, "mybyte":[B
    new-instance v2, Lcom/motorola/messaging/pdu/EncodedStringValue;

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/messaging/pdu/PduPart;->getCharset()I

    move-result v3

    move-object/from16 v0, v22

    invoke-direct {v2, v3, v0}, Lcom/motorola/messaging/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {v2}, Lcom/motorola/messaging/pdu/EncodedStringValue;->getTextString()[B
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v10

    .line 439
    .end local v22    # "mybyte":[B
    :cond_a
    :goto_3
    const/4 v2, 0x0

    :try_start_3
    array-length v3, v10

    invoke-virtual {v9, v10, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 465
    .end local v10    # "blob":[B
    .end local v32    # "text":Ljava/lang/String;
    :cond_b
    :goto_4
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/motorola/messaging/pdu/PduPart;->setData([B)V

    .line 467
    .end local v9    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v20    # "is":Ljava/io/InputStream;
    :cond_c
    add-int/lit8 v28, v29, 0x1

    .end local v29    # "partIdx":I
    .restart local v28    # "partIdx":I
    aput-object v24, v31, v29

    move/from16 v29, v28

    .line 468
    .end local v28    # "partIdx":I
    .restart local v29    # "partIdx":I
    goto/16 :goto_1

    .line 389
    .end local v19    # "fileName":Ljava/lang/String;
    .end local v23    # "name":Ljava/lang/String;
    .end local v26    # "partId":J
    .end local v30    # "partURI":Landroid/net/Uri;
    .end local v33    # "type":Ljava/lang/String;
    :cond_d
    new-instance v2, Lcom/motorola/messaging/util/MmsException;

    const-string v3, "Content-Type must be set."

    invoke-direct {v2, v3}, Lcom/motorola/messaging/util/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 470
    .end local v13    # "charset":Ljava/lang/Integer;
    .end local v14    # "contentDisposition":[B
    .end local v15    # "contentId":Ljava/lang/String;
    .end local v16    # "contentLocation":Ljava/lang/String;
    .end local v17    # "contentType":[B
    .end local v24    # "part":Lcom/motorola/messaging/pdu/PduPart;
    .end local v25    # "partCount":I
    .end local v29    # "partIdx":I
    :catchall_0
    move-exception v2

    invoke-static {v12}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v2

    .line 424
    .restart local v9    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v13    # "charset":Ljava/lang/Integer;
    .restart local v14    # "contentDisposition":[B
    .restart local v15    # "contentId":Ljava/lang/String;
    .restart local v16    # "contentLocation":Ljava/lang/String;
    .restart local v17    # "contentType":[B
    .restart local v19    # "fileName":Ljava/lang/String;
    .restart local v20    # "is":Ljava/io/InputStream;
    .restart local v23    # "name":Ljava/lang/String;
    .restart local v24    # "part":Lcom/motorola/messaging/pdu/PduPart;
    .restart local v25    # "partCount":I
    .restart local v26    # "partId":J
    .restart local v29    # "partIdx":I
    .restart local v30    # "partURI":Landroid/net/Uri;
    .restart local v32    # "text":Ljava/lang/String;
    .restart local v33    # "type":Ljava/lang/String;
    :cond_e
    :try_start_4
    const-string v2, ""

    goto :goto_2

    .line 432
    .restart local v10    # "blob":[B
    :catch_0
    move-exception v18

    .line 433
    .local v18, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-object/from16 v0, v32

    invoke-direct {v2, v0}, Lcom/motorola/messaging/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/motorola/messaging/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v10

    .line 434
    goto :goto_3

    .line 436
    .end local v18    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_f
    new-instance v2, Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-object/from16 v0, v32

    invoke-direct {v2, v0}, Lcom/motorola/messaging/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/motorola/messaging/pdu/EncodedStringValue;->getTextString()[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v10

    goto :goto_3

    .line 443
    .end local v10    # "blob":[B
    .end local v32    # "text":Ljava/lang/String;
    :cond_10
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v20

    .line 445
    const/16 v2, 0x2000

    new-array v11, v2, [B

    .line 446
    .local v11, "buffer":[B
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/io/InputStream;->read([B)I

    move-result v21

    .line 447
    .local v21, "len":I
    :goto_5
    if-ltz v21, :cond_11

    .line 448
    const/4 v2, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v11, v2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 449
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/io/InputStream;->read([B)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v21

    goto :goto_5

    .line 456
    :cond_11
    if-eqz v20, :cond_b

    .line 458
    :try_start_6
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 459
    :catch_1
    move-exception v18

    .line 460
    .local v18, "e":Ljava/io/IOException;
    :try_start_7
    const-string v2, "PduPersister"

    const-string v3, "Failed to close stream"

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 451
    .end local v11    # "buffer":[B
    .end local v18    # "e":Ljava/io/IOException;
    .end local v21    # "len":I
    :catch_2
    move-exception v18

    .line 452
    .restart local v18    # "e":Ljava/io/IOException;
    :try_start_8
    const-string v2, "PduPersister"

    const-string v3, "Failed to load part data"

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 453
    invoke-static {v12}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 454
    new-instance v2, Lcom/motorola/messaging/util/MmsException;

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Lcom/motorola/messaging/util/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 456
    .end local v18    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v2

    if-eqz v20, :cond_12

    .line 458
    :try_start_9
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 461
    :cond_12
    :goto_6
    :try_start_a
    throw v2

    .line 459
    :catch_3
    move-exception v18

    .line 460
    .restart local v18    # "e":Ljava/io/IOException;
    const-string v3, "PduPersister"

    const-string v4, "Failed to close stream"

    move-object/from16 v0, v18

    invoke-static {v3, v4, v0}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_6

    .line 470
    .end local v9    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v13    # "charset":Ljava/lang/Integer;
    .end local v14    # "contentDisposition":[B
    .end local v15    # "contentId":Ljava/lang/String;
    .end local v16    # "contentLocation":Ljava/lang/String;
    .end local v17    # "contentType":[B
    .end local v18    # "e":Ljava/io/IOException;
    .end local v19    # "fileName":Ljava/lang/String;
    .end local v20    # "is":Ljava/io/InputStream;
    .end local v23    # "name":Ljava/lang/String;
    .end local v24    # "part":Lcom/motorola/messaging/pdu/PduPart;
    .end local v26    # "partId":J
    .end local v30    # "partURI":Landroid/net/Uri;
    .end local v33    # "type":Ljava/lang/String;
    :cond_13
    invoke-static {v12}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    move-object/from16 v2, v31

    .line 473
    goto/16 :goto_0
.end method

.method private persistAddress(JI[Lcom/motorola/messaging/pdu/EncodedStringValue;)V
    .locals 8
    .param p1, "msgId"    # J
    .param p3, "type"    # I
    .param p4, "array"    # [Lcom/motorola/messaging/pdu/EncodedStringValue;

    .prologue
    .line 687
    new-instance v5, Landroid/content/ContentValues;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 689
    .local v5, "values":Landroid/content/ContentValues;
    move-object v1, p4

    .local v1, "arr$":[Lcom/motorola/messaging/pdu/EncodedStringValue;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 690
    .local v0, "addr":Lcom/motorola/messaging/pdu/EncodedStringValue;
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 691
    const-string v6, "address"

    invoke-virtual {v0}, Lcom/motorola/messaging/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v7

    invoke-static {v7}, Lcom/motorola/messaging/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    const-string v6, "charset"

    invoke-virtual {v0}, Lcom/motorola/messaging/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 693
    const-string v6, "type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 695
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://mms/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/addr"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 696
    .local v4, "uri":Landroid/net/Uri;
    iget-object v6, p0, Lcom/motorola/messaging/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/motorola/messaging/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v6, v7, v4, v5}, Lcom/motorola/messaging/provider/SqliteManager;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 689
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 698
    .end local v0    # "addr":Lcom/motorola/messaging/pdu/EncodedStringValue;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_0
    array-length v6, p4

    const/4 v7, 0x1

    if-le v6, v7, :cond_1

    .line 701
    neg-long v6, p1

    invoke-static {v6, v7}, Lcom/motorola/messaging/composer/MessageItem;->clearCache(J)V

    .line 703
    :cond_1
    return-void
.end method

.method private persistData(Lcom/motorola/messaging/pdu/PduPart;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 14
    .param p1, "part"    # Lcom/motorola/messaging/pdu/PduPart;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;
        }
    .end annotation

    .prologue
    .line 798
    const/4 v13, 0x0

    .line 799
    .local v13, "os":Ljava/io/OutputStream;
    const/4 v11, 0x0

    .line 802
    .local v11, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Lcom/motorola/messaging/pdu/PduPart;->getData()[B

    move-result-object v8

    .line 803
    .local v8, "data":[B
    const-string v1, "text/plain"

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "application/smil"

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "text/html"

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 806
    :cond_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 809
    .local v4, "cv":Landroid/content/ContentValues;
    if-eqz v8, :cond_4

    .line 811
    invoke-virtual {p1}, Lcom/motorola/messaging/pdu/PduPart;->getCharset()I

    move-result v1

    if-eqz v1, :cond_3

    .line 812
    const-string v1, "text"

    new-instance v2, Lcom/motorola/messaging/pdu/EncodedStringValue;

    invoke-virtual {p1}, Lcom/motorola/messaging/pdu/PduPart;->getCharset()I

    move-result v3

    invoke-direct {v2, v3, v8}, Lcom/motorola/messaging/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {v2}, Lcom/motorola/messaging/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    :goto_0
    iget-object v1, p0, Lcom/motorola/messaging/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/messaging/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p2

    invoke-static/range {v1 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_f

    .line 826
    new-instance v1, Lcom/motorola/messaging/util/MmsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/motorola/messaging/util/MmsException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 866
    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v8    # "data":[B
    :catch_0
    move-exception v10

    .line 867
    .local v10, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    const-string v1, "PduPersister"

    const-string v2, "Failed to open Input/Output stream."

    invoke-static {v1, v2, v10}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 868
    new-instance v1, Lcom/motorola/messaging/util/MmsException;

    invoke-direct {v1, v10}, Lcom/motorola/messaging/util/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 873
    .end local v10    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v1

    if-eqz v13, :cond_1

    .line 875
    :try_start_2
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 880
    :cond_1
    :goto_1
    if-eqz v11, :cond_2

    .line 882
    :try_start_3
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 873
    :cond_2
    :goto_2
    throw v1

    .line 816
    .restart local v4    # "cv":Landroid/content/ContentValues;
    .restart local v8    # "data":[B
    :cond_3
    :try_start_4
    const-string v1, "text"

    new-instance v2, Lcom/motorola/messaging/pdu/EncodedStringValue;

    invoke-direct {v2, v8}, Lcom/motorola/messaging/pdu/EncodedStringValue;-><init>([B)V

    invoke-virtual {v2}, Lcom/motorola/messaging/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 869
    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v8    # "data":[B
    :catch_1
    move-exception v10

    .line 870
    .local v10, "e":Ljava/io/IOException;
    :try_start_5
    const-string v1, "PduPersister"

    const-string v2, "Failed to read/write data."

    invoke-static {v1, v2, v10}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 871
    new-instance v1, Lcom/motorola/messaging/util/MmsException;

    invoke-direct {v1, v10}, Lcom/motorola/messaging/util/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 821
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v4    # "cv":Landroid/content/ContentValues;
    .restart local v8    # "data":[B
    :cond_4
    :try_start_6
    const-string v1, "text"

    const-string v2, ""

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 829
    .end local v4    # "cv":Landroid/content/ContentValues;
    :cond_5
    iget-object v1, p0, Lcom/motorola/messaging/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v13

    .line 833
    if-nez v13, :cond_6

    .line 834
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to open OutputStream"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 837
    :cond_6
    if-nez v8, :cond_d

    .line 838
    invoke-virtual {p1}, Lcom/motorola/messaging/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v9

    .line 839
    .local v9, "dataUri":Landroid/net/Uri;
    if-eqz v9, :cond_7

    move-object/from16 v0, p2

    if-ne v9, v0, :cond_a

    .line 840
    :cond_7
    const-string v1, "PduPersister"

    const-string v2, "Can\'t find data for this part."

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 873
    if-eqz v13, :cond_8

    .line 875
    :try_start_7
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 880
    :cond_8
    :goto_3
    if-eqz v11, :cond_9

    .line 882
    :try_start_8
    throw v11
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 888
    .end local v9    # "dataUri":Landroid/net/Uri;
    :cond_9
    :goto_4
    return-void

    .line 843
    .restart local v9    # "dataUri":Landroid/net/Uri;
    :cond_a
    :try_start_9
    iget-object v1, p0, Lcom/motorola/messaging/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v9}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v11

    .line 847
    if-nez v11, :cond_b

    .line 848
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to Open InputStream"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 851
    :cond_b
    sget-boolean v1, Lcom/motorola/messaging/pdu/PduPersister;->LOCAL_LOG:Z

    if-eqz v1, :cond_c

    .line 852
    const-string v1, "PduPersister"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Saving data to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    :cond_c
    const/16 v1, 0x2000

    new-array v7, v1, [B

    .line 856
    .local v7, "buffer":[B
    const/4 v12, 0x0

    .local v12, "len":I
    :goto_5
    invoke-virtual {v11, v7}, Ljava/io/InputStream;->read([B)I

    move-result v12

    const/4 v1, -0x1

    if-eq v12, v1, :cond_f

    .line 857
    const/4 v1, 0x0

    invoke-virtual {v13, v7, v1, v12}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_5

    .line 860
    .end local v7    # "buffer":[B
    .end local v9    # "dataUri":Landroid/net/Uri;
    .end local v12    # "len":I
    :cond_d
    sget-boolean v1, Lcom/motorola/messaging/pdu/PduPersister;->LOCAL_LOG:Z

    if-eqz v1, :cond_e

    .line 861
    const-string v1, "PduPersister"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Saving data to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    :cond_e
    invoke-virtual {v13, v8}, Ljava/io/OutputStream;->write([B)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 873
    :cond_f
    if-eqz v13, :cond_10

    .line 875
    :try_start_a
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 880
    :cond_10
    :goto_6
    if-eqz v11, :cond_9

    .line 882
    :try_start_b
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_4

    .line 883
    :catch_2
    move-exception v10

    .line 884
    .restart local v10    # "e":Ljava/io/IOException;
    const-string v1, "PduPersister"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException while closing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_7
    invoke-static {v1, v2, v10}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 876
    .end local v8    # "data":[B
    .end local v10    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v10

    .line 877
    .restart local v10    # "e":Ljava/io/IOException;
    const-string v2, "PduPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException while closing: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v10}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 883
    .end local v10    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v10

    .line 884
    .restart local v10    # "e":Ljava/io/IOException;
    const-string v2, "PduPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException while closing: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v10}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 876
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v8    # "data":[B
    :catch_5
    move-exception v10

    .line 877
    .restart local v10    # "e":Ljava/io/IOException;
    const-string v1, "PduPersister"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException while closing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v10}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 876
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v9    # "dataUri":Landroid/net/Uri;
    :catch_6
    move-exception v10

    .line 877
    .restart local v10    # "e":Ljava/io/IOException;
    const-string v1, "PduPersister"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException while closing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v10}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 883
    .end local v10    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v10

    .line 884
    .restart local v10    # "e":Ljava/io/IOException;
    const-string v1, "PduPersister"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException while closing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_7
.end method

.method private setEncodedStringValueToHeaders(Landroid/database/Cursor;ILcom/motorola/messaging/pdu/PduHeaders;I)V
    .locals 6
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I
    .param p3, "headers"    # Lcom/motorola/messaging/pdu/PduHeaders;
    .param p4, "mapColumn"    # I

    .prologue
    .line 289
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 290
    .local v2, "s":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 291
    sget-object v4, Lcom/motorola/messaging/pdu/PduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 292
    .local v1, "charsetColumnIndex":I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 293
    .local v0, "charset":I
    new-instance v3, Lcom/motorola/messaging/pdu/EncodedStringValue;

    invoke-static {v2}, Lcom/motorola/messaging/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/motorola/messaging/pdu/EncodedStringValue;-><init>(I[B)V

    .line 295
    .local v3, "value":Lcom/motorola/messaging/pdu/EncodedStringValue;
    invoke-virtual {p3, v3, p4}, Lcom/motorola/messaging/pdu/PduHeaders;->setEncodedStringValue(Lcom/motorola/messaging/pdu/EncodedStringValue;I)V

    .line 297
    .end local v0    # "charset":I
    .end local v1    # "charsetColumnIndex":I
    .end local v3    # "value":Lcom/motorola/messaging/pdu/EncodedStringValue;
    :cond_0
    return-void
.end method

.method private setLongToHeaders(Landroid/database/Cursor;ILcom/motorola/messaging/pdu/PduHeaders;I)V
    .locals 3
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I
    .param p3, "headers"    # Lcom/motorola/messaging/pdu/PduHeaders;
    .param p4, "mapColumn"    # I

    .prologue
    .line 320
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 321
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 322
    .local v0, "l":J
    invoke-virtual {p3, v0, v1, p4}, Lcom/motorola/messaging/pdu/PduHeaders;->setLongInteger(JI)V

    .line 324
    .end local v0    # "l":J
    :cond_0
    return-void
.end method

.method private setOctetToHeaders(Landroid/database/Cursor;ILcom/motorola/messaging/pdu/PduHeaders;I)V
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I
    .param p3, "headers"    # Lcom/motorola/messaging/pdu/PduHeaders;
    .param p4, "mapColumn"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/pdu/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 311
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 312
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 313
    .local v0, "b":I
    invoke-virtual {p3, v0, p4}, Lcom/motorola/messaging/pdu/PduHeaders;->setOctet(II)V

    .line 315
    .end local v0    # "b":I
    :cond_0
    return-void
.end method

.method private setTextStringToHeaders(Landroid/database/Cursor;ILcom/motorola/messaging/pdu/PduHeaders;I)V
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I
    .param p3, "headers"    # Lcom/motorola/messaging/pdu/PduHeaders;
    .param p4, "mapColumn"    # I

    .prologue
    .line 302
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 304
    invoke-static {v0}, Lcom/motorola/messaging/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p3, v1, p4}, Lcom/motorola/messaging/pdu/PduHeaders;->setTextString([BI)V

    .line 306
    :cond_0
    return-void
.end method

.method public static toIsoString([B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1441
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "iso-8859-1"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1445
    :goto_0
    return-object v0

    .line 1442
    :catch_0
    move-exception v0

    .line 1444
    const-string v1, "PduPersister"

    const-string v2, "ISO_8859_1 must be supported!"

    invoke-static {v1, v2, v0}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1445
    const-string v0, ""

    goto :goto_0
.end method

.method private updateAddress(JI[Lcom/motorola/messaging/pdu/EncodedStringValue;)V
    .locals 5
    .param p1, "msgId"    # J
    .param p3, "type"    # I
    .param p4, "array"    # [Lcom/motorola/messaging/pdu/EncodedStringValue;

    .prologue
    .line 892
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/addr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 893
    .local v0, "mmsUri":Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 894
    .local v1, "where":Ljava/lang/String;
    sparse-switch p3, :sswitch_data_0

    .line 904
    :goto_0
    iget-object v2, p0, Lcom/motorola/messaging/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/motorola/messaging/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v1, v4}, Lcom/motorola/messaging/provider/SqliteManager;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 905
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/messaging/pdu/PduPersister;->persistAddress(JI[Lcom/motorola/messaging/pdu/EncodedStringValue;)V

    .line 906
    return-void

    .line 898
    :sswitch_0
    const-string v1, "type IN (151,130,129)"

    .line 899
    goto :goto_0

    .line 894
    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_0
        0x82 -> :sswitch_0
        0x97 -> :sswitch_0
    .end sparse-switch
.end method

.method private updatePart(Landroid/net/Uri;Lcom/motorola/messaging/pdu/PduPart;)V
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "part"    # Lcom/motorola/messaging/pdu/PduPart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1042
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x7

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1044
    .local v3, "values":Landroid/content/ContentValues;
    invoke-virtual {p2}, Lcom/motorola/messaging/pdu/PduPart;->getCharset()I

    move-result v6

    .line 1045
    .local v6, "charset":I
    if-eqz v6, :cond_0

    .line 1046
    const-string v0, "chset"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1049
    :cond_0
    const/4 v9, 0x0

    .line 1050
    .local v9, "contentType":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/motorola/messaging/pdu/PduPart;->getContentType()[B

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1051
    invoke-virtual {p2}, Lcom/motorola/messaging/pdu/PduPart;->getContentType()[B

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/messaging/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v9

    .line 1052
    const-string v0, "ct"

    invoke-virtual {v3, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    invoke-virtual {p2}, Lcom/motorola/messaging/pdu/PduPart;->getFilename()[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1058
    new-instance v10, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/motorola/messaging/pdu/PduPart;->getFilename()[B

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    .line 1059
    .local v10, "fileName":Ljava/lang/String;
    const-string v0, "fn"

    invoke-virtual {v3, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    .end local v10    # "fileName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Lcom/motorola/messaging/pdu/PduPart;->getName()[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1063
    new-instance v11, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/motorola/messaging/pdu/PduPart;->getName()[B

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/lang/String;-><init>([B)V

    .line 1064
    .local v11, "name":Ljava/lang/String;
    const-string v0, "name"

    invoke-virtual {v3, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    .end local v11    # "name":Ljava/lang/String;
    :cond_2
    const/4 v12, 0x0

    .line 1068
    .local v12, "value":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/motorola/messaging/pdu/PduPart;->getContentDisposition()[B

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1069
    invoke-virtual {p2}, Lcom/motorola/messaging/pdu/PduPart;->getContentDisposition()[B

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/messaging/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v12

    .line 1070
    .local v12, "value":Ljava/lang/String;
    const-string v0, "cd"

    check-cast v12, Ljava/lang/String;

    .end local v12    # "value":Ljava/lang/String;
    invoke-virtual {v3, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    :cond_3
    invoke-virtual {p2}, Lcom/motorola/messaging/pdu/PduPart;->getContentId()[B

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1075
    new-instance v7, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/motorola/messaging/pdu/PduPart;->getContentId()[B

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V

    .line 1076
    .local v7, "contentId":Ljava/lang/String;
    const-string v0, "cid"

    invoke-virtual {v3, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    .end local v7    # "contentId":Ljava/lang/String;
    :cond_4
    invoke-virtual {p2}, Lcom/motorola/messaging/pdu/PduPart;->getContentLocation()[B

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1080
    new-instance v8, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/motorola/messaging/pdu/PduPart;->getContentLocation()[B

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V

    .line 1081
    .local v8, "contentLocation":Ljava/lang/String;
    const-string v0, "cl"

    invoke-virtual {v3, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    .end local v8    # "contentLocation":Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lcom/motorola/messaging/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/messaging/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/motorola/messaging/provider/SqliteManager;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1089
    invoke-virtual {p2}, Lcom/motorola/messaging/pdu/PduPart;->getData()[B

    move-result-object v0

    if-nez v0, :cond_6

    invoke-virtual {p2}, Lcom/motorola/messaging/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v0

    if-eq p1, v0, :cond_7

    .line 1091
    :cond_6
    invoke-direct {p0, p2, p1, v9}, Lcom/motorola/messaging/pdu/PduPersister;->persistData(Lcom/motorola/messaging/pdu/PduPart;Landroid/net/Uri;Ljava/lang/String;)V

    .line 1093
    :cond_7
    return-void

    .line 1054
    :cond_8
    new-instance v0, Lcom/motorola/messaging/util/MmsException;

    const-string v1, "MIME type of the part must be set."

    invoke-direct {v0, v1}, Lcom/motorola/messaging/util/MmsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getPendingMessages(J)Landroid/database/Cursor;
    .locals 7

    .prologue
    .line 1474
    sget-object v0, Lcom/motorola/messaging/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 1475
    const-string v0, "protocol"

    const-string v1, "mms"

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1477
    const-string v4, "err_type < ? AND due_time <= ?"

    .line 1480
    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 1485
    iget-object v0, p0, Lcom/motorola/messaging/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/messaging/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string v6, "due_time"

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public load(Landroid/net/Uri;)Lcom/motorola/messaging/pdu/GenericPdu;
    .locals 33
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;
        }
    .end annotation

    .prologue
    .line 521
    const/16 v28, 0x0

    .line 522
    .local v28, "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    const/4 v13, 0x0

    .line 523
    .local v13, "cacheEntry":Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    const/16 v22, 0x0

    .line 524
    .local v22, "msgBox":I
    const-wide/16 v31, -0x1

    .line 526
    .local v31, "threadId":J
    :try_start_0
    sget-object v5, Lcom/motorola/messaging/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/motorola/messaging/pdu/util/PduCache;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 527
    :try_start_1
    sget-object v4, Lcom/motorola/messaging/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/motorola/messaging/pdu/util/PduCache;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/motorola/messaging/pdu/util/PduCache;->isUpdating(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 528
    sget-boolean v4, Lcom/motorola/messaging/pdu/PduPersister;->LOCAL_LOG:Z

    if-eqz v4, :cond_0

    .line 529
    const-string v4, "PduPersister"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "load: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " blocked by isUpdating()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 532
    :cond_0
    :try_start_2
    sget-object v4, Lcom/motorola/messaging/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/motorola/messaging/pdu/util/PduCache;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 536
    :goto_0
    :try_start_3
    sget-object v4, Lcom/motorola/messaging/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/motorola/messaging/pdu/util/PduCache;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/motorola/messaging/pdu/util/AbstractCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/motorola/messaging/pdu/util/PduCacheEntry;

    move-object v13, v0

    .line 537
    if-eqz v13, :cond_1

    .line 538
    invoke-virtual {v13}, Lcom/motorola/messaging/pdu/util/PduCacheEntry;->getPdu()Lcom/motorola/messaging/pdu/GenericPdu;

    move-result-object v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 671
    sget-object v5, Lcom/motorola/messaging/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/motorola/messaging/pdu/util/PduCache;

    monitor-enter v5

    .line 672
    if-eqz v28, :cond_10

    .line 673
    :try_start_4
    sget-boolean v6, Lcom/motorola/messaging/pdu/PduPersister;->$assertionsDisabled:Z

    if-nez v6, :cond_f

    sget-object v6, Lcom/motorola/messaging/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/motorola/messaging/pdu/util/PduCache;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/motorola/messaging/pdu/util/AbstractCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_f

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 680
    :catchall_0
    move-exception v4

    :goto_1
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 533
    :catch_0
    move-exception v17

    .line 534
    .local v17, "e":Ljava/lang/InterruptedException;
    :try_start_5
    const-string v4, "PduPersister"

    const-string v6, "load: "

    move-object/from16 v0, v17

    invoke-static {v4, v6, v0}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 544
    .end local v17    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v4

    :goto_2
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 671
    :catchall_2
    move-exception v4

    :goto_3
    sget-object v5, Lcom/motorola/messaging/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/motorola/messaging/pdu/util/PduCache;

    monitor-enter v5

    .line 672
    if-eqz v28, :cond_d

    .line 673
    :try_start_7
    sget-boolean v6, Lcom/motorola/messaging/pdu/PduPersister;->$assertionsDisabled:Z

    if-nez v6, :cond_c

    sget-object v6, Lcom/motorola/messaging/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/motorola/messaging/pdu/util/PduCache;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/motorola/messaging/pdu/util/AbstractCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_c

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 680
    :catchall_3
    move-exception v4

    :goto_4
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v4

    :cond_1
    move-object v14, v13

    .line 543
    .end local v13    # "cacheEntry":Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    .local v14, "cacheEntry":Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    :try_start_8
    sget-object v4, Lcom/motorola/messaging/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/motorola/messaging/pdu/util/PduCache;

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6}, Lcom/motorola/messaging/pdu/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 544
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_a

    .line 546
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/messaging/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/messaging/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/motorola/messaging/pdu/PduPersister;->PDU_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p1

    invoke-static/range {v4 .. v10}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 548
    .local v12, "c":Landroid/database/Cursor;
    new-instance v19, Lcom/motorola/messaging/pdu/PduHeaders;

    invoke-direct/range {v19 .. v19}, Lcom/motorola/messaging/pdu/PduHeaders;-><init>()V

    .line 550
    .local v19, "headers":Lcom/motorola/messaging/pdu/PduHeaders;
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    move-result-wide v23

    .line 553
    .local v23, "msgId":J
    if-eqz v12, :cond_2

    :try_start_a
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_3

    .line 554
    :cond_2
    new-instance v4, Lcom/motorola/messaging/util/MmsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/motorola/messaging/util/MmsException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 595
    :catchall_4
    move-exception v4

    :try_start_b
    invoke-static {v12}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 671
    .end local v12    # "c":Landroid/database/Cursor;
    .end local v19    # "headers":Lcom/motorola/messaging/pdu/PduHeaders;
    .end local v23    # "msgId":J
    :catchall_5
    move-exception v4

    move-object v13, v14

    .end local v14    # "cacheEntry":Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    .restart local v13    # "cacheEntry":Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    goto :goto_3

    .line 557
    .end local v13    # "cacheEntry":Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    .restart local v12    # "c":Landroid/database/Cursor;
    .restart local v14    # "cacheEntry":Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    .restart local v19    # "headers":Lcom/motorola/messaging/pdu/PduHeaders;
    .restart local v23    # "msgId":J
    :cond_3
    const/4 v4, 0x1

    :try_start_c
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 558
    const/4 v4, 0x2

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    .line 560
    sget-object v4, Lcom/motorola/messaging/pdu/PduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v30

    .line 561
    .local v30, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 562
    .local v18, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v12, v5, v1, v4}, Lcom/motorola/messaging/pdu/PduPersister;->setEncodedStringValueToHeaders(Landroid/database/Cursor;ILcom/motorola/messaging/pdu/PduHeaders;I)V

    goto :goto_5

    .line 566
    .end local v18    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_4
    sget-object v4, Lcom/motorola/messaging/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v30

    .line 567
    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_6
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 568
    .restart local v18    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v12, v5, v1, v4}, Lcom/motorola/messaging/pdu/PduPersister;->setTextStringToHeaders(Landroid/database/Cursor;ILcom/motorola/messaging/pdu/PduHeaders;I)V

    goto :goto_6

    .line 572
    .end local v18    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_5
    sget-object v4, Lcom/motorola/messaging/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v30

    .line 573
    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_7
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 574
    .restart local v18    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v12, v5, v1, v4}, Lcom/motorola/messaging/pdu/PduPersister;->setOctetToHeaders(Landroid/database/Cursor;ILcom/motorola/messaging/pdu/PduHeaders;I)V

    goto :goto_7

    .line 578
    .end local v18    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_6
    sget-object v4, Lcom/motorola/messaging/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v30

    .line 579
    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_8
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 580
    .restart local v18    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v12, v5, v1, v4}, Lcom/motorola/messaging/pdu/PduPersister;->setLongToHeaders(Landroid/database/Cursor;ILcom/motorola/messaging/pdu/PduHeaders;I)V

    goto :goto_8

    .line 586
    .end local v18    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_7
    const/4 v4, 0x1

    move/from16 v0, v22

    if-ne v0, v4, :cond_8

    .line 587
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsMmsNetworkTimestamp()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 588
    const/16 v4, 0x1b

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 589
    .local v15, "date_sent":J
    const-wide/16 v4, 0x0

    cmp-long v4, v15, v4

    if-lez v4, :cond_8

    .line 590
    const/16 v4, 0x85

    move-object/from16 v0, v19

    move-wide v1, v15

    invoke-virtual {v0, v1, v2, v4}, Lcom/motorola/messaging/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 595
    .end local v15    # "date_sent":J
    :cond_8
    :try_start_d
    invoke-static {v12}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 599
    const-wide/16 v4, -0x1

    cmp-long v4, v23, v4

    if-nez v4, :cond_9

    .line 600
    new-instance v4, Lcom/motorola/messaging/util/MmsException;

    const-string v5, "Error! ID of the message: -1."

    invoke-direct {v4, v5}, Lcom/motorola/messaging/util/MmsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 604
    :cond_9
    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/messaging/pdu/PduPersister;->loadAddress(JLcom/motorola/messaging/pdu/PduHeaders;)V

    .line 606
    const/16 v4, 0x8c

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/motorola/messaging/pdu/PduHeaders;->getOctet(I)I

    move-result v25

    .line 607
    .local v25, "msgType":I
    new-instance v11, Lcom/motorola/messaging/pdu/PduBody;

    invoke-direct {v11}, Lcom/motorola/messaging/pdu/PduBody;-><init>()V

    .line 611
    .local v11, "body":Lcom/motorola/messaging/pdu/PduBody;
    const/16 v4, 0x84

    move/from16 v0, v25

    if-eq v0, v4, :cond_a

    const/16 v4, 0x80

    move/from16 v0, v25

    if-ne v0, v4, :cond_b

    .line 613
    :cond_a
    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-direct {v0, v1, v2}, Lcom/motorola/messaging/pdu/PduPersister;->loadParts(J)[Lcom/motorola/messaging/pdu/PduPart;

    move-result-object v26

    .line 614
    .local v26, "parts":[Lcom/motorola/messaging/pdu/PduPart;
    if-eqz v26, :cond_b

    .line 615
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v27, v0

    .line 616
    .local v27, "partsNum":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_9
    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_b

    .line 617
    aget-object v4, v26, v20

    invoke-virtual {v11, v4}, Lcom/motorola/messaging/pdu/PduBody;->addPart(Lcom/motorola/messaging/pdu/PduPart;)Z

    .line 616
    add-int/lit8 v20, v20, 0x1

    goto :goto_9

    .line 622
    .end local v20    # "i":I
    .end local v26    # "parts":[Lcom/motorola/messaging/pdu/PduPart;
    .end local v27    # "partsNum":I
    :cond_b
    packed-switch v25, :pswitch_data_0

    .line 667
    new-instance v4, Lcom/motorola/messaging/util/MmsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized PDU type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/motorola/messaging/util/MmsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 624
    :pswitch_0
    new-instance v29, Lcom/motorola/messaging/pdu/NotificationInd;

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/motorola/messaging/pdu/NotificationInd;-><init>(Lcom/motorola/messaging/pdu/PduHeaders;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .end local v28    # "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    .local v29, "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    move-object/from16 v28, v29

    .line 671
    .end local v29    # "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    .restart local v28    # "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    :goto_a
    sget-object v5, Lcom/motorola/messaging/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/motorola/messaging/pdu/util/PduCache;

    monitor-enter v5

    .line 672
    if-eqz v28, :cond_11

    .line 673
    :try_start_e
    sget-boolean v4, Lcom/motorola/messaging/pdu/PduPersister;->$assertionsDisabled:Z

    if-nez v4, :cond_e

    sget-object v4, Lcom/motorola/messaging/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/motorola/messaging/pdu/util/PduCache;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/motorola/messaging/pdu/util/AbstractCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_e

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 680
    :catchall_6
    move-exception v4

    move-object v13, v14

    .end local v14    # "cacheEntry":Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    .restart local v13    # "cacheEntry":Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    :goto_b
    :try_start_f
    monitor-exit v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    throw v4

    .line 627
    .end local v13    # "cacheEntry":Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    .restart local v14    # "cacheEntry":Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    :pswitch_1
    :try_start_10
    new-instance v29, Lcom/motorola/messaging/pdu/DeliveryInd;

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/motorola/messaging/pdu/DeliveryInd;-><init>(Lcom/motorola/messaging/pdu/PduHeaders;)V

    .end local v28    # "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    .restart local v29    # "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    move-object/from16 v28, v29

    .line 628
    .end local v29    # "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    .restart local v28    # "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    goto :goto_a

    .line 630
    :pswitch_2
    new-instance v29, Lcom/motorola/messaging/pdu/ReadOrigInd;

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/motorola/messaging/pdu/ReadOrigInd;-><init>(Lcom/motorola/messaging/pdu/PduHeaders;)V

    .end local v28    # "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    .restart local v29    # "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    move-object/from16 v28, v29

    .line 631
    .end local v29    # "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    .restart local v28    # "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    goto :goto_a

    .line 633
    :pswitch_3
    new-instance v29, Lcom/motorola/messaging/pdu/RetrieveConf;

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v11}, Lcom/motorola/messaging/pdu/RetrieveConf;-><init>(Lcom/motorola/messaging/pdu/PduHeaders;Lcom/motorola/messaging/pdu/PduBody;)V

    .end local v28    # "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    .restart local v29    # "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    move-object/from16 v28, v29

    .line 634
    .end local v29    # "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    .restart local v28    # "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    goto :goto_a

    .line 636
    :pswitch_4
    new-instance v29, Lcom/motorola/messaging/pdu/SendReq;

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v11}, Lcom/motorola/messaging/pdu/SendReq;-><init>(Lcom/motorola/messaging/pdu/PduHeaders;Lcom/motorola/messaging/pdu/PduBody;)V

    .end local v28    # "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    .restart local v29    # "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    move-object/from16 v28, v29

    .line 637
    .end local v29    # "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    .restart local v28    # "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    goto :goto_a

    .line 639
    :pswitch_5
    new-instance v29, Lcom/motorola/messaging/pdu/AcknowledgeInd;

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/motorola/messaging/pdu/AcknowledgeInd;-><init>(Lcom/motorola/messaging/pdu/PduHeaders;)V

    .end local v28    # "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    .restart local v29    # "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    move-object/from16 v28, v29

    .line 640
    .end local v29    # "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    .restart local v28    # "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    goto :goto_a

    .line 642
    :pswitch_6
    new-instance v29, Lcom/motorola/messaging/pdu/NotifyRespInd;

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/motorola/messaging/pdu/NotifyRespInd;-><init>(Lcom/motorola/messaging/pdu/PduHeaders;)V

    .end local v28    # "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    .restart local v29    # "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    move-object/from16 v28, v29

    .line 643
    .end local v29    # "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    .restart local v28    # "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    goto :goto_a

    .line 645
    :pswitch_7
    new-instance v29, Lcom/motorola/messaging/pdu/ReadRecInd;

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/motorola/messaging/pdu/ReadRecInd;-><init>(Lcom/motorola/messaging/pdu/PduHeaders;)V

    .end local v28    # "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    .restart local v29    # "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    move-object/from16 v28, v29

    .line 646
    .end local v29    # "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    .restart local v28    # "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    goto :goto_a

    .line 663
    :pswitch_8
    new-instance v4, Lcom/motorola/messaging/util/MmsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported PDU type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/motorola/messaging/util/MmsException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 675
    .end local v11    # "body":Lcom/motorola/messaging/pdu/PduBody;
    .end local v12    # "c":Landroid/database/Cursor;
    .end local v14    # "cacheEntry":Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    .end local v19    # "headers":Lcom/motorola/messaging/pdu/PduHeaders;
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v23    # "msgId":J
    .end local v25    # "msgType":I
    .end local v30    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    .restart local v13    # "cacheEntry":Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    :cond_c
    :try_start_11
    new-instance v14, Lcom/motorola/messaging/pdu/util/PduCacheEntry;

    move-object/from16 v0, v28

    move/from16 v1, v22

    move-wide/from16 v2, v31

    invoke-direct {v14, v0, v1, v2, v3}, Lcom/motorola/messaging/pdu/util/PduCacheEntry;-><init>(Lcom/motorola/messaging/pdu/GenericPdu;IJ)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 676
    .end local v13    # "cacheEntry":Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    .restart local v14    # "cacheEntry":Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    :try_start_12
    sget-object v6, Lcom/motorola/messaging/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/motorola/messaging/pdu/util/PduCache;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v14}, Lcom/motorola/messaging/pdu/util/PduCache;->put(Landroid/net/Uri;Lcom/motorola/messaging/pdu/util/PduCacheEntry;)Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    move-object v13, v14

    .line 678
    .end local v14    # "cacheEntry":Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    .restart local v13    # "cacheEntry":Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    :cond_d
    :try_start_13
    sget-object v6, Lcom/motorola/messaging/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/motorola/messaging/pdu/util/PduCache;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v7}, Lcom/motorola/messaging/pdu/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 679
    sget-object v6, Lcom/motorola/messaging/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/motorola/messaging/pdu/util/PduCache;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 680
    monitor-exit v5
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 671
    throw v4

    .line 675
    .end local v13    # "cacheEntry":Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    .restart local v11    # "body":Lcom/motorola/messaging/pdu/PduBody;
    .restart local v12    # "c":Landroid/database/Cursor;
    .restart local v14    # "cacheEntry":Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    .restart local v19    # "headers":Lcom/motorola/messaging/pdu/PduHeaders;
    .restart local v21    # "i$":Ljava/util/Iterator;
    .restart local v23    # "msgId":J
    .restart local v25    # "msgType":I
    .restart local v30    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    :cond_e
    :try_start_14
    new-instance v13, Lcom/motorola/messaging/pdu/util/PduCacheEntry;

    move-object/from16 v0, v28

    move/from16 v1, v22

    move-wide/from16 v2, v31

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/motorola/messaging/pdu/util/PduCacheEntry;-><init>(Lcom/motorola/messaging/pdu/GenericPdu;IJ)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .line 676
    .end local v14    # "cacheEntry":Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    .restart local v13    # "cacheEntry":Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    :try_start_15
    sget-object v4, Lcom/motorola/messaging/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/motorola/messaging/pdu/util/PduCache;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v13}, Lcom/motorola/messaging/pdu/util/PduCache;->put(Landroid/net/Uri;Lcom/motorola/messaging/pdu/util/PduCacheEntry;)Z

    .line 678
    :goto_c
    sget-object v4, Lcom/motorola/messaging/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/motorola/messaging/pdu/util/PduCache;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6}, Lcom/motorola/messaging/pdu/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 679
    sget-object v4, Lcom/motorola/messaging/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/motorola/messaging/pdu/util/PduCache;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 680
    monitor-exit v5
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    move-object/from16 v4, v28

    .line 682
    .end local v11    # "body":Lcom/motorola/messaging/pdu/PduBody;
    .end local v12    # "c":Landroid/database/Cursor;
    .end local v19    # "headers":Lcom/motorola/messaging/pdu/PduHeaders;
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v23    # "msgId":J
    .end local v25    # "msgType":I
    .end local v30    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    :goto_d
    return-object v4

    .line 675
    :cond_f
    :try_start_16
    new-instance v14, Lcom/motorola/messaging/pdu/util/PduCacheEntry;

    move-object/from16 v0, v28

    move/from16 v1, v22

    move-wide/from16 v2, v31

    invoke-direct {v14, v0, v1, v2, v3}, Lcom/motorola/messaging/pdu/util/PduCacheEntry;-><init>(Lcom/motorola/messaging/pdu/GenericPdu;IJ)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 676
    .end local v13    # "cacheEntry":Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    .restart local v14    # "cacheEntry":Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    :try_start_17
    sget-object v6, Lcom/motorola/messaging/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/motorola/messaging/pdu/util/PduCache;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v14}, Lcom/motorola/messaging/pdu/util/PduCache;->put(Landroid/net/Uri;Lcom/motorola/messaging/pdu/util/PduCacheEntry;)Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    move-object v13, v14

    .line 678
    .end local v14    # "cacheEntry":Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    .restart local v13    # "cacheEntry":Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    :cond_10
    :try_start_18
    sget-object v6, Lcom/motorola/messaging/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/motorola/messaging/pdu/util/PduCache;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v7}, Lcom/motorola/messaging/pdu/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 679
    sget-object v6, Lcom/motorola/messaging/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/motorola/messaging/pdu/util/PduCache;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 680
    monitor-exit v5
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto :goto_d

    .restart local v11    # "body":Lcom/motorola/messaging/pdu/PduBody;
    .restart local v12    # "c":Landroid/database/Cursor;
    .restart local v19    # "headers":Lcom/motorola/messaging/pdu/PduHeaders;
    .restart local v21    # "i$":Ljava/util/Iterator;
    .restart local v23    # "msgId":J
    .restart local v25    # "msgType":I
    .restart local v30    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    :catchall_7
    move-exception v4

    goto/16 :goto_b

    .end local v11    # "body":Lcom/motorola/messaging/pdu/PduBody;
    .end local v12    # "c":Landroid/database/Cursor;
    .end local v13    # "cacheEntry":Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    .end local v19    # "headers":Lcom/motorola/messaging/pdu/PduHeaders;
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v23    # "msgId":J
    .end local v25    # "msgType":I
    .end local v30    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    .restart local v14    # "cacheEntry":Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    :catchall_8
    move-exception v4

    move-object v13, v14

    .end local v14    # "cacheEntry":Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    .restart local v13    # "cacheEntry":Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    goto/16 :goto_1

    .end local v13    # "cacheEntry":Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    .restart local v14    # "cacheEntry":Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    :catchall_9
    move-exception v4

    move-object v13, v14

    .end local v14    # "cacheEntry":Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    .restart local v13    # "cacheEntry":Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    goto/16 :goto_4

    .line 544
    .end local v13    # "cacheEntry":Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    .restart local v14    # "cacheEntry":Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    :catchall_a
    move-exception v4

    move-object v13, v14

    .end local v14    # "cacheEntry":Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    .restart local v13    # "cacheEntry":Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    goto/16 :goto_2

    .end local v13    # "cacheEntry":Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    .restart local v11    # "body":Lcom/motorola/messaging/pdu/PduBody;
    .restart local v12    # "c":Landroid/database/Cursor;
    .restart local v14    # "cacheEntry":Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    .restart local v19    # "headers":Lcom/motorola/messaging/pdu/PduHeaders;
    .restart local v21    # "i$":Ljava/util/Iterator;
    .restart local v23    # "msgId":J
    .restart local v25    # "msgType":I
    .restart local v30    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    :cond_11
    move-object v13, v14

    .end local v14    # "cacheEntry":Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    .restart local v13    # "cacheEntry":Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    goto :goto_c

    .line 622
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_4
        :pswitch_8
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_7
        :pswitch_2
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1415
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 1416
    const-wide/16 v0, -0x1

    cmp-long v0, v6, v0

    if-nez v0, :cond_0

    .line 1417
    new-instance v0, Lcom/motorola/messaging/util/MmsException;

    const-string v1, "Error! ID of the message: -1."

    invoke-direct {v0, v1}, Lcom/motorola/messaging/util/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1421
    :cond_0
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1422
    if-nez v0, :cond_1

    .line 1423
    new-instance v0, Lcom/motorola/messaging/util/MmsException;

    const-string v1, "Bad destination, must be one of content://mms/inbox, content://mms/sent, content://mms/drafts, content://mms/outbox, content://mms/temp."

    invoke-direct {v0, v1}, Lcom/motorola/messaging/util/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1430
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v3, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1431
    const-string v1, "msg_box"

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1432
    iget-object v0, p0, Lcom/motorola/messaging/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/messaging/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/motorola/messaging/provider/SqliteManager;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1433
    invoke-static {p2, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public persist(Lcom/motorola/messaging/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p1, "pdu"    # Lcom/motorola/messaging/pdu/GenericPdu;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;
        }
    .end annotation

    .prologue
    .line 1197
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/motorola/messaging/pdu/PduPersister;->genericPersist(Lcom/motorola/messaging/pdu/GenericPdu;Landroid/net/Uri;Ljava/util/Set;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public persist(Lcom/motorola/messaging/pdu/GenericPdu;Landroid/net/Uri;Ljava/util/Set;)Landroid/net/Uri;
    .locals 1
    .param p1, "pdu"    # Lcom/motorola/messaging/pdu/GenericPdu;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/messaging/pdu/GenericPdu;",
            "Landroid/net/Uri;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;
        }
    .end annotation

    .prologue
    .line 1186
    .local p3, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/messaging/pdu/PduPersister;->genericPersist(Lcom/motorola/messaging/pdu/GenericPdu;Landroid/net/Uri;Ljava/util/Set;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public persistPart(Lcom/motorola/messaging/pdu/PduPart;J)Landroid/net/Uri;
    .locals 15
    .param p1, "part"    # Lcom/motorola/messaging/pdu/PduPart;
    .param p2, "msgId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;
        }
    .end annotation

    .prologue
    .line 707
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "content://mms/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p2

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/part"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 708
    .local v10, "uri":Landroid/net/Uri;
    new-instance v12, Landroid/content/ContentValues;

    const/16 v13, 0x8

    invoke-direct {v12, v13}, Landroid/content/ContentValues;-><init>(I)V

    .line 710
    .local v12, "values":Landroid/content/ContentValues;
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/messaging/pdu/PduPart;->getCharset()I

    move-result v2

    .line 711
    .local v2, "charset":I
    if-eqz v2, :cond_0

    .line 712
    const-string v13, "chset"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 715
    :cond_0
    const/4 v5, 0x0

    .line 716
    .local v5, "contentType":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/messaging/pdu/PduPart;->getContentType()[B

    move-result-object v13

    if-eqz v13, :cond_a

    .line 717
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/messaging/pdu/PduPart;->getContentType()[B

    move-result-object v13

    invoke-static {v13}, Lcom/motorola/messaging/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v5

    .line 721
    const-string v13, "image/jpg"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 722
    const-string v5, "image/jpeg"

    .line 725
    :cond_1
    const-string v13, "ct"

    invoke-virtual {v12, v13, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    const-string v13, "application/smil"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 728
    const-string v13, "seq"

    const/4 v14, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 734
    :cond_2
    const/4 v7, 0x0

    .line 735
    .local v7, "fileName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/messaging/pdu/PduPart;->getFilename()[B

    move-result-object v13

    if-eqz v13, :cond_3

    .line 736
    new-instance v7, Ljava/lang/String;

    .end local v7    # "fileName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/messaging/pdu/PduPart;->getFilename()[B

    move-result-object v13

    invoke-direct {v7, v13}, Ljava/lang/String;-><init>([B)V

    .line 737
    .restart local v7    # "fileName":Ljava/lang/String;
    const-string v13, "fn"

    invoke-virtual {v12, v13, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    :cond_3
    const/4 v8, 0x0

    .line 741
    .local v8, "name":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/messaging/pdu/PduPart;->getName()[B

    move-result-object v13

    if-eqz v13, :cond_4

    .line 742
    new-instance v8, Ljava/lang/String;

    .end local v8    # "name":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/messaging/pdu/PduPart;->getName()[B

    move-result-object v13

    invoke-direct {v8, v13}, Ljava/lang/String;-><init>([B)V

    .line 743
    .restart local v8    # "name":Ljava/lang/String;
    const-string v13, "name"

    invoke-virtual {v12, v13, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    :cond_4
    if-nez v8, :cond_5

    if-eqz v7, :cond_6

    .line 747
    :cond_5
    if-eqz v8, :cond_b

    move-object v6, v8

    .line 748
    .local v6, "displayName":Ljava/lang/String;
    :goto_0
    invoke-static {v6}, Lcom/motorola/messaging/util/StringUtils;->getDecodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 749
    const-string v13, "_display_name"

    invoke-virtual {v12, v13, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    .end local v6    # "displayName":Ljava/lang/String;
    :cond_6
    const/4 v11, 0x0

    .line 753
    .local v11, "value":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/messaging/pdu/PduPart;->getContentDisposition()[B

    move-result-object v13

    if-eqz v13, :cond_7

    .line 754
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/messaging/pdu/PduPart;->getContentDisposition()[B

    move-result-object v13

    invoke-static {v13}, Lcom/motorola/messaging/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v11

    .line 755
    .local v11, "value":Ljava/lang/String;
    const-string v13, "cd"

    check-cast v11, Ljava/lang/String;

    .end local v11    # "value":Ljava/lang/String;
    invoke-virtual {v12, v13, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/messaging/pdu/PduPart;->getContentId()[B

    move-result-object v13

    if-eqz v13, :cond_8

    .line 760
    new-instance v3, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/motorola/messaging/pdu/PduPart;->getContentId()[B

    move-result-object v13

    invoke-direct {v3, v13}, Ljava/lang/String;-><init>([B)V

    .line 761
    .local v3, "contentId":Ljava/lang/String;
    const-string v13, "cid"

    invoke-virtual {v12, v13, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    .end local v3    # "contentId":Ljava/lang/String;
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/messaging/pdu/PduPart;->getContentLocation()[B

    move-result-object v13

    if-eqz v13, :cond_9

    .line 765
    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/motorola/messaging/pdu/PduPart;->getContentLocation()[B

    move-result-object v13

    invoke-direct {v4, v13}, Ljava/lang/String;-><init>([B)V

    .line 766
    .local v4, "contentLocation":Ljava/lang/String;
    const-string v13, "cl"

    invoke-virtual {v12, v13, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    .end local v4    # "contentLocation":Ljava/lang/String;
    :cond_9
    iget-object v13, p0, Lcom/motorola/messaging/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v14, p0, Lcom/motorola/messaging/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v13, v14, v10, v12}, Lcom/motorola/messaging/provider/SqliteManager;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    .line 770
    .local v9, "res":Landroid/net/Uri;
    if-nez v9, :cond_c

    .line 771
    new-instance v13, Lcom/motorola/messaging/util/MmsException;

    const-string v14, "Failed to persist part, return null."

    invoke-direct {v13, v14}, Lcom/motorola/messaging/util/MmsException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 731
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "res":Landroid/net/Uri;
    :cond_a
    new-instance v13, Lcom/motorola/messaging/util/MmsException;

    const-string v14, "MIME type of the part must be set."

    invoke-direct {v13, v14}, Lcom/motorola/messaging/util/MmsException;-><init>(Ljava/lang/String;)V

    throw v13

    .restart local v7    # "fileName":Ljava/lang/String;
    .restart local v8    # "name":Ljava/lang/String;
    :cond_b
    move-object v6, v7

    .line 747
    goto :goto_0

    .line 774
    .restart local v9    # "res":Landroid/net/Uri;
    :cond_c
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v9, v5}, Lcom/motorola/messaging/pdu/PduPersister;->persistData(Lcom/motorola/messaging/pdu/PduPart;Landroid/net/Uri;Ljava/lang/String;)V

    .line 777
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/motorola/messaging/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 779
    return-object v9
.end method

.method public updateHeaders(Landroid/net/Uri;Lcom/motorola/messaging/pdu/SendReq;Ljava/util/Set;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/motorola/messaging/pdu/SendReq;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 930
    sget-object v1, Lcom/motorola/messaging/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/motorola/messaging/pdu/util/PduCache;

    monitor-enter v1

    .line 933
    :try_start_0
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/motorola/messaging/pdu/util/PduCache;

    invoke-virtual {v0, p1}, Lcom/motorola/messaging/pdu/util/PduCache;->isUpdating(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 934
    sget-boolean v0, Lcom/motorola/messaging/pdu/PduPersister;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 935
    const-string v0, "PduPersister"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " blocked by isUpdating()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 938
    :cond_0
    :try_start_1
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/motorola/messaging/pdu/util/PduCache;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 943
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 945
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/motorola/messaging/pdu/util/PduCache;

    invoke-virtual {v0, p1}, Lcom/motorola/messaging/pdu/util/PduCache;->purge(Landroid/net/Uri;)Lcom/motorola/messaging/pdu/util/PduCacheEntry;

    .line 947
    new-instance v3, Landroid/content/ContentValues;

    const/16 v0, 0xa

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 948
    invoke-virtual {p2}, Lcom/motorola/messaging/pdu/SendReq;->getContentType()[B

    move-result-object v0

    .line 949
    if-eqz v0, :cond_2

    .line 950
    const-string v1, "ct_t"

    invoke-static {v0}, Lcom/motorola/messaging/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    :cond_2
    invoke-virtual {p2}, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;->getDate()J

    move-result-wide v0

    .line 954
    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-eqz v2, :cond_3

    .line 955
    const-string v2, "date"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 958
    :cond_3
    invoke-virtual {p2}, Lcom/motorola/messaging/pdu/SendReq;->getDeliveryReport()I

    move-result v0

    .line 959
    if-eqz v0, :cond_4

    .line 960
    const-string v1, "d_rpt"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 963
    :cond_4
    invoke-virtual {p2}, Lcom/motorola/messaging/pdu/SendReq;->getExpiry()J

    move-result-wide v0

    .line 964
    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-eqz v2, :cond_5

    .line 965
    const-string v2, "exp"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 968
    :cond_5
    invoke-virtual {p2}, Lcom/motorola/messaging/pdu/SendReq;->getMessageClass()[B

    move-result-object v0

    .line 969
    if-eqz v0, :cond_6

    .line 970
    const-string v1, "m_cls"

    invoke-static {v0}, Lcom/motorola/messaging/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    :cond_6
    invoke-virtual {p2}, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;->getPriority()I

    move-result v0

    .line 974
    if-eqz v0, :cond_7

    .line 975
    const-string v1, "pri"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 978
    :cond_7
    invoke-virtual {p2}, Lcom/motorola/messaging/pdu/SendReq;->getReadReport()I

    move-result v0

    .line 979
    if-eqz v0, :cond_8

    .line 980
    const-string v1, "rr"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 983
    :cond_8
    invoke-virtual {p2}, Lcom/motorola/messaging/pdu/SendReq;->getTransactionId()[B

    move-result-object v0

    .line 984
    if-eqz v0, :cond_9

    .line 985
    const-string v1, "tr_id"

    invoke-static {v0}, Lcom/motorola/messaging/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    :cond_9
    invoke-virtual {p2}, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;->getSubject()Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v0

    .line 989
    if-eqz v0, :cond_d

    .line 990
    const-string v1, "sub"

    invoke-virtual {v0}, Lcom/motorola/messaging/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/messaging/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    const-string v1, "sub_cs"

    invoke-virtual {v0}, Lcom/motorola/messaging/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 996
    :goto_1
    invoke-virtual {p2}, Lcom/motorola/messaging/pdu/SendReq;->getMessageSize()J

    move-result-wide v0

    .line 997
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-lez v2, :cond_a

    .line 998
    const-string v2, "m_size"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1001
    :cond_a
    invoke-virtual {p2}, Lcom/motorola/messaging/pdu/GenericPdu;->getPduHeaders()Lcom/motorola/messaging/pdu/PduHeaders;

    move-result-object v4

    .line 1002
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1003
    sget-object v6, Lcom/motorola/messaging/pdu/PduPersister;->ADDRESS_FIELDS:[I

    array-length v7, v6

    const/4 v0, 0x0

    move v2, v0

    :goto_2
    if-ge v2, v7, :cond_10

    aget v8, v6, v2

    .line 1004
    const/4 v0, 0x0

    .line 1005
    const/16 v1, 0x89

    if-ne v8, v1, :cond_e

    .line 1006
    invoke-virtual {v4, v8}, Lcom/motorola/messaging/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v1

    .line 1007
    if-eqz v1, :cond_b

    .line 1008
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/motorola/messaging/pdu/EncodedStringValue;

    .line 1009
    const/4 v9, 0x0

    aput-object v1, v0, v9

    :cond_b
    move-object v1, v0

    .line 1015
    :goto_3
    if-eqz v1, :cond_f

    .line 1016
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    .line 1017
    invoke-direct {p0, v9, v10, v8, v1}, Lcom/motorola/messaging/pdu/PduPersister;->updateAddress(JI[Lcom/motorola/messaging/pdu/EncodedStringValue;)V

    .line 1018
    const/16 v0, 0x97

    if-ne v8, v0, :cond_f

    .line 1019
    array-length v8, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v8, :cond_f

    aget-object v9, v1, v0

    .line 1020
    if-eqz v9, :cond_c

    .line 1021
    invoke-virtual {v9}, Lcom/motorola/messaging/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1019
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 939
    :catch_0
    move-exception v0

    .line 940
    :try_start_3
    const-string v2, "PduPersister"

    const-string v3, "updateHeaders: "

    invoke-static {v2, v3, v0}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 943
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 993
    :cond_d
    const-string v0, "sub"

    const-string v1, ""

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1012
    :cond_e
    invoke-virtual {v4, v8}, Lcom/motorola/messaging/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v0

    move-object v1, v0

    goto :goto_3

    .line 1003
    :cond_f
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 1029
    :cond_10
    if-eqz p3, :cond_12

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1030
    const/4 v0, 0x1

    invoke-static {v0, p3}, Lcom/motorola/messaging/conversation/ConversationManager;->getOrCreateThreadId(ZLjava/util/Set;)J

    move-result-wide v0

    .line 1031
    const-string v2, "thread_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1038
    :cond_11
    :goto_5
    iget-object v0, p0, Lcom/motorola/messaging/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/messaging/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/motorola/messaging/provider/SqliteManager;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1039
    return-void

    .line 1033
    :cond_12
    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1034
    const/4 v0, 0x1

    invoke-static {v0, v5}, Lcom/motorola/messaging/conversation/ConversationManager;->getOrCreateThreadId(ZLjava/util/Set;)J

    move-result-wide v0

    .line 1035
    const-string v2, "thread_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_5
.end method

.method public updateParts(Landroid/net/Uri;Lcom/motorola/messaging/pdu/PduBody;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 1106
    :try_start_0
    sget-object v3, Lcom/motorola/messaging/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/motorola/messaging/pdu/util/PduCache;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1107
    :try_start_1
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/motorola/messaging/pdu/util/PduCache;

    invoke-virtual {v0, p1}, Lcom/motorola/messaging/pdu/util/PduCache;->isUpdating(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1108
    sget-boolean v0, Lcom/motorola/messaging/pdu/PduPersister;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1109
    const-string v0, "PduPersister"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " blocked by isUpdating()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1112
    :cond_0
    :try_start_2
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/motorola/messaging/pdu/util/PduCache;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1116
    :goto_0
    :try_start_3
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/motorola/messaging/pdu/util/PduCache;

    invoke-virtual {v0, p1}, Lcom/motorola/messaging/pdu/util/AbstractCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/pdu/util/PduCacheEntry;

    .line 1117
    if-eqz v0, :cond_1

    .line 1118
    invoke-virtual {v0}, Lcom/motorola/messaging/pdu/util/PduCacheEntry;->getPdu()Lcom/motorola/messaging/pdu/GenericPdu;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;

    invoke-virtual {v0, p2}, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;->setBody(Lcom/motorola/messaging/pdu/PduBody;)V

    .line 1123
    :cond_1
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/motorola/messaging/pdu/util/PduCache;

    const/4 v4, 0x1

    invoke-virtual {v0, p1, v4}, Lcom/motorola/messaging/pdu/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 1124
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1126
    :try_start_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1127
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1129
    invoke-virtual {p2}, Lcom/motorola/messaging/pdu/PduBody;->getPartsNum()I

    move-result v5

    .line 1130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    move v0, v2

    .line 1131
    :goto_1
    if-ge v0, v5, :cond_5

    .line 1132
    invoke-virtual {p2, v0}, Lcom/motorola/messaging/pdu/PduBody;->getPart(I)Lcom/motorola/messaging/pdu/PduPart;

    move-result-object v2

    .line 1133
    invoke-virtual {v2}, Lcom/motorola/messaging/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v7

    .line 1134
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    const-string v9, "mms"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1135
    :cond_2
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1131
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1113
    :catch_0
    move-exception v0

    .line 1114
    :try_start_5
    const-string v4, "PduPersister"

    const-string v5, "updateParts: "

    invoke-static {v4, v5, v0}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1124
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1169
    :catchall_1
    move-exception v0

    sget-object v1, Lcom/motorola/messaging/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/motorola/messaging/pdu/util/PduCache;

    monitor-enter v1

    .line 1170
    :try_start_7
    sget-object v2, Lcom/motorola/messaging/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/motorola/messaging/pdu/util/PduCache;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/motorola/messaging/pdu/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 1171
    sget-object v2, Lcom/motorola/messaging/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/motorola/messaging/pdu/util/PduCache;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1172
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1169
    throw v0

    .line 1137
    :cond_3
    :try_start_8
    invoke-virtual {v4, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-le v2, v10, :cond_4

    .line 1142
    const-string v2, " AND "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1145
    :cond_4
    const-string v2, "_id"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1146
    const-string v2, "!="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1147
    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_2

    .line 1150
    :cond_5
    const/16 v0, 0x29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1152
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 1155
    iget-object v2, p0, Lcom/motorola/messaging/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/motorola/messaging/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/motorola/messaging/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "/"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "/part"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v10, 0x2

    if-le v0, v10, :cond_6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    const/4 v1, 0x0

    invoke-static {v2, v5, v9, v0, v1}, Lcom/motorola/messaging/provider/SqliteManager;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1160
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/pdu/PduPart;

    .line 1161
    invoke-virtual {p0, v0, v7, v8}, Lcom/motorola/messaging/pdu/PduPersister;->persistPart(Lcom/motorola/messaging/pdu/PduPart;J)Landroid/net/Uri;

    goto :goto_4

    :cond_6
    move-object v0, v1

    .line 1155
    goto :goto_3

    .line 1165
    :cond_7
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1166
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/pdu/PduPart;

    invoke-direct {p0, v1, v0}, Lcom/motorola/messaging/pdu/PduPersister;->updatePart(Landroid/net/Uri;Lcom/motorola/messaging/pdu/PduPart;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_5

    .line 1169
    :cond_8
    sget-object v1, Lcom/motorola/messaging/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/motorola/messaging/pdu/util/PduCache;

    monitor-enter v1

    .line 1170
    :try_start_9
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/motorola/messaging/pdu/util/PduCache;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/motorola/messaging/pdu/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 1171
    sget-object v0, Lcom/motorola/messaging/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/motorola/messaging/pdu/util/PduCache;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1172
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1174
    return-void

    .line 1172
    :catchall_2
    move-exception v0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v0
.end method
