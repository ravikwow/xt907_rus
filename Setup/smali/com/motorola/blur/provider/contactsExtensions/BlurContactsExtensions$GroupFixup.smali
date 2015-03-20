.class public final Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$GroupFixup;
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
    name = "GroupFixup"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/blur_contact_extension_group_fixup"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/blur_contact_extension_group_fixup"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DELETED:Ljava/lang/String; = "deleted"

.field public static final GROUP_EMAIL:Ljava/lang/String; = "group_email"

.field public static final GROUP_ID:Ljava/lang/String; = "group_id"

.field public static final GROUP_NAME:Ljava/lang/String; = "group_name"

.field public static final GROUP_PHONE:Ljava/lang/String; = "group_phone"

.field public static final GROUP_SERVICE:Ljava/lang/String; = "group_service"

.field public static final NEED_FIXUP:Ljava/lang/String; = "need_fixup"

.field public static final SELECT_EMAIL:Ljava/lang/String; = "select_email"

.field public static final SELECT_PHONE:Ljava/lang/String; = "select_phone"

.field public static final SERVICE_ID:Ljava/lang/String; = "service_id"

.field public static final SERVICE_NAME:Ljava/lang/String; = "service_name"

.field public static final TABLE_NAME:Ljava/lang/String; = "blur_group_fixup"

.field public static final sIndexGroupEmail:I = 0x6

.field public static final sIndexGroupName:I = 0x2

.field public static final sIndexGroupPhone:I = 0x5

.field public static final sIndexGroupService:I = 0x1

.field public static final sIndexId:I = 0x0

.field public static final sIndexNeedFixup:I = 0x9

.field public static final sIndexSelectEmail:I = 0x8

.field public static final sIndexSelectPhone:I = 0x7

.field public static final sIndexServiceId:I = 0x4

.field public static final sIndexServiceName:I = 0x3

.field public static final sProjection:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 278
    const-string v0, "content://com.motorola.blur.contacts.extensions/blur_group_fixup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$GroupFixup;->CONTENT_URI:Landroid/net/Uri;

    .line 303
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "group_service"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "group_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "service_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "service_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "group_phone"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "group_email"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "select_phone"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "select_email"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "need_fixup"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$GroupFixup;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    return-void
.end method
