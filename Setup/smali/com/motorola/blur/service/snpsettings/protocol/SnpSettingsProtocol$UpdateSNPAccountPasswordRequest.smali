.class public final Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SnpSettingsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateSNPAccountPasswordRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;
    }
.end annotation


# static fields
.field public static final CAPTCHA_TEXT_FIELD_NUMBER:I = 0x6

.field public static final CAPTCHA_TOKEN_FIELD_NUMBER:I = 0x5

.field public static final LOGIN_FIELD_NUMBER:I = 0x3

.field public static final PASSWORD_FIELD_NUMBER:I = 0x4

.field public static final TYPE_FIELD_NUMBER:I = 0x2

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;


# instance fields
.field private captchaText_:Ljava/lang/String;

.field private captchaToken_:Ljava/lang/String;

.field private hasCaptchaText:Z

.field private hasCaptchaToken:Z

.field private hasLogin:Z

.field private hasPassword:Z

.field private hasType:Z

.field private hasVersion:Z

.field private login_:Ljava/lang/String;

.field private password_:Ljava/lang/String;

.field private type_:Ljava/lang/String;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 966
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->defaultInstance:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    .line 967
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internalForceInit()V

    .line 968
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->defaultInstance:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    invoke-direct {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->initFields()V

    .line 969
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 628
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 655
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->version_:I

    .line 662
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->type_:Ljava/lang/String;

    .line 669
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->login_:Ljava/lang/String;

    .line 676
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->password_:Ljava/lang/String;

    .line 683
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->captchaToken_:Ljava/lang/String;

    .line 690
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->captchaText_:Ljava/lang/String;

    .line 629
    invoke-direct {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->initFields()V

    .line 630
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$1;

    .prologue
    .line 625
    invoke-direct {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 631
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 655
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->version_:I

    .line 662
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->type_:Ljava/lang/String;

    .line 669
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->login_:Ljava/lang/String;

    .line 676
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->password_:Ljava/lang/String;

    .line 683
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->captchaToken_:Ljava/lang/String;

    .line 690
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->captchaText_:Ljava/lang/String;

    .line 631
    return-void
.end method

.method static synthetic access$3302(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 625
    iput-boolean p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->hasVersion:Z

    return p1
.end method

.method static synthetic access$3402(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;
    .param p1, "x1"    # I

    .prologue
    .line 625
    iput p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->version_:I

    return p1
.end method

.method static synthetic access$3502(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 625
    iput-boolean p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->hasType:Z

    return p1
.end method

.method static synthetic access$3602(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 625
    iput-object p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->type_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3702(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 625
    iput-boolean p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->hasLogin:Z

    return p1
.end method

.method static synthetic access$3802(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 625
    iput-object p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->login_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3902(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 625
    iput-boolean p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->hasPassword:Z

    return p1
.end method

.method static synthetic access$4002(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 625
    iput-object p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->password_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4102(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 625
    iput-boolean p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->hasCaptchaToken:Z

    return p1
.end method

.method static synthetic access$4202(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 625
    iput-object p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->captchaToken_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4302(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 625
    iput-boolean p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->hasCaptchaText:Z

    return p1
.end method

.method static synthetic access$4402(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 625
    iput-object p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->captchaText_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;
    .locals 1

    .prologue
    .line 635
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->defaultInstance:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 644
    # getter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_UpdateSNPAccountPasswordRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->access$2800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 695
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;
    .locals 1

    .prologue
    .line 763
    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->create()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->access$3100()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    .prologue
    .line 766
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 732
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;

    move-result-object v0

    .line 733
    .local v0, "builder":Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 734
    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->access$3000(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    move-result-object v1

    .line 736
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 743
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;

    move-result-object v0

    .line 744
    .local v0, "builder":Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 745
    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->access$3000(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    move-result-object v1

    .line 747
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 699
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->access$3000(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 705
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->access$3000(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 753
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->access$3000(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 759
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->access$3000(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 721
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->access$3000(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 727
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->access$3000(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 710
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->access$3000(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 716
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->access$3000(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCaptchaText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->captchaText_:Ljava/lang/String;

    return-object v0
.end method

.method public getCaptchaToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->captchaToken_:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;
    .locals 1

    .prologue
    .line 639
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->defaultInstance:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    return-object v0
.end method

.method public getLogin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->login_:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->password_:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->type_:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 657
    iget v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->version_:I

    return v0
.end method

.method public hasCaptchaText()Z
    .locals 1

    .prologue
    .line 691
    iget-boolean v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->hasCaptchaText:Z

    return v0
.end method

.method public hasCaptchaToken()Z
    .locals 1

    .prologue
    .line 684
    iget-boolean v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->hasCaptchaToken:Z

    return v0
.end method

.method public hasLogin()Z
    .locals 1

    .prologue
    .line 670
    iget-boolean v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->hasLogin:Z

    return v0
.end method

.method public hasPassword()Z
    .locals 1

    .prologue
    .line 677
    iget-boolean v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->hasPassword:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 663
    iget-boolean v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->hasType:Z

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 656
    iget-boolean v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->hasVersion:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 649
    # getter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_UpdateSNPAccountPasswordRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->access$2900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->newBuilderForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->newBuilderForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;
    .locals 1

    .prologue
    .line 764
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->toBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->toBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;
    .locals 1

    .prologue
    .line 768
    invoke-static {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->newBuilder(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method
