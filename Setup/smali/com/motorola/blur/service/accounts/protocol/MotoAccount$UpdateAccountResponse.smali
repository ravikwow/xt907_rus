.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateAccountResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;
    }
.end annotation


# static fields
.field public static final ERROR_FIELD_NUMBER:I = 0x1

.field public static final MESSAGEINFO_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;


# instance fields
.field private error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field private hasError:Z

.field private hasMessageInfo:Z

.field private messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3424
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    .line 3425
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internalForceInit()V

    .line 3426
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->initFields()V

    .line 3427
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3177
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 3178
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->initFields()V

    .line 3179
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;

    .prologue
    .line 3174
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "noInit"    # Z

    .prologue
    .line 3180
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    return-void
.end method

.method static synthetic access$11402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 3174
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->hasError:Z

    return p1
.end method

.method static synthetic access$11502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .prologue
    .line 3174
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    return-object p1
.end method

.method static synthetic access$11602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 3174
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->hasMessageInfo:Z

    return p1
.end method

.method static synthetic access$11700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    .prologue
    .line 3174
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method static synthetic access$11702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 3174
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;
    .locals 1

    .prologue
    .line 3184
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3193
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_UpdateAccountResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$10900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 3216
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->UNKNOWN_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 3217
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 3218
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;
    .locals 1

    .prologue
    .line 3286
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->access$11200()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    .prologue
    .line 3289
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3255
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;

    move-result-object v0

    .line 3256
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3257
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->access$11100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    move-result-object v1

    .line 3259
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3266
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;

    move-result-object v0

    .line 3267
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3268
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->access$11100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    move-result-object v1

    .line 3270
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3222
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->access$11100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3228
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->access$11100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3276
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->access$11100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3282
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->access$11100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3244
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->access$11100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3250
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->access$11100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3233
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->access$11100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3239
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->access$11100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3174
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3174
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;
    .locals 1

    .prologue
    .line 3188
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 1

    .prologue
    .line 3206
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 3213
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 3205
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->hasError:Z

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 3212
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->hasMessageInfo:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 3198
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_UpdateAccountResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$11000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3174
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3174
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;
    .locals 1

    .prologue
    .line 3287
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3174
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3174
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;
    .locals 1

    .prologue
    .line 3291
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method
