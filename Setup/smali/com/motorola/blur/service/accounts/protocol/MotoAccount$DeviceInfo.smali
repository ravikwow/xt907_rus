.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;
    }
.end annotation


# static fields
.field public static final DEVICEACCOUNTID_FIELD_NUMBER:I = 0x5

.field public static final DEVICECLOUD_FIELD_NUMBER:I = 0x4

.field public static final DEVICEEMAIL_FIELD_NUMBER:I = 0x8

.field public static final DEVICEID_FIELD_NUMBER:I = 0x1

.field public static final DEVICESECRET_FIELD_NUMBER:I = 0x7

.field public static final DEVICETOKEN_FIELD_NUMBER:I = 0x6

.field public static final DEVICETYPE_FIELD_NUMBER:I = 0x2

.field public static final DEVICEVERSION_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;


# instance fields
.field private deviceAccountId_:Ljava/lang/String;

.field private deviceCloud_:Ljava/lang/String;

.field private deviceEmail_:Ljava/lang/String;

.field private deviceId_:Ljava/lang/String;

.field private deviceSecret_:Ljava/lang/String;

.field private deviceToken_:Ljava/lang/String;

.field private deviceType_:Ljava/lang/String;

.field private deviceVersion_:Ljava/lang/String;

.field private hasDeviceAccountId:Z

.field private hasDeviceCloud:Z

.field private hasDeviceEmail:Z

.field private hasDeviceId:Z

.field private hasDeviceSecret:Z

.field private hasDeviceToken:Z

.field private hasDeviceType:Z

.field private hasDeviceVersion:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14483
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .line 14484
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internalForceInit()V

    .line 14485
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->initFields()V

    .line 14486
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14086
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 14113
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->deviceId_:Ljava/lang/String;

    .line 14120
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->deviceType_:Ljava/lang/String;

    .line 14127
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->deviceVersion_:Ljava/lang/String;

    .line 14134
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->deviceCloud_:Ljava/lang/String;

    .line 14141
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->deviceAccountId_:Ljava/lang/String;

    .line 14148
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->deviceToken_:Ljava/lang/String;

    .line 14155
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->deviceSecret_:Ljava/lang/String;

    .line 14162
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->deviceEmail_:Ljava/lang/String;

    .line 14087
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->initFields()V

    .line 14088
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;

    .prologue
    .line 14083
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 14089
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 14113
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->deviceId_:Ljava/lang/String;

    .line 14120
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->deviceType_:Ljava/lang/String;

    .line 14127
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->deviceVersion_:Ljava/lang/String;

    .line 14134
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->deviceCloud_:Ljava/lang/String;

    .line 14141
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->deviceAccountId_:Ljava/lang/String;

    .line 14148
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->deviceToken_:Ljava/lang/String;

    .line 14155
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->deviceSecret_:Ljava/lang/String;

    .line 14162
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->deviceEmail_:Ljava/lang/String;

    .line 14089
    return-void
.end method

.method static synthetic access$50602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 14083
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->hasDeviceId:Z

    return p1
.end method

.method static synthetic access$50702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 14083
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->deviceId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$50802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 14083
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->hasDeviceType:Z

    return p1
.end method

.method static synthetic access$50902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 14083
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->deviceType_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$51002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 14083
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->hasDeviceVersion:Z

    return p1
.end method

.method static synthetic access$51102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 14083
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->deviceVersion_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$51202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 14083
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->hasDeviceCloud:Z

    return p1
.end method

.method static synthetic access$51302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 14083
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->deviceCloud_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$51402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 14083
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->hasDeviceAccountId:Z

    return p1
.end method

.method static synthetic access$51502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 14083
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->deviceAccountId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$51602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 14083
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->hasDeviceToken:Z

    return p1
.end method

.method static synthetic access$51702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 14083
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->deviceToken_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$51802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 14083
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->hasDeviceSecret:Z

    return p1
.end method

.method static synthetic access$51902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 14083
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->deviceSecret_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$52002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 14083
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->hasDeviceEmail:Z

    return p1
.end method

.method static synthetic access$52102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 14083
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->deviceEmail_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .locals 1

    .prologue
    .line 14093
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 14102
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_DeviceInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$50100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 14167
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;
    .locals 1

    .prologue
    .line 14235
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->access$50400()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .prologue
    .line 14238
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14204
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    move-result-object v0

    .line 14205
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14206
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->access$50300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v1

    .line 14208
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14215
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    move-result-object v0

    .line 14216
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14217
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->access$50300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v1

    .line 14219
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14171
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->access$50300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14177
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->access$50300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14225
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->access$50300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14231
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->access$50300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14193
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->access$50300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14199
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->access$50300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14182
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->access$50300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14188
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->access$50300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 14083
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14083
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .locals 1

    .prologue
    .line 14097
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    return-object v0
.end method

.method public getDeviceAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14143
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->deviceAccountId_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceCloud()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14136
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->deviceCloud_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14164
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->deviceEmail_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14115
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->deviceId_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14157
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->deviceSecret_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14150
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->deviceToken_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14122
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->deviceType_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14129
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->deviceVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDeviceAccountId()Z
    .locals 1

    .prologue
    .line 14142
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->hasDeviceAccountId:Z

    return v0
.end method

.method public hasDeviceCloud()Z
    .locals 1

    .prologue
    .line 14135
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->hasDeviceCloud:Z

    return v0
.end method

.method public hasDeviceEmail()Z
    .locals 1

    .prologue
    .line 14163
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->hasDeviceEmail:Z

    return v0
.end method

.method public hasDeviceId()Z
    .locals 1

    .prologue
    .line 14114
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->hasDeviceId:Z

    return v0
.end method

.method public hasDeviceSecret()Z
    .locals 1

    .prologue
    .line 14156
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->hasDeviceSecret:Z

    return v0
.end method

.method public hasDeviceToken()Z
    .locals 1

    .prologue
    .line 14149
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->hasDeviceToken:Z

    return v0
.end method

.method public hasDeviceType()Z
    .locals 1

    .prologue
    .line 14121
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->hasDeviceType:Z

    return v0
.end method

.method public hasDeviceVersion()Z
    .locals 1

    .prologue
    .line 14128
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->hasDeviceVersion:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 14107
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_DeviceInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$50200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14083
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14083
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;
    .locals 1

    .prologue
    .line 14236
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14083
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14083
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;
    .locals 1

    .prologue
    .line 14240
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method
