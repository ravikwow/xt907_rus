.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetAccountRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;
    }
.end annotation


# static fields
.field public static final APPINFO_FIELD_NUMBER:I = 0x5

.field public static final AUTHTOKEN_FIELD_NUMBER:I = 0x4

.field public static final LOGIN_FIELD_NUMBER:I = 0x1

.field public static final MESSAGEINFO_FIELD_NUMBER:I = 0x6

.field public static final PASSWORD_FIELD_NUMBER:I = 0x2

.field public static final USERID_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;


# instance fields
.field private appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

.field private authToken_:Ljava/lang/String;

.field private hasAppInfo:Z

.field private hasAuthToken:Z

.field private hasLogin:Z

.field private hasMessageInfo:Z

.field private hasPassword:Z

.field private hasUserId:Z

.field private login_:Ljava/lang/String;

.field private messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

.field private password_:Ljava/lang/String;

.field private userId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3810
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    .line 3811
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internalForceInit()V

    .line 3812
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->initFields()V

    .line 3813
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3435
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 3462
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->login_:Ljava/lang/String;

    .line 3469
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->password_:Ljava/lang/String;

    .line 3476
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->userId_:Ljava/lang/String;

    .line 3483
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->authToken_:Ljava/lang/String;

    .line 3436
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->initFields()V

    .line 3437
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;

    .prologue
    .line 3432
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 3438
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 3462
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->login_:Ljava/lang/String;

    .line 3469
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->password_:Ljava/lang/String;

    .line 3476
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->userId_:Ljava/lang/String;

    .line 3483
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->authToken_:Ljava/lang/String;

    .line 3438
    return-void
.end method

.method static synthetic access$12302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 3432
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->hasLogin:Z

    return p1
.end method

.method static synthetic access$12402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 3432
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->login_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$12502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 3432
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->hasPassword:Z

    return p1
.end method

.method static synthetic access$12602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 3432
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->password_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$12702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 3432
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->hasUserId:Z

    return p1
.end method

.method static synthetic access$12802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 3432
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->userId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$12902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 3432
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->hasAuthToken:Z

    return p1
.end method

.method static synthetic access$13002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 3432
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->authToken_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$13102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 3432
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->hasAppInfo:Z

    return p1
.end method

.method static synthetic access$13200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    .prologue
    .line 3432
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object v0
.end method

.method static synthetic access$13202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 3432
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object p1
.end method

.method static synthetic access$13302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 3432
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->hasMessageInfo:Z

    return p1
.end method

.method static synthetic access$13400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    .prologue
    .line 3432
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method static synthetic access$13402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 3432
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;
    .locals 1

    .prologue
    .line 3442
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3451
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_GetAccountRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$11800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 3502
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 3503
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 3504
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;
    .locals 1

    .prologue
    .line 3572
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->access$12100()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    .prologue
    .line 3575
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3541
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;

    move-result-object v0

    .line 3542
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3543
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->access$12000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    move-result-object v1

    .line 3545
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3552
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;

    move-result-object v0

    .line 3553
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3554
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->access$12000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    move-result-object v1

    .line 3556
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3508
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->access$12000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3514
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->access$12000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3562
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->access$12000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3568
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->access$12000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3530
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->access$12000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3536
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->access$12000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3519
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->access$12000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3525
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->access$12000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1

    .prologue
    .line 3492
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3485
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->authToken_:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3432
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3432
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;
    .locals 1

    .prologue
    .line 3446
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    return-object v0
.end method

.method public getLogin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3464
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->login_:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 3499
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3471
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->password_:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3478
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->userId_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAppInfo()Z
    .locals 1

    .prologue
    .line 3491
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->hasAppInfo:Z

    return v0
.end method

.method public hasAuthToken()Z
    .locals 1

    .prologue
    .line 3484
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->hasAuthToken:Z

    return v0
.end method

.method public hasLogin()Z
    .locals 1

    .prologue
    .line 3463
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->hasLogin:Z

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 3498
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->hasMessageInfo:Z

    return v0
.end method

.method public hasPassword()Z
    .locals 1

    .prologue
    .line 3470
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->hasPassword:Z

    return v0
.end method

.method public hasUserId()Z
    .locals 1

    .prologue
    .line 3477
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->hasUserId:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 3456
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_GetAccountRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$11900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3432
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3432
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;
    .locals 1

    .prologue
    .line 3573
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3432
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3432
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;
    .locals 1

    .prologue
    .line 3577
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method
