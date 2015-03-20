.class public final Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;
.super Lcom/google/protobuf/GeneratedMessage;
.source "StatusProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StatusAndMoodAnchorChangeList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;
    }
.end annotation


# static fields
.field public static final MOODANCHORS_FIELD_NUMBER:I = 0x2

.field public static final STATUSANCHORS_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;


# instance fields
.field private moodAnchors_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private statusAnchors_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1434
    new-instance v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    .line 1435
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internalForceInit()V

    .line 1436
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->initFields()V

    .line 1437
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1127
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1153
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->statusAnchors_:Ljava/util/List;

    .line 1165
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->moodAnchors_:Ljava/util/List;

    .line 1128
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->initFields()V

    .line 1129
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;

    .prologue
    .line 1124
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 1130
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1153
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->statusAnchors_:Ljava/util/List;

    .line 1165
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->moodAnchors_:Ljava/util/List;

    .line 1130
    return-void
.end method

.method static synthetic access$3000(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->statusAnchors_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 1124
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->statusAnchors_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->moodAnchors_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 1124
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->moodAnchors_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;
    .locals 1

    .prologue
    .line 1134
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1143
    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusAndMoodAnchorChangeList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$2500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 1176
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;
    .locals 1

    .prologue
    .line 1244
    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->access$2800()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    .prologue
    .line 1247
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1213
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;

    move-result-object v0

    .line 1214
    .local v0, "builder":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1215
    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->access$2700(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    move-result-object v1

    .line 1217
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1224
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;

    move-result-object v0

    .line 1225
    .local v0, "builder":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1226
    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->access$2700(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    move-result-object v1

    .line 1228
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1180
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->access$2700(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1186
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->access$2700(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1234
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->access$2700(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1240
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->access$2700(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1202
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->access$2700(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1208
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->access$2700(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1191
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->access$2700(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1197
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->access$2700(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1124
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1124
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;
    .locals 1

    .prologue
    .line 1138
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    return-object v0
.end method

.method public getMoodAnchors(I)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->moodAnchors_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    return-object v0
.end method

.method public getMoodAnchorsCount()I
    .locals 1

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->moodAnchors_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMoodAnchorsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->moodAnchors_:Ljava/util/List;

    return-object v0
.end method

.method public getStatusAnchors(I)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->statusAnchors_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    return-object v0
.end method

.method public getStatusAnchorsCount()I
    .locals 1

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->statusAnchors_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getStatusAnchorsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->statusAnchors_:Ljava/util/List;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1148
    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusAndMoodAnchorChangeList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$2600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1124
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->newBuilderForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1124
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->newBuilderForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;
    .locals 1

    .prologue
    .line 1245
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1124
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->toBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1124
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->toBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;
    .locals 1

    .prologue
    .line 1249
    invoke-static {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->newBuilder(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;

    move-result-object v0

    return-object v0
.end method
