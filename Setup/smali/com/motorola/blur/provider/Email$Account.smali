.class public interface abstract Lcom/motorola/blur/provider/Email$Account;
.super Ljava/lang/Object;
.source "Email.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/provider/Email;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Account"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/provider/Email$Account$Capability;,
        Lcom/motorola/blur/provider/Email$Account$Protocol;,
        Lcom/motorola/blur/provider/Email$Account$Intent;,
        Lcom/motorola/blur/provider/Email$Account$DataPushValues;,
        Lcom/motorola/blur/provider/Email$Account$AuthType;,
        Lcom/motorola/blur/provider/Email$Account$SecurityPolicy;
    }
.end annotation


# static fields
.field public static final ACCOUNT_ID:Ljava/lang/String; = "account"

.field public static final ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field public static final ACCOUNT_PRETTY_NAME:Ljava/lang/String; = "account_pretty_name"

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "account_type"

.field public static final AUTHORITY:Ljava/lang/String; = "com.motorola.blur.service.email.Account"

.field public static final AUTH_TYPE:Ljava/lang/String; = "auth_type"

.field public static final AUTO_DOWNLOAD_ON_WIFI:Ljava/lang/String; = "download_on_wifi"

.field public static final AUTO_DOWNLOAD_WHEN_CHARGING:Ljava/lang/String; = "download_when_charging"

.field public static final CAPABILITIES:Ljava/lang/String; = "capabilities"

.field public static final CERT_DIR_PREFIX:Ljava/lang/String; = "acct_"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA_PUSH:Ljava/lang/String; = "data_push"

.field public static final DELETE_ON_SERVER:Ljava/lang/String; = "del_on_server"

.field public static final EMAIL_ADDRESS:Ljava/lang/String; = "email_address"

.field public static final EMAIL_ALIAS:Ljava/lang/String; = "alias"

.field public static final ENABLED:Ljava/lang/String; = "enabled"

.field public static final ERROR:Ljava/lang/String; = "error"

.field public static final FILENAME_KEY:Ljava/lang/String; = "name"

.field public static final FILE_CONTENT_URI:Landroid/net/Uri;

.field public static final IDX_ACCOUNT_ID:I = 0x0

.field public static final IDX_ACCOUNT_NAME:I = 0x1

.field public static final IDX_ACCOUNT_PRETTY_NAME:I = 0xf

.field public static final IDX_ACCOUNT_TYPE:I = 0x2

.field public static final IDX_AUTH_TYPE:I = 0x3

.field public static final IDX_AUTO_DOWNLOAD_ON_WIFI:I = 0xc

.field public static final IDX_AUTO_DOWNLOAD_WHEN_CHARGING:I = 0xd

.field public static final IDX_CAPABILITIES:I = 0x6

.field public static final IDX_DATA_PUSH:I = 0xb

.field public static final IDX_EMAIL_ADDRESS:I = 0x4

.field public static final IDX_ENABLED:I = 0x7

.field public static final IDX_ERROR:I = 0x8

.field public static final IDX_NOTIFICATION:I = 0x8

.field public static final IDX_PASSWORD:I = 0x6

.field public static final IDX_PROTOCOL:I = 0x3

.field public static final IDX_PROTOCOL_SETTINGS:I = 0x7

.field public static final IDX_PROVIDER:I = 0xe

.field public static final IDX_RETENTION_POLICY:I = 0xa

.field public static final IDX_RINGTONE:I = 0x9

.field public static final IDX_SECURE:I = 0x2

.field public static final IDX_SECURITY_POLICY:I = 0x4

.field public static final IDX_SERVER_ADDRESS:I = 0x0

.field public static final IDX_SERVER_PORT:I = 0x1

.field public static final IDX_USERNAME:I = 0x5

.field public static final IDX_USER_REAL_NAME:I = 0x5

.field public static final IDX_VERIFY_CA:I = 0x9

.field public static final IDX_VIBRATE:I = 0xa

.field public static final INCOMING_SERVER:Ljava/lang/String; = "in.server"

.field public static final IN_CONTENT_URI:Landroid/net/Uri;

.field public static final NOTIFICATION:Ljava/lang/String; = "notification"

.field public static final OUTGOING_SERVER:Ljava/lang/String; = "out.server"

.field public static final OUT_CONTENT_URI:Landroid/net/Uri;

.field public static final PASSWORD:Ljava/lang/String; = "password"

.field public static final PROJECTION_ACCOUNT:[Ljava/lang/String;

.field public static final PROJECTION_SERVER:[Ljava/lang/String;

.field public static final PROTOCOL:Ljava/lang/String; = "protocol"

.field public static final PROTOCOL_SETTINGS:Ljava/lang/String; = "protocol_settings"

.field public static final PROVIDER:Ljava/lang/String; = "provider"

.field public static final PROXY_HOST:Ljava/lang/String; = "proxy_host"

.field public static final PROXY_PASSWD:Ljava/lang/String; = "proxy_pass"

.field public static final PROXY_PORT:Ljava/lang/String; = "proxy_port"

.field public static final PROXY_USER:Ljava/lang/String; = "proxy_user"

.field public static final REFRESH_URI:Landroid/net/Uri;

.field public static final RETENTION_POLICY:Ljava/lang/String; = "retention_policy"

.field public static final RINGTONE:Ljava/lang/String; = "ringtone"

.field public static final ROOT_PATH:Ljava/lang/String; = "root_path"

.field public static final SECURE:Ljava/lang/String; = "secure"

.field public static final SECURITY_POLICY:Ljava/lang/String; = "security_policy"

.field public static final SERVER:Ljava/lang/String; = "server"

.field public static final SERVER_ADDRESS:Ljava/lang/String; = "server_address"

.field public static final SERVER_PORT:Ljava/lang/String; = "server_port"

.field public static final SETTINGS:Ljava/lang/String; = "settings"

.field public static final USERNAME:Ljava/lang/String; = "username"

.field public static final USER_REAL_NAME:Ljava/lang/String; = "user_real_name"

.field public static final VERIFY_CA:Ljava/lang/String; = "verify_ca"

.field public static final VIBRATE:Ljava/lang/String; = "vibrate"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1391
    const-string v0, "content://com.motorola.blur.service.email.Account/accounts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/Email$Account;->CONTENT_URI:Landroid/net/Uri;

    .line 1392
    const-string v0, "content://com.motorola.blur.service.email.Account/accounts/in"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/Email$Account;->IN_CONTENT_URI:Landroid/net/Uri;

    .line 1393
    const-string v0, "content://com.motorola.blur.service.email.Account/accounts/out"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/Email$Account;->OUT_CONTENT_URI:Landroid/net/Uri;

    .line 1394
    const-string v0, "content://com.motorola.blur.service.email.Account/accounts/files"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/Email$Account;->FILE_CONTENT_URI:Landroid/net/Uri;

    .line 1395
    const-string v0, "content://com.motorola.blur.service.email.Account/accounts/refresh"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/Email$Account;->REFRESH_URI:Landroid/net/Uri;

    .line 1445
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "account"

    aput-object v1, v0, v3

    const-string v1, "account_name"

    aput-object v1, v0, v4

    const-string v1, "account_type"

    aput-object v1, v0, v5

    const-string v1, "protocol"

    aput-object v1, v0, v6

    const-string v1, "email_address"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "user_real_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "capabilities"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "notification"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ringtone"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "vibrate"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "data_push"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "download_on_wifi"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "download_when_charging"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "provider"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "account_pretty_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/provider/Email$Account;->PROJECTION_ACCOUNT:[Ljava/lang/String;

    .line 1484
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "server_address"

    aput-object v1, v0, v3

    const-string v1, "server_port"

    aput-object v1, v0, v4

    const-string v1, "secure"

    aput-object v1, v0, v5

    const-string v1, "auth_type"

    aput-object v1, v0, v6

    const-string v1, "security_policy"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "username"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "password"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "protocol_settings"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "error"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "verify_ca"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "retention_policy"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/provider/Email$Account;->PROJECTION_SERVER:[Ljava/lang/String;

    return-void
.end method
