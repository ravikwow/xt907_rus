.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AccountLoginRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;
    }
.end annotation


# static fields
.field public static final ACCOUNTINFO_FIELD_NUMBER:I = 0x7

.field public static final APPINFO_FIELD_NUMBER:I = 0x2

.field public static final DEVICEINFO_FIELD_NUMBER:I = 0x3

.field public static final MESSAGEINFO_FIELD_NUMBER:I = 0x6

.field public static final RESTOREACCOUNT_FIELD_NUMBER:I = 0x4

.field public static final RESTOREDATATYPES_FIELD_NUMBER:I = 0x5

.field public static final USERINFO_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;


# instance fields
.field private accountInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

.field private appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

.field private deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

.field private hasAccountInfo:Z

.field private hasAppInfo:Z

.field private hasDeviceInfo:Z

.field private hasMessageInfo:Z

.field private hasRestoreAccount:Z

.field private hasUserInfo:Z

.field private messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

.field private restoreAccount_:Z

.field private restoreDataTypes_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;",
            ">;"
        }
    .end annotation
.end field

.field private userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 5280
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    .line 5281
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internalForceInit()V

    .line 5282
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->initFields()V

    .line 5283
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 4801
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 4849
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->restoreAccount_:Z

    .line 4855
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->restoreDataTypes_:Ljava/util/List;

    .line 4802
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->initFields()V

    .line 4803
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;

    .prologue
    .line 4798
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 4804
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 4849
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->restoreAccount_:Z

    .line 4855
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->restoreDataTypes_:Ljava/util/List;

    .line 4804
    return-void
.end method

.method static synthetic access$17300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    .prologue
    .line 4798
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->restoreDataTypes_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$17302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 4798
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->restoreDataTypes_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$17402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 4798
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->hasUserInfo:Z

    return p1
.end method

.method static synthetic access$17500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    .prologue
    .line 4798
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    return-object v0
.end method

.method static synthetic access$17502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .prologue
    .line 4798
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    return-object p1
.end method

.method static synthetic access$17602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 4798
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->hasAppInfo:Z

    return p1
.end method

.method static synthetic access$17700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    .prologue
    .line 4798
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object v0
.end method

.method static synthetic access$17702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 4798
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object p1
.end method

.method static synthetic access$17802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 4798
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->hasDeviceInfo:Z

    return p1
.end method

.method static synthetic access$17900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    .prologue
    .line 4798
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    return-object v0
.end method

.method static synthetic access$17902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .prologue
    .line 4798
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    return-object p1
.end method

.method static synthetic access$18002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 4798
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->hasRestoreAccount:Z

    return p1
.end method

.method static synthetic access$18102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 4798
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->restoreAccount_:Z

    return p1
.end method

.method static synthetic access$18202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 4798
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->hasMessageInfo:Z

    return p1
.end method

.method static synthetic access$18300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    .prologue
    .line 4798
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method static synthetic access$18302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 4798
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object p1
.end method

.method static synthetic access$18402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 4798
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->hasAccountInfo:Z

    return p1
.end method

.method static synthetic access$18500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    .prologue
    .line 4798
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->accountInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    return-object v0
.end method

.method static synthetic access$18502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    .prologue
    .line 4798
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->accountInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;
    .locals 1

    .prologue
    .line 4808
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4817
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_AccountLoginRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$16800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 4880
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 4881
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 4882
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .line 4883
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 4884
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->accountInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    .line 4885
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;
    .locals 1

    .prologue
    .line 4953
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->access$17100()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    .prologue
    .line 4956
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4922
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;

    move-result-object v0

    .line 4923
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4924
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->access$17000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    move-result-object v1

    .line 4926
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4933
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;

    move-result-object v0

    .line 4934
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4935
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->access$17000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    move-result-object v1

    .line 4937
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4889
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->access$17000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4895
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->access$17000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4943
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->access$17000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4949
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->access$17000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4911
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->access$17000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4917
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->access$17000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4900
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->access$17000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4906
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->access$17000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAccountInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;
    .locals 1

    .prologue
    .line 4877
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->accountInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    return-object v0
.end method

.method public getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1

    .prologue
    .line 4837
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4798
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4798
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;
    .locals 1

    .prologue
    .line 4812
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    return-object v0
.end method

.method public getDeviceInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .locals 1

    .prologue
    .line 4844
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 4870
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method public getRestoreAccount()Z
    .locals 1

    .prologue
    .line 4851
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->restoreAccount_:Z

    return v0
.end method

.method public getRestoreDataTypes(I)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 4862
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->restoreDataTypes_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    return-object v0
.end method

.method public getRestoreDataTypesCount()I
    .locals 1

    .prologue
    .line 4860
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->restoreDataTypes_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRestoreDataTypesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4858
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->restoreDataTypes_:Ljava/util/List;

    return-object v0
.end method

.method public getUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1

    .prologue
    .line 4830
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    return-object v0
.end method

.method public hasAccountInfo()Z
    .locals 1

    .prologue
    .line 4876
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->hasAccountInfo:Z

    return v0
.end method

.method public hasAppInfo()Z
    .locals 1

    .prologue
    .line 4836
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->hasAppInfo:Z

    return v0
.end method

.method public hasDeviceInfo()Z
    .locals 1

    .prologue
    .line 4843
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->hasDeviceInfo:Z

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 4869
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->hasMessageInfo:Z

    return v0
.end method

.method public hasRestoreAccount()Z
    .locals 1

    .prologue
    .line 4850
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->hasRestoreAccount:Z

    return v0
.end method

.method public hasUserInfo()Z
    .locals 1

    .prologue
    .line 4829
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->hasUserInfo:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 4822
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_AccountLoginRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$16900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4798
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4798
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;
    .locals 1

    .prologue
    .line 4954
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4798
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4798
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;
    .locals 1

    .prologue
    .line 4958
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;

    move-result-object v0

    return-object v0
.end method
