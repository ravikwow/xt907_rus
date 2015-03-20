.class public final Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol;
.super Ljava/lang/Object;
.source "CommonProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;,
        Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;,
        Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_MetaItem_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_MetaItem_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_RelatedId_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_RelatedId_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 772
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\n\u0015common_protocol.proto\"\u00be\u0001\n\u0008MetaItem\u0012$\n\u0004type\u0018\u0001 \u0002(\u000e2\u0016.MetaItem.MetaItemType\u0012\r\n\u0005start\u0018\u0002 \u0002(\r\u0012\u000b\n\u0003end\u0018\u0003 \u0002(\r\u0012\u000c\n\u0004data\u0018\u0004 \u0001(\t\"b\n\u000cMetaItemType\u0012\u000b\n\u0007CONTACT\u0010\u0000\u0012\u0008\n\u0004LINK\u0010\u0001\u0012\u000c\n\u0008LOCATION\u0010\u0002\u0012\t\n\u0005EVENT\u0010\u0003\u0012\u0007\n\u0003APP\u0010\u0004\u0012\u0019\n\u0015WINDOW_DRESSING_MEDIA\u0010\u0005\"T\n\tRelatedId\u0012\u001d\n\u0004type\u0018\u0001 \u0002(\u000e2\u000f.RelatedId.Type\u0012\n\n\u0002id\u0018\u0002 \u0002(\t\"\u001c\n\u0004Type\u0012\n\n\u0006PARENT\u0010\u0001\u0012\u0008\n\u0004ITEM\u0010\u0002*3\n\nMeFeedType\u0012\u000b\n\u0007NEITHER\u0010\u0000\u0012\r\n\tIS_FOR_ME\u0010\u0001\u0012\t\n\u0005IS_ME\u0010\u0002B2\n.com.motorola.blur.service.apps.common.pro"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "tocolH\u0002"

    aput-object v3, v1, v2

    .line 785
    .local v1, "descriptorData":[Ljava/lang/String;
    new-instance v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$1;-><init>()V

    .line 809
    .local v0, "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v4, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 813
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
    sget-object v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol;->internal_static_MetaItem_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol;->internal_static_MetaItem_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol;->internal_static_MetaItem_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol;->internal_static_MetaItem_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol;->internal_static_RelatedId_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol;->internal_static_RelatedId_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$1400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol;->internal_static_RelatedId_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol;->internal_static_RelatedId_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 767
    sget-object v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static internalForceInit()V
    .locals 0

    .prologue
    .line 815
    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .prologue
    .line 10
    return-void
.end method
