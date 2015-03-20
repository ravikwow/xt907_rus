.class public final Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "EmailProvidersProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EmailProviderSettingRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;
    }
.end annotation


# static fields
.field public static final BLURVERSION_FIELD_NUMBER:I = 0x1

.field public static final CAPABILITIES_FIELD_NUMBER:I = 0x3

.field public static final EMAIL_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;


# instance fields
.field private blurVersion_:Ljava/lang/String;

.field private capabilities_:I

.field private email_:Ljava/lang/String;

.field private hasBlurVersion:Z

.field private hasCapabilities:Z

.field private hasEmail:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 268
    new-instance v0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->defaultInstance:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    .line 269
    invoke-static {}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol;->internalForceInit()V

    .line 270
    sget-object v0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->defaultInstance:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    invoke-direct {v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->initFields()V

    .line 271
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->blurVersion_:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->email_:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->capabilities_:I

    .line 15
    invoke-direct {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->initFields()V

    .line 16
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$1;

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->blurVersion_:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->email_:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->capabilities_:I

    .line 17
    return-void
.end method

.method static synthetic access$1002(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;
    .param p1, "x1"    # I

    .prologue
    .line 11
    iput p1, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->capabilities_:I

    return p1
.end method

.method static synthetic access$502(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->hasBlurVersion:Z

    return p1
.end method

.method static synthetic access$602(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->blurVersion_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->hasEmail:Z

    return p1
.end method

.method static synthetic access$802(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->email_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->hasCapabilities:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->defaultInstance:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 30
    # getter for: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol;->internal_static_EmailProviderSettingRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;
    .locals 1

    .prologue
    .line 128
    # invokes: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->create()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;
    invoke-static {}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->access$300()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    .prologue
    .line 131
    invoke-static {}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->newBuilder()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-static {}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->newBuilder()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;

    move-result-object v0

    .line 98
    .local v0, "builder":Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    # invokes: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->buildParsed()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->access$200(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    move-result-object v1

    .line 101
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->newBuilder()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;

    move-result-object v0

    .line 109
    .local v0, "builder":Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    # invokes: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->buildParsed()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->access$200(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    move-result-object v1

    .line 112
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->newBuilder()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;

    # invokes: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->buildParsed()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->access$200(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-static {}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->newBuilder()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;

    # invokes: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->buildParsed()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->access$200(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-static {}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->newBuilder()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;

    # invokes: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->buildParsed()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->access$200(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-static {}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->newBuilder()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;

    # invokes: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->buildParsed()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->access$200(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-static {}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->newBuilder()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;

    # invokes: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->buildParsed()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->access$200(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->newBuilder()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;

    # invokes: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->buildParsed()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->access$200(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->newBuilder()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;

    # invokes: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->buildParsed()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->access$200(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-static {}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->newBuilder()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;

    # invokes: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->buildParsed()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->access$200(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBlurVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->blurVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getCapabilities()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->capabilities_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->defaultInstance:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->email_:Ljava/lang/String;

    return-object v0
.end method

.method public hasBlurVersion()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->hasBlurVersion:Z

    return v0
.end method

.method public hasCapabilities()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->hasCapabilities:Z

    return v0
.end method

.method public hasEmail()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->hasEmail:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 35
    # getter for: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol;->internal_static_EmailProviderSettingRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->newBuilderForType()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->newBuilderForType()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;
    .locals 1

    .prologue
    .line 129
    invoke-static {}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->newBuilder()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->toBuilder()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->toBuilder()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;
    .locals 1

    .prologue
    .line 133
    invoke-static {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->newBuilder(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;

    move-result-object v0

    return-object v0
.end method
