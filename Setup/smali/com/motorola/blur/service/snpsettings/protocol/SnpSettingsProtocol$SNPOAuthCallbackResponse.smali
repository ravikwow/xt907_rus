.class public final Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SnpSettingsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SNPOAuthCallbackResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;,
        Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;
    }
.end annotation


# static fields
.field public static final ERROR_FIELD_NUMBER:I = 0x4

.field public static final REAL_NAME_FIELD_NUMBER:I = 0x3

.field public static final SNPEXTENDEDERROR_FIELD_NUMBER:I = 0x5

.field public static final UID_FIELD_NUMBER:I = 0x1

.field public static final USER_NAME_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;


# instance fields
.field private error_:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

.field private hasError:Z

.field private hasRealName:Z

.field private hasSnpExtendedError:Z

.field private hasUid:Z

.field private hasUserName:Z

.field private realName_:Ljava/lang/String;

.field private snpExtendedError_:I

.field private uid_:Ljava/lang/String;

.field private userName_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3418
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->defaultInstance:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    .line 3419
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internalForceInit()V

    .line 3420
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->defaultInstance:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    invoke-direct {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->initFields()V

    .line 3421
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2807
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 3118
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->uid_:Ljava/lang/String;

    .line 3125
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->userName_:Ljava/lang/String;

    .line 3132
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->realName_:Ljava/lang/String;

    .line 3146
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->snpExtendedError_:I

    .line 2808
    invoke-direct {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->initFields()V

    .line 2809
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$1;

    .prologue
    .line 2804
    invoke-direct {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 2810
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 3118
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->uid_:Ljava/lang/String;

    .line 3125
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->userName_:Ljava/lang/String;

    .line 3132
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->realName_:Ljava/lang/String;

    .line 3146
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->snpExtendedError_:I

    .line 2810
    return-void
.end method

.method static synthetic access$12702(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 2804
    iput-boolean p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->hasUid:Z

    return p1
.end method

.method static synthetic access$12802(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2804
    iput-object p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->uid_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$12902(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 2804
    iput-boolean p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->hasUserName:Z

    return p1
.end method

.method static synthetic access$13002(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2804
    iput-object p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->userName_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$13102(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 2804
    iput-boolean p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->hasRealName:Z

    return p1
.end method

.method static synthetic access$13202(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2804
    iput-object p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->realName_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$13302(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 2804
    iput-boolean p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->hasError:Z

    return p1
.end method

.method static synthetic access$13400(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    .prologue
    .line 2804
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->error_:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    return-object v0
.end method

.method static synthetic access$13402(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    .prologue
    .line 2804
    iput-object p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->error_:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    return-object p1
.end method

.method static synthetic access$13502(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 2804
    iput-boolean p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->hasSnpExtendedError:Z

    return p1
.end method

.method static synthetic access$13602(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;
    .param p1, "x1"    # I

    .prologue
    .line 2804
    iput p1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->snpExtendedError_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;
    .locals 1

    .prologue
    .line 2814
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->defaultInstance:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2823
    # getter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_SNPOAuthCallbackResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->access$11500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 3151
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;->getDefaultInstance()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->error_:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    .line 3152
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;
    .locals 1

    .prologue
    .line 3220
    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->create()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->access$12500()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    .prologue
    .line 3223
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3189
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;

    move-result-object v0

    .line 3190
    .local v0, "builder":Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3191
    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->access$12400(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    move-result-object v1

    .line 3193
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3200
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;

    move-result-object v0

    .line 3201
    .local v0, "builder":Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3202
    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->access$12400(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    move-result-object v1

    .line 3204
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3156
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->access$12400(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3162
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->access$12400(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3210
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->access$12400(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3216
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->access$12400(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3178
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->access$12400(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3184
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->access$12400(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3167
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->access$12400(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3173
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;

    # invokes: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->access$12400(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2804
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2804
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;
    .locals 1

    .prologue
    .line 2818
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->defaultInstance:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;
    .locals 1

    .prologue
    .line 3141
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->error_:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    return-object v0
.end method

.method public getRealName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3134
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->realName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSnpExtendedError()I
    .locals 1

    .prologue
    .line 3148
    iget v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->snpExtendedError_:I

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3120
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->uid_:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3127
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->userName_:Ljava/lang/String;

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 3140
    iget-boolean v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->hasError:Z

    return v0
.end method

.method public hasRealName()Z
    .locals 1

    .prologue
    .line 3133
    iget-boolean v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->hasRealName:Z

    return v0
.end method

.method public hasSnpExtendedError()Z
    .locals 1

    .prologue
    .line 3147
    iget-boolean v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->hasSnpExtendedError:Z

    return v0
.end method

.method public hasUid()Z
    .locals 1

    .prologue
    .line 3119
    iget-boolean v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->hasUid:Z

    return v0
.end method

.method public hasUserName()Z
    .locals 1

    .prologue
    .line 3126
    iget-boolean v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->hasUserName:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 2828
    # getter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_SNPOAuthCallbackResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->access$11600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2804
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->newBuilderForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2804
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->newBuilderForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;
    .locals 1

    .prologue
    .line 3221
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2804
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->toBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2804
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->toBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;
    .locals 1

    .prologue
    .line 3225
    invoke-static {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->newBuilder(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;

    move-result-object v0

    return-object v0
.end method
