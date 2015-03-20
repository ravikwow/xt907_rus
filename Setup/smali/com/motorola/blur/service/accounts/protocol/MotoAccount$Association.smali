.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Association"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;
    }
.end annotation


# static fields
.field public static final APPINFO_FIELD_NUMBER:I = 0x1

.field public static final DEVICEINFO_FIELD_NUMBER:I = 0x2

.field public static final USERID_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;


# instance fields
.field private appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

.field private deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

.field private hasAppInfo:Z

.field private hasDeviceInfo:Z

.field private hasUserId:Z

.field private userId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12498
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    .line 12499
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internalForceInit()V

    .line 12500
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->initFields()V

    .line 12501
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12207
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 12248
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->userId_:Ljava/lang/String;

    .line 12208
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->initFields()V

    .line 12209
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;

    .prologue
    .line 12204
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 12210
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 12248
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->userId_:Ljava/lang/String;

    .line 12210
    return-void
.end method

.method static synthetic access$44102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
    .param p1, "x1"    # Z

    .prologue
    .line 12204
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->hasAppInfo:Z

    return p1
.end method

.method static synthetic access$44200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    .prologue
    .line 12204
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object v0
.end method

.method static synthetic access$44202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 12204
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object p1
.end method

.method static synthetic access$44302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
    .param p1, "x1"    # Z

    .prologue
    .line 12204
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->hasDeviceInfo:Z

    return p1
.end method

.method static synthetic access$44400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    .prologue
    .line 12204
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    return-object v0
.end method

.method static synthetic access$44402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .prologue
    .line 12204
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    return-object p1
.end method

.method static synthetic access$44502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
    .param p1, "x1"    # Z

    .prologue
    .line 12204
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->hasUserId:Z

    return p1
.end method

.method static synthetic access$44602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 12204
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->userId_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
    .locals 1

    .prologue
    .line 12214
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 12223
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_Association_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$43600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 12253
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 12254
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .line 12255
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;
    .locals 1

    .prologue
    .line 12323
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->access$43900()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    .prologue
    .line 12326
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12292
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;

    move-result-object v0

    .line 12293
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12294
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->access$43800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    move-result-object v1

    .line 12296
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12303
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;

    move-result-object v0

    .line 12304
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12305
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->access$43800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    move-result-object v1

    .line 12307
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12259
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->access$43800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12265
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->access$43800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12313
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->access$43800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12319
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->access$43800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12281
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->access$43800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12287
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->access$43800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12270
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->access$43800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12276
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->access$43800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1

    .prologue
    .line 12236
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 12204
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12204
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
    .locals 1

    .prologue
    .line 12218
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    return-object v0
.end method

.method public getDeviceInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .locals 1

    .prologue
    .line 12243
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12250
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->userId_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAppInfo()Z
    .locals 1

    .prologue
    .line 12235
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->hasAppInfo:Z

    return v0
.end method

.method public hasDeviceInfo()Z
    .locals 1

    .prologue
    .line 12242
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->hasDeviceInfo:Z

    return v0
.end method

.method public hasUserId()Z
    .locals 1

    .prologue
    .line 12249
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->hasUserId:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 12228
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_Association_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$43700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 12204
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 12204
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;
    .locals 1

    .prologue
    .line 12324
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 12204
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 12204
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;
    .locals 1

    .prologue
    .line 12328
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;

    move-result-object v0

    return-object v0
.end method
