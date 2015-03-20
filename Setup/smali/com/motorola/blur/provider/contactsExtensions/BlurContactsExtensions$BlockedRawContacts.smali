.class public Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$BlockedRawContacts;
.super Ljava/lang/Object;
.source "BlurContactsExtensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlockedRawContacts"
.end annotation


# static fields
.field public static final BLOCKED_RAW_CONTACTS_FOR_ONE_CONTACT_QUERY_CONTENT_URI:Landroid/net/Uri;

.field public static final BLOCKED_RAW_CONTACTS_GET_ALL_QUERY_CONTENT_URI:Landroid/net/Uri;

.field public static final BLOCK_ONE_RAW_CONTACT_DELETE_CONTENT_URI:Landroid/net/Uri;

.field public static final BLOCK_ONE_RAW_CONTACT_INSERT_CONTENT_URI:Landroid/net/Uri;

.field public static final CONTACT_ID:Ljava/lang/String; = "contact_id"

.field public static final RAW_CONTACTS_WITH_FRIENDFEED_FOR_ONE_CONTACT_QUERY_CONTENT_URI:Landroid/net/Uri;

.field public static final RAW_CONTACT_ID:Ljava/lang/String; = "raw_contact_id"

.field public static final RAW_CONTACT_WHETHER_BLOCKED_QUERY_CONTENT_URI:Landroid/net/Uri;

.field public static final TABLE_NAME:Ljava/lang/String; = "blocked_rawcontacts"

.field public static final WHERE_CONTACT:Ljava/lang/String; = "blocked_rawcontacts.raw_contact_id IN (SELECT DISTINCT _id FROM raw_contacts WHERE contact_id =?) "

.field public static final WHERE_RAWCONTACT:Ljava/lang/String; = " raw_contact_id =? "

.field public static final sProjection:[Ljava/lang/String;

.field public static final sRawContactId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1634
    const-string v0, "content://com.motorola.blur.contacts.extensions/block_one_raw_contact_delete"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$BlockedRawContacts;->BLOCK_ONE_RAW_CONTACT_DELETE_CONTENT_URI:Landroid/net/Uri;

    .line 1637
    const-string v0, "content://com.motorola.blur.contacts.extensions/block_one_raw_contact_insert"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$BlockedRawContacts;->BLOCK_ONE_RAW_CONTACT_INSERT_CONTENT_URI:Landroid/net/Uri;

    .line 1640
    const-string v0, "content://com.motorola.blur.contacts.extensions/blocked_raw_contacts_for_one_contact_query"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$BlockedRawContacts;->BLOCKED_RAW_CONTACTS_FOR_ONE_CONTACT_QUERY_CONTENT_URI:Landroid/net/Uri;

    .line 1643
    const-string v0, "content://com.motorola.blur.contacts.extensions/blocked_raw_contacts_get_all_query"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$BlockedRawContacts;->BLOCKED_RAW_CONTACTS_GET_ALL_QUERY_CONTENT_URI:Landroid/net/Uri;

    .line 1646
    const-string v0, "content://com.motorola.blur.contacts.extensions/raw_contacts_with_friendfeed_for_one_contact_query"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$BlockedRawContacts;->RAW_CONTACTS_WITH_FRIENDFEED_FOR_ONE_CONTACT_QUERY_CONTENT_URI:Landroid/net/Uri;

    .line 1650
    const-string v0, "content://com.motorola.blur.contacts.extensions/raw_contact_whether_blocked_query"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$BlockedRawContacts;->RAW_CONTACT_WHETHER_BLOCKED_QUERY_CONTENT_URI:Landroid/net/Uri;

    .line 1656
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$BlockedRawContacts;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1630
    return-void
.end method
