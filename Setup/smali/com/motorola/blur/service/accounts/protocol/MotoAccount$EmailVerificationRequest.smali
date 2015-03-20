.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EmailVerificationRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;
    }
.end annotation


# static fields
.field public static final APPINFO_FIELD_NUMBER:I = 0x2

.field public static final MESSAGEINFO_FIELD_NUMBER:I = 0x4

.field public static final TOKEN_FIELD_NUMBER:I = 0x3

.field public static final USERINFO_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;


# instance fields
.field private appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

.field private hasAppInfo:Z

.field private hasMessageInfo:Z

.field private hasToken:Z

.field private hasUserInfo:Z

.field private messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

.field private token_:Ljava/lang/String;

.field private userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10323
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    .line 10324
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internalForceInit()V

    .line 10325
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->initFields()V

    .line 10326
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 9987
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 10028
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->token_:Ljava/lang/String;

    .line 9988
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->initFields()V

    .line 9989
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;

    .prologue
    .line 9984
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 9990
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 10028
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->token_:Ljava/lang/String;

    .line 9990
    return-void
.end method

.method static synthetic access$36002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 9984
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->hasUserInfo:Z

    return p1
.end method

.method static synthetic access$36100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    .prologue
    .line 9984
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    return-object v0
.end method

.method static synthetic access$36102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .prologue
    .line 9984
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    return-object p1
.end method

.method static synthetic access$36202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 9984
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->hasAppInfo:Z

    return p1
.end method

.method static synthetic access$36300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    .prologue
    .line 9984
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object v0
.end method

.method static synthetic access$36302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 9984
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object p1
.end method

.method static synthetic access$36402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 9984
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->hasToken:Z

    return p1
.end method

.method static synthetic access$36502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 9984
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->token_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$36602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 9984
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->hasMessageInfo:Z

    return p1
.end method

.method static synthetic access$36700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    .prologue
    .line 9984
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method static synthetic access$36702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 9984
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;
    .locals 1

    .prologue
    .line 9994
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 10003
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_EmailVerificationRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$35500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 10040
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 10041
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 10042
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 10043
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;
    .locals 1

    .prologue
    .line 10111
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->access$35800()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    .prologue
    .line 10114
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10080
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;

    move-result-object v0

    .line 10081
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10082
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->access$35700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    move-result-object v1

    .line 10084
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10091
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;

    move-result-object v0

    .line 10092
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10093
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->access$35700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    move-result-object v1

    .line 10095
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10047
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->access$35700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10053
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->access$35700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10101
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->access$35700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10107
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->access$35700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10069
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->access$35700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10075
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->access$35700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10058
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->access$35700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10064
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->access$35700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1

    .prologue
    .line 10023
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 9984
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9984
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;
    .locals 1

    .prologue
    .line 9998
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 10037
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10030
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->token_:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1

    .prologue
    .line 10016
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    return-object v0
.end method

.method public hasAppInfo()Z
    .locals 1

    .prologue
    .line 10022
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->hasAppInfo:Z

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 10036
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->hasMessageInfo:Z

    return v0
.end method

.method public hasToken()Z
    .locals 1

    .prologue
    .line 10029
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->hasToken:Z

    return v0
.end method

.method public hasUserInfo()Z
    .locals 1

    .prologue
    .line 10015
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->hasUserInfo:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 10008
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_EmailVerificationRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$35600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 9984
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9984
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;
    .locals 1

    .prologue
    .line 10112
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 9984
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9984
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;
    .locals 1

    .prologue
    .line 10116
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;

    move-result-object v0

    return-object v0
.end method
