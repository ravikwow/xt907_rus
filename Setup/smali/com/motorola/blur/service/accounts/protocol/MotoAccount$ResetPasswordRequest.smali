.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResetPasswordRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;
    }
.end annotation


# static fields
.field public static final APPINFO_FIELD_NUMBER:I = 0x2

.field public static final MESSAGEINFO_FIELD_NUMBER:I = 0x4

.field public static final TOKEN_FIELD_NUMBER:I = 0x3

.field public static final USERINFO_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;


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
    .line 8536
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    .line 8537
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internalForceInit()V

    .line 8538
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->initFields()V

    .line 8539
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 8200
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 8234
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->token_:Ljava/lang/String;

    .line 8201
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->initFields()V

    .line 8202
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;

    .prologue
    .line 8197
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 8203
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 8234
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->token_:Ljava/lang/String;

    .line 8203
    return-void
.end method

.method static synthetic access$29602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 8197
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->hasUserInfo:Z

    return p1
.end method

.method static synthetic access$29700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    .prologue
    .line 8197
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    return-object v0
.end method

.method static synthetic access$29702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .prologue
    .line 8197
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    return-object p1
.end method

.method static synthetic access$29802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 8197
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->hasToken:Z

    return p1
.end method

.method static synthetic access$29902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 8197
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->token_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$30002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 8197
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->hasAppInfo:Z

    return p1
.end method

.method static synthetic access$30100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    .prologue
    .line 8197
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object v0
.end method

.method static synthetic access$30102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 8197
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object p1
.end method

.method static synthetic access$30202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 8197
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->hasMessageInfo:Z

    return p1
.end method

.method static synthetic access$30300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    .prologue
    .line 8197
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method static synthetic access$30302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 8197
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;
    .locals 1

    .prologue
    .line 8207
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 8216
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_ResetPasswordRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$29100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 8253
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 8254
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 8255
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 8256
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;
    .locals 1

    .prologue
    .line 8324
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->access$29400()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    .prologue
    .line 8327
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8293
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;

    move-result-object v0

    .line 8294
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8295
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->access$29300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    move-result-object v1

    .line 8297
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8304
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;

    move-result-object v0

    .line 8305
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8306
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->access$29300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    move-result-object v1

    .line 8308
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8260
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->access$29300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8266
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->access$29300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8314
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->access$29300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8320
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->access$29300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8282
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->access$29300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8288
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->access$29300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8271
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->access$29300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8277
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->access$29300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1

    .prologue
    .line 8243
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 8197
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8197
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;
    .locals 1

    .prologue
    .line 8211
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 8250
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8236
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->token_:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1

    .prologue
    .line 8229
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    return-object v0
.end method

.method public hasAppInfo()Z
    .locals 1

    .prologue
    .line 8242
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->hasAppInfo:Z

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 8249
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->hasMessageInfo:Z

    return v0
.end method

.method public hasToken()Z
    .locals 1

    .prologue
    .line 8235
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->hasToken:Z

    return v0
.end method

.method public hasUserInfo()Z
    .locals 1

    .prologue
    .line 8228
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->hasUserInfo:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 8221
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_ResetPasswordRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$29200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 8197
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8197
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;
    .locals 1

    .prologue
    .line 8325
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 8197
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8197
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;
    .locals 1

    .prologue
    .line 8329
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method
