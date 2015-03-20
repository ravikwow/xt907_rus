.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChangeAccountStateRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;,
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$AccountState;
    }
.end annotation


# static fields
.field public static final APPINFO_FIELD_NUMBER:I = 0x3

.field public static final MESSAGEINFO_FIELD_NUMBER:I = 0x4

.field public static final STATE_FIELD_NUMBER:I = 0x2

.field public static final USERINFO_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;


# instance fields
.field private appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

.field private hasAppInfo:Z

.field private hasMessageInfo:Z

.field private hasState:Z

.field private hasUserInfo:Z

.field private messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

.field private state_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$AccountState;

.field private userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4532
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    .line 4533
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internalForceInit()V

    .line 4534
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->initFields()V

    .line 4535
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4124
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 4125
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->initFields()V

    .line 4126
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;

    .prologue
    .line 4121
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "noInit"    # Z

    .prologue
    .line 4127
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    return-void
.end method

.method static synthetic access$15102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 4121
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->hasUserInfo:Z

    return p1
.end method

.method static synthetic access$15200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    .prologue
    .line 4121
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    return-object v0
.end method

.method static synthetic access$15202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .prologue
    .line 4121
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    return-object p1
.end method

.method static synthetic access$15302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 4121
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->hasState:Z

    return p1
.end method

.method static synthetic access$15402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$AccountState;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$AccountState;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$AccountState;

    .prologue
    .line 4121
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->state_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$AccountState;

    return-object p1
.end method

.method static synthetic access$15502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 4121
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->hasAppInfo:Z

    return p1
.end method

.method static synthetic access$15600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    .prologue
    .line 4121
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object v0
.end method

.method static synthetic access$15602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 4121
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object p1
.end method

.method static synthetic access$15702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 4121
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->hasMessageInfo:Z

    return p1
.end method

.method static synthetic access$15800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    .prologue
    .line 4121
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method static synthetic access$15802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 4121
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;
    .locals 1

    .prologue
    .line 4131
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4140
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_ChangeAccountStateRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$14600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 4248
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 4249
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$AccountState;->ENABLED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$AccountState;

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->state_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$AccountState;

    .line 4250
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 4251
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 4252
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;
    .locals 1

    .prologue
    .line 4320
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->access$14900()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    .prologue
    .line 4323
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4289
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;

    move-result-object v0

    .line 4290
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4291
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->access$14800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    move-result-object v1

    .line 4293
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4300
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;

    move-result-object v0

    .line 4301
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4302
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->access$14800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    move-result-object v1

    .line 4304
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4256
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->access$14800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4262
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->access$14800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4310
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->access$14800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4316
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->access$14800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4278
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->access$14800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4284
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->access$14800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4267
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->access$14800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4273
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->access$14800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1

    .prologue
    .line 4238
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4121
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4121
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;
    .locals 1

    .prologue
    .line 4135
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 4245
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method public getState()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$AccountState;
    .locals 1

    .prologue
    .line 4231
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->state_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$AccountState;

    return-object v0
.end method

.method public getUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1

    .prologue
    .line 4224
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    return-object v0
.end method

.method public hasAppInfo()Z
    .locals 1

    .prologue
    .line 4237
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->hasAppInfo:Z

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 4244
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->hasMessageInfo:Z

    return v0
.end method

.method public hasState()Z
    .locals 1

    .prologue
    .line 4230
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->hasState:Z

    return v0
.end method

.method public hasUserInfo()Z
    .locals 1

    .prologue
    .line 4223
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->hasUserInfo:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 4145
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_ChangeAccountStateRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$14700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4121
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4121
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;
    .locals 1

    .prologue
    .line 4321
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4121
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4121
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;
    .locals 1

    .prologue
    .line 4325
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;

    move-result-object v0

    return-object v0
.end method
