.class public final Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ProvisioningProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NewAccountSignature"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;
    }
.end annotation


# static fields
.field public static final CLOUDID_FIELD_NUMBER:I = 0x3

.field public static final CONTEXT_FIELD_NUMBER:I = 0x2

.field public static final SIGNATURE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;


# instance fields
.field private cloudid_:I

.field private context_:Ljava/lang/String;

.field private hasCloudid:Z

.field private hasContext:Z

.field private hasSignature:Z

.field private signature_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3212
    new-instance v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->defaultInstance:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    .line 3213
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internalForceInit()V

    .line 3214
    sget-object v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->defaultInstance:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    invoke-direct {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->initFields()V

    .line 3215
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2958
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2985
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->signature_:Ljava/lang/String;

    .line 2992
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->context_:Ljava/lang/String;

    .line 2999
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->cloudid_:I

    .line 2959
    invoke-direct {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->initFields()V

    .line 2960
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$1;

    .prologue
    .line 2955
    invoke-direct {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 2961
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2985
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->signature_:Ljava/lang/String;

    .line 2992
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->context_:Ljava/lang/String;

    .line 2999
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->cloudid_:I

    .line 2961
    return-void
.end method

.method static synthetic access$12302(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    .param p1, "x1"    # Z

    .prologue
    .line 2955
    iput-boolean p1, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->hasSignature:Z

    return p1
.end method

.method static synthetic access$12402(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2955
    iput-object p1, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->signature_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$12502(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    .param p1, "x1"    # Z

    .prologue
    .line 2955
    iput-boolean p1, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->hasContext:Z

    return p1
.end method

.method static synthetic access$12602(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2955
    iput-object p1, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->context_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$12702(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    .param p1, "x1"    # Z

    .prologue
    .line 2955
    iput-boolean p1, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->hasCloudid:Z

    return p1
.end method

.method static synthetic access$12802(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    .param p1, "x1"    # I

    .prologue
    .line 2955
    iput p1, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->cloudid_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    .locals 1

    .prologue
    .line 2965
    sget-object v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->defaultInstance:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2974
    # getter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_NewAccountSignature_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->access$11800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 3004
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;
    .locals 1

    .prologue
    .line 3072
    # invokes: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->create()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->access$12100()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    .prologue
    .line 3075
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3041
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;

    move-result-object v0

    .line 3042
    .local v0, "builder":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3043
    # invokes: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->buildParsed()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->access$12000(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    move-result-object v1

    .line 3045
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3052
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;

    move-result-object v0

    .line 3053
    .local v0, "builder":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3054
    # invokes: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->buildParsed()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->access$12000(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    move-result-object v1

    .line 3056
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3008
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;

    # invokes: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->buildParsed()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->access$12000(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3014
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;

    # invokes: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->buildParsed()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->access$12000(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3062
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;

    # invokes: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->buildParsed()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->access$12000(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3068
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;

    # invokes: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->buildParsed()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->access$12000(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3030
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;

    # invokes: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->buildParsed()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->access$12000(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3036
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;

    # invokes: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->buildParsed()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->access$12000(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3019
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;

    # invokes: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->buildParsed()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->access$12000(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3025
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;

    # invokes: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->buildParsed()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->access$12000(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCloudid()I
    .locals 1

    .prologue
    .line 3001
    iget v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->cloudid_:I

    return v0
.end method

.method public getContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2994
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->context_:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2955
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->getDefaultInstanceForType()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2955
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->getDefaultInstanceForType()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    .locals 1

    .prologue
    .line 2969
    sget-object v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->defaultInstance:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2987
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->signature_:Ljava/lang/String;

    return-object v0
.end method

.method public hasCloudid()Z
    .locals 1

    .prologue
    .line 3000
    iget-boolean v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->hasCloudid:Z

    return v0
.end method

.method public hasContext()Z
    .locals 1

    .prologue
    .line 2993
    iget-boolean v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->hasContext:Z

    return v0
.end method

.method public hasSignature()Z
    .locals 1

    .prologue
    .line 2986
    iget-boolean v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->hasSignature:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 2979
    # getter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_NewAccountSignature_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->access$11900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2955
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->newBuilderForType()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2955
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->newBuilderForType()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;
    .locals 1

    .prologue
    .line 3073
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2955
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->toBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2955
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->toBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;
    .locals 1

    .prologue
    .line 3077
    invoke-static {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->newBuilder(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;

    move-result-object v0

    return-object v0
.end method
