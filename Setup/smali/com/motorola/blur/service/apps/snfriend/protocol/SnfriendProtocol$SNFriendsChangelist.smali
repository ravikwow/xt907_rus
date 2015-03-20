.class public final Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SnfriendProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SNFriendsChangelist"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;
    }
.end annotation


# static fields
.field public static final FRIENDS_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;


# instance fields
.field private friends_:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

.field private hasFriends:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 299
    new-instance v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->defaultInstance:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    .line 300
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->internalForceInit()V

    .line 301
    sget-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->defaultInstance:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->initFields()V

    .line 302
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 82
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->initFields()V

    .line 83
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$1;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "noInit"    # Z

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    return-void
.end method

.method static synthetic access$502(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->hasFriends:Z

    return p1
.end method

.method static synthetic access$600(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->friends_:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    return-object v0
.end method

.method static synthetic access$602(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;
    .param p1, "x1"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->friends_:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->defaultInstance:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 97
    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->internal_static_SNFriendsChangelist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 113
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->getDefaultInstance()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->friends_:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    .line 114
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;
    .locals 1

    .prologue
    .line 182
    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->create()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->access$300()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    .prologue
    .line 185
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;

    move-result-object v0

    .line 152
    .local v0, "builder":Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->access$200(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    move-result-object v1

    .line 155
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;

    move-result-object v0

    .line 163
    .local v0, "builder":Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->access$200(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    move-result-object v1

    .line 166
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;

    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->access$200(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;

    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->access$200(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;

    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->access$200(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;

    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->access$200(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;

    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->access$200(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;

    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->access$200(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;

    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->access$200(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;

    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->access$200(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->defaultInstance:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    return-object v0
.end method

.method public getFriends()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->friends_:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    return-object v0
.end method

.method public hasFriends()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->hasFriends:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 102
    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->internal_static_SNFriendsChangelist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->newBuilderForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->newBuilderForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;
    .locals 1

    .prologue
    .line 183
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->toBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->toBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;
    .locals 1

    .prologue
    .line 187
    invoke-static {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->newBuilder(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;

    move-result-object v0

    return-object v0
.end method
