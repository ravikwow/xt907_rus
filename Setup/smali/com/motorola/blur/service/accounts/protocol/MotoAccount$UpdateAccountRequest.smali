.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateAccountRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;
    }
.end annotation


# static fields
.field public static final APPINFO_FIELD_NUMBER:I = 0x2

.field public static final MESSAGEINFO_FIELD_NUMBER:I = 0x3

.field public static final USERINFO_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;


# instance fields
.field private appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

.field private hasAppInfo:Z

.field private hasMessageInfo:Z

.field private hasUserInfo:Z

.field private messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

.field private userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3166
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    .line 3167
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internalForceInit()V

    .line 3168
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->initFields()V

    .line 3169
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2858
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2859
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->initFields()V

    .line 2860
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;

    .prologue
    .line 2855
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "noInit"    # Z

    .prologue
    .line 2861
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    return-void
.end method

.method static synthetic access$10302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 2855
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->hasUserInfo:Z

    return p1
.end method

.method static synthetic access$10400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    .prologue
    .line 2855
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    return-object v0
.end method

.method static synthetic access$10402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .prologue
    .line 2855
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    return-object p1
.end method

.method static synthetic access$10502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 2855
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->hasAppInfo:Z

    return p1
.end method

.method static synthetic access$10600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    .prologue
    .line 2855
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object v0
.end method

.method static synthetic access$10602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 2855
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object p1
.end method

.method static synthetic access$10702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 2855
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->hasMessageInfo:Z

    return p1
.end method

.method static synthetic access$10800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    .prologue
    .line 2855
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method static synthetic access$10802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 2855
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;
    .locals 1

    .prologue
    .line 2865
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2874
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_UpdateAccountRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$9800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 2904
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 2905
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 2906
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 2907
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;
    .locals 1

    .prologue
    .line 2975
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->access$10100()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    .prologue
    .line 2978
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2944
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;

    move-result-object v0

    .line 2945
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2946
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->access$10000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    move-result-object v1

    .line 2948
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2955
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;

    move-result-object v0

    .line 2956
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2957
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->access$10000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    move-result-object v1

    .line 2959
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2911
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->access$10000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2917
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->access$10000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2965
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->access$10000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2971
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->access$10000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2933
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->access$10000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2939
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->access$10000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2922
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->access$10000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2928
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->access$10000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1

    .prologue
    .line 2894
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2855
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2855
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;
    .locals 1

    .prologue
    .line 2869
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 2901
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method public getUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1

    .prologue
    .line 2887
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    return-object v0
.end method

.method public hasAppInfo()Z
    .locals 1

    .prologue
    .line 2893
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->hasAppInfo:Z

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 2900
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->hasMessageInfo:Z

    return v0
.end method

.method public hasUserInfo()Z
    .locals 1

    .prologue
    .line 2886
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->hasUserInfo:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 2879
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_UpdateAccountRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$9900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2855
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2855
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;
    .locals 1

    .prologue
    .line 2976
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2855
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2855
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;
    .locals 1

    .prologue
    .line 2980
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method
