.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SendVerifyEmailRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;
    }
.end annotation


# static fields
.field public static final APPINFO_FIELD_NUMBER:I = 0x2

.field public static final DEVICEINFO_FIELD_NUMBER:I = 0x4

.field public static final MESSAGEINFO_FIELD_NUMBER:I = 0x3

.field public static final SESSION_FIELD_NUMBER:I = 0x5

.field public static final USERINFO_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;


# instance fields
.field private appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

.field private deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

.field private hasAppInfo:Z

.field private hasDeviceInfo:Z

.field private hasMessageInfo:Z

.field private hasSession:Z

.field private hasUserInfo:Z

.field private messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

.field private session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

.field private userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2589
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    .line 2590
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internalForceInit()V

    .line 2591
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->initFields()V

    .line 2592
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2191
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2192
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->initFields()V

    .line 2193
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;

    .prologue
    .line 2188
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "noInit"    # Z

    .prologue
    .line 2194
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    return-void
.end method

.method static synthetic access$7902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 2188
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->hasUserInfo:Z

    return p1
.end method

.method static synthetic access$8000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    .prologue
    .line 2188
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    return-object v0
.end method

.method static synthetic access$8002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .prologue
    .line 2188
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    return-object p1
.end method

.method static synthetic access$8102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 2188
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->hasAppInfo:Z

    return p1
.end method

.method static synthetic access$8200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    .prologue
    .line 2188
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object v0
.end method

.method static synthetic access$8202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 2188
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object p1
.end method

.method static synthetic access$8302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 2188
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->hasMessageInfo:Z

    return p1
.end method

.method static synthetic access$8400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    .prologue
    .line 2188
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method static synthetic access$8402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 2188
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object p1
.end method

.method static synthetic access$8502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 2188
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->hasDeviceInfo:Z

    return p1
.end method

.method static synthetic access$8600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    .prologue
    .line 2188
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    return-object v0
.end method

.method static synthetic access$8602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .prologue
    .line 2188
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    return-object p1
.end method

.method static synthetic access$8702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 2188
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->hasSession:Z

    return p1
.end method

.method static synthetic access$8800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    .prologue
    .line 2188
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    return-object v0
.end method

.method static synthetic access$8802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    .prologue
    .line 2188
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;
    .locals 1

    .prologue
    .line 2198
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2207
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_SendVerifyEmailRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$7400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 2251
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 2252
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 2253
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 2254
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .line 2255
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    .line 2256
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;
    .locals 1

    .prologue
    .line 2324
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->access$7700()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    .prologue
    .line 2327
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2293
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;

    move-result-object v0

    .line 2294
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2295
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->access$7600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    move-result-object v1

    .line 2297
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2304
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;

    move-result-object v0

    .line 2305
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2306
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->access$7600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    move-result-object v1

    .line 2308
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2260
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->access$7600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2266
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->access$7600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2314
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->access$7600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2320
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->access$7600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2282
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->access$7600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2288
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->access$7600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2271
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->access$7600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2277
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->access$7600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1

    .prologue
    .line 2227
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2188
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2188
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;
    .locals 1

    .prologue
    .line 2202
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    return-object v0
.end method

.method public getDeviceInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .locals 1

    .prologue
    .line 2241
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 2234
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method public getSession()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    .locals 1

    .prologue
    .line 2248
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    return-object v0
.end method

.method public getUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1

    .prologue
    .line 2220
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    return-object v0
.end method

.method public hasAppInfo()Z
    .locals 1

    .prologue
    .line 2226
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->hasAppInfo:Z

    return v0
.end method

.method public hasDeviceInfo()Z
    .locals 1

    .prologue
    .line 2240
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->hasDeviceInfo:Z

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 2233
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->hasMessageInfo:Z

    return v0
.end method

.method public hasSession()Z
    .locals 1

    .prologue
    .line 2247
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->hasSession:Z

    return v0
.end method

.method public hasUserInfo()Z
    .locals 1

    .prologue
    .line 2219
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->hasUserInfo:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 2212
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_SendVerifyEmailRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$7500()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2188
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2188
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;
    .locals 1

    .prologue
    .line 2325
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2188
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2188
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;
    .locals 1

    .prologue
    .line 2329
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;

    move-result-object v0

    return-object v0
.end method
