.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VerifyAccountRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;
    }
.end annotation


# static fields
.field public static final APPINFO_FIELD_NUMBER:I = 0x2

.field public static final DEVICEINFO_FIELD_NUMBER:I = 0x4

.field public static final MESSAGEINFO_FIELD_NUMBER:I = 0x3

.field public static final PIN_FIELD_NUMBER:I = 0x6

.field public static final SESSION_FIELD_NUMBER:I = 0x5

.field public static final USERINFO_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;


# instance fields
.field private appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

.field private deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

.field private hasAppInfo:Z

.field private hasDeviceInfo:Z

.field private hasMessageInfo:Z

.field private hasPin:Z

.field private hasSession:Z

.field private hasUserInfo:Z

.field private messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

.field private pin_:Ljava/lang/String;

.field private session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

.field private userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1922
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    .line 1923
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internalForceInit()V

    .line 1924
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->initFields()V

    .line 1925
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1496
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1558
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->pin_:Ljava/lang/String;

    .line 1497
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->initFields()V

    .line 1498
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;

    .prologue
    .line 1493
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 1499
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1558
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->pin_:Ljava/lang/String;

    .line 1499
    return-void
.end method

.method static synthetic access$5302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 1493
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->hasUserInfo:Z

    return p1
.end method

.method static synthetic access$5400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    return-object v0
.end method

.method static synthetic access$5402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .prologue
    .line 1493
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    return-object p1
.end method

.method static synthetic access$5502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 1493
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->hasAppInfo:Z

    return p1
.end method

.method static synthetic access$5600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object v0
.end method

.method static synthetic access$5602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 1493
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object p1
.end method

.method static synthetic access$5702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 1493
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->hasMessageInfo:Z

    return p1
.end method

.method static synthetic access$5800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method static synthetic access$5802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 1493
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object p1
.end method

.method static synthetic access$5902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 1493
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->hasDeviceInfo:Z

    return p1
.end method

.method static synthetic access$6000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    return-object v0
.end method

.method static synthetic access$6002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .prologue
    .line 1493
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    return-object p1
.end method

.method static synthetic access$6102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 1493
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->hasSession:Z

    return p1
.end method

.method static synthetic access$6200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    return-object v0
.end method

.method static synthetic access$6202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    .prologue
    .line 1493
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    return-object p1
.end method

.method static synthetic access$6302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 1493
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->hasPin:Z

    return p1
.end method

.method static synthetic access$6402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1493
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->pin_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;
    .locals 1

    .prologue
    .line 1503
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1512
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_VerifyAccountRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$4800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 1563
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 1564
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 1565
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 1566
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .line 1567
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    .line 1568
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;
    .locals 1

    .prologue
    .line 1636
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->access$5100()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    .prologue
    .line 1639
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1605
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;

    move-result-object v0

    .line 1606
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1607
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->access$5000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    move-result-object v1

    .line 1609
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1616
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;

    move-result-object v0

    .line 1617
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1618
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->access$5000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    move-result-object v1

    .line 1620
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1572
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->access$5000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1578
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->access$5000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1626
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->access$5000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1632
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->access$5000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1594
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->access$5000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1600
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->access$5000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1583
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->access$5000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1589
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->access$5000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1

    .prologue
    .line 1532
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1493
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1493
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;
    .locals 1

    .prologue
    .line 1507
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    return-object v0
.end method

.method public getDeviceInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .locals 1

    .prologue
    .line 1546
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 1539
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method public getPin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1560
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->pin_:Ljava/lang/String;

    return-object v0
.end method

.method public getSession()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    .locals 1

    .prologue
    .line 1553
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    return-object v0
.end method

.method public getUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1

    .prologue
    .line 1525
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    return-object v0
.end method

.method public hasAppInfo()Z
    .locals 1

    .prologue
    .line 1531
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->hasAppInfo:Z

    return v0
.end method

.method public hasDeviceInfo()Z
    .locals 1

    .prologue
    .line 1545
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->hasDeviceInfo:Z

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 1538
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->hasMessageInfo:Z

    return v0
.end method

.method public hasPin()Z
    .locals 1

    .prologue
    .line 1559
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->hasPin:Z

    return v0
.end method

.method public hasSession()Z
    .locals 1

    .prologue
    .line 1552
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->hasSession:Z

    return v0
.end method

.method public hasUserInfo()Z
    .locals 1

    .prologue
    .line 1524
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->hasUserInfo:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1517
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_VerifyAccountRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$4900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1493
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1493
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;
    .locals 1

    .prologue
    .line 1637
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1493
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1493
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;
    .locals 1

    .prologue
    .line 1641
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method
