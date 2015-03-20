.class public interface abstract Lcom/motorola/blur/provider/Email$NodeFlags;
.super Ljava/lang/Object;
.source "Email.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/provider/Email;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NodeFlags"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/provider/Email$NodeFlags$SyncAmount;
    }
.end annotation


# static fields
.field public static final CAN_DOWNLOAD:I = 0x200

.field public static final FETCH_OUT_OF_SYNC:I = 0x10

.field public static final FOLDER_SYNC_AMOUNT_MASK:I = 0x1c0000

.field public static final FOLDER_SYNC_AMOUNT_SHIFT:I = 0x12

.field public static final FOLDER_SYNC_AMOUNT_WIDTH:I = 0x3

.field public static final FOLDER_SYNC_BKG:I = 0x200000

.field public static final FOLDER_SYNC_BKG_SHIFT:I = 0x15

.field public static final HAS_ATTACHMENT:I = 0x100

.field public static final HAS_UNLOADED_MIME_CONTENT:I = 0x2000

.field public static final HAS_UNLOADED_TEXT_BODY:I = 0x4000

.field public static final MESSAGE_CLASS_COUNT:I = 0xb

.field public static final MESSAGE_CLASS_MASK:I = 0xf000000

.field public static final MESSAGE_CLASS_MEETING_ACCEPTED:I = 0x7

.field public static final MESSAGE_CLASS_MEETING_CANCELED:I = 0x6

.field public static final MESSAGE_CLASS_MEETING_DECLINED:I = 0x9

.field public static final MESSAGE_CLASS_MEETING_REQUEST:I = 0x5

.field public static final MESSAGE_CLASS_MEETING_TENATIVE:I = 0x8

.field public static final MESSAGE_CLASS_MESSAGE:I = 0x1

.field public static final MESSAGE_CLASS_NONE:I = 0x0

.field public static final MESSAGE_CLASS_OUT_OF_OFFICE:I = 0x2

.field public static final MESSAGE_CLASS_POST:I = 0xa

.field public static final MESSAGE_CLASS_SHIFT:I = 0x18

.field public static final MESSAGE_CLASS_SMIME:I = 0x3

.field public static final MESSAGE_CLASS_SMIME_SIGNED:I = 0x4

.field public static final MORE:I = 0x10000

.field public static final MSG_NEWLY_RECEIVED:I = 0x400

.field public static final MSG_VIEWED:I = 0x8000

.field public static final NO_PREVIEW:I = 0x800

.field public static final NO_TEXT_PREVIEW:I = 0x1000

.field public static final ONHOLD:I = 0x80

.field public static final SELECTABLE:I = 0x20000

.field public static final SMART_FORWARD:I = 0x40

.field public static final VISIBLE:I = 0x2
