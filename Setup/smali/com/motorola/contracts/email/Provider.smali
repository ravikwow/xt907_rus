.class public Lcom/motorola/contracts/email/Provider;
.super Ljava/lang/Object;
.source "Provider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/contracts/email/Provider$Message;,
        Lcom/motorola/contracts/email/Provider$Mailbox;,
        Lcom/motorola/contracts/email/Provider$MessageColumns;,
        Lcom/motorola/contracts/email/Provider$MailboxColumns;,
        Lcom/motorola/contracts/email/Provider$AccountColumns;,
        Lcom/motorola/contracts/email/Provider$Account;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.android.email.provider"

.field public static final EMAIL_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "content://com.android.email.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/contracts/email/Provider;->EMAIL_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
