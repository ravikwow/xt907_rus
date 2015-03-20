.class public final Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SnfriendProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Friend"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;
    }
.end annotation


# static fields
.field public static final DATA_FIELD_NUMBER:I = 0x4

.field public static final FRIENDID_FIELD_NUMBER:I = 0x3

.field public static final IS_RESET_FIELD_NUMBER:I = 0x5

.field public static final NON_MUTUAL_FRIEND_FIELD_NUMBER:I = 0x6

.field public static final PROVIDER_FIELD_NUMBER:I = 0x2

.field public static final SYNC_ID_FIELD_NUMBER:I = 0x1

.field public static final URIS_FIELD_NUMBER:I = 0x7

.field private static final defaultInstance:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;


# instance fields
.field private data_:Ljava/lang/String;

.field private friendid_:Ljava/lang/String;

.field private hasData:Z

.field private hasFriendid:Z

.field private hasIsReset:Z

.field private hasNonMutualFriend:Z

.field private hasProvider:Z

.field private hasSyncId:Z

.field private isReset_:Z

.field private nonMutualFriend_:Z

.field private provider_:Ljava/lang/String;

.field private syncId_:Ljava/lang/String;

.field private uris_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1164
    new-instance v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->defaultInstance:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    .line 1165
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->internalForceInit()V

    .line 1166
    sget-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->defaultInstance:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->initFields()V

    .line 1167
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 762
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 789
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->syncId_:Ljava/lang/String;

    .line 796
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->provider_:Ljava/lang/String;

    .line 803
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->friendid_:Ljava/lang/String;

    .line 810
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->data_:Ljava/lang/String;

    .line 817
    iput-boolean v1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->isReset_:Z

    .line 824
    iput-boolean v1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->nonMutualFriend_:Z

    .line 830
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->uris_:Ljava/util/List;

    .line 763
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->initFields()V

    .line 764
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$1;

    .prologue
    .line 759
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .param p1, "noInit"    # Z

    .prologue
    const/4 v1, 0x0

    .line 765
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 789
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->syncId_:Ljava/lang/String;

    .line 796
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->provider_:Ljava/lang/String;

    .line 803
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->friendid_:Ljava/lang/String;

    .line 810
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->data_:Ljava/lang/String;

    .line 817
    iput-boolean v1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->isReset_:Z

    .line 824
    iput-boolean v1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->nonMutualFriend_:Z

    .line 830
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->uris_:Ljava/util/List;

    .line 765
    return-void
.end method

.method static synthetic access$2100(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    .prologue
    .line 759
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->uris_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 759
    iput-object p1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->uris_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;
    .param p1, "x1"    # Z

    .prologue
    .line 759
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->hasSyncId:Z

    return p1
.end method

.method static synthetic access$2302(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 759
    iput-object p1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->syncId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;
    .param p1, "x1"    # Z

    .prologue
    .line 759
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->hasProvider:Z

    return p1
.end method

.method static synthetic access$2502(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 759
    iput-object p1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->provider_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;
    .param p1, "x1"    # Z

    .prologue
    .line 759
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->hasFriendid:Z

    return p1
.end method

.method static synthetic access$2702(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 759
    iput-object p1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->friendid_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;
    .param p1, "x1"    # Z

    .prologue
    .line 759
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->hasData:Z

    return p1
.end method

.method static synthetic access$2902(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 759
    iput-object p1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->data_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3002(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;
    .param p1, "x1"    # Z

    .prologue
    .line 759
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->hasIsReset:Z

    return p1
.end method

.method static synthetic access$3102(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;
    .param p1, "x1"    # Z

    .prologue
    .line 759
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->isReset_:Z

    return p1
.end method

.method static synthetic access$3202(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;
    .param p1, "x1"    # Z

    .prologue
    .line 759
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->hasNonMutualFriend:Z

    return p1
.end method

.method static synthetic access$3302(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;
    .param p1, "x1"    # Z

    .prologue
    .line 759
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->nonMutualFriend_:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;
    .locals 1

    .prologue
    .line 769
    sget-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->defaultInstance:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 778
    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->internal_static_Friend_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->access$1600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 841
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;
    .locals 1

    .prologue
    .line 909
    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->create()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->access$1900()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    .prologue
    .line 912
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 878
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;

    move-result-object v0

    .line 879
    .local v0, "builder":Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 880
    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->access$1800(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    move-result-object v1

    .line 882
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 889
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;

    move-result-object v0

    .line 890
    .local v0, "builder":Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 891
    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->access$1800(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    move-result-object v1

    .line 893
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 845
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;

    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->access$1800(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 851
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;

    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->access$1800(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 899
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;

    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->access$1800(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 905
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;

    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->access$1800(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 867
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;

    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->access$1800(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 873
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;

    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->access$1800(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 856
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;

    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->access$1800(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 862
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;

    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->access$1800(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->data_:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 759
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 759
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;
    .locals 1

    .prologue
    .line 773
    sget-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->defaultInstance:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    return-object v0
.end method

.method public getFriendid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->friendid_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsReset()Z
    .locals 1

    .prologue
    .line 819
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->isReset_:Z

    return v0
.end method

.method public getNonMutualFriend()Z
    .locals 1

    .prologue
    .line 826
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->nonMutualFriend_:Z

    return v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->provider_:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->syncId_:Ljava/lang/String;

    return-object v0
.end method

.method public getUris(I)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 837
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->uris_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    return-object v0
.end method

.method public getUrisCount()I
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->uris_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUrisList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 833
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->uris_:Ljava/util/List;

    return-object v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 811
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->hasData:Z

    return v0
.end method

.method public hasFriendid()Z
    .locals 1

    .prologue
    .line 804
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->hasFriendid:Z

    return v0
.end method

.method public hasIsReset()Z
    .locals 1

    .prologue
    .line 818
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->hasIsReset:Z

    return v0
.end method

.method public hasNonMutualFriend()Z
    .locals 1

    .prologue
    .line 825
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->hasNonMutualFriend:Z

    return v0
.end method

.method public hasProvider()Z
    .locals 1

    .prologue
    .line 797
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->hasProvider:Z

    return v0
.end method

.method public hasSyncId()Z
    .locals 1

    .prologue
    .line 790
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->hasSyncId:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 783
    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->internal_static_Friend_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->access$1700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 759
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->newBuilderForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 759
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->newBuilderForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;
    .locals 1

    .prologue
    .line 910
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 759
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->toBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 759
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->toBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;
    .locals 1

    .prologue
    .line 914
    invoke-static {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->newBuilder(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;

    move-result-object v0

    return-object v0
.end method
