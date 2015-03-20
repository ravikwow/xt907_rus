.class public final Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SnpSettingsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InvokeSNPOAuthCallbackUrlRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;
    }
.end annotation


# static fields
.field public static final REAUTH_FIELD_NUMBER:I = 0x3

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field public static final URL_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;


# instance fields
.field private hasReauth:Z

.field private hasType:Z

.field private hasUrl:Z

.field private reauth_:Z

.field private type_:Ljava/lang/String;

.field private url_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2796
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->defaultInstance:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    .line 2797
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internalForceInit()V

    .line 2798
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->defaultInstance:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    invoke-direct {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->initFields()V

    .line 2799
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2542
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2569
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->type_:Ljava/lang/String;

    .line 2576
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->url_:Ljava/lang/String;

    .line 2583
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->reauth_:Z

    .line 2543
    invoke-direct {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->initFields()V

    .line 2544
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$1;

    .prologue
    .line 2539
    invoke-direct {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 2545
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2569
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->type_:Ljava/lang/String;

    .line 2576
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->url_:Ljava/lang/String;

    .line 2583
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->reauth_:Z

    .line 2545
    return-void
.end method

.method static synthetic access$10902(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 2539
    iput-boolean p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->hasType:Z

    return p1
.end method

.method static synthetic access$11002(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2539
    iput-object p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->type_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$11102(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 2539
    iput-boolean p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->hasUrl:Z

    return p1
.end method

.method static synthetic access$11202(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2539
    iput-object p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->url_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$11302(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 2539
    iput-boolean p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->hasReauth:Z

    return p1
.end method

.method static synthetic access$11402(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 2539
    iput-boolean p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->reauth_:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;
    .locals 1

    .prologue
    .line 2549
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->defaultInstance:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2558
    # getter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_InvokeSNPOAuthCallbackUrlRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->access$10400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 2588
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;
    .locals 1

    .prologue
    .line 2656
    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->create()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->access$10700()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    .prologue
    .line 2659
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2625
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;

    move-result-object v0

    .line 2626
    .local v0, "builder":Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2627
    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->access$10600(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    move-result-object v1

    .line 2629
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2636
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;

    move-result-object v0

    .line 2637
    .local v0, "builder":Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2638
    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->access$10600(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    move-result-object v1

    .line 2640
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2592
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->access$10600(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2598
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->access$10600(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2646
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->access$10600(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2652
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->access$10600(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2614
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->access$10600(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2620
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->access$10600(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2603
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->access$10600(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2609
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->access$10600(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2539
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2539
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;
    .locals 1

    .prologue
    .line 2553
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->defaultInstance:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    return-object v0
.end method

.method public getReauth()Z
    .locals 1

    .prologue
    .line 2585
    iget-boolean v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->reauth_:Z

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2571
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->type_:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2578
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public hasReauth()Z
    .locals 1

    .prologue
    .line 2584
    iget-boolean v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->hasReauth:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 2570
    iget-boolean v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->hasType:Z

    return v0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 2577
    iget-boolean v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->hasUrl:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 2563
    # getter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_InvokeSNPOAuthCallbackUrlRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->access$10500()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2539
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->newBuilderForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2539
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->newBuilderForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;
    .locals 1

    .prologue
    .line 2657
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2539
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->toBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2539
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->toBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;
    .locals 1

    .prologue
    .line 2661
    invoke-static {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->newBuilder(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;

    move-result-object v0

    return-object v0
.end method
