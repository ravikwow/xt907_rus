.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetVerifiedStatusRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;
    }
.end annotation


# static fields
.field public static final APPINFO_FIELD_NUMBER:I = 0x1

.field public static final EMAIL_FIELD_NUMBER:I = 0x3

.field public static final MESSAGEINFO_FIELD_NUMBER:I = 0x2

.field public static final USERID_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;


# instance fields
.field private appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

.field private email_:Ljava/lang/String;

.field private hasAppInfo:Z

.field private hasEmail:Z

.field private hasMessageInfo:Z

.field private hasUserId:Z

.field private messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

.field private userId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1198
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    .line 1199
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internalForceInit()V

    .line 1200
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->initFields()V

    .line 1201
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 879
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 920
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->email_:Ljava/lang/String;

    .line 927
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->userId_:Ljava/lang/String;

    .line 880
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->initFields()V

    .line 881
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;

    .prologue
    .line 876
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 882
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 920
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->email_:Ljava/lang/String;

    .line 927
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->userId_:Ljava/lang/String;

    .line 882
    return-void
.end method

.method static synthetic access$2902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 876
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->hasAppInfo:Z

    return p1
.end method

.method static synthetic access$3000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    .prologue
    .line 876
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 876
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 876
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->hasMessageInfo:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    .prologue
    .line 876
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 876
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object p1
.end method

.method static synthetic access$3302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 876
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->hasEmail:Z

    return p1
.end method

.method static synthetic access$3402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 876
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->email_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 876
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->hasUserId:Z

    return p1
.end method

.method static synthetic access$3602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 876
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->userId_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;
    .locals 1

    .prologue
    .line 886
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 895
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_GetVerifiedStatusRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$2400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 932
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 933
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 934
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;
    .locals 1

    .prologue
    .line 1002
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->access$2700()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    .prologue
    .line 1005
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 971
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;

    move-result-object v0

    .line 972
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 973
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->access$2600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    move-result-object v1

    .line 975
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 982
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;

    move-result-object v0

    .line 983
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 984
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->access$2600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    move-result-object v1

    .line 986
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 938
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->access$2600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 944
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->access$2600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 992
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->access$2600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 998
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->access$2600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 960
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->access$2600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 966
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->access$2600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 949
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->access$2600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 955
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->access$2600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;
    .locals 1

    .prologue
    .line 890
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->email_:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 915
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->userId_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAppInfo()Z
    .locals 1

    .prologue
    .line 907
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->hasAppInfo:Z

    return v0
.end method

.method public hasEmail()Z
    .locals 1

    .prologue
    .line 921
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->hasEmail:Z

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 914
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->hasMessageInfo:Z

    return v0
.end method

.method public hasUserId()Z
    .locals 1

    .prologue
    .line 928
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->hasUserId:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 900
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_GetVerifiedStatusRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$2500()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;
    .locals 1

    .prologue
    .line 1003
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;
    .locals 1

    .prologue
    .line 1007
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;

    move-result-object v0

    return-object v0
.end method
