.class public final Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;
.super Lcom/google/protobuf/GeneratedMessage;
.source "AdminFeedProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Header"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;
    }
.end annotation


# static fields
.field public static final POSTEDTIME_FIELD_NUMBER:I = 0x3

.field public static final TIMETOLIVE_FIELD_NUMBER:I = 0x4

.field public static final TYPE2_FIELD_NUMBER:I = 0x5

.field public static final TYPE_FIELD_NUMBER:I = 0x2

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;


# instance fields
.field private hasPostedTime:Z

.field private hasTimeToLive:Z

.field private hasType:Z

.field private hasType2:Z

.field private hasVersion:Z

.field private postedTime_:J

.field private timeToLive_:I

.field private type2_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType2;

.field private type_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 678
    new-instance v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->defaultInstance:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;

    .line 679
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol;->internalForceInit()V

    .line 680
    sget-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->defaultInstance:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->initFields()V

    .line 681
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 372
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 399
    iput v2, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->version_:I

    .line 413
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->postedTime_:J

    .line 420
    iput v2, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->timeToLive_:I

    .line 373
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->initFields()V

    .line 374
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$1;

    .prologue
    .line 369
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 3
    .param p1, "noInit"    # Z

    .prologue
    const/4 v2, 0x0

    .line 375
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 399
    iput v2, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->version_:I

    .line 413
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->postedTime_:J

    .line 420
    iput v2, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->timeToLive_:I

    .line 375
    return-void
.end method

.method static synthetic access$1202(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;
    .param p1, "x1"    # Z

    .prologue
    .line 369
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->hasVersion:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;
    .param p1, "x1"    # I

    .prologue
    .line 369
    iput p1, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->version_:I

    return p1
.end method

.method static synthetic access$1402(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;
    .param p1, "x1"    # Z

    .prologue
    .line 369
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->hasType:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;
    .param p1, "x1"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->type_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;
    .param p1, "x1"    # Z

    .prologue
    .line 369
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->hasPostedTime:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;J)J
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;
    .param p1, "x1"    # J

    .prologue
    .line 369
    iput-wide p1, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->postedTime_:J

    return-wide p1
.end method

.method static synthetic access$1802(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;
    .param p1, "x1"    # Z

    .prologue
    .line 369
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->hasTimeToLive:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;
    .param p1, "x1"    # I

    .prologue
    .line 369
    iput p1, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->timeToLive_:I

    return p1
.end method

.method static synthetic access$2002(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;
    .param p1, "x1"    # Z

    .prologue
    .line 369
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->hasType2:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType2;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType2;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;
    .param p1, "x1"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType2;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->type2_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType2;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;
    .locals 1

    .prologue
    .line 379
    sget-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->defaultInstance:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 388
    # getter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol;->internal_static_Header_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol;->access$700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 432
    sget-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;->UNKNOWN:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

    iput-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->type_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

    .line 433
    sget-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType2;->UNKNOWN2:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType2;

    iput-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->type2_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType2;

    .line 434
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;
    .locals 1

    .prologue
    .line 502
    # invokes: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;->create()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;->access$1000()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;

    .prologue
    .line 505
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 471
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;

    move-result-object v0

    .line 472
    .local v0, "builder":Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 473
    # invokes: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;->buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;->access$900(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;

    move-result-object v1

    .line 475
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 482
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;

    move-result-object v0

    .line 483
    .local v0, "builder":Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 484
    # invokes: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;->buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;->access$900(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;

    move-result-object v1

    .line 486
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 438
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;

    # invokes: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;->buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;->access$900(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 444
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;

    # invokes: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;->buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;->access$900(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 492
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;

    # invokes: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;->buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;->access$900(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 498
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;

    # invokes: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;->buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;->access$900(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 460
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;

    # invokes: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;->buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;->access$900(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 466
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;

    # invokes: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;->buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;->access$900(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 449
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;

    # invokes: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;->buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;->access$900(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 455
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;

    # invokes: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;->buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;->access$900(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;
    .locals 1

    .prologue
    .line 383
    sget-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->defaultInstance:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;

    return-object v0
.end method

.method public getPostedTime()J
    .locals 2

    .prologue
    .line 415
    iget-wide v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->postedTime_:J

    return-wide v0
.end method

.method public getTimeToLive()I
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->timeToLive_:I

    return v0
.end method

.method public getType()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->type_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

    return-object v0
.end method

.method public getType2()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType2;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->type2_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType2;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->version_:I

    return v0
.end method

.method public hasPostedTime()Z
    .locals 1

    .prologue
    .line 414
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->hasPostedTime:Z

    return v0
.end method

.method public hasTimeToLive()Z
    .locals 1

    .prologue
    .line 421
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->hasTimeToLive:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->hasType:Z

    return v0
.end method

.method public hasType2()Z
    .locals 1

    .prologue
    .line 428
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->hasType2:Z

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 400
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->hasVersion:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 393
    # getter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol;->internal_static_Header_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol;->access$800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->newBuilderForType()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->newBuilderForType()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;
    .locals 1

    .prologue
    .line 503
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->newBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->toBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->toBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;
    .locals 1

    .prologue
    .line 507
    invoke-static {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;->newBuilder(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$Header$Builder;

    move-result-object v0

    return-object v0
.end method
