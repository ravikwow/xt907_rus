.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
.super Lcom/google/protobuf/GeneratedMessage;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TakeAccountSignature"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;
    }
.end annotation


# static fields
.field public static final CLOUDID_FIELD_NUMBER:I = 0x3

.field public static final CONTEXT_FIELD_NUMBER:I = 0x2

.field public static final NONCE_FIELD_NUMBER:I = 0x4

.field public static final SIGNATURE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;


# instance fields
.field private cloudid_:I

.field private context_:Ljava/lang/String;

.field private hasCloudid:Z

.field private hasContext:Z

.field private hasNonce:Z

.field private hasSignature:Z

.field private nonce_:Ljava/lang/String;

.field private signature_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6246
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    .line 6247
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internalForceInit()V

    .line 6248
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->initFields()V

    .line 6249
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 5964
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 5991
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->signature_:Ljava/lang/String;

    .line 5998
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->context_:Ljava/lang/String;

    .line 6005
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->cloudid_:I

    .line 6012
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->nonce_:Ljava/lang/String;

    .line 5965
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->initFields()V

    .line 5966
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;

    .prologue
    .line 5961
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 5967
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 5991
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->signature_:Ljava/lang/String;

    .line 5998
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->context_:Ljava/lang/String;

    .line 6005
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->cloudid_:I

    .line 6012
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->nonce_:Ljava/lang/String;

    .line 5967
    return-void
.end method

.method static synthetic access$20202(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    .param p1, "x1"    # Z

    .prologue
    .line 5961
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->hasSignature:Z

    return p1
.end method

.method static synthetic access$20302(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 5961
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->signature_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$20402(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    .param p1, "x1"    # Z

    .prologue
    .line 5961
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->hasContext:Z

    return p1
.end method

.method static synthetic access$20502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 5961
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->context_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$20602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    .param p1, "x1"    # Z

    .prologue
    .line 5961
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->hasCloudid:Z

    return p1
.end method

.method static synthetic access$20702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    .param p1, "x1"    # I

    .prologue
    .line 5961
    iput p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->cloudid_:I

    return p1
.end method

.method static synthetic access$20802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    .param p1, "x1"    # Z

    .prologue
    .line 5961
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->hasNonce:Z

    return p1
.end method

.method static synthetic access$20902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 5961
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->nonce_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    .locals 1

    .prologue
    .line 5971
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5980
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_TakeAccountSignature_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$19700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 6017
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;
    .locals 1

    .prologue
    .line 6085
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->access$20000()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    .prologue
    .line 6088
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6054
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;

    move-result-object v0

    .line 6055
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6056
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->access$19900(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    move-result-object v1

    .line 6058
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6065
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;

    move-result-object v0

    .line 6066
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6067
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->access$19900(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    move-result-object v1

    .line 6069
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6021
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->access$19900(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6027
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->access$19900(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6075
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->access$19900(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6081
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->access$19900(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6043
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->access$19900(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6049
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->access$19900(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6032
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->access$19900(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6038
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->access$19900(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCloudid()I
    .locals 1

    .prologue
    .line 6007
    iget v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->cloudid_:I

    return v0
.end method

.method public getContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6000
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->context_:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5961
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5961
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    .locals 1

    .prologue
    .line 5975
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6014
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->nonce_:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5993
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->signature_:Ljava/lang/String;

    return-object v0
.end method

.method public hasCloudid()Z
    .locals 1

    .prologue
    .line 6006
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->hasCloudid:Z

    return v0
.end method

.method public hasContext()Z
    .locals 1

    .prologue
    .line 5999
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->hasContext:Z

    return v0
.end method

.method public hasNonce()Z
    .locals 1

    .prologue
    .line 6013
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->hasNonce:Z

    return v0
.end method

.method public hasSignature()Z
    .locals 1

    .prologue
    .line 5992
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->hasSignature:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5985
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_TakeAccountSignature_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$19800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5961
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5961
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;
    .locals 1

    .prologue
    .line 6086
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5961
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5961
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;
    .locals 1

    .prologue
    .line 6090
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;

    move-result-object v0

    return-object v0
.end method
