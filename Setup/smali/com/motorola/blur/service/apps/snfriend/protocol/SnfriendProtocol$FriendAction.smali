.class public final Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SnfriendProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FriendAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;
    }
.end annotation


# static fields
.field public static final NAME_FIELD_NUMBER:I = 0x2

.field public static final PROVIDERPARAMS_FIELD_NUMBER:I = 0x4

.field public static final USERPARAMS_FIELD_NUMBER:I = 0x3

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;


# instance fields
.field private hasName:Z

.field private hasProviderParams:Z

.field private hasVersion:Z

.field private name_:Ljava/lang/String;

.field private providerParams_:Ljava/lang/String;

.field private userParams_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;",
            ">;"
        }
    .end annotation
.end field

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1973
    new-instance v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->defaultInstance:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    .line 1974
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->internalForceInit()V

    .line 1975
    sget-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->defaultInstance:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->initFields()V

    .line 1976
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1652
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1679
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->version_:I

    .line 1686
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->name_:Ljava/lang/String;

    .line 1692
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->userParams_:Ljava/util/List;

    .line 1705
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->providerParams_:Ljava/lang/String;

    .line 1653
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->initFields()V

    .line 1654
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$1;

    .prologue
    .line 1649
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 1655
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1679
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->version_:I

    .line 1686
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->name_:Ljava/lang/String;

    .line 1692
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->userParams_:Ljava/util/List;

    .line 1705
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->providerParams_:Ljava/lang/String;

    .line 1655
    return-void
.end method

.method static synthetic access$5700(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    .prologue
    .line 1649
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->userParams_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5702(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 1649
    iput-object p1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->userParams_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5802(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;
    .param p1, "x1"    # Z

    .prologue
    .line 1649
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->hasVersion:Z

    return p1
.end method

.method static synthetic access$5902(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;
    .param p1, "x1"    # I

    .prologue
    .line 1649
    iput p1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->version_:I

    return p1
.end method

.method static synthetic access$6002(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;
    .param p1, "x1"    # Z

    .prologue
    .line 1649
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->hasName:Z

    return p1
.end method

.method static synthetic access$6102(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1649
    iput-object p1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->name_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6202(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;
    .param p1, "x1"    # Z

    .prologue
    .line 1649
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->hasProviderParams:Z

    return p1
.end method

.method static synthetic access$6302(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1649
    iput-object p1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->providerParams_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;
    .locals 1

    .prologue
    .line 1659
    sget-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->defaultInstance:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1668
    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->internal_static_FriendAction_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->access$5200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 1710
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;
    .locals 1

    .prologue
    .line 1778
    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->create()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->access$5500()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    .prologue
    .line 1781
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1747
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;

    move-result-object v0

    .line 1748
    .local v0, "builder":Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1749
    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->access$5400(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    move-result-object v1

    .line 1751
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1758
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;

    move-result-object v0

    .line 1759
    .local v0, "builder":Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1760
    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->access$5400(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    move-result-object v1

    .line 1762
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1714
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;

    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->access$5400(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1720
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;

    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->access$5400(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1768
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;

    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->access$5400(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1774
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;

    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->access$5400(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1736
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;

    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->access$5400(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1742
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;

    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->access$5400(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1725
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;

    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->access$5400(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1731
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;

    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->access$5400(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1649
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1649
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;
    .locals 1

    .prologue
    .line 1663
    sget-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->defaultInstance:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1707
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->providerParams_:Ljava/lang/String;

    return-object v0
.end method

.method public getUserParams(I)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1699
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->userParams_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    return-object v0
.end method

.method public getUserParamsCount()I
    .locals 1

    .prologue
    .line 1697
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->userParams_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUserParamsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1695
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->userParams_:Ljava/util/List;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 1681
    iget v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->version_:I

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 1687
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->hasName:Z

    return v0
.end method

.method public hasProviderParams()Z
    .locals 1

    .prologue
    .line 1706
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->hasProviderParams:Z

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 1680
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->hasVersion:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1673
    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->internal_static_FriendAction_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->access$5300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1649
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->newBuilderForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1649
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->newBuilderForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;
    .locals 1

    .prologue
    .line 1779
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1649
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->toBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1649
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->toBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;
    .locals 1

    .prologue
    .line 1783
    invoke-static {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->newBuilder(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;

    move-result-object v0

    return-object v0
.end method
