.class public final Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;
.super Lcom/google/protobuf/GeneratedMessage;
.source "StatusProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StatusChangelist"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;
    }
.end annotation


# static fields
.field public static final MOODS_FIELD_NUMBER:I = 0x2

.field public static final STATUSES_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;


# instance fields
.field private hasMoods:Z

.field private hasStatuses:Z

.field private moods_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

.field private statuses_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 346
    new-instance v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    .line 347
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internalForceInit()V

    .line 348
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->initFields()V

    .line 349
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 84
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->initFields()V

    .line 85
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "noInit"    # Z

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    return-void
.end method

.method static synthetic access$502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->hasStatuses:Z

    return p1
.end method

.method static synthetic access$600(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->statuses_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    return-object v0
.end method

.method static synthetic access$602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;
    .param p1, "x1"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->statuses_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    return-object p1
.end method

.method static synthetic access$702(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->hasMoods:Z

    return p1
.end method

.method static synthetic access$800(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->moods_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    return-object v0
.end method

.method static synthetic access$802(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;
    .param p1, "x1"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->moods_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 99
    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusChangelist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 122
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->statuses_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    .line 123
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->moods_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    .line 124
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;
    .locals 1

    .prologue
    .line 192
    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->access$300()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    .prologue
    .line 195
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;

    move-result-object v0

    .line 162
    .local v0, "builder":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->access$200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    move-result-object v1

    .line 165
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;

    move-result-object v0

    .line 173
    .local v0, "builder":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->access$200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    move-result-object v1

    .line 176
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->access$200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->access$200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->access$200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->access$200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->access$200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->access$200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->access$200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->access$200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    return-object v0
.end method

.method public getMoods()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->moods_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    return-object v0
.end method

.method public getStatuses()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->statuses_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    return-object v0
.end method

.method public hasMoods()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->hasMoods:Z

    return v0
.end method

.method public hasStatuses()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->hasStatuses:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 104
    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusChangelist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->newBuilderForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->newBuilderForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;
    .locals 1

    .prologue
    .line 193
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->toBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->toBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;
    .locals 1

    .prologue
    .line 197
    invoke-static {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->newBuilder(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;

    move-result-object v0

    return-object v0
.end method
