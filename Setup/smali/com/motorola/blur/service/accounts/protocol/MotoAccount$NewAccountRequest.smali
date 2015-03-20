.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NewAccountRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;
    }
.end annotation


# static fields
.field public static final APPINFO_FIELD_NUMBER:I = 0x2

.field public static final DEVICEINFO_FIELD_NUMBER:I = 0x3

.field public static final MESSAGEINFO_FIELD_NUMBER:I = 0x4

.field public static final USERINFO_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;


# instance fields
.field private appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

.field private deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

.field private hasAppInfo:Z

.field private hasDeviceInfo:Z

.field private hasMessageInfo:Z

.field private hasUserInfo:Z

.field private messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

.field private userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 565
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    .line 566
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internalForceInit()V

    .line 567
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->initFields()V

    .line 568
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 213
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->initFields()V

    .line 214
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "noInit"    # Z

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->hasMessageInfo:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object p1
.end method

.method static synthetic access$502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->hasUserInfo:Z

    return p1
.end method

.method static synthetic access$600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    return-object v0
.end method

.method static synthetic access$602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    return-object p1
.end method

.method static synthetic access$702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->hasAppInfo:Z

    return p1
.end method

.method static synthetic access$800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object v0
.end method

.method static synthetic access$802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object p1
.end method

.method static synthetic access$902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->hasDeviceInfo:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;
    .locals 1

    .prologue
    .line 219
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 228
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_NewAccountRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 265
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 266
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 267
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .line 268
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 269
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;
    .locals 1

    .prologue
    .line 337
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->access$300()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    .prologue
    .line 340
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;

    move-result-object v0

    .line 307
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->access$200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    move-result-object v1

    .line 310
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;

    move-result-object v0

    .line 318
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->access$200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    move-result-object v1

    .line 321
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 273
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->access$200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 279
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->access$200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 327
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->access$200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 333
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->access$200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->access$200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 301
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->access$200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 284
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->access$200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 290
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->access$200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;
    .locals 1

    .prologue
    .line 223
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    return-object v0
.end method

.method public getDeviceInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method public getUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    return-object v0
.end method

.method public hasAppInfo()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->hasAppInfo:Z

    return v0
.end method

.method public hasDeviceInfo()Z
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->hasDeviceInfo:Z

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->hasMessageInfo:Z

    return v0
.end method

.method public hasUserInfo()Z
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->hasUserInfo:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 233
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_NewAccountRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;
    .locals 1

    .prologue
    .line 338
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;
    .locals 1

    .prologue
    .line 342
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method
