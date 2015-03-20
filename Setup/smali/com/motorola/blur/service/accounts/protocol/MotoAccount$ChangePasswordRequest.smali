.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChangePasswordRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;
    }
.end annotation


# static fields
.field public static final APPINFO_FIELD_NUMBER:I = 0x3

.field public static final MESSAGEINFO_FIELD_NUMBER:I = 0x4

.field public static final NEWPASSWORD_FIELD_NUMBER:I = 0x2

.field public static final USERINFO_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;


# instance fields
.field private appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

.field private hasAppInfo:Z

.field private hasMessageInfo:Z

.field private hasNewPassword:Z

.field private hasUserInfo:Z

.field private messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

.field private newPassword_:Ljava/lang/String;

.field private userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7253
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    .line 7254
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internalForceInit()V

    .line 7255
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->initFields()V

    .line 7256
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 6917
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 6951
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->newPassword_:Ljava/lang/String;

    .line 6918
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->initFields()V

    .line 6919
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;

    .prologue
    .line 6914
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 6920
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 6951
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->newPassword_:Ljava/lang/String;

    .line 6920
    return-void
.end method

.method static synthetic access$25102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 6914
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->hasUserInfo:Z

    return p1
.end method

.method static synthetic access$25200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    .prologue
    .line 6914
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    return-object v0
.end method

.method static synthetic access$25202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .prologue
    .line 6914
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    return-object p1
.end method

.method static synthetic access$25302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 6914
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->hasNewPassword:Z

    return p1
.end method

.method static synthetic access$25402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 6914
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->newPassword_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$25502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 6914
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->hasAppInfo:Z

    return p1
.end method

.method static synthetic access$25600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    .prologue
    .line 6914
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object v0
.end method

.method static synthetic access$25602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 6914
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object p1
.end method

.method static synthetic access$25702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 6914
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->hasMessageInfo:Z

    return p1
.end method

.method static synthetic access$25800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    .prologue
    .line 6914
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method static synthetic access$25802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 6914
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;
    .locals 1

    .prologue
    .line 6924
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6933
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_ChangePasswordRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$24600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 6970
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 6971
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 6972
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 6973
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;
    .locals 1

    .prologue
    .line 7041
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->access$24900()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    .prologue
    .line 7044
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7010
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;

    move-result-object v0

    .line 7011
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7012
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->access$24800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    move-result-object v1

    .line 7014
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7021
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;

    move-result-object v0

    .line 7022
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7023
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->access$24800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    move-result-object v1

    .line 7025
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6977
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->access$24800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6983
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->access$24800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7031
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->access$24800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7037
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->access$24800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6999
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->access$24800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7005
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->access$24800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6988
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->access$24800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6994
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->access$24800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1

    .prologue
    .line 6960
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6914
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6914
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;
    .locals 1

    .prologue
    .line 6928
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 6967
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method public getNewPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6953
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->newPassword_:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1

    .prologue
    .line 6946
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    return-object v0
.end method

.method public hasAppInfo()Z
    .locals 1

    .prologue
    .line 6959
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->hasAppInfo:Z

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 6966
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->hasMessageInfo:Z

    return v0
.end method

.method public hasNewPassword()Z
    .locals 1

    .prologue
    .line 6952
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->hasNewPassword:Z

    return v0
.end method

.method public hasUserInfo()Z
    .locals 1

    .prologue
    .line 6945
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->hasUserInfo:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6938
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_ChangePasswordRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$24700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6914
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6914
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;
    .locals 1

    .prologue
    .line 7042
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6914
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6914
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;
    .locals 1

    .prologue
    .line 7046
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method
