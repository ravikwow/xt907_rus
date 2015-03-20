.class public Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$RawContacts;
.super Ljava/lang/Object;
.source "BlurContactsExtensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RawContacts"
.end annotation


# static fields
.field public static final CONCAT_BLUR_ACCOUNTS:Ljava/lang/String; = "concat_blur_accounts"

.field public static final CONCAT_BLUR_SOURCEIDS:Ljava/lang/String; = "concat_blur_source_ids"

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1680
    const-string v0, "content://com.motorola.blur.contacts.extensions/raw_contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1673
    return-void
.end method
