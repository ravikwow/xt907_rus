.class public final Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol;
.super Ljava/lang/Object;
.source "ServerNameValueSettingsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;,
        Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges;,
        Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_Changelist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_Changelist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_ServerNameValueSettingsChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_ServerNameValueSettingsChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_ServerNameValueSettings_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_ServerNameValueSettings_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 944
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\n)server_name_value_settings_protocol.proto\"F\n\nChangelist\u00128\n\u000fserver_settings\u0018\u0001 \u0001(\u000b2\u001f.ServerNameValueSettingsChanges\"\u009d\u0001\n\u001eServerNameValueSettingsChanges\u0012&\n\u0004adds\u0018\u0001 \u0003(\u000b2\u0018.ServerNameValueSettings\u0012&\n\u0004mods\u0018\u0002 \u0003(\u000b2\u0018.ServerNameValueSettings\u0012+\n\tdeletions\u0018\u0003 \u0003(\u000b2\u0018.ServerNameValueSettings\"\\\n\u0017ServerNameValueSettings\u0012\u000f\n\u0007sync_id\u0018\u0001 \u0002(\t\u0012\u0013\n\u000bsync_anchor\u0018\u0002 \u0001(\t\u0012\u000c\n\u0004name\u0018\u0003 \u0001(\t\u0012\r\n\u0005value\u0018\u0004 \u0001(\tB8\n4com.motorola.blur.service.a"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "pps.accountsetup.protocolH\u0002"

    aput-object v3, v1, v2

    .line 957
    .local v1, "descriptorData":[Ljava/lang/String;
    new-instance v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$1;-><init>()V

    .line 989
    .local v0, "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v4, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 993
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
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol;->internal_static_Changelist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol;->internal_static_Changelist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol;->internal_static_Changelist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol;->internal_static_Changelist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol;->internal_static_ServerNameValueSettings_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol;->internal_static_ServerNameValueSettings_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$1600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol;->internal_static_ServerNameValueSettings_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol;->internal_static_ServerNameValueSettings_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$2802(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method static synthetic access$700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol;->internal_static_ServerNameValueSettingsChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol;->internal_static_ServerNameValueSettingsChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol;->internal_static_ServerNameValueSettingsChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol;->internal_static_ServerNameValueSettingsChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 939
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static internalForceInit()V
    .locals 0

    .prologue
    .line 995
    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .prologue
    .line 10
    return-void
.end method
