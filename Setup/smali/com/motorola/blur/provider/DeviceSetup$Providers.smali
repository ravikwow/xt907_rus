.class public final Lcom/motorola/blur/provider/DeviceSetup$Providers;
.super Ljava/lang/Object;
.source "DeviceSetup.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/provider/DeviceSetup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Providers"
.end annotation


# static fields
.field public static final CONTENT_FILE_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "Modified DESC"

.field public static final FALLBACK_URL:Ljava/lang/String; = "fallback_url"

.field public static final IMAGE_PATH:Ljava/lang/String; = "path"

.field public static final LOGIN_LABEL:Ljava/lang/String; = "login_label"

.field public static final MULTIPLE_ACCOUNTS:Ljava/lang/String; = "multiple_accounts"

.field public static final PRETTY_NAME:Ljava/lang/String; = "pretty_name"

.field public static final PROVIDER:Ljava/lang/String; = "provider"

.field public static final PROVIDER_ACTIVESYNC:Ljava/lang/String; = "activesync"

.field public static final PROVIDER_BLUR:Ljava/lang/String; = "blur"

.field public static final PROVIDER_EMAIL:Ljava/lang/String; = "email"

.field public static final PROVIDER_FACEBOOK:Ljava/lang/String; = "facebook"

.field public static final PROVIDER_FIXEDEMAIL:Ljava/lang/String; = "fixedemail"

.field public static final PROVIDER_FLICKR:Ljava/lang/String; = "flickr"

.field public static final PROVIDER_GOOGLE:Ljava/lang/String; = "google"

.field public static final PROVIDER_LASTFM:Ljava/lang/String; = "lastfm"

.field public static final PROVIDER_PHOTOBUCKET:Ljava/lang/String; = "photobucket"

.field public static final PROVIDER_PICASA:Ljava/lang/String; = "picasa"

.field public static final PROVIDER_URL:Ljava/lang/String; = "provider_url"

.field public static final PROVIDER_YAHOO:Ljava/lang/String; = "yahoo"

.field public static final PROVIDER_YOUTUBE:Ljava/lang/String; = "youtube"

.field public static final PSEUDO_ID_START:J = 0x7f000000L

.field public static final PWD_STORAGE_POLICY:Ljava/lang/String; = "pwd_storage_policy"

.field public static final STORE_CBC_ENCRYPTED:I = 0x3

.field public static final STORE_CBC_ENCRYPTED_NOSYNC:I = 0x4

.field public static final STORE_CLEAR:I = 0x0

.field public static final STORE_DUMMY:I = 0x2

.field public static final STORE_ENCRYPTED:I = 0x1

.field public static final STORE_OAUTH:I = 0x5

.field public static final TABLE_COLUMNS_INFO:Ljava/lang/String; = "provider text not null, pretty_name text, path text, ui_order integer, login_label text, fallback_url text, multiple_accounts integer, provider_url text, pwd_storage_policy integer);"

.field public static final TABLE_NAME:Ljava/lang/String; = "providers"

.field public static final UI_ORDER:Ljava/lang/String; = "ui_order"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 255
    sget-object v0, Lcom/motorola/blur/provider/DeviceSetup;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "providers"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/DeviceSetup$Providers;->CONTENT_URI:Landroid/net/Uri;

    .line 257
    sget-object v0, Lcom/motorola/blur/provider/DeviceSetup;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "files/providers"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/DeviceSetup$Providers;->CONTENT_FILE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
