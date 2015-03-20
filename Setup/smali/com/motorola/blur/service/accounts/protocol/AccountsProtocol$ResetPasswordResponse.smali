.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResetPasswordResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;,
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Error;
    }
.end annotation


# static fields
.field public static final ERROR_FIELD_NUMBER:I = 0x2

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;


# instance fields
.field private error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Error;

.field private hasError:Z

.field private hasVersion:Z

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1430
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    .line 1431
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internalForceInit()V

    .line 1432
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->initFields()V

    .line 1433
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1132
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1230
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->version_:I

    .line 1133
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->initFields()V

    .line 1134
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;

    .prologue
    .line 1129
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 1135
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1230
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->version_:I

    .line 1135
    return-void
.end method

.method static synthetic access$4302(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 1129
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->hasVersion:Z

    return p1
.end method

.method static synthetic access$4402(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;
    .param p1, "x1"    # I

    .prologue
    .line 1129
    iput p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->version_:I

    return p1
.end method

.method static synthetic access$4502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 1129
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->hasError:Z

    return p1
.end method

.method static synthetic access$4602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Error;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Error;

    .prologue
    .line 1129
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Error;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;
    .locals 1

    .prologue
    .line 1139
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1148
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ResetPasswordResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$3800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 1242
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Error;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Error;

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Error;

    .line 1243
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;
    .locals 1

    .prologue
    .line 1311
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->access$4100()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    .prologue
    .line 1314
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1280
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;

    move-result-object v0

    .line 1281
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1282
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->access$4000(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    move-result-object v1

    .line 1284
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1291
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;

    move-result-object v0

    .line 1292
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1293
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->access$4000(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    move-result-object v1

    .line 1295
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1247
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->access$4000(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1253
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->access$4000(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1301
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->access$4000(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1307
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->access$4000(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1269
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->access$4000(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1275
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->access$4000(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1258
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->access$4000(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1264
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->access$4000(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1129
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1129
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;
    .locals 1

    .prologue
    .line 1143
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Error;
    .locals 1

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Error;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 1232
    iget v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->version_:I

    return v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 1238
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->hasError:Z

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 1231
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->hasVersion:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1153
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ResetPasswordResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$3900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1129
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1129
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;
    .locals 1

    .prologue
    .line 1312
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1129
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1129
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;
    .locals 1

    .prologue
    .line 1316
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method
