.class public final Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
.super Lcom/google/protobuf/GeneratedMessage;
.source "StatusProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    }
.end annotation


# static fields
.field public static final ACCOUNTID_FIELD_NUMBER:I = 0x4

.field public static final ACTION_FIELD_NUMBER:I = 0x2

.field public static final DISABLEDREACTIONS_FIELD_NUMBER:I = 0xd

.field public static final EXTERNALID_FIELD_NUMBER:I = 0x5

.field public static final FRIENDID_FIELD_NUMBER:I = 0x6

.field public static final ISME_FIELD_NUMBER:I = 0xb

.field public static final MEDIAID_FIELD_NUMBER:I = 0x15

.field public static final MEFEEDTYPE_FIELD_NUMBER:I = 0x11

.field public static final MESSAGE_FIELD_NUMBER:I = 0x9

.field public static final ORIGPROFURL_FIELD_NUMBER:I = 0x10

.field public static final ORIGPUBLISHERID_FIELD_NUMBER:I = 0x16

.field public static final ORIGPUBLISHERPICURL_FIELD_NUMBER:I = 0x18

.field public static final ORIGPUBLISHERPROFILEURL_FIELD_NUMBER:I = 0x17

.field public static final ORIGPUBLISHER_FIELD_NUMBER:I = 0xf

.field public static final ORIGSTATUSMETAITEM_FIELD_NUMBER:I = 0x14

.field public static final ORIGSTATUS_FIELD_NUMBER:I = 0xe

.field public static final PROVIDERID_FIELD_NUMBER:I = 0x8

.field public static final PROVIDERPARAMS_FIELD_NUMBER:I = 0xa

.field public static final PROVIDER_FIELD_NUMBER:I = 0x3

.field public static final RELATEDID_FIELD_NUMBER:I = 0x12

.field public static final STATUSID_FIELD_NUMBER:I = 0xc

.field public static final STATUSMETAITEM_FIELD_NUMBER:I = 0x13

.field public static final STATUSPHOTOURL_FIELD_NUMBER:I = 0x19

.field public static final SYNC_ANCHOR_FIELD_NUMBER:I = 0x1

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x7

.field private static final defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;


# instance fields
.field private accountId_:Ljava/lang/String;

.field private action_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Action;

.field private disabledReactions_:Ljava/lang/String;

.field private externalId_:Ljava/lang/String;

.field private friendId_:Ljava/lang/String;

.field private hasAccountId:Z

.field private hasAction:Z

.field private hasDisabledReactions:Z

.field private hasExternalId:Z

.field private hasFriendId:Z

.field private hasIsMe:Z

.field private hasMeFeedType:Z

.field private hasMediaId:Z

.field private hasMessage:Z

.field private hasOrigProfUrl:Z

.field private hasOrigPublisher:Z

.field private hasOrigPublisherId:Z

.field private hasOrigPublisherPicUrl:Z

.field private hasOrigPublisherProfileUrl:Z

.field private hasOrigStatus:Z

.field private hasProvider:Z

.field private hasProviderId:Z

.field private hasProviderParams:Z

.field private hasStatusId:Z

.field private hasStatusPhotoURL:Z

.field private hasSyncAnchor:Z

.field private hasTimestamp:Z

.field private isMe_:Z

.field private meFeedType_:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;

.field private mediaId_:Ljava/lang/String;

.field private message_:Ljava/lang/String;

.field private origProfUrl_:Ljava/lang/String;

.field private origPublisherId_:Ljava/lang/String;

.field private origPublisherPicUrl_:Ljava/lang/String;

.field private origPublisherProfileUrl_:Ljava/lang/String;

.field private origPublisher_:Ljava/lang/String;

.field private origStatusMetaItem_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;",
            ">;"
        }
    .end annotation
.end field

.field private origStatus_:Ljava/lang/String;

.field private providerId_:I

.field private providerParams_:Ljava/lang/String;

.field private provider_:Ljava/lang/String;

.field private relatedId_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;",
            ">;"
        }
    .end annotation
.end field

.field private statusId_:Ljava/lang/String;

.field private statusMetaItem_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;",
            ">;"
        }
    .end annotation
.end field

.field private statusPhotoURL_:Ljava/lang/String;

.field private syncAnchor_:Ljava/lang/String;

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3793
    new-instance v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    .line 3794
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internalForceInit()V

    .line 3795
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->initFields()V

    .line 3796
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2810
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2837
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->syncAnchor_:Ljava/lang/String;

    .line 2851
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->provider_:Ljava/lang/String;

    .line 2858
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->accountId_:Ljava/lang/String;

    .line 2865
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->externalId_:Ljava/lang/String;

    .line 2872
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->friendId_:Ljava/lang/String;

    .line 2879
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->timestamp_:J

    .line 2886
    iput v2, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->providerId_:I

    .line 2893
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->message_:Ljava/lang/String;

    .line 2900
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->providerParams_:Ljava/lang/String;

    .line 2907
    iput-boolean v2, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->isMe_:Z

    .line 2914
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->statusId_:Ljava/lang/String;

    .line 2921
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->disabledReactions_:Ljava/lang/String;

    .line 2928
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origStatus_:Ljava/lang/String;

    .line 2935
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origPublisher_:Ljava/lang/String;

    .line 2942
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origProfUrl_:Ljava/lang/String;

    .line 2955
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->relatedId_:Ljava/util/List;

    .line 2967
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->statusMetaItem_:Ljava/util/List;

    .line 2979
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origStatusMetaItem_:Ljava/util/List;

    .line 2992
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->mediaId_:Ljava/lang/String;

    .line 2999
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origPublisherId_:Ljava/lang/String;

    .line 3006
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origPublisherProfileUrl_:Ljava/lang/String;

    .line 3013
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origPublisherPicUrl_:Ljava/lang/String;

    .line 3020
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->statusPhotoURL_:Ljava/lang/String;

    .line 2811
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->initFields()V

    .line 2812
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;

    .prologue
    .line 2807
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 3
    .param p1, "noInit"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2813
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2837
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->syncAnchor_:Ljava/lang/String;

    .line 2851
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->provider_:Ljava/lang/String;

    .line 2858
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->accountId_:Ljava/lang/String;

    .line 2865
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->externalId_:Ljava/lang/String;

    .line 2872
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->friendId_:Ljava/lang/String;

    .line 2879
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->timestamp_:J

    .line 2886
    iput v2, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->providerId_:I

    .line 2893
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->message_:Ljava/lang/String;

    .line 2900
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->providerParams_:Ljava/lang/String;

    .line 2907
    iput-boolean v2, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->isMe_:Z

    .line 2914
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->statusId_:Ljava/lang/String;

    .line 2921
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->disabledReactions_:Ljava/lang/String;

    .line 2928
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origStatus_:Ljava/lang/String;

    .line 2935
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origPublisher_:Ljava/lang/String;

    .line 2942
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origProfUrl_:Ljava/lang/String;

    .line 2955
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->relatedId_:Ljava/util/List;

    .line 2967
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->statusMetaItem_:Ljava/util/List;

    .line 2979
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origStatusMetaItem_:Ljava/util/List;

    .line 2992
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->mediaId_:Ljava/lang/String;

    .line 2999
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origPublisherId_:Ljava/lang/String;

    .line 3006
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origPublisherProfileUrl_:Ljava/lang/String;

    .line 3013
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origPublisherPicUrl_:Ljava/lang/String;

    .line 3020
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->statusPhotoURL_:Ljava/lang/String;

    .line 2813
    return-void
.end method

.method static synthetic access$10000(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    .prologue
    .line 2807
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->relatedId_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$10002(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 2807
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->relatedId_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$10100(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    .prologue
    .line 2807
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->statusMetaItem_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$10102(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 2807
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->statusMetaItem_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$10200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    .prologue
    .line 2807
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origStatusMetaItem_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$10202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 2807
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origStatusMetaItem_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$10302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .param p1, "x1"    # Z

    .prologue
    .line 2807
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasSyncAnchor:Z

    return p1
.end method

.method static synthetic access$10402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2807
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->syncAnchor_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$10502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .param p1, "x1"    # Z

    .prologue
    .line 2807
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasAction:Z

    return p1
.end method

.method static synthetic access$10602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Action;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Action;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .param p1, "x1"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Action;

    .prologue
    .line 2807
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->action_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Action;

    return-object p1
.end method

.method static synthetic access$10702(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .param p1, "x1"    # Z

    .prologue
    .line 2807
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasProvider:Z

    return p1
.end method

.method static synthetic access$10802(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2807
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->provider_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$10902(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .param p1, "x1"    # Z

    .prologue
    .line 2807
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasAccountId:Z

    return p1
.end method

.method static synthetic access$11002(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2807
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->accountId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$11102(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .param p1, "x1"    # Z

    .prologue
    .line 2807
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasExternalId:Z

    return p1
.end method

.method static synthetic access$11202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2807
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->externalId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$11302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .param p1, "x1"    # Z

    .prologue
    .line 2807
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasFriendId:Z

    return p1
.end method

.method static synthetic access$11402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2807
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->friendId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$11502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .param p1, "x1"    # Z

    .prologue
    .line 2807
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasTimestamp:Z

    return p1
.end method

.method static synthetic access$11602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;J)J
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .param p1, "x1"    # J

    .prologue
    .line 2807
    iput-wide p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$11702(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .param p1, "x1"    # Z

    .prologue
    .line 2807
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasProviderId:Z

    return p1
.end method

.method static synthetic access$11802(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .param p1, "x1"    # I

    .prologue
    .line 2807
    iput p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->providerId_:I

    return p1
.end method

.method static synthetic access$11902(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .param p1, "x1"    # Z

    .prologue
    .line 2807
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasMessage:Z

    return p1
.end method

.method static synthetic access$12002(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2807
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->message_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$12102(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .param p1, "x1"    # Z

    .prologue
    .line 2807
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasProviderParams:Z

    return p1
.end method

.method static synthetic access$12202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2807
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->providerParams_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$12302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .param p1, "x1"    # Z

    .prologue
    .line 2807
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasIsMe:Z

    return p1
.end method

.method static synthetic access$12402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .param p1, "x1"    # Z

    .prologue
    .line 2807
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->isMe_:Z

    return p1
.end method

.method static synthetic access$12502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .param p1, "x1"    # Z

    .prologue
    .line 2807
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasStatusId:Z

    return p1
.end method

.method static synthetic access$12602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2807
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->statusId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$12702(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .param p1, "x1"    # Z

    .prologue
    .line 2807
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasDisabledReactions:Z

    return p1
.end method

.method static synthetic access$12802(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2807
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->disabledReactions_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$12902(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .param p1, "x1"    # Z

    .prologue
    .line 2807
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasOrigStatus:Z

    return p1
.end method

.method static synthetic access$13002(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2807
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origStatus_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$13102(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .param p1, "x1"    # Z

    .prologue
    .line 2807
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasOrigPublisher:Z

    return p1
.end method

.method static synthetic access$13202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2807
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origPublisher_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$13302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .param p1, "x1"    # Z

    .prologue
    .line 2807
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasOrigProfUrl:Z

    return p1
.end method

.method static synthetic access$13402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2807
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origProfUrl_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$13502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .param p1, "x1"    # Z

    .prologue
    .line 2807
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasMeFeedType:Z

    return p1
.end method

.method static synthetic access$13602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .param p1, "x1"    # Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;

    .prologue
    .line 2807
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->meFeedType_:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;

    return-object p1
.end method

.method static synthetic access$13702(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .param p1, "x1"    # Z

    .prologue
    .line 2807
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasMediaId:Z

    return p1
.end method

.method static synthetic access$13802(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2807
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->mediaId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$13902(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .param p1, "x1"    # Z

    .prologue
    .line 2807
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasOrigPublisherId:Z

    return p1
.end method

.method static synthetic access$14002(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2807
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origPublisherId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$14102(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .param p1, "x1"    # Z

    .prologue
    .line 2807
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasOrigPublisherProfileUrl:Z

    return p1
.end method

.method static synthetic access$14202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2807
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origPublisherProfileUrl_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$14302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .param p1, "x1"    # Z

    .prologue
    .line 2807
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasOrigPublisherPicUrl:Z

    return p1
.end method

.method static synthetic access$14402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2807
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origPublisherPicUrl_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$14502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .param p1, "x1"    # Z

    .prologue
    .line 2807
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasStatusPhotoURL:Z

    return p1
.end method

.method static synthetic access$14602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2807
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->statusPhotoURL_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .locals 1

    .prologue
    .line 2817
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2826
    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_Status_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$9500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 3025
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Action;->CLEAR:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Action;

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->action_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Action;

    .line 3026
    sget-object v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;->NEITHER:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->meFeedType_:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;

    .line 3027
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 1

    .prologue
    .line 3095
    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->access$9800()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    .prologue
    .line 3098
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3064
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

    move-result-object v0

    .line 3065
    .local v0, "builder":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3066
    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->access$9700(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v1

    .line 3068
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3075
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

    move-result-object v0

    .line 3076
    .local v0, "builder":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3077
    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->access$9700(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v1

    .line 3079
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3031
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->access$9700(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3037
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->access$9700(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3085
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->access$9700(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3091
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->access$9700(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3053
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->access$9700(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3059
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->access$9700(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3042
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->access$9700(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3048
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->access$9700(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2860
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->accountId_:Ljava/lang/String;

    return-object v0
.end method

.method public getAction()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Action;
    .locals 1

    .prologue
    .line 2846
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->action_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Action;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2807
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2807
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .locals 1

    .prologue
    .line 2821
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    return-object v0
.end method

.method public getDisabledReactions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2923
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->disabledReactions_:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2867
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->externalId_:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2874
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->friendId_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsMe()Z
    .locals 1

    .prologue
    .line 2909
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->isMe_:Z

    return v0
.end method

.method public getMeFeedType()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;
    .locals 1

    .prologue
    .line 2951
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->meFeedType_:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;

    return-object v0
.end method

.method public getMediaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2994
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->mediaId_:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2895
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->message_:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigProfUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2944
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origProfUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigPublisher()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2937
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origPublisher_:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigPublisherId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3001
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origPublisherId_:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigPublisherPicUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3015
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origPublisherPicUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigPublisherProfileUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3008
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origPublisherProfileUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2930
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origStatus_:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigStatusMetaItem(I)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2986
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origStatusMetaItem_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    return-object v0
.end method

.method public getOrigStatusMetaItemCount()I
    .locals 1

    .prologue
    .line 2984
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origStatusMetaItem_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOrigStatusMetaItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2982
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origStatusMetaItem_:Ljava/util/List;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2853
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->provider_:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderId()I
    .locals 1

    .prologue
    .line 2888
    iget v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->providerId_:I

    return v0
.end method

.method public getProviderParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2902
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->providerParams_:Ljava/lang/String;

    return-object v0
.end method

.method public getRelatedId(I)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2962
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->relatedId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    return-object v0
.end method

.method public getRelatedIdCount()I
    .locals 1

    .prologue
    .line 2960
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->relatedId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRelatedIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2958
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->relatedId_:Ljava/util/List;

    return-object v0
.end method

.method public getStatusId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2916
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->statusId_:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusMetaItem(I)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2974
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->statusMetaItem_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    return-object v0
.end method

.method public getStatusMetaItemCount()I
    .locals 1

    .prologue
    .line 2972
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->statusMetaItem_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getStatusMetaItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2970
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->statusMetaItem_:Ljava/util/List;

    return-object v0
.end method

.method public getStatusPhotoURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3022
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->statusPhotoURL_:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncAnchor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2839
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->syncAnchor_:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 2881
    iget-wide v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->timestamp_:J

    return-wide v0
.end method

.method public hasAccountId()Z
    .locals 1

    .prologue
    .line 2859
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasAccountId:Z

    return v0
.end method

.method public hasAction()Z
    .locals 1

    .prologue
    .line 2845
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasAction:Z

    return v0
.end method

.method public hasDisabledReactions()Z
    .locals 1

    .prologue
    .line 2922
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasDisabledReactions:Z

    return v0
.end method

.method public hasExternalId()Z
    .locals 1

    .prologue
    .line 2866
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasExternalId:Z

    return v0
.end method

.method public hasFriendId()Z
    .locals 1

    .prologue
    .line 2873
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasFriendId:Z

    return v0
.end method

.method public hasIsMe()Z
    .locals 1

    .prologue
    .line 2908
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasIsMe:Z

    return v0
.end method

.method public hasMeFeedType()Z
    .locals 1

    .prologue
    .line 2950
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasMeFeedType:Z

    return v0
.end method

.method public hasMediaId()Z
    .locals 1

    .prologue
    .line 2993
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasMediaId:Z

    return v0
.end method

.method public hasMessage()Z
    .locals 1

    .prologue
    .line 2894
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasMessage:Z

    return v0
.end method

.method public hasOrigProfUrl()Z
    .locals 1

    .prologue
    .line 2943
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasOrigProfUrl:Z

    return v0
.end method

.method public hasOrigPublisher()Z
    .locals 1

    .prologue
    .line 2936
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasOrigPublisher:Z

    return v0
.end method

.method public hasOrigPublisherId()Z
    .locals 1

    .prologue
    .line 3000
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasOrigPublisherId:Z

    return v0
.end method

.method public hasOrigPublisherPicUrl()Z
    .locals 1

    .prologue
    .line 3014
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasOrigPublisherPicUrl:Z

    return v0
.end method

.method public hasOrigPublisherProfileUrl()Z
    .locals 1

    .prologue
    .line 3007
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasOrigPublisherProfileUrl:Z

    return v0
.end method

.method public hasOrigStatus()Z
    .locals 1

    .prologue
    .line 2929
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasOrigStatus:Z

    return v0
.end method

.method public hasProvider()Z
    .locals 1

    .prologue
    .line 2852
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasProvider:Z

    return v0
.end method

.method public hasProviderId()Z
    .locals 1

    .prologue
    .line 2887
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasProviderId:Z

    return v0
.end method

.method public hasProviderParams()Z
    .locals 1

    .prologue
    .line 2901
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasProviderParams:Z

    return v0
.end method

.method public hasStatusId()Z
    .locals 1

    .prologue
    .line 2915
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasStatusId:Z

    return v0
.end method

.method public hasStatusPhotoURL()Z
    .locals 1

    .prologue
    .line 3021
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasStatusPhotoURL:Z

    return v0
.end method

.method public hasSyncAnchor()Z
    .locals 1

    .prologue
    .line 2838
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasSyncAnchor:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 2880
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasTimestamp:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 2831
    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_Status_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$9600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2807
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->newBuilderForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2807
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->newBuilderForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 1

    .prologue
    .line 3096
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2807
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->toBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2807
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->toBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 1

    .prologue
    .line 3100
    invoke-static {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->newBuilder(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

    move-result-object v0

    return-object v0
.end method
