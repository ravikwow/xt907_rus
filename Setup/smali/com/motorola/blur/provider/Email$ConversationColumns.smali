.class public interface abstract Lcom/motorola/blur/provider/Email$ConversationColumns;
.super Ljava/lang/Object;
.source "Email.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/provider/Email;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConversationColumns"
.end annotation


# static fields
.field public static final BASE_SUBJECT:Ljava/lang/String; = "base_subject"

.field public static final BASE_SUBJECT_HASH:Ljava/lang/String; = "base_subject_hash"

.field public static final MESSAGE_PROJECTION:[Ljava/lang/String;

.field public static final UNREAD:Ljava/lang/String; = "unread"

.field public static final _MESSAGE_COLUMN_PREFIX:Ljava/lang/String; = "m_"

.field public static final _MESSAGE_COUNT:Ljava/lang/String; = "message_count"

.field public static final _RECENT_MESSAGE_PARENT_ID:Ljava/lang/String; = "recent_parent_id"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 524
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_from"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_to"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "cc"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date_received"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "preview"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "priority"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/provider/Email$ConversationColumns;->MESSAGE_PROJECTION:[Ljava/lang/String;

    return-void
.end method
