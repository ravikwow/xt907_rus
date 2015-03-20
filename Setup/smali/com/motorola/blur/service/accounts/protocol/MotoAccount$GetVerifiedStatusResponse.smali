.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetVerifiedStatusResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;
    }
.end annotation


# static fields
.field public static final ERROR_FIELD_NUMBER:I = 0x1

.field public static final MESSAGEINFO_FIELD_NUMBER:I = 0x2

.field public static final VERIFICATIONSTATUS_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;


# instance fields
.field private error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field private hasError:Z

.field private hasMessageInfo:Z

.field private hasVerificationStatus:Z

.field private messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

.field private verificationStatus_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1485
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    .line 1486
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internalForceInit()V

    .line 1487
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->initFields()V

    .line 1488
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1209
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1210
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->initFields()V

    .line 1211
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;

    .prologue
    .line 1206
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "noInit"    # Z

    .prologue
    .line 1212
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    return-void
.end method

.method static synthetic access$4202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 1206
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->hasError:Z

    return p1
.end method

.method static synthetic access$4302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .prologue
    .line 1206
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    return-object p1
.end method

.method static synthetic access$4402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 1206
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->hasMessageInfo:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 1206
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object p1
.end method

.method static synthetic access$4602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 1206
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->hasVerificationStatus:Z

    return p1
.end method

.method static synthetic access$4702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;

    .prologue
    .line 1206
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->verificationStatus_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;
    .locals 1

    .prologue
    .line 1216
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1225
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_GetVerifiedStatusResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$3700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 1255
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->UNKNOWN_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 1256
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 1257
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;->VERIFIED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->verificationStatus_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;

    .line 1258
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;
    .locals 1

    .prologue
    .line 1326
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->access$4000()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    .prologue
    .line 1329
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1295
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;

    move-result-object v0

    .line 1296
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1297
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->access$3900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    move-result-object v1

    .line 1299
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1306
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;

    move-result-object v0

    .line 1307
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1308
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->access$3900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    move-result-object v1

    .line 1310
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1262
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->access$3900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1268
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->access$3900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1316
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->access$3900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1322
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->access$3900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1284
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->access$3900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1290
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->access$3900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1273
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->access$3900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1279
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->access$3900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1206
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1206
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;
    .locals 1

    .prologue
    .line 1220
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 1

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method public getVerificationStatus()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;
    .locals 1

    .prologue
    .line 1252
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->verificationStatus_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 1237
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->hasError:Z

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 1244
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->hasMessageInfo:Z

    return v0
.end method

.method public hasVerificationStatus()Z
    .locals 1

    .prologue
    .line 1251
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->hasVerificationStatus:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1230
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_GetVerifiedStatusResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$3800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1206
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1206
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;
    .locals 1

    .prologue
    .line 1327
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1206
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1206
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;
    .locals 1

    .prologue
    .line 1331
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method
