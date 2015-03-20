.class public final Lcom/motorola/blur/provider/DeviceSetup$Services;
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
    name = "Services"
.end annotation


# static fields
.field public static final AUTHENTICATION_TYPE:Ljava/lang/String; = "auth_type"

.field public static final CAPABILITY:Ljava/lang/String; = "capability"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.service.settings"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.service.settings"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "Modified DESC"

.field public static final EMAIL_PATTERN:Ljava/lang/String; = "email_pattern"

.field public static final IMAGE_PATH:Ljava/lang/String; = "path"

.field public static final LOGIN_REPLACEMENT:Ljava/lang/String; = "login_replacement"

.field public static final PRETTY_NAME:Ljava/lang/String; = "pretty_name"

.field public static final PROVIDERS_ID:Ljava/lang/String; = "providers_id"

.field public static final PROVIDER_SERVICES_PATH:Ljava/lang/String; = "services_by_provider"

.field public static final PROVIDER_SERVICES_URI:Landroid/net/Uri;

.field public static final SECURE:Ljava/lang/String; = "secure"

.field public static final SERVER_ADDRESS:Ljava/lang/String; = "server_address"

.field public static final SERVER_PORT:Ljava/lang/String; = "server_port"

.field public static final SETTINGS:Ljava/lang/String; = "settings"

.field public static final TABLE_COLUMNS_INFO:Ljava/lang/String; = "providers_id integer, capability integer, server_address text, server_port integer, secure integer, path text,pretty_name text, auth_type integer, settings text, email_pattern text, login_replacement text);"

.field public static final TABLE_NAME:Ljava/lang/String; = "services"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 671
    sget-object v0, Lcom/motorola/blur/provider/DeviceSetup;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "services"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/DeviceSetup$Services;->CONTENT_URI:Landroid/net/Uri;

    .line 677
    sget-object v0, Lcom/motorola/blur/provider/DeviceSetup;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "services_by_provider"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/DeviceSetup$Services;->PROVIDER_SERVICES_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
