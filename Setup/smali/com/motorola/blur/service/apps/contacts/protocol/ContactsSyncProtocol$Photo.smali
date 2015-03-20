.class public final Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ContactsSyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Photo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;
    }
.end annotation


# static fields
.field public static final URL_BIG_FIELD_NUMBER:I = 0x4

.field public static final URL_FIELD_NUMBER:I = 0x1

.field public static final URL_SMALL_FIELD_NUMBER:I = 0x3

.field public static final URL_SQUARE_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;


# instance fields
.field private hasUrl:Z

.field private hasUrlBig:Z

.field private hasUrlSmall:Z

.field private hasUrlSquare:Z

.field private urlBig_:Ljava/lang/String;

.field private urlSmall_:Ljava/lang/String;

.field private urlSquare_:Ljava/lang/String;

.field private url_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6920
    new-instance v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;->defaultInstance:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;

    .line 6921
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internalForceInit()V

    .line 6922
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;->defaultInstance:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;->initFields()V

    .line 6923
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 6635
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 6662
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;->url_:Ljava/lang/String;

    .line 6669
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;->urlSquare_:Ljava/lang/String;

    .line 6676
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;->urlSmall_:Ljava/lang/String;

    .line 6683
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;->urlBig_:Ljava/lang/String;

    .line 6636
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;->initFields()V

    .line 6637
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$1;

    .prologue
    .line 6632
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 6638
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 6662
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;->url_:Ljava/lang/String;

    .line 6669
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;->urlSquare_:Ljava/lang/String;

    .line 6676
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;->urlSmall_:Ljava/lang/String;

    .line 6683
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;->urlBig_:Ljava/lang/String;

    .line 6638
    return-void
.end method

.method static synthetic access$24202(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;
    .param p1, "x1"    # Z

    .prologue
    .line 6632
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;->hasUrl:Z

    return p1
.end method

.method static synthetic access$24302(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 6632
    iput-object p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;->url_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$24402(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;
    .param p1, "x1"    # Z

    .prologue
    .line 6632
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;->hasUrlSquare:Z

    return p1
.end method

.method static synthetic access$24502(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 6632
    iput-object p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;->urlSquare_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$24602(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;
    .param p1, "x1"    # Z

    .prologue
    .line 6632
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;->hasUrlSmall:Z

    return p1
.end method

.method static synthetic access$24702(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 6632
    iput-object p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;->urlSmall_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$24802(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;
    .param p1, "x1"    # Z

    .prologue
    .line 6632
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;->hasUrlBig:Z

    return p1
.end method

.method static synthetic access$24902(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 6632
    iput-object p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;->urlBig_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;
    .locals 1

    .prologue
    .line 6642
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;->defaultInstance:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6651
    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_Photo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->access$23700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 6688
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;
    .locals 1

    .prologue
    .line 6756
    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;->create()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;->access$24000()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;

    .prologue
    .line 6759
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6725
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;

    move-result-object v0

    .line 6726
    .local v0, "builder":Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6727
    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;->access$23900(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;

    move-result-object v1

    .line 6729
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6736
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;

    move-result-object v0

    .line 6737
    .local v0, "builder":Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6738
    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;->access$23900(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;

    move-result-object v1

    .line 6740
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6692
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;->access$23900(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6698
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;->access$23900(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6746
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;->access$23900(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6752
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;->access$23900(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6714
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;->access$23900(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6720
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;->access$23900(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6703
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;->access$23900(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6709
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;->access$23900(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6632
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6632
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;
    .locals 1

    .prologue
    .line 6646
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;->defaultInstance:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6664
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlBig()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6685
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;->urlBig_:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlSmall()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6678
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;->urlSmall_:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlSquare()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6671
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;->urlSquare_:Ljava/lang/String;

    return-object v0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 6663
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;->hasUrl:Z

    return v0
.end method

.method public hasUrlBig()Z
    .locals 1

    .prologue
    .line 6684
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;->hasUrlBig:Z

    return v0
.end method

.method public hasUrlSmall()Z
    .locals 1

    .prologue
    .line 6677
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;->hasUrlSmall:Z

    return v0
.end method

.method public hasUrlSquare()Z
    .locals 1

    .prologue
    .line 6670
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;->hasUrlSquare:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6656
    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_Photo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->access$23800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6632
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;->newBuilderForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6632
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;->newBuilderForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;
    .locals 1

    .prologue
    .line 6757
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6632
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;->toBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6632
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;->toBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;
    .locals 1

    .prologue
    .line 6761
    invoke-static {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;->newBuilder(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Photo$Builder;

    move-result-object v0

    return-object v0
.end method
