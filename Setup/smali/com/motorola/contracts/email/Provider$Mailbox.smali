.class public final Lcom/motorola/contracts/email/Provider$Mailbox;
.super Ljava/lang/Object;
.source "Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/contracts/email/Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mailbox"
.end annotation


# static fields
.field public static final ACCOUNT_AND_MAILBOX_TYPE_SELECTION:Ljava/lang/String; = "accountKey =? AND type =?"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final MAILBOX_SUM_OF_UNREAD_COUNT_PROJECTION:[Ljava/lang/String;

.field public static final MAILBOX_TYPE_SELECTION:Ljava/lang/String; = "type =?"

.field public static final NO_MAILBOX:J = -0x1L

.field public static final TABLE_NAME:Ljava/lang/String; = "Mailbox"

.field public static final TYPE_INBOX:I

.field public static final UNREAD_COUNT_COUNT_COLUMN:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/motorola/contracts/email/Provider;->EMAIL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mailbox"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/contracts/email/Provider$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    .line 138
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "sum(unreadCount)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/contracts/email/Provider$Mailbox;->MAILBOX_SUM_OF_UNREAD_COUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
