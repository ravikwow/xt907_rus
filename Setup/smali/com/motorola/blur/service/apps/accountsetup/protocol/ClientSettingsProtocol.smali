.class public final Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;
.super Ljava/lang/Object;
.source "ClientSettingsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;,
        Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;,
        Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;,
        Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AccountsChanges;,
        Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;,
        Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;,
        Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services;,
        Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;,
        Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;,
        Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;,
        Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_AccountsChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_AccountsChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Accounts_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_Accounts_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_ActiveServicesChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_ActiveServicesChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_ActiveServices_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_ActiveServices_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_AppSettingsChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_AppSettingsChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_AppSettings_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_AppSettings_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Changelist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_Changelist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_ProvidersChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_ProvidersChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Providers_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_Providers_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_ServicesChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_ServicesChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Services_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_Services_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4696
    const/4 v2, 0x5

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\n\u001eclient_settings_protocol.proto\"\u00d6\u0001\n\nChangelist\u0012$\n\tproviders\u0018\u0001 \u0001(\u000b2\u0011.ProvidersChanges\u0012\"\n\u0008services\u0018\u0002 \u0001(\u000b2\u0010.ServicesChanges\u0012/\n\u000factive_services\u0018\u0003 \u0001(\u000b2\u0016.ActiveServicesChanges\u0012\"\n\u0008accounts\u0018\u0004 \u0001(\u000b2\u0010.AccountsChanges\u0012)\n\u000capp_settings\u0018\u0005 \u0001(\u000b2\u0013.AppSettingsChanges\"e\n\u0010ProvidersChanges\u0012\u0018\n\u0004adds\u0018\u0001 \u0003(\u000b2\n.Providers\u0012\u0018\n\u0004mods\u0018\u0002 \u0003(\u000b2\n.Providers\u0012\u001d\n\tdeletions\u0018\u0003 \u0003(\u000b2\n.Providers\"\u00fd\u0001\n\tProviders\u0012\u000f\n\u0007sync_id\u0018\u0001 \u0002(\t\u0012\u0013\n\u000bsync_anchor\u0018\u0002"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, " \u0001(\t\u0012\u000b\n\u0003_id\u0018\u0003 \u0001(\u0005\u0012\u0010\n\u0008provider\u0018\u0004 \u0001(\t\u0012\u0013\n\u000bpretty_name\u0018\u0005 \u0001(\t\u0012\u000c\n\u0004path\u0018\u0006 \u0001(\t\u0012\u0010\n\u0008ui_order\u0018\u0007 \u0001(\u0005\u0012\u0013\n\u000blogin_label\u0018\u0008 \u0001(\t\u0012\u0019\n\u0011multiple_accounts\u0018\t \u0001(\u0005\u0012\u0014\n\u000cfallback_url\u0018\n \u0001(\t\u0012\u0014\n\u000cprovider_url\u0018\u000b \u0001(\t\u0012\u001a\n\u0012pwd_storage_policy\u0018\u000c \u0001(\u0005\"a\n\u000fServicesChanges\u0012\u0017\n\u0004adds\u0018\u0001 \u0003(\u000b2\t.Services\u0012\u0017\n\u0004mods\u0018\u0002 \u0003(\u000b2\t.Services\u0012\u001c\n\tdeletions\u0018\u0003 \u0003(\u000b2\t.Services\"\u00a2\u0002\n\u0008Services\u0012\u000f\n\u0007sync_id\u0018\u0001 \u0002(\t\u0012\u0013\n\u000bsync_anchor\u0018\u0002 \u0001(\t\u0012\u000b\n\u0003_id\u0018\u0003 \u0001(\u0005\u0012\u0014\n\u000cproviders_id\u0018\u0004 \u0001(\u0005\u0012\u0012\n\ncap"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "ability\u0018\u0005 \u0001(\u0005\u0012\u0016\n\u000eserver_address\u0018\u0006 \u0001(\t\u0012\u0013\n\u000bserver_port\u0018\u0007 \u0001(\u0005\u0012\u000e\n\u0006secure\u0018\u0008 \u0001(\u0005\u0012\u000c\n\u0004path\u0018\t \u0001(\t\u0012\u0013\n\u000bpretty_name\u0018\n \u0001(\t\u0012\u0011\n\tauth_type\u0018\u000b \u0001(\u0005\u0012\u0010\n\u0008settings\u0018\u000c \u0001(\t\u0012\u0017\n\remail_pattern\u0018\r \u0001(\t:\u0000\u0012\u001b\n\u0011login_replacement\u0018\u000e \u0001(\t:\u0000\"y\n\u0015ActiveServicesChanges\u0012\u001d\n\u0004adds\u0018\u0001 \u0003(\u000b2\u000f.ActiveServices\u0012\u001d\n\u0004mods\u0018\u0002 \u0003(\u000b2\u000f.ActiveServices\u0012\"\n\tdeletions\u0018\u0003 \u0003(\u000b2\u000f.ActiveServices\"\u0093\u0002\n\u000eActiveServices\u0012\u000f\n\u0007sync_id\u0018\u0001 \u0002(\t\u0012\u0013\n\u000bsync_anchor\u0018\u0002 \u0001(\t\u0012\u000b\n\u0003_id\u0018\u0003 \u0001(\u0005\u0012\u0012\n\nser"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "vice_id\u0018\u0004 \u0001(\u0005\u0012\r\n\u0005error\u0018\u0005 \u0001(\t\u0012\u000f\n\u0007account\u0018\u0006 \u0001(\u0005\u0012\u0010\n\u0008username\u0018\u0007 \u0001(\t\u0012\u0010\n\u0008password\u0018\u0008 \u0001(\t\u0012\u0010\n\u0008max_size\u0018\t \u0001(\u0005\u0012\u0018\n\u0010polling_interval\u0018\n \u0001(\u0005\u0012\u0018\n\u0010retention_policy\u0018\u000b \u0001(\u0005\u0012\u0014\n\tverify_ca\u0018\u000c \u0001(\u0005:\u00011\u0012\u001a\n\u000fsecurity_policy\u0018\r \u0001(\u0005:\u00011\"a\n\u000fAccountsChanges\u0012\u0017\n\u0004adds\u0018\u0001 \u0003(\u000b2\t.Accounts\u0012\u0017\n\u0004mods\u0018\u0002 \u0003(\u000b2\t.Accounts\u0012\u001c\n\tdeletions\u0018\u0003 \u0003(\u000b2\t.Accounts\"\u00af\u0001\n\u0008Accounts\u0012\u000f\n\u0007sync_id\u0018\u0001 \u0002(\t\u0012\u0013\n\u000bsync_anchor\u0018\u0002 \u0001(\t\u0012\u000b\n\u0003_id\u0018\u0003 \u0001(\u0005\u0012\u0013\n\u000bprovider_id\u0018\u0004 \u0001(\u0005\u0012\u0015\n\remail_addre"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "ss\u0018\u0005 \u0001(\t\u0012\u0018\n\u0010user_pretty_name\u0018\u0006 \u0001(\t\u0012\u001b\n\u0013account_pretty_name\u0018\u0007 \u0001(\t\u0012\r\n\u0005extra\u0018\u0008 \u0001(\t\"m\n\u0012AppSettingsChanges\u0012\u001a\n\u0004adds\u0018\u0001 \u0003(\u000b2\u000c.AppSettings\u0012\u001a\n\u0004mods\u0018\u0002 \u0003(\u000b2\u000c.AppSettings\u0012\u001f\n\tdeletions\u0018\u0003 \u0003(\u000b2\u000c.AppSettings\"P\n\u000bAppSettings\u0012\u000f\n\u0007sync_id\u0018\u0001 \u0002(\t\u0012\u0013\n\u000bsync_anchor\u0018\u0002 \u0001(\t\u0012\u000c\n\u0004name\u0018\u0003 \u0001(\t\u0012\r\n\u0005value\u0018\u0004 \u0001(\tB8\n4com.motorola.blur.service.apps.accountsetup.protocolH\u0002"

    aput-object v3, v1, v2

    .line 4747
    .local v1, "descriptorData":[Ljava/lang/String;
    new-instance v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$1;-><init>()V

    .line 4843
    .local v0, "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v4, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 4847
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_Changelist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_Changelist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_Changelist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$10100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_ActiveServices_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$10102(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_ActiveServices_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_Changelist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$10200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_ActiveServices_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$10202(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_ActiveServices_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$13200()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_AccountsChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$13202(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_AccountsChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$13300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_AccountsChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$13302(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_AccountsChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$14000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_Accounts_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$14002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_Accounts_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$14100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_Accounts_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$14102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_Accounts_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_ProvidersChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_ProvidersChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$1600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_ProvidersChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_ProvidersChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$16100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_AppSettingsChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$16102(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_AppSettingsChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$16200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_AppSettingsChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$16202(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_AppSettingsChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$16900()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_AppSettings_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$16902(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_AppSettings_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$17000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_AppSettings_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$17002(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_AppSettings_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$18202(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method static synthetic access$2300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_Providers_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_Providers_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$2400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_Providers_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_Providers_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$5200()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_ServicesChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$5202(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_ServicesChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$5300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_ServicesChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$5302(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_ServicesChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$6000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_Services_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$6002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_Services_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$6100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_Services_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$6102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_Services_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$9300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_ActiveServicesChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$9302(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_ActiveServicesChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$9400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_ActiveServicesChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$9402(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_ActiveServicesChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 4691
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static internalForceInit()V
    .locals 0

    .prologue
    .line 4849
    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .prologue
    .line 10
    return-void
.end method
