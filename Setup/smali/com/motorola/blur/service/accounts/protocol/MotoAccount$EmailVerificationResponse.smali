.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EmailVerificationResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;
    }
.end annotation


# static fields
.field public static final ERROR_FIELD_NUMBER:I = 0x1

.field public static final MESSAGEINFO_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;


# instance fields
.field private error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field private hasError:Z

.field private hasMessageInfo:Z

.field private messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10581
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    .line 10582
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internalForceInit()V

    .line 10583
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->initFields()V

    .line 10584
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10334
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 10335
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->initFields()V

    .line 10336
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;

    .prologue
    .line 10331
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "noInit"    # Z

    .prologue
    .line 10337
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    return-void
.end method

.method static synthetic access$37302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 10331
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->hasError:Z

    return p1
.end method

.method static synthetic access$37402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .prologue
    .line 10331
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    return-object p1
.end method

.method static synthetic access$37502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 10331
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->hasMessageInfo:Z

    return p1
.end method

.method static synthetic access$37600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    .prologue
    .line 10331
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method static synthetic access$37602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 10331
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;
    .locals 1

    .prologue
    .line 10341
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 10350
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_EmailVerificationResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$36800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 10373
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->UNKNOWN_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 10374
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 10375
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;
    .locals 1

    .prologue
    .line 10443
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->access$37100()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    .prologue
    .line 10446
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10412
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;

    move-result-object v0

    .line 10413
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10414
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->access$37000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    move-result-object v1

    .line 10416
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10423
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;

    move-result-object v0

    .line 10424
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10425
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->access$37000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    move-result-object v1

    .line 10427
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10379
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->access$37000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10385
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->access$37000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10433
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->access$37000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10439
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->access$37000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10401
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->access$37000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10407
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->access$37000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10390
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->access$37000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10396
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->access$37000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 10331
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10331
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;
    .locals 1

    .prologue
    .line 10345
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 1

    .prologue
    .line 10363
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 10370
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 10362
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->hasError:Z

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 10369
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->hasMessageInfo:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 10355
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_EmailVerificationResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$36900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 10331
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10331
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;
    .locals 1

    .prologue
    .line 10444
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 10331
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10331
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;
    .locals 1

    .prologue
    .line 10448
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;

    move-result-object v0

    return-object v0
.end method
