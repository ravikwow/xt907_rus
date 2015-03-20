.class public Lcom/motorola/messaging/frameworkadapter/motorola/Ils;
.super Ljava/lang/Object;
.source "Ils.java"


# static fields
.field public static ADDRESS:Ljava/lang/String;

.field public static DESCRIPTION:Ljava/lang/String;

.field public static FAVORITE_CONTENT_URI:Landroid/net/Uri;

.field public static LAT:Ljava/lang/String;

.field public static LON:Ljava/lang/String;

.field public static NAME:Ljava/lang/String;

.field public static PHONE_NUMBER:Ljava/lang/String;

.field public static URL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "name"

    sput-object v0, Lcom/motorola/messaging/frameworkadapter/motorola/Ils;->NAME:Ljava/lang/String;

    .line 14
    const-string v0, "description"

    sput-object v0, Lcom/motorola/messaging/frameworkadapter/motorola/Ils;->DESCRIPTION:Ljava/lang/String;

    .line 15
    const-string v0, "lat"

    sput-object v0, Lcom/motorola/messaging/frameworkadapter/motorola/Ils;->LAT:Ljava/lang/String;

    .line 16
    const-string v0, "lon"

    sput-object v0, Lcom/motorola/messaging/frameworkadapter/motorola/Ils;->LON:Ljava/lang/String;

    .line 17
    const-string v0, "url"

    sput-object v0, Lcom/motorola/messaging/frameworkadapter/motorola/Ils;->URL:Ljava/lang/String;

    .line 18
    const-string v0, "address"

    sput-object v0, Lcom/motorola/messaging/frameworkadapter/motorola/Ils;->ADDRESS:Ljava/lang/String;

    .line 19
    const-string v0, "phone_number"

    sput-object v0, Lcom/motorola/messaging/frameworkadapter/motorola/Ils;->PHONE_NUMBER:Ljava/lang/String;

    .line 21
    const-string v0, "content://com.motorola.contextual.location.ils.FavoritesProvider/favorites"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/frameworkadapter/motorola/Ils;->FAVORITE_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
