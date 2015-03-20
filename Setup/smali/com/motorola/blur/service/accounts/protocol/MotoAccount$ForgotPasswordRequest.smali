.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ForgotPasswordRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;
    }
.end annotation


# static fields
.field public static final APPINFO_FIELD_NUMBER:I = 0x2

.field public static final DEVICEINFO_FIELD_NUMBER:I = 0x5

.field public static final EMAILS_FIELD_NUMBER:I = 0x4

.field public static final MESSAGEINFO_FIELD_NUMBER:I = 0x3

.field public static final USERINFO_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;


# instance fields
.field private appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

.field private deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

.field private emails_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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
    .line 7931
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    .line 7932
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internalForceInit()V

    .line 7933
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->initFields()V

    .line 7934
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 7522
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 7569
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->emails_:Ljava/util/List;

    .line 7523
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->initFields()V

    .line 7524
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;

    .prologue
    .line 7519
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 7525
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 7569
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->emails_:Ljava/util/List;

    .line 7525
    return-void
.end method

.method static synthetic access$27300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    .prologue
    .line 7519
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->emails_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$27302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 7519
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->emails_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$27402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 7519
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->hasUserInfo:Z

    return p1
.end method

.method static synthetic access$27500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    .prologue
    .line 7519
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    return-object v0
.end method

.method static synthetic access$27502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .prologue
    .line 7519
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    return-object p1
.end method

.method static synthetic access$27602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 7519
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->hasAppInfo:Z

    return p1
.end method

.method static synthetic access$27700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    .prologue
    .line 7519
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object v0
.end method

.method static synthetic access$27702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 7519
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object p1
.end method

.method static synthetic access$27802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 7519
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->hasMessageInfo:Z

    return p1
.end method

.method static synthetic access$27900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    .prologue
    .line 7519
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method static synthetic access$27902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 7519
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object p1
.end method

.method static synthetic access$28002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 7519
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->hasDeviceInfo:Z

    return p1
.end method

.method static synthetic access$28100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    .prologue
    .line 7519
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    return-object v0
.end method

.method static synthetic access$28102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .prologue
    .line 7519
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;
    .locals 1

    .prologue
    .line 7529
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 7538
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_ForgotPasswordRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$26800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 7587
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 7588
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 7589
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 7590
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .line 7591
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;
    .locals 1

    .prologue
    .line 7659
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->access$27100()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    .prologue
    .line 7662
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7628
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;

    move-result-object v0

    .line 7629
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7630
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->access$27000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    move-result-object v1

    .line 7632
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7639
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;

    move-result-object v0

    .line 7640
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7641
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->access$27000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    move-result-object v1

    .line 7643
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7595
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->access$27000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7601
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->access$27000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7649
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->access$27000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7655
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->access$27000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7617
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->access$27000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7623
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->access$27000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7606
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->access$27000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7612
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;->access$27000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1

    .prologue
    .line 7558
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 7519
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7519
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;
    .locals 1

    .prologue
    .line 7533
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;

    return-object v0
.end method

.method public getDeviceInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .locals 1

    .prologue
    .line 7584
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    return-object v0
.end method

.method public getEmails(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 7576
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->emails_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEmailsCount()I
    .locals 1

    .prologue
    .line 7574
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->emails_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEmailsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7572
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->emails_:Ljava/util/List;

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 7565
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method public getUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1

    .prologue
    .line 7551
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    return-object v0
.end method

.method public hasAppInfo()Z
    .locals 1

    .prologue
    .line 7557
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->hasAppInfo:Z

    return v0
.end method

.method public hasDeviceInfo()Z
    .locals 1

    .prologue
    .line 7583
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->hasDeviceInfo:Z

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 7564
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->hasMessageInfo:Z

    return v0
.end method

.method public hasUserInfo()Z
    .locals 1

    .prologue
    .line 7550
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->hasUserInfo:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 7543
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_ForgotPasswordRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$26900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7519
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7519
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;
    .locals 1

    .prologue
    .line 7660
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7519
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7519
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;
    .locals 1

    .prologue
    .line 7664
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method
