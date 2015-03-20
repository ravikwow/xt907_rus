.class public final Lcom/motorola/blur/provider/DeviceSetup$Projections$AccountActiveServices;
.super Ljava/lang/Object;
.source "DeviceSetup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/provider/DeviceSetup$Projections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AccountActiveServices"
.end annotation


# static fields
.field public static final ACCOUNT_ID_IDX:I = 0xb

.field public static final ACCOUNT_PRETTY_NAME_IDX:I = 0x10

.field public static final ACTIVE_SERVICE_ID_IDX:I = 0x5

.field public static final ALIASES_IDX:I = 0x17

.field public static final ATTACH_AUTO_DL_WIFI_IDX:I = 0x19

.field public static final AUTHENTICATION_TYPE_IDX:I = 0x12

.field public static final CAPABILITY_IDX:I = 0x8

.field public static final EMAIL_ADDRESS_IDX:I = 0xe

.field public static final ERROR_IDX:I = 0xc

.field public static final MAX_SIZE_IDX:I = 0xd

.field public static final PASSWORD_IDX:I = 0x2

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final PROVIDERS_ID_IDX:I = 0x4

.field public static final PROVIDER_IDX:I = 0x15

.field public static final PROVIDER_PRETTY_NAME_IDX:I = 0x6

.field public static final PWD_POLICY_IDX:I = 0x18

.field public static final RETENTION_POLICY_IDX:I = 0x11

.field public static final SECURE_IDX:I = 0x7

.field public static final SECURITY_POLICY_IDX:I = 0x13

.field public static final SERVER_ADDRESS_IDX:I = 0x3

.field public static final SERVER_PORT_IDX:I = 0x9

.field public static final SERVICE_ID_IDX:I = 0x0

.field public static final SETTINGS_IDX:I = 0xa

.field public static final SYNC_CONNECT_IDX:I = 0x16

.field public static final USERNAME_IDX:I = 0x1

.field public static final USER_PRETTY_NAME_IDX:I = 0xf

.field public static final VERIFY_CA_IDX:I = 0x14


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1484
    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "service_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "username"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "password"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "server_address"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "providers_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "active_services._id AS _id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "providers.pretty_name AS pretty_name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "secure"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "capability"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "server_port"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "settings"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "account"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "error"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "max_size"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "email_address"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "user_pretty_name"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "account_pretty_name"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "retention_policy"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "auth_type"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "security_policy"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "verify_ca"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "provider"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "sync_connection"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "aliases"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "pwd_storage_policy"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "attach_autodl_wifi"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/provider/DeviceSetup$Projections$AccountActiveServices;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
