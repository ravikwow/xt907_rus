.class public final Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;
.super Ljava/lang/Object;
.source "StatusProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;,
        Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;,
        Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;,
        Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;,
        Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;,
        Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;,
        Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;,
        Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;,
        Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;,
        Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;,
        Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;,
        Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;,
        Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Action;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_MoodAnchor_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_MoodAnchor_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_MoodChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_MoodChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Mood_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_Mood_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_SetStatusResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_SetStatusResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_StatusAnchor_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_StatusAnchor_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_StatusAndMoodAnchorChangeList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_StatusAndMoodAnchorChangeList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_StatusAndMoodChangeList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_StatusAndMoodChangeList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_StatusAndMood_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_StatusAndMood_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_StatusChangelist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_StatusChangelist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_StatusChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_StatusChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_StatusReaction_UserParam_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_StatusReaction_UserParam_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_StatusReaction_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_StatusReaction_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Status_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_Status_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5336
    const/4 v2, 0x6

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\n\u0015status_protocol.proto\u001a\u0015common_protocol.proto\u001a\u0010snp_errors.proto\"Q\n\u0010StatusChangelist\u0012 \n\u0008statuses\u0018\u0001 \u0001(\u000b2\u000e.StatusChanges\u0012\u001b\n\u0005moods\u0018\u0002 \u0001(\u000b2\u000c.MoodChanges\"W\n\rStatusChanges\u0012\u0015\n\u0004adds\u0018\u0001 \u0003(\u000b2\u0007.Status\u0012\u0015\n\u0004mods\u0018\u0002 \u0003(\u000b2\u0007.Status\u0012\u0018\n\u0007deletes\u0018\u0003 \u0003(\u000b2\u0007.Status\"O\n\u000bMoodChanges\u0012\u0013\n\u0004adds\u0018\u0001 \u0003(\u000b2\u0005.Mood\u0012\u0013\n\u0004mods\u0018\u0002 \u0003(\u000b2\u0005.Mood\u0012\u0016\n\u0007deletes\u0018\u0003 \u0003(\u000b2\u0005.Mood\"g\n\u001dStatusAndMoodAnchorChangeList\u0012$\n\rstatusAnchors\u0018\u0001 \u0003(\u000b2\r.StatusAnchor\u0012 \n\u000bmoodAnch"

    aput-object v2, v1, v4

    const-string v2, "ors\u0018\u0002 \u0003(\u000b2\u000b.MoodAnchor\"]\n\u0017StatusAndMoodChangeList\u0012\u001b\n\u0003sam\u0018\u0001 \u0003(\u000b2\u000e.StatusAndMood\u0012\u0011\n\tmaxAnchor\u0018\u0002 \u0001(\t\u0012\u0012\n\nsyncStatus\u0018\u0003 \u0001(\t\"h\n\u000cStatusAnchor\u0012\u0012\n\nproviderId\u0018\u0001 \u0001(\u0005\u0012\u000c\n\u0004isMe\u0018\u0002 \u0001(\u0008\u0012\u0010\n\u0008friendId\u0018\u0003 \u0001(\t\u0012\u0013\n\u000bsync_anchor\u0018\u0004 \u0001(\t\u0012\u000f\n\u0007hasMood\u0018\u0005 \u0001(\u0008\"U\n\nMoodAnchor\u0012\u0012\n\nproviderId\u0018\u0001 \u0001(\u0005\u0012\u000c\n\u0004isMe\u0018\u0002 \u0001(\u0008\u0012\u0010\n\u0008friendId\u0018\u0003 \u0001(\t\u0012\u0013\n\u000bsync_anchor\u0018\u0004 \u0001(\t\"\u00c5\u0001\n\u0004Mood\u0012\u0013\n\u000bsync_anchor\u0018\u0001 \u0001(\t\u0012\u0017\n\u0006action\u0018\u0002 \u0001(\u000e2\u0007.Action\u0012\u0012\n\nproviderId\u0018\u0003 \u0001(\u0005\u0012\u0010\n\u0008friendId\u0018\u0004 "

    aput-object v2, v1, v5

    const-string v2, "\u0001(\t\u0012\u0011\n\ttimestamp\u0018\u0005 \u0001(\u0003\u0012\n\n\u0002id\u0018\u0006 \u0001(\u0005\u0012\u0013\n\u000bdescription\u0018\u0007 \u0001(\t\u0012\u0013\n\u000bpictureName\u0018\u0008 \u0001(\t\u0012\u0012\n\npictureURL\u0018\t \u0001(\t\u0012\u000c\n\u0004isMe\u0018\n \u0001(\u0008\"\u00d6\u0004\n\u0006Status\u0012\u0013\n\u000bsync_anchor\u0018\u0001 \u0001(\t\u0012\u0017\n\u0006action\u0018\u0002 \u0001(\u000e2\u0007.Action\u0012\u0010\n\u0008provider\u0018\u0003 \u0001(\t\u0012\u0011\n\taccountId\u0018\u0004 \u0001(\t\u0012\u0012\n\nexternalId\u0018\u0005 \u0001(\t\u0012\u0010\n\u0008friendId\u0018\u0006 \u0001(\t\u0012\u0011\n\ttimestamp\u0018\u0007 \u0002(\u0003\u0012\u0012\n\nproviderId\u0018\u0008 \u0001(\u0005\u0012\u000f\n\u0007message\u0018\t \u0001(\t\u0012\u0016\n\u000eproviderParams\u0018\n \u0001(\t\u0012\u000c\n\u0004isMe\u0018\u000b \u0001(\u0008\u0012\u0010\n\u0008statusId\u0018\u000c \u0001(\t\u0012\u0019\n\u0011disabledReactions\u0018\r \u0001(\t\u0012\u0012\n\norigStatus\u0018\u000e \u0001("

    aput-object v2, v1, v6

    const/4 v2, 0x3

    const-string v3, "\t\u0012\u0015\n\rorigPublisher\u0018\u000f \u0001(\t\u0012\u0013\n\u000borigProfUrl\u0018\u0010 \u0001(\t\u0012\u001f\n\nmeFeedType\u0018\u0011 \u0001(\u000e2\u000b.MeFeedType\u0012\u001d\n\trelatedId\u0018\u0012 \u0003(\u000b2\n.RelatedId\u0012!\n\u000estatusMetaItem\u0018\u0013 \u0003(\u000b2\t.MetaItem\u0012%\n\u0012origStatusMetaItem\u0018\u0014 \u0003(\u000b2\t.MetaItem\u0012\u000f\n\u0007mediaId\u0018\u0015 \u0001(\t\u0012\u0017\n\u000forigPublisherId\u0018\u0016 \u0001(\t\u0012\u001f\n\u0017origPublisherProfileUrl\u0018\u0017 \u0001(\t\u0012\u001b\n\u0013origPublisherPicUrl\u0018\u0018 \u0001(\t\u0012\u0016\n\u000estatusPhotoURL\u0018\u0019 \u0001(\t\"\u0083\u0002\n\rStatusAndMood\u0012\u0010\n\u0008provider\u0018\u0001 \u0001(\t\u0012\u0011\n\taccountId\u0018\u0002 \u0001(\t\u0012\u0012\n\nexternalId\u0018\u0003 \u0001(\t\u0012\u0010\n\u0008friendId\u0018\u0004"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, " \u0001(\t\u0012\u0012\n\nproviderId\u0018\u0005 \u0001(\u0005\u0012\u0017\n\u0006status\u0018\u0006 \u0001(\u000b2\u0007.Status\u0012\u0013\n\u0004mood\u0018\u0007 \u0001(\u000b2\u0005.Mood\u0012\u000c\n\u0004sync\u0018\u0008 \u0001(\u0008\u0012\u0013\n\u000bsync_anchor\u0018\t \u0001(\t\u0012\r\n\u0005error\u0018\n \u0001(\u0005\u0012\u0015\n\rsyncTimestamp\u0018\u000b \u0001(\u0003\u0012\u001c\n\tsyncError\u0018\u000c \u0001(\u000e2\t.SNPError\"\u00e0\u0001\n\u000eStatusReaction\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\u000c\n\u0004name\u0018\u0002 \u0002(\t\u0012\u0016\n\u000eproviderParams\u0018\u0003 \u0001(\t\u0012-\n\nuserParams\u0018\u0004 \u0003(\u000b2\u0019.StatusReaction.UserParam\u001a%\n\tUserParam\u0012\u000b\n\u0003key\u0018\u0001 \u0002(\t\u0012\u000b\n\u0003val\u0018\u0002 \u0002(\t\"A\n\u0004Name\u0012\u000b\n\u0007comment\u0010\u0001\u0012\u0011\n\rcommentStatus\u0010\u0002\u0012\u000c\n\u0008favorite\u0010\u0003\u0012\u000b\n\u0007retweet\u0010\u0004"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "\"?\n\u0011SetStatusResponse\u0012\r\n\u0005error\u0018\u0001 \u0001(\u0005\u0012\u001b\n\u0003sam\u0018\u0002 \u0003(\u000b2\u000e.StatusAndMood*+\n\u0006Action\u0012\t\n\u0005CLEAR\u0010\u0000\u0012\n\n\u0006UPDATE\u0010\u0001\u0012\n\n\u0006DELETE\u0010\u0002B2\n.com.motorola.blur.service.apps.status.protocolH\u0002"

    aput-object v3, v1, v2

    .line 5393
    .local v1, "descriptorData":[Ljava/lang/String;
    new-instance v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;-><init>()V

    .line 5505
    .local v0, "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v6, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 5511
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
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusChangelist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusChangelist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusChangelist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusChangelist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$14700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusAndMood_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$14702(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusAndMood_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$14800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusAndMood_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$14802(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusAndMood_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_MoodChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_MoodChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$17600()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusReaction_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$17602(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusReaction_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$17700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusReaction_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$17702(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusReaction_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$17800()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusReaction_UserParam_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$17802(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusReaction_UserParam_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$17900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusReaction_UserParam_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$17902(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusReaction_UserParam_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_MoodChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_MoodChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$19700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_SetStatusResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$19702(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_SetStatusResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$19800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_SetStatusResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$19802(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_SetStatusResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$20502(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method static synthetic access$2500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusAndMoodAnchorChangeList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusAndMoodAnchorChangeList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$2600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusAndMoodAnchorChangeList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusAndMoodAnchorChangeList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$3200()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusAndMoodChangeList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusAndMoodChangeList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$3300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusAndMoodChangeList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusAndMoodChangeList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$4200()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusAnchor_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusAnchor_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$4300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusAnchor_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusAnchor_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$5700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_MoodAnchor_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$5702(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_MoodAnchor_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$5800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_MoodAnchor_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$5802(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_MoodAnchor_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$7000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_Mood_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$7002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_Mood_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$7100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_Mood_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$7102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_Mood_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$900()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$9500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_Status_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$9502(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_Status_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$9600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_Status_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$9602(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_Status_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 5331
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static internalForceInit()V
    .locals 0

    .prologue
    .line 5513
    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .prologue
    .line 10
    return-void
.end method
