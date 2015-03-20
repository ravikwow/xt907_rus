.class public final Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$VisibilityOverridden_Contacts;
.super Ljava/lang/Object;
.source "BlurContactsExtensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VisibilityOverridden_Contacts"
.end annotation


# static fields
.field public static final CONTACT_ID:Ljava/lang/String; = "contact_id"

.field public static final GET_CONTACT_IDS_HAVING_ONLY_GOOGLE_RAWCONTACTS_WITHOUT_GROUPMEMBERSHIP_QUERY_CONTENT_URI:Landroid/net/Uri;

.field public static final GET_VISIBLE_FLAGS_FOR_CONTACTS_QUERY_CONTENT_URI:Landroid/net/Uri;

.field public static final SET_VISIBILITY_FLAG_CONTENT_URI:Landroid/net/Uri;

.field public static final TABLE_NAME:Ljava/lang/String; = "VisibilityOverridden_Contacts"

.field public static final UPDATE_INVISIBLEGROUP_IN_CONTACTSTABLE_CONTENT_URI:Landroid/net/Uri;

.field public static final UPDATE_INVISIBLEGROUP_IN_RAWCONTACTSTABLE_CONTENT_URI:Landroid/net/Uri;

.field public static final UPDATE_VISIBLE_FLAG_FOR_MULTIPLE_CONTACTS_CONTENT_URI:Landroid/net/Uri;

.field public static final UPDATE_VISIBLE_FLAG_FOR_ONE_CONTACT_CONTENT_URI:Landroid/net/Uri;

.field public static final VISIBILITY:Ljava/lang/String; = "visibility"

.field public static final VISIBILITYOVERRIDDEN_CONTACTS_DELETE_CONTENT_URI:Landroid/net/Uri;

.field public static final WANT_TO_HIDE:Ljava/lang/String; = "want_to_hide"

.field public static final WHERE_CONTACTLIST:Ljava/lang/String; = "contact_id IN "

.field public static final sProjection:[Ljava/lang/String;

.field public static final sProjection_ContactId:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1586
    const-string v0, "content://com.motorola.blur.contacts.extensions/set_visibility_flag"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$VisibilityOverridden_Contacts;->SET_VISIBILITY_FLAG_CONTENT_URI:Landroid/net/Uri;

    .line 1589
    const-string v0, "content://com.motorola.blur.contacts.extensions/update_invisiblegroup_in_contactstable"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$VisibilityOverridden_Contacts;->UPDATE_INVISIBLEGROUP_IN_CONTACTSTABLE_CONTENT_URI:Landroid/net/Uri;

    .line 1592
    const-string v0, "content://com.motorola.blur.contacts.extensions/update_invisiblegroup_in_rawcontactstable"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$VisibilityOverridden_Contacts;->UPDATE_INVISIBLEGROUP_IN_RAWCONTACTSTABLE_CONTENT_URI:Landroid/net/Uri;

    .line 1595
    const-string v0, "content://com.motorola.blur.contacts.extensions/update_visible_flag_for_one_contact"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$VisibilityOverridden_Contacts;->UPDATE_VISIBLE_FLAG_FOR_ONE_CONTACT_CONTENT_URI:Landroid/net/Uri;

    .line 1598
    const-string v0, "content://com.motorola.blur.contacts.extensions/update_visible_flag_for_multiple_contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$VisibilityOverridden_Contacts;->UPDATE_VISIBLE_FLAG_FOR_MULTIPLE_CONTACTS_CONTENT_URI:Landroid/net/Uri;

    .line 1601
    const-string v0, "content://com.motorola.blur.contacts.extensions/get_visible_flags_for_contacts_query"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$VisibilityOverridden_Contacts;->GET_VISIBLE_FLAGS_FOR_CONTACTS_QUERY_CONTENT_URI:Landroid/net/Uri;

    .line 1604
    const-string v0, "content://com.motorola.blur.contacts.extensions/visibilityoverridden_contacts_delete"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$VisibilityOverridden_Contacts;->VISIBILITYOVERRIDDEN_CONTACTS_DELETE_CONTENT_URI:Landroid/net/Uri;

    .line 1607
    const-string v0, "content://com.motorola.blur.contacts.extensions/get_contact_ids_having_only_google_rawcontacts_without_groupmembership_query"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$VisibilityOverridden_Contacts;->GET_CONTACT_IDS_HAVING_ONLY_GOOGLE_RAWCONTACTS_WITHOUT_GROUPMEMBERSHIP_QUERY_CONTENT_URI:Landroid/net/Uri;

    .line 1615
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "visibility"

    aput-object v1, v0, v2

    sput-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$VisibilityOverridden_Contacts;->sProjection:[Ljava/lang/String;

    .line 1618
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$VisibilityOverridden_Contacts;->sProjection_ContactId:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1582
    return-void
.end method
