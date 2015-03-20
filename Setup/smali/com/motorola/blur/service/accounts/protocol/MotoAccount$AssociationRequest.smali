.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssociationRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;,
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;
    }
.end annotation


# static fields
.field public static final ACTION_FIELD_NUMBER:I = 0x3

.field public static final APPID_FIELD_NUMBER:I = 0x7

.field public static final APPINFO_FIELD_NUMBER:I = 0x5

.field public static final ASSOCIATION_FIELD_NUMBER:I = 0x2

.field public static final AUTHTOKEN_FIELD_NUMBER:I = 0x8

.field public static final DEVICEID_FIELD_NUMBER:I = 0x4

.field public static final GLOBALDEVICEID_FIELD_NUMBER:I = 0xa

.field public static final LOGIN_FIELD_NUMBER:I = 0x9

.field public static final MESSAGEINFO_FIELD_NUMBER:I = 0x6

.field public static final USERID_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;


# instance fields
.field private action_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;

.field private appId_:Ljava/lang/String;

.field private appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

.field private association_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

.field private authToken_:Ljava/lang/String;

.field private deviceId_:Ljava/lang/String;

.field private globalDeviceId_:Ljava/lang/String;

.field private hasAction:Z

.field private hasAppId:Z

.field private hasAppInfo:Z

.field private hasAssociation:Z

.field private hasAuthToken:Z

.field private hasDeviceId:Z

.field private hasGlobalDeviceId:Z

.field private hasLogin:Z

.field private hasMessageInfo:Z

.field private hasUserId:Z

.field private login_:Ljava/lang/String;

.field private messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

.field private userId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11871
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    .line 11872
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internalForceInit()V

    .line 11873
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->initFields()V

    .line 11874
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 11295
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 11393
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->userId_:Ljava/lang/String;

    .line 11400
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->authToken_:Ljava/lang/String;

    .line 11407
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->globalDeviceId_:Ljava/lang/String;

    .line 11414
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->deviceId_:Ljava/lang/String;

    .line 11421
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->appId_:Ljava/lang/String;

    .line 11428
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->login_:Ljava/lang/String;

    .line 11296
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->initFields()V

    .line 11297
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;

    .prologue
    .line 11292
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 11298
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 11393
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->userId_:Ljava/lang/String;

    .line 11400
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->authToken_:Ljava/lang/String;

    .line 11407
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->globalDeviceId_:Ljava/lang/String;

    .line 11414
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->deviceId_:Ljava/lang/String;

    .line 11421
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->appId_:Ljava/lang/String;

    .line 11428
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->login_:Ljava/lang/String;

    .line 11298
    return-void
.end method

.method static synthetic access$40602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 11292
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasUserId:Z

    return p1
.end method

.method static synthetic access$40702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 11292
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->userId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$40802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 11292
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasAuthToken:Z

    return p1
.end method

.method static synthetic access$40902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 11292
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->authToken_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$41002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 11292
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasGlobalDeviceId:Z

    return p1
.end method

.method static synthetic access$41102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 11292
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->globalDeviceId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$41202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 11292
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasDeviceId:Z

    return p1
.end method

.method static synthetic access$41302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 11292
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->deviceId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$41402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 11292
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasAppId:Z

    return p1
.end method

.method static synthetic access$41502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 11292
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->appId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$41602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 11292
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasLogin:Z

    return p1
.end method

.method static synthetic access$41702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 11292
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->login_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$41802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 11292
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasAppInfo:Z

    return p1
.end method

.method static synthetic access$41900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    .prologue
    .line 11292
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object v0
.end method

.method static synthetic access$41902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 11292
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object p1
.end method

.method static synthetic access$42002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 11292
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasAssociation:Z

    return p1
.end method

.method static synthetic access$42100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    .prologue
    .line 11292
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->association_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    return-object v0
.end method

.method static synthetic access$42102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    .prologue
    .line 11292
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->association_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    return-object p1
.end method

.method static synthetic access$42202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 11292
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasAction:Z

    return p1
.end method

.method static synthetic access$42302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;

    .prologue
    .line 11292
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->action_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;

    return-object p1
.end method

.method static synthetic access$42402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 11292
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasMessageInfo:Z

    return p1
.end method

.method static synthetic access$42500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    .prologue
    .line 11292
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method static synthetic access$42502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 11292
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
    .locals 1

    .prologue
    .line 11302
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 11311
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_AssociationRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$40100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 11461
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 11462
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->association_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    .line 11463
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;->ADD_ASSOCIATION:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->action_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;

    .line 11464
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 11465
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;
    .locals 1

    .prologue
    .line 11533
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->access$40400()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    .prologue
    .line 11536
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11502
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;

    move-result-object v0

    .line 11503
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11504
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->access$40300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    move-result-object v1

    .line 11506
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11513
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;

    move-result-object v0

    .line 11514
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11515
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->access$40300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    move-result-object v1

    .line 11517
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11469
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->access$40300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11475
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->access$40300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11523
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->access$40300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11529
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->access$40300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11491
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->access$40300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11497
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->access$40300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11480
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->access$40300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11486
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->access$40300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAction()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;
    .locals 1

    .prologue
    .line 11451
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->action_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11423
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->appId_:Ljava/lang/String;

    return-object v0
.end method

.method public getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1

    .prologue
    .line 11437
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object v0
.end method

.method public getAssociation()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
    .locals 1

    .prologue
    .line 11444
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->association_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    return-object v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11402
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->authToken_:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 11292
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11292
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
    .locals 1

    .prologue
    .line 11306
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11416
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->deviceId_:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobalDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11409
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->globalDeviceId_:Ljava/lang/String;

    return-object v0
.end method

.method public getLogin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11430
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->login_:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 11458
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11395
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->userId_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAction()Z
    .locals 1

    .prologue
    .line 11450
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasAction:Z

    return v0
.end method

.method public hasAppId()Z
    .locals 1

    .prologue
    .line 11422
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasAppId:Z

    return v0
.end method

.method public hasAppInfo()Z
    .locals 1

    .prologue
    .line 11436
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasAppInfo:Z

    return v0
.end method

.method public hasAssociation()Z
    .locals 1

    .prologue
    .line 11443
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasAssociation:Z

    return v0
.end method

.method public hasAuthToken()Z
    .locals 1

    .prologue
    .line 11401
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasAuthToken:Z

    return v0
.end method

.method public hasDeviceId()Z
    .locals 1

    .prologue
    .line 11415
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasDeviceId:Z

    return v0
.end method

.method public hasGlobalDeviceId()Z
    .locals 1

    .prologue
    .line 11408
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasGlobalDeviceId:Z

    return v0
.end method

.method public hasLogin()Z
    .locals 1

    .prologue
    .line 11429
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasLogin:Z

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 11457
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasMessageInfo:Z

    return v0
.end method

.method public hasUserId()Z
    .locals 1

    .prologue
    .line 11394
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasUserId:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 11316
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_AssociationRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$40200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11292
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11292
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;
    .locals 1

    .prologue
    .line 11534
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11292
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11292
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;
    .locals 1

    .prologue
    .line 11538
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method
