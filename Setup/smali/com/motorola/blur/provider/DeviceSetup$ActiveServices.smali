.class public final Lcom/motorola/blur/provider/DeviceSetup$ActiveServices;
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
    name = "ActiveServices"
.end annotation


# static fields
.field public static final ACCOUNT:Ljava/lang/String; = "account"

.field public static final ACCOUNT_ID:Ljava/lang/String; = "account"

.field public static final BLUR_ACCOUNT_ID:I = -0x1

.field public static final BY_ACCOUNT_CONTENT_URI:Landroid/net/Uri;

.field public static final BY_ACCOUNT_POLICY_CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "Modified DESC"

.field public static final ERROR:Ljava/lang/String; = "error"

.field public static final ERROR_BAD_CREDS:I = 0x1

.field public static final ERROR_MOVED:I = 0x2

.field public static final ERROR_NONE:I = 0x0

.field public static final MAX_SIZE:Ljava/lang/String; = "max_size"

.field public static final PASSWORD:Ljava/lang/String; = "password"

.field public static final PASSWORD_NOSYNC:Ljava/lang/String; = "password_nosync"

.field public static final POLLING_INTERVAL:Ljava/lang/String; = "polling_interval"

.field public static final RETENTION_POLICY:Ljava/lang/String; = "retention_policy"

.field public static final SECURITY_POLICY:Ljava/lang/String; = "security_policy"

.field public static final SERVICE_ID:Ljava/lang/String; = "service_id"

.field public static final TABLE_COLUMNS_INFO:Ljava/lang/String; = "service_id integer, error text, account integer, username text, password text, max_size integer, polling_interval integer, retention_policy integer, verify_ca integer, security_policy integer, password_nosync integer);"

.field public static final TABLE_NAME:Ljava/lang/String; = "active_services"

.field public static final USERNAME:Ljava/lang/String; = "username"

.field public static final VALIDATION_NOT_REQUIRED:I = 0x0

.field public static final VALIDATION_REQUIRED:I = 0x1

.field public static final VERIFY_CA:Ljava/lang/String; = "verify_ca"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 782
    sget-object v0, Lcom/motorola/blur/provider/DeviceSetup;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "activeservices"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/DeviceSetup$ActiveServices;->CONTENT_URI:Landroid/net/Uri;

    .line 784
    sget-object v0, Lcom/motorola/blur/provider/DeviceSetup$ActiveServices;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "accounts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/DeviceSetup$ActiveServices;->BY_ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    .line 787
    sget-object v0, Lcom/motorola/blur/provider/DeviceSetup$ActiveServices;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "policy/accounts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/DeviceSetup$ActiveServices;->BY_ACCOUNT_POLICY_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasCapability(Landroid/content/ContentResolver;I)Z
    .locals 10
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "capability"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 944
    const/4 v7, 0x0

    .line 945
    .local v7, "hasIt":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "capability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 946
    .local v3, "whereStatus":Ljava/lang/String;
    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$ActiveServices;->BY_ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "capability"

    aput-object v0, v2, v9

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 948
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 949
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    move v7, v8

    .line 950
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 952
    :cond_0
    return v7

    :cond_1
    move v7, v9

    .line 949
    goto :goto_0
.end method
