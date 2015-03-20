.class public final Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SnpSettingsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SNPOAuthURLResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;,
        Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;
    }
.end annotation


# static fields
.field public static final CALLBACK_FIELD_NUMBER:I = 0x2

.field public static final ERROR_FIELD_NUMBER:I = 0x4

.field public static final SNPEXTENDEDERROR_FIELD_NUMBER:I = 0x5

.field public static final TOKEN_FIELD_NUMBER:I = 0x3

.field public static final URL_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;


# instance fields
.field private callback_:Ljava/lang/String;

.field private error_:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;

.field private hasCallback:Z

.field private hasError:Z

.field private hasSnpExtendedError:Z

.field private hasToken:Z

.field private hasUrl:Z

.field private snpExtendedError_:I

.field private token_:Ljava/lang/String;

.field private url_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2531
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->defaultInstance:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    .line 2532
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internalForceInit()V

    .line 2533
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->defaultInstance:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    invoke-direct {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->initFields()V

    .line 2534
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1920
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2231
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->url_:Ljava/lang/String;

    .line 2238
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->callback_:Ljava/lang/String;

    .line 2245
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->token_:Ljava/lang/String;

    .line 2259
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->snpExtendedError_:I

    .line 1921
    invoke-direct {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->initFields()V

    .line 1922
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$1;

    .prologue
    .line 1917
    invoke-direct {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 1923
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2231
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->url_:Ljava/lang/String;

    .line 2238
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->callback_:Ljava/lang/String;

    .line 2245
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->token_:Ljava/lang/String;

    .line 2259
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->snpExtendedError_:I

    .line 1923
    return-void
.end method

.method static synthetic access$10002(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 1917
    iput-boolean p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->hasError:Z

    return p1
.end method

.method static synthetic access$10100(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    .prologue
    .line 1917
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->error_:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;

    return-object v0
.end method

.method static synthetic access$10102(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;

    .prologue
    .line 1917
    iput-object p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->error_:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;

    return-object p1
.end method

.method static synthetic access$10202(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 1917
    iput-boolean p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->hasSnpExtendedError:Z

    return p1
.end method

.method static synthetic access$10302(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;
    .param p1, "x1"    # I

    .prologue
    .line 1917
    iput p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->snpExtendedError_:I

    return p1
.end method

.method static synthetic access$9402(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 1917
    iput-boolean p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->hasUrl:Z

    return p1
.end method

.method static synthetic access$9502(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1917
    iput-object p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->url_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$9602(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 1917
    iput-boolean p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->hasCallback:Z

    return p1
.end method

.method static synthetic access$9702(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1917
    iput-object p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->callback_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$9802(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 1917
    iput-boolean p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->hasToken:Z

    return p1
.end method

.method static synthetic access$9902(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1917
    iput-object p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->token_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;
    .locals 1

    .prologue
    .line 1927
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->defaultInstance:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1936
    # getter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_SNPOAuthURLResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->access$8200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 2264
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;->getDefaultInstance()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->error_:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;

    .line 2265
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;
    .locals 1

    .prologue
    .line 2333
    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->create()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->access$9200()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    .prologue
    .line 2336
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2302
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;

    move-result-object v0

    .line 2303
    .local v0, "builder":Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2304
    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->access$9100(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    move-result-object v1

    .line 2306
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2313
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;

    move-result-object v0

    .line 2314
    .local v0, "builder":Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2315
    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->access$9100(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    move-result-object v1

    .line 2317
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2269
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->access$9100(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2275
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->access$9100(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2323
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->access$9100(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2329
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->access$9100(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2291
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->access$9100(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2297
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->access$9100(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2280
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->access$9100(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2286
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->access$9100(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCallback()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2240
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->callback_:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1917
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1917
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;
    .locals 1

    .prologue
    .line 1931
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->defaultInstance:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;
    .locals 1

    .prologue
    .line 2254
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->error_:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;

    return-object v0
.end method

.method public getSnpExtendedError()I
    .locals 1

    .prologue
    .line 2261
    iget v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->snpExtendedError_:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2247
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->token_:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2233
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public hasCallback()Z
    .locals 1

    .prologue
    .line 2239
    iget-boolean v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->hasCallback:Z

    return v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 2253
    iget-boolean v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->hasError:Z

    return v0
.end method

.method public hasSnpExtendedError()Z
    .locals 1

    .prologue
    .line 2260
    iget-boolean v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->hasSnpExtendedError:Z

    return v0
.end method

.method public hasToken()Z
    .locals 1

    .prologue
    .line 2246
    iget-boolean v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->hasToken:Z

    return v0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 2232
    iget-boolean v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->hasUrl:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1941
    # getter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_SNPOAuthURLResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->access$8300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1917
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->newBuilderForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1917
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->newBuilderForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;
    .locals 1

    .prologue
    .line 2334
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1917
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->toBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1917
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->toBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;
    .locals 1

    .prologue
    .line 2338
    invoke-static {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->newBuilder(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;

    move-result-object v0

    return-object v0
.end method
