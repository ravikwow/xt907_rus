.class public final Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;
.super Ljava/lang/Object;
.source "SnfriendProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;,
        Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;,
        Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;,
        Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;,
        Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;,
        Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;,
        Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;,
        Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_FriendAction_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_FriendAction_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Friend_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_Friend_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_FriendsChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_FriendsChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_ProfileUri_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_ProfileUri_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_ResetDoneMarker_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_ResetDoneMarker_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_SNFriendsChangelist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_SNFriendsChangelist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_UserParam_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_UserParam_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2332
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\n\u0017snfriend_protocol.proto\"7\n\u0013SNFriendsChangelist\u0012 \n\u0007friends\u0018\u0001 \u0001(\u000b2\u000f.FriendsChanges\"\u0085\u0001\n\u000eFriendsChanges\u0012\u0015\n\u0004adds\u0018\u0001 \u0003(\u000b2\u0007.Friend\u0012\u0015\n\u0004mods\u0018\u0002 \u0003(\u000b2\u0007.Friend\u0012\u0018\n\u0007deletes\u0018\u0003 \u0003(\u000b2\u0007.Friend\u0012+\n\u0011reset_done_marker\u0018\u0004 \u0003(\u000b2\u0010.ResetDoneMarker\"\u0093\u0001\n\u0006Friend\u0012\u000f\n\u0007sync_id\u0018\u0001 \u0002(\t\u0012\u0010\n\u0008provider\u0018\u0002 \u0001(\t\u0012\u0010\n\u0008friendid\u0018\u0003 \u0001(\t\u0012\u000c\n\u0004data\u0018\u0004 \u0001(\t\u0012\u0010\n\u0008is_reset\u0018\u0005 \u0001(\u0008\u0012\u0019\n\u0011non_mutual_friend\u0018\u0006 \u0001(\u0008\u0012\u0019\n\u0004uris\u0018\u0007 \u0003(\u000b2\u000b.ProfileUri\"#\n\u000fResetDoneMarker\u0012\u0010\n\u0008provider\u0018"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "\u0001 \u0001(\t\"8\n\tUserParam\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\u000b\n\u0003key\u0018\u0002 \u0002(\t\u0012\r\n\u0005value\u0018\u0003 \u0002(\t\"e\n\u000cFriendAction\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\u000c\n\u0004name\u0018\u0002 \u0002(\t\u0012\u001e\n\nuserParams\u0018\u0003 \u0003(\u000b2\n.UserParam\u0012\u0016\n\u000eproviderParams\u0018\u0004 \u0001(\t\"c\n\nProfileUri\u0012\u001e\n\u0004type\u0018\u0001 \u0001(\u000e2\u0010.ProfileUri.Type\u0012\u000b\n\u0003uri\u0018\u0002 \u0001(\t\"(\n\u0004Type\u0012\u0013\n\u000fAPPLICATION_URI\u0010\u0000\u0012\u000b\n\u0007WEB_URL\u0010\u0001*)\n\u0010FriendActionName\u0012\u000b\n\u0007comment\u0010\u0000\u0012\u0008\n\u0004poke\u0010\u0001B4\n0com.motorola.blur.service.apps.snfriend.protocolH\u0002"

    aput-object v3, v1, v2

    .line 2354
    .local v1, "descriptorData":[Ljava/lang/String;
    new-instance v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$1;-><init>()V

    .line 2418
    .local v0, "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v4, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 2422
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
    sget-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->internal_static_SNFriendsChangelist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->internal_static_SNFriendsChangelist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->internal_static_SNFriendsChangelist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->internal_static_SNFriendsChangelist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1600()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->internal_static_Friend_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->internal_static_Friend_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$1700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->internal_static_Friend_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->internal_static_Friend_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$3400()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->internal_static_ResetDoneMarker_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->internal_static_ResetDoneMarker_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$3500()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->internal_static_ResetDoneMarker_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->internal_static_ResetDoneMarker_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$4100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->internal_static_UserParam_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->internal_static_UserParam_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$4200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->internal_static_UserParam_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->internal_static_UserParam_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$5200()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->internal_static_FriendAction_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$5202(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->internal_static_FriendAction_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$5300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->internal_static_FriendAction_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$5302(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->internal_static_FriendAction_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$6400()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->internal_static_ProfileUri_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$6402(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->internal_static_ProfileUri_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$6500()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->internal_static_ProfileUri_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$6502(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->internal_static_ProfileUri_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->internal_static_FriendsChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->internal_static_FriendsChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$7302(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method static synthetic access$800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->internal_static_FriendsChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->internal_static_FriendsChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 2327
    sget-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static internalForceInit()V
    .locals 0

    .prologue
    .line 2424
    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .prologue
    .line 10
    return-void
.end method
