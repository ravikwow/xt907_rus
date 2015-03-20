.class public final Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
.super Lcom/google/protobuf/GeneratedMessage;
.source "StatusProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mood"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;
    }
.end annotation


# static fields
.field public static final ACTION_FIELD_NUMBER:I = 0x2

.field public static final DESCRIPTION_FIELD_NUMBER:I = 0x7

.field public static final FRIENDID_FIELD_NUMBER:I = 0x4

.field public static final ID_FIELD_NUMBER:I = 0x6

.field public static final ISME_FIELD_NUMBER:I = 0xa

.field public static final PICTURENAME_FIELD_NUMBER:I = 0x8

.field public static final PICTUREURL_FIELD_NUMBER:I = 0x9

.field public static final PROVIDERID_FIELD_NUMBER:I = 0x3

.field public static final SYNC_ANCHOR_FIELD_NUMBER:I = 0x1

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x5

.field private static final defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;


# instance fields
.field private action_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Action;

.field private description_:Ljava/lang/String;

.field private friendId_:Ljava/lang/String;

.field private hasAction:Z

.field private hasDescription:Z

.field private hasFriendId:Z

.field private hasId:Z

.field private hasIsMe:Z

.field private hasPictureName:Z

.field private hasPictureURL:Z

.field private hasProviderId:Z

.field private hasSyncAnchor:Z

.field private hasTimestamp:Z

.field private id_:I

.field private isMe_:Z

.field private pictureName_:Ljava/lang/String;

.field private pictureURL_:Ljava/lang/String;

.field private providerId_:I

.field private syncAnchor_:Ljava/lang/String;

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2799
    new-instance v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    .line 2800
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internalForceInit()V

    .line 2801
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->initFields()V

    .line 2802
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2357
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2384
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->syncAnchor_:Ljava/lang/String;

    .line 2398
    iput v2, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->providerId_:I

    .line 2405
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->friendId_:Ljava/lang/String;

    .line 2412
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->timestamp_:J

    .line 2419
    iput v2, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->id_:I

    .line 2426
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->description_:Ljava/lang/String;

    .line 2433
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->pictureName_:Ljava/lang/String;

    .line 2440
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->pictureURL_:Ljava/lang/String;

    .line 2447
    iput-boolean v2, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->isMe_:Z

    .line 2358
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->initFields()V

    .line 2359
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;

    .prologue
    .line 2354
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 3
    .param p1, "noInit"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2360
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2384
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->syncAnchor_:Ljava/lang/String;

    .line 2398
    iput v2, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->providerId_:I

    .line 2405
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->friendId_:Ljava/lang/String;

    .line 2412
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->timestamp_:J

    .line 2419
    iput v2, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->id_:I

    .line 2426
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->description_:Ljava/lang/String;

    .line 2433
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->pictureName_:Ljava/lang/String;

    .line 2440
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->pictureURL_:Ljava/lang/String;

    .line 2447
    iput-boolean v2, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->isMe_:Z

    .line 2360
    return-void
.end method

.method static synthetic access$7502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    .param p1, "x1"    # Z

    .prologue
    .line 2354
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasSyncAnchor:Z

    return p1
.end method

.method static synthetic access$7602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2354
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->syncAnchor_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7702(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    .param p1, "x1"    # Z

    .prologue
    .line 2354
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasAction:Z

    return p1
.end method

.method static synthetic access$7802(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Action;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Action;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    .param p1, "x1"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Action;

    .prologue
    .line 2354
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->action_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Action;

    return-object p1
.end method

.method static synthetic access$7902(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    .param p1, "x1"    # Z

    .prologue
    .line 2354
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasProviderId:Z

    return p1
.end method

.method static synthetic access$8002(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    .param p1, "x1"    # I

    .prologue
    .line 2354
    iput p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->providerId_:I

    return p1
.end method

.method static synthetic access$8102(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    .param p1, "x1"    # Z

    .prologue
    .line 2354
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasFriendId:Z

    return p1
.end method

.method static synthetic access$8202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2354
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->friendId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$8302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    .param p1, "x1"    # Z

    .prologue
    .line 2354
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasTimestamp:Z

    return p1
.end method

.method static synthetic access$8402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;J)J
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    .param p1, "x1"    # J

    .prologue
    .line 2354
    iput-wide p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$8502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    .param p1, "x1"    # Z

    .prologue
    .line 2354
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasId:Z

    return p1
.end method

.method static synthetic access$8602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    .param p1, "x1"    # I

    .prologue
    .line 2354
    iput p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->id_:I

    return p1
.end method

.method static synthetic access$8702(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    .param p1, "x1"    # Z

    .prologue
    .line 2354
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasDescription:Z

    return p1
.end method

.method static synthetic access$8802(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2354
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->description_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$8902(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    .param p1, "x1"    # Z

    .prologue
    .line 2354
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasPictureName:Z

    return p1
.end method

.method static synthetic access$9002(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2354
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->pictureName_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$9102(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    .param p1, "x1"    # Z

    .prologue
    .line 2354
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasPictureURL:Z

    return p1
.end method

.method static synthetic access$9202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2354
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->pictureURL_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$9302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    .param p1, "x1"    # Z

    .prologue
    .line 2354
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasIsMe:Z

    return p1
.end method

.method static synthetic access$9402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    .param p1, "x1"    # Z

    .prologue
    .line 2354
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->isMe_:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    .locals 1

    .prologue
    .line 2364
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2373
    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_Mood_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$7000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 2452
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Action;->CLEAR:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Action;

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->action_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Action;

    .line 2453
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;
    .locals 1

    .prologue
    .line 2521
    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->access$7300()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    .prologue
    .line 2524
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2490
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

    move-result-object v0

    .line 2491
    .local v0, "builder":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2492
    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->access$7200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    move-result-object v1

    .line 2494
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2501
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

    move-result-object v0

    .line 2502
    .local v0, "builder":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2503
    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->access$7200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    move-result-object v1

    .line 2505
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2457
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->access$7200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2463
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->access$7200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2511
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->access$7200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2517
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->access$7200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2479
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->access$7200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2485
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->access$7200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2468
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->access$7200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2474
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->access$7200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAction()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Action;
    .locals 1

    .prologue
    .line 2393
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->action_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Action;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2354
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2354
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    .locals 1

    .prologue
    .line 2368
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2428
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->description_:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2407
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->friendId_:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 2421
    iget v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->id_:I

    return v0
.end method

.method public getIsMe()Z
    .locals 1

    .prologue
    .line 2449
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->isMe_:Z

    return v0
.end method

.method public getPictureName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2435
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->pictureName_:Ljava/lang/String;

    return-object v0
.end method

.method public getPictureURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2442
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->pictureURL_:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderId()I
    .locals 1

    .prologue
    .line 2400
    iget v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->providerId_:I

    return v0
.end method

.method public getSyncAnchor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2386
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->syncAnchor_:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 2414
    iget-wide v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->timestamp_:J

    return-wide v0
.end method

.method public hasAction()Z
    .locals 1

    .prologue
    .line 2392
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasAction:Z

    return v0
.end method

.method public hasDescription()Z
    .locals 1

    .prologue
    .line 2427
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasDescription:Z

    return v0
.end method

.method public hasFriendId()Z
    .locals 1

    .prologue
    .line 2406
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasFriendId:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 2420
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasId:Z

    return v0
.end method

.method public hasIsMe()Z
    .locals 1

    .prologue
    .line 2448
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasIsMe:Z

    return v0
.end method

.method public hasPictureName()Z
    .locals 1

    .prologue
    .line 2434
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasPictureName:Z

    return v0
.end method

.method public hasPictureURL()Z
    .locals 1

    .prologue
    .line 2441
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasPictureURL:Z

    return v0
.end method

.method public hasProviderId()Z
    .locals 1

    .prologue
    .line 2399
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasProviderId:Z

    return v0
.end method

.method public hasSyncAnchor()Z
    .locals 1

    .prologue
    .line 2385
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasSyncAnchor:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 2413
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasTimestamp:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 2378
    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_Mood_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$7100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2354
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->newBuilderForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2354
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->newBuilderForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;
    .locals 1

    .prologue
    .line 2522
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2354
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->toBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2354
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->toBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;
    .locals 1

    .prologue
    .line 2526
    invoke-static {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->newBuilder(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

    move-result-object v0

    return-object v0
.end method
