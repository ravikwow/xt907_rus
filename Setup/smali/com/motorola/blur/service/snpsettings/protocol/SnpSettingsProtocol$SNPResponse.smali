.class public final Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SnpSettingsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SNPResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;,
        Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Error;
    }
.end annotation


# static fields
.field public static final CAPTCHAIMAGEBUF_FIELD_NUMBER:I = 0x8

.field public static final CAPTCHAIMAGETYPE_FIELD_NUMBER:I = 0x9

.field public static final CAPTCHAIMAGEURL_FIELD_NUMBER:I = 0x7

.field public static final CAPTCHATOKEN_FIELD_NUMBER:I = 0x6

.field public static final DISPLAYNAME_FIELD_NUMBER:I = 0x4

.field public static final ERROR_FIELD_NUMBER:I = 0x2

.field public static final SNPEXTENDEDERROR_FIELD_NUMBER:I = 0x5

.field public static final UID_FIELD_NUMBER:I = 0x3

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;


# instance fields
.field private captchaImageBuf_:Ljava/lang/String;

.field private captchaImageType_:Ljava/lang/String;

.field private captchaImageUrl_:Ljava/lang/String;

.field private captchaToken_:Ljava/lang/String;

.field private displayName_:Ljava/lang/String;

.field private error_:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Error;

.field private hasCaptchaImageBuf:Z

.field private hasCaptchaImageType:Z

.field private hasCaptchaImageUrl:Z

.field private hasCaptchaToken:Z

.field private hasDisplayName:Z

.field private hasError:Z

.field private hasSnpExtendedError:Z

.field private hasUid:Z

.field private hasVersion:Z

.field private snpExtendedError_:I

.field private uid_:Ljava/lang/String;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1697
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->defaultInstance:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;

    .line 1698
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internalForceInit()V

    .line 1699
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->defaultInstance:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;

    invoke-direct {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->initFields()V

    .line 1700
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 977
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1288
    iput v1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->version_:I

    .line 1302
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->uid_:Ljava/lang/String;

    .line 1309
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->displayName_:Ljava/lang/String;

    .line 1316
    iput v1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->snpExtendedError_:I

    .line 1323
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->captchaToken_:Ljava/lang/String;

    .line 1330
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->captchaImageUrl_:Ljava/lang/String;

    .line 1337
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->captchaImageBuf_:Ljava/lang/String;

    .line 1344
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->captchaImageType_:Ljava/lang/String;

    .line 978
    invoke-direct {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->initFields()V

    .line 979
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$1;

    .prologue
    .line 974
    invoke-direct {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .param p1, "noInit"    # Z

    .prologue
    const/4 v1, 0x0

    .line 980
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1288
    iput v1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->version_:I

    .line 1302
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->uid_:Ljava/lang/String;

    .line 1309
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->displayName_:Ljava/lang/String;

    .line 1316
    iput v1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->snpExtendedError_:I

    .line 1323
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->captchaToken_:Ljava/lang/String;

    .line 1330
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->captchaImageUrl_:Ljava/lang/String;

    .line 1337
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->captchaImageBuf_:Ljava/lang/String;

    .line 1344
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->captchaImageType_:Ljava/lang/String;

    .line 980
    return-void
.end method

.method static synthetic access$5702(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 974
    iput-boolean p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->hasVersion:Z

    return p1
.end method

.method static synthetic access$5802(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    .param p1, "x1"    # I

    .prologue
    .line 974
    iput p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->version_:I

    return p1
.end method

.method static synthetic access$5902(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 974
    iput-boolean p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->hasError:Z

    return p1
.end method

.method static synthetic access$6000(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Error;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;

    .prologue
    .line 974
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->error_:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Error;

    return-object v0
.end method

.method static synthetic access$6002(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Error;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Error;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Error;

    .prologue
    .line 974
    iput-object p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->error_:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Error;

    return-object p1
.end method

.method static synthetic access$6102(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 974
    iput-boolean p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->hasUid:Z

    return p1
.end method

.method static synthetic access$6202(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 974
    iput-object p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->uid_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6302(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 974
    iput-boolean p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->hasDisplayName:Z

    return p1
.end method

.method static synthetic access$6402(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 974
    iput-object p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->displayName_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6502(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 974
    iput-boolean p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->hasSnpExtendedError:Z

    return p1
.end method

.method static synthetic access$6602(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    .param p1, "x1"    # I

    .prologue
    .line 974
    iput p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->snpExtendedError_:I

    return p1
.end method

.method static synthetic access$6702(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 974
    iput-boolean p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->hasCaptchaToken:Z

    return p1
.end method

.method static synthetic access$6802(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 974
    iput-object p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->captchaToken_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6902(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 974
    iput-boolean p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->hasCaptchaImageUrl:Z

    return p1
.end method

.method static synthetic access$7002(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 974
    iput-object p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->captchaImageUrl_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7102(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 974
    iput-boolean p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->hasCaptchaImageBuf:Z

    return p1
.end method

.method static synthetic access$7202(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 974
    iput-object p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->captchaImageBuf_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7302(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 974
    iput-boolean p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->hasCaptchaImageType:Z

    return p1
.end method

.method static synthetic access$7402(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 974
    iput-object p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->captchaImageType_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    .locals 1

    .prologue
    .line 984
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->defaultInstance:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 993
    # getter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_SNPResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->access$4500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 1349
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Error;->getDefaultInstance()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Error;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->error_:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Error;

    .line 1350
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;
    .locals 1

    .prologue
    .line 1418
    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;->create()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;->access$5500()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;

    .prologue
    .line 1421
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1387
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;

    move-result-object v0

    .line 1388
    .local v0, "builder":Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1389
    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;->access$5400(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;

    move-result-object v1

    .line 1391
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1398
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;

    move-result-object v0

    .line 1399
    .local v0, "builder":Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1400
    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;->access$5400(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;

    move-result-object v1

    .line 1402
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1354
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;->access$5400(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1360
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;->access$5400(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1408
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;->access$5400(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1414
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;->access$5400(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1376
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;->access$5400(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1382
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;->access$5400(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1365
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;->access$5400(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1371
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;->access$5400(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCaptchaImageBuf()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->captchaImageBuf_:Ljava/lang/String;

    return-object v0
.end method

.method public getCaptchaImageType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->captchaImageType_:Ljava/lang/String;

    return-object v0
.end method

.method public getCaptchaImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->captchaImageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getCaptchaToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->captchaToken_:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 974
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 974
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    .locals 1

    .prologue
    .line 988
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->defaultInstance:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->displayName_:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Error;
    .locals 1

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->error_:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Error;

    return-object v0
.end method

.method public getSnpExtendedError()I
    .locals 1

    .prologue
    .line 1318
    iget v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->snpExtendedError_:I

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->uid_:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 1290
    iget v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->version_:I

    return v0
.end method

.method public hasCaptchaImageBuf()Z
    .locals 1

    .prologue
    .line 1338
    iget-boolean v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->hasCaptchaImageBuf:Z

    return v0
.end method

.method public hasCaptchaImageType()Z
    .locals 1

    .prologue
    .line 1345
    iget-boolean v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->hasCaptchaImageType:Z

    return v0
.end method

.method public hasCaptchaImageUrl()Z
    .locals 1

    .prologue
    .line 1331
    iget-boolean v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->hasCaptchaImageUrl:Z

    return v0
.end method

.method public hasCaptchaToken()Z
    .locals 1

    .prologue
    .line 1324
    iget-boolean v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->hasCaptchaToken:Z

    return v0
.end method

.method public hasDisplayName()Z
    .locals 1

    .prologue
    .line 1310
    iget-boolean v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->hasDisplayName:Z

    return v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 1296
    iget-boolean v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->hasError:Z

    return v0
.end method

.method public hasSnpExtendedError()Z
    .locals 1

    .prologue
    .line 1317
    iget-boolean v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->hasSnpExtendedError:Z

    return v0
.end method

.method public hasUid()Z
    .locals 1

    .prologue
    .line 1303
    iget-boolean v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->hasUid:Z

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 1289
    iget-boolean v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->hasVersion:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 998
    # getter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_SNPResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->access$4600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 974
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->newBuilderForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 974
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->newBuilderForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;
    .locals 1

    .prologue
    .line 1419
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 974
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->toBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 974
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->toBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;
    .locals 1

    .prologue
    .line 1423
    invoke-static {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->newBuilder(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse$Builder;

    move-result-object v0

    return-object v0
.end method
