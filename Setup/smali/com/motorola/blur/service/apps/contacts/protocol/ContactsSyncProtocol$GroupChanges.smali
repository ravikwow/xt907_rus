.class public final Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ContactsSyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupChanges"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;
    }
.end annotation


# static fields
.field public static final ADDS_FIELD_NUMBER:I = 0x1

.field public static final DELETES_FIELD_NUMBER:I = 0x3

.field public static final MODS_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;


# instance fields
.field private adds_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Group;",
            ">;"
        }
    .end annotation
.end field

.field private deletes_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Group;",
            ">;"
        }
    .end annotation
.end field

.field private mods_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Group;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1137
    new-instance v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->defaultInstance:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;

    .line 1138
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internalForceInit()V

    .line 1139
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->defaultInstance:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->initFields()V

    .line 1140
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 763
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 789
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->adds_:Ljava/util/List;

    .line 801
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->mods_:Ljava/util/List;

    .line 813
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->deletes_:Ljava/util/List;

    .line 764
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->initFields()V

    .line 765
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$1;

    .prologue
    .line 760
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 766
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 789
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->adds_:Ljava/util/List;

    .line 801
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->mods_:Ljava/util/List;

    .line 813
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->deletes_:Ljava/util/List;

    .line 766
    return-void
.end method

.method static synthetic access$2600(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;

    .prologue
    .line 760
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->adds_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 760
    iput-object p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->adds_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;

    .prologue
    .line 760
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->mods_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 760
    iput-object p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->mods_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;

    .prologue
    .line 760
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->deletes_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 760
    iput-object p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->deletes_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;
    .locals 1

    .prologue
    .line 770
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->defaultInstance:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 779
    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_GroupChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->access$2100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 824
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;
    .locals 1

    .prologue
    .line 892
    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;->create()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;->access$2400()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;

    .prologue
    .line 895
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 861
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;

    move-result-object v0

    .line 862
    .local v0, "builder":Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 863
    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;->access$2300(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;

    move-result-object v1

    .line 865
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 872
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;

    move-result-object v0

    .line 873
    .local v0, "builder":Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 874
    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;->access$2300(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;

    move-result-object v1

    .line 876
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 828
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;->access$2300(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 834
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;->access$2300(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 882
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;->access$2300(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 888
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;->access$2300(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 850
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;->access$2300(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 856
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;->access$2300(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 839
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;->access$2300(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 845
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;->access$2300(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAdds(I)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Group;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 796
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->adds_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Group;

    return-object v0
.end method

.method public getAddsCount()I
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->adds_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAddsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Group;",
            ">;"
        }
    .end annotation

    .prologue
    .line 792
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->adds_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 760
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 760
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;
    .locals 1

    .prologue
    .line 774
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->defaultInstance:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;

    return-object v0
.end method

.method public getDeletes(I)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Group;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 820
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->deletes_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Group;

    return-object v0
.end method

.method public getDeletesCount()I
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->deletes_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDeletesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Group;",
            ">;"
        }
    .end annotation

    .prologue
    .line 816
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->deletes_:Ljava/util/List;

    return-object v0
.end method

.method public getMods(I)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Group;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 808
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->mods_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Group;

    return-object v0
.end method

.method public getModsCount()I
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->mods_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getModsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Group;",
            ">;"
        }
    .end annotation

    .prologue
    .line 804
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->mods_:Ljava/util/List;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 784
    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_GroupChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->access$2200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 760
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->newBuilderForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 760
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->newBuilderForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;
    .locals 1

    .prologue
    .line 893
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 760
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->toBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 760
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->toBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;
    .locals 1

    .prologue
    .line 897
    invoke-static {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->newBuilder(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;

    move-result-object v0

    return-object v0
.end method
