.class public Lcom/motorola/messaging/provider/MessageProjection;
.super Ljava/lang/Object;
.source "MessageProjection.java"


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "transport_type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "date_sent"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "priority"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "stack_type"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "error_code"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "failure_cause"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "callback_number"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "d_rpt"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "rr"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "err_type"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "resp_st"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "image_resize_status"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/messaging/provider/MessageProjection;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
