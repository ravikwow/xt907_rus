.class public final Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SessionsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SRPResponse1"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;,
        Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error;
    }
.end annotation


# static fields
.field public static final B_FIELD_NUMBER:I = 0x4

.field public static final CONTEXT_FIELD_NUMBER:I = 0x5

.field public static final ERROR_FIELD_NUMBER:I = 0x2

.field public static final SAVEDLOGIN_FIELD_NUMBER:I = 0x6

.field public static final S_FIELD_NUMBER:I = 0x3

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;


# instance fields
.field private b_:Ljava/lang/String;

.field private context_:J

.field private error_:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error;

.field private hasB:Z

.field private hasContext:Z

.field private hasError:Z

.field private hasS:Z

.field private hasSavedLogin:Z

.field private hasVersion:Z

.field private s_:Ljava/lang/String;

.field private savedLogin_:Ljava/lang/String;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 739
    new-instance v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->defaultInstance:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    .line 740
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internalForceInit()V

    .line 741
    sget-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->defaultInstance:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    invoke-direct {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->initFields()V

    .line 742
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 430
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->version_:I

    .line 444
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->s_:Ljava/lang/String;

    .line 451
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->b_:Ljava/lang/String;

    .line 458
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->context_:J

    .line 465
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->savedLogin_:Ljava/lang/String;

    .line 325
    invoke-direct {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->initFields()V

    .line 326
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$1;

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .param p1, "noInit"    # Z

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 430
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->version_:I

    .line 444
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->s_:Ljava/lang/String;

    .line 451
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->b_:Ljava/lang/String;

    .line 458
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->context_:J

    .line 465
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->savedLogin_:Ljava/lang/String;

    .line 327
    return-void
.end method

.method static synthetic access$1802(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;
    .param p1, "x1"    # Z

    .prologue
    .line 321
    iput-boolean p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->hasVersion:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;
    .param p1, "x1"    # I

    .prologue
    .line 321
    iput p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->version_:I

    return p1
.end method

.method static synthetic access$2002(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;
    .param p1, "x1"    # Z

    .prologue
    .line 321
    iput-boolean p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->hasError:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;
    .param p1, "x1"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->error_:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;
    .param p1, "x1"    # Z

    .prologue
    .line 321
    iput-boolean p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->hasS:Z

    return p1
.end method

.method static synthetic access$2302(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->s_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;
    .param p1, "x1"    # Z

    .prologue
    .line 321
    iput-boolean p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->hasB:Z

    return p1
.end method

.method static synthetic access$2502(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->b_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;
    .param p1, "x1"    # Z

    .prologue
    .line 321
    iput-boolean p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->hasContext:Z

    return p1
.end method

.method static synthetic access$2702(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;J)J
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;
    .param p1, "x1"    # J

    .prologue
    .line 321
    iput-wide p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->context_:J

    return-wide p1
.end method

.method static synthetic access$2802(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;
    .param p1, "x1"    # Z

    .prologue
    .line 321
    iput-boolean p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->hasSavedLogin:Z

    return p1
.end method

.method static synthetic access$2902(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->savedLogin_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;
    .locals 1

    .prologue
    .line 331
    sget-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->defaultInstance:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 340
    # getter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internal_static_SRPResponse1_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->access$1300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 470
    sget-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error;->WRONG_LOGIN:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error;

    iput-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->error_:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error;

    .line 471
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;
    .locals 1

    .prologue
    .line 539
    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->create()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->access$1600()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    .prologue
    .line 542
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 508
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;

    move-result-object v0

    .line 509
    .local v0, "builder":Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->access$1500(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    move-result-object v1

    .line 512
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 519
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;

    move-result-object v0

    .line 520
    .local v0, "builder":Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->access$1500(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    move-result-object v1

    .line 523
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 475
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;

    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->access$1500(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 481
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;

    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->access$1500(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 529
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;

    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->access$1500(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 535
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;

    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->access$1500(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 497
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;

    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->access$1500(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 503
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;

    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->access$1500(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 486
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;

    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->access$1500(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 492
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;

    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->access$1500(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->b_:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()J
    .locals 2

    .prologue
    .line 460
    iget-wide v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->context_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->getDefaultInstanceForType()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->getDefaultInstanceForType()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;
    .locals 1

    .prologue
    .line 335
    sget-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->defaultInstance:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->error_:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error;

    return-object v0
.end method

.method public getS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->s_:Ljava/lang/String;

    return-object v0
.end method

.method public getSavedLogin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->savedLogin_:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 432
    iget v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->version_:I

    return v0
.end method

.method public hasB()Z
    .locals 1

    .prologue
    .line 452
    iget-boolean v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->hasB:Z

    return v0
.end method

.method public hasContext()Z
    .locals 1

    .prologue
    .line 459
    iget-boolean v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->hasContext:Z

    return v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 438
    iget-boolean v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->hasError:Z

    return v0
.end method

.method public hasS()Z
    .locals 1

    .prologue
    .line 445
    iget-boolean v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->hasS:Z

    return v0
.end method

.method public hasSavedLogin()Z
    .locals 1

    .prologue
    .line 466
    iget-boolean v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->hasSavedLogin:Z

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 431
    iget-boolean v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->hasVersion:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 345
    # getter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internal_static_SRPResponse1_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->access$1400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->newBuilderForType()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->newBuilderForType()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;
    .locals 1

    .prologue
    .line 540
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->toBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->toBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;
    .locals 1

    .prologue
    .line 544
    invoke-static {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->newBuilder(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;

    move-result-object v0

    return-object v0
.end method
