.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RestoreAccountRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;
    }
.end annotation


# static fields
.field public static final APPINFO_FIELD_NUMBER:I = 0x2

.field public static final AUTHTOKEN_FIELD_NUMBER:I = 0x6

.field public static final DEVICEINFO_FIELD_NUMBER:I = 0x3

.field public static final LEVEL_FIELD_NUMBER:I = 0x4

.field public static final MESSAGEINFO_FIELD_NUMBER:I = 0x7

.field public static final RESTOREDATATYPES_FIELD_NUMBER:I = 0x5

.field public static final USERID_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;


# instance fields
.field private appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

.field private authToken_:Ljava/lang/String;

.field private deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

.field private hasAppInfo:Z

.field private hasAuthToken:Z

.field private hasDeviceInfo:Z

.field private hasLevel:Z

.field private hasMessageInfo:Z

.field private hasUserId:Z

.field private level_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

.field private messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

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

.field private userId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6043
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    .line 6044
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internalForceInit()V

    .line 6045
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->initFields()V

    .line 6046
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 5594
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 5621
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->userId_:Ljava/lang/String;

    .line 5628
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->authToken_:Ljava/lang/String;

    .line 5655
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->restoreDataTypes_:Ljava/util/List;

    .line 5595
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->initFields()V

    .line 5596
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;

    .prologue
    .line 5591
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 5597
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 5621
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->userId_:Ljava/lang/String;

    .line 5628
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->authToken_:Ljava/lang/String;

    .line 5655
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->restoreDataTypes_:Ljava/util/List;

    .line 5597
    return-void
.end method

.method static synthetic access$20200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    .prologue
    .line 5591
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->restoreDataTypes_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$20202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 5591
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->restoreDataTypes_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$20302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 5591
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->hasUserId:Z

    return p1
.end method

.method static synthetic access$20402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 5591
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->userId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$20502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 5591
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->hasAuthToken:Z

    return p1
.end method

.method static synthetic access$20602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 5591
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->authToken_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$20702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 5591
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->hasAppInfo:Z

    return p1
.end method

.method static synthetic access$20800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    .prologue
    .line 5591
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object v0
.end method

.method static synthetic access$20802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 5591
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object p1
.end method

.method static synthetic access$20902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 5591
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->hasDeviceInfo:Z

    return p1
.end method

.method static synthetic access$21000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    .prologue
    .line 5591
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    return-object v0
.end method

.method static synthetic access$21002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .prologue
    .line 5591
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    return-object p1
.end method

.method static synthetic access$21102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 5591
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->hasLevel:Z

    return p1
.end method

.method static synthetic access$21202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    .prologue
    .line 5591
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->level_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    return-object p1
.end method

.method static synthetic access$21302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 5591
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->hasMessageInfo:Z

    return p1
.end method

.method static synthetic access$21400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    .prologue
    .line 5591
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method static synthetic access$21402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 5591
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;
    .locals 1

    .prologue
    .line 5601
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5610
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_RestoreAccountRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$19700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 5673
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 5674
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .line 5675
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;->ALL:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->level_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    .line 5676
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 5677
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;
    .locals 1

    .prologue
    .line 5745
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->access$20000()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    .prologue
    .line 5748
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5714
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;

    move-result-object v0

    .line 5715
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5716
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->access$19900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    move-result-object v1

    .line 5718
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5725
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;

    move-result-object v0

    .line 5726
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5727
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->access$19900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    move-result-object v1

    .line 5729
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5681
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->access$19900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5687
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->access$19900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5735
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->access$19900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5741
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->access$19900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5703
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->access$19900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5709
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->access$19900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5692
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->access$19900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5698
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->access$19900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1

    .prologue
    .line 5637
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5630
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->authToken_:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5591
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5591
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;
    .locals 1

    .prologue
    .line 5605
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    return-object v0
.end method

.method public getDeviceInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .locals 1

    .prologue
    .line 5644
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    return-object v0
.end method

.method public getLevel()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;
    .locals 1

    .prologue
    .line 5651
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->level_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 5670
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method public getRestoreDataTypes(I)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 5662
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->restoreDataTypes_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    return-object v0
.end method

.method public getRestoreDataTypesCount()I
    .locals 1

    .prologue
    .line 5660
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->restoreDataTypes_:Ljava/util/List;

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
    .line 5658
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->restoreDataTypes_:Ljava/util/List;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5623
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->userId_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAppInfo()Z
    .locals 1

    .prologue
    .line 5636
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->hasAppInfo:Z

    return v0
.end method

.method public hasAuthToken()Z
    .locals 1

    .prologue
    .line 5629
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->hasAuthToken:Z

    return v0
.end method

.method public hasDeviceInfo()Z
    .locals 1

    .prologue
    .line 5643
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->hasDeviceInfo:Z

    return v0
.end method

.method public hasLevel()Z
    .locals 1

    .prologue
    .line 5650
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->hasLevel:Z

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 5669
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->hasMessageInfo:Z

    return v0
.end method

.method public hasUserId()Z
    .locals 1

    .prologue
    .line 5622
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->hasUserId:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5615
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_RestoreAccountRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$19800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5591
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5591
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;
    .locals 1

    .prologue
    .line 5746
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5591
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5591
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;
    .locals 1

    .prologue
    .line 5750
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method
