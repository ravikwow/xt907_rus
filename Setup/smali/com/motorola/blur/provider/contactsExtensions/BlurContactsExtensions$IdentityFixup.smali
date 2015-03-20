.class public final Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$IdentityFixup;
.super Ljava/lang/Object;
.source "BlurContactsExtensions.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$SyncColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IdentityFixup"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/blur_contact_extension_identity_fixup"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/blur_contact_extension_identity_fixup"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DELETED:Ljava/lang/String; = "deleted"

.field public static final MERGE:Ljava/lang/String; = "merge"

.field public static final NEED_FIXUP:Ljava/lang/String; = "need_fixup"

.field public static final SERVICE_ID1:Ljava/lang/String; = "service_id1"

.field public static final SERVICE_ID2:Ljava/lang/String; = "service_id2"

.field public static final SERVICE_NAME1:Ljava/lang/String; = "service_name1"

.field public static final SERVICE_NAME2:Ljava/lang/String; = "service_name2"

.field public static final TABLE_NAME:Ljava/lang/String; = "blur_identity_fixup"

.field public static final sIndexId:I = 0x0

.field public static final sIndexMerge:I = 0x5

.field public static final sIndexNeedFixup:I = 0x6

.field public static final sIndexServiceId1:I = 0x2

.field public static final sIndexServiceId2:I = 0x4

.field public static final sIndexServiceName1:I = 0x1

.field public static final sIndexServiceName2:I = 0x3

.field public static final sProjection:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 220
    const-string v0, "content://com.motorola.blur.contacts.extensions/blur_identity_fixup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$IdentityFixup;->CONTENT_URI:Landroid/net/Uri;

    .line 240
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "service_name1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "service_id1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "service_name2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "service_id2"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "merge"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "need_fixup"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$IdentityFixup;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    return-void
.end method
