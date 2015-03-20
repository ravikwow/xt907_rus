.class public final Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;
.super Lcom/google/protobuf/GeneratedMessage;
.source "StatusProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MoodChanges"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;
    }
.end annotation


# static fields
.field public static final ADDS_FIELD_NUMBER:I = 0x1

.field public static final DELETES_FIELD_NUMBER:I = 0x3

.field public static final MODS_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;


# instance fields
.field private adds_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;",
            ">;"
        }
    .end annotation
.end field

.field private deletes_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;",
            ">;"
        }
    .end annotation
.end field

.field private mods_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1116
    new-instance v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    .line 1117
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internalForceInit()V

    .line 1118
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->initFields()V

    .line 1119
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 742
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 768
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->adds_:Ljava/util/List;

    .line 780
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->mods_:Ljava/util/List;

    .line 792
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->deletes_:Ljava/util/List;

    .line 743
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->initFields()V

    .line 744
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;

    .prologue
    .line 739
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 745
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 768
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->adds_:Ljava/util/List;

    .line 780
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->mods_:Ljava/util/List;

    .line 792
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->deletes_:Ljava/util/List;

    .line 745
    return-void
.end method

.method static synthetic access$2200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    .prologue
    .line 739
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->adds_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 739
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->adds_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    .prologue
    .line 739
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->mods_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 739
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->mods_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    .prologue
    .line 739
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->deletes_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 739
    iput-object p1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->deletes_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;
    .locals 1

    .prologue
    .line 749
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 758
    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_MoodChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$1700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 803
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;
    .locals 1

    .prologue
    .line 871
    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->access$2000()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    .prologue
    .line 874
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 840
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;

    move-result-object v0

    .line 841
    .local v0, "builder":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 842
    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->access$1900(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    move-result-object v1

    .line 844
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 851
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;

    move-result-object v0

    .line 852
    .local v0, "builder":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 853
    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->access$1900(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    move-result-object v1

    .line 855
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 807
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->access$1900(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 813
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->access$1900(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 861
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->access$1900(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 867
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->access$1900(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 829
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->access$1900(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 835
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->access$1900(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 818
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->access$1900(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 824
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;

    # invokes: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->access$1900(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAdds(I)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 775
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->adds_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    return-object v0
.end method

.method public getAddsCount()I
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->adds_:Ljava/util/List;

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
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;",
            ">;"
        }
    .end annotation

    .prologue
    .line 771
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->adds_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;
    .locals 1

    .prologue
    .line 753
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->defaultInstance:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    return-object v0
.end method

.method public getDeletes(I)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 799
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->deletes_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    return-object v0
.end method

.method public getDeletesCount()I
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->deletes_:Ljava/util/List;

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
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;",
            ">;"
        }
    .end annotation

    .prologue
    .line 795
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->deletes_:Ljava/util/List;

    return-object v0
.end method

.method public getMods(I)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 787
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->mods_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    return-object v0
.end method

.method public getModsCount()I
    .locals 1

    .prologue
    .line 785
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->mods_:Ljava/util/List;

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
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;",
            ">;"
        }
    .end annotation

    .prologue
    .line 783
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->mods_:Ljava/util/List;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 763
    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_MoodChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$1800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->newBuilderForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->newBuilderForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;
    .locals 1

    .prologue
    .line 872
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->newBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->toBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->toBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;
    .locals 1

    .prologue
    .line 876
    invoke-static {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->newBuilder(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;

    move-result-object v0

    return-object v0
.end method
