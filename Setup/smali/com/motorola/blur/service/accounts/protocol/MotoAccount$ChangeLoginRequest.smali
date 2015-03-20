.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChangeLoginRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;
    }
.end annotation


# static fields
.field public static final APPINFO_FIELD_NUMBER:I = 0x3

.field public static final MESSAGEINFO_FIELD_NUMBER:I = 0x4

.field public static final NEWLOGIN_FIELD_NUMBER:I = 0x2

.field public static final USERINFO_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;


# instance fields
.field private appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

.field private hasAppInfo:Z

.field private hasMessageInfo:Z

.field private hasNewLogin:Z

.field private hasUserInfo:Z

.field private messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

.field private newLogin_:Ljava/lang/String;

.field private userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6648
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    .line 6649
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internalForceInit()V

    .line 6650
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->initFields()V

    .line 6651
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 6312
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 6346
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->newLogin_:Ljava/lang/String;

    .line 6313
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->initFields()V

    .line 6314
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;

    .prologue
    .line 6309
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 6315
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 6346
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->newLogin_:Ljava/lang/String;

    .line 6315
    return-void
.end method

.method static synthetic access$22902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 6309
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->hasUserInfo:Z

    return p1
.end method

.method static synthetic access$23000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    .prologue
    .line 6309
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    return-object v0
.end method

.method static synthetic access$23002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .prologue
    .line 6309
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    return-object p1
.end method

.method static synthetic access$23102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 6309
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->hasNewLogin:Z

    return p1
.end method

.method static synthetic access$23202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 6309
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->newLogin_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$23302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 6309
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->hasAppInfo:Z

    return p1
.end method

.method static synthetic access$23400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    .prologue
    .line 6309
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object v0
.end method

.method static synthetic access$23402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 6309
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object p1
.end method

.method static synthetic access$23502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 6309
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->hasMessageInfo:Z

    return p1
.end method

.method static synthetic access$23600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    .prologue
    .line 6309
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method static synthetic access$23602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 6309
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;
    .locals 1

    .prologue
    .line 6319
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6328
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_ChangeLoginRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$22400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 6365
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 6366
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 6367
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 6368
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;
    .locals 1

    .prologue
    .line 6436
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->access$22700()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    .prologue
    .line 6439
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6405
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;

    move-result-object v0

    .line 6406
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6407
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->access$22600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    move-result-object v1

    .line 6409
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6416
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;

    move-result-object v0

    .line 6417
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6418
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->access$22600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    move-result-object v1

    .line 6420
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6372
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->access$22600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6378
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->access$22600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6426
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->access$22600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6432
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->access$22600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6394
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->access$22600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6400
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->access$22600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6383
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->access$22600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6389
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->access$22600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1

    .prologue
    .line 6355
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6309
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6309
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;
    .locals 1

    .prologue
    .line 6323
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 6362
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method public getNewLogin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6348
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->newLogin_:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1

    .prologue
    .line 6341
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    return-object v0
.end method

.method public hasAppInfo()Z
    .locals 1

    .prologue
    .line 6354
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->hasAppInfo:Z

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 6361
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->hasMessageInfo:Z

    return v0
.end method

.method public hasNewLogin()Z
    .locals 1

    .prologue
    .line 6347
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->hasNewLogin:Z

    return v0
.end method

.method public hasUserInfo()Z
    .locals 1

    .prologue
    .line 6340
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->hasUserInfo:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6333
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_ChangeLoginRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$22500()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6309
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6309
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;
    .locals 1

    .prologue
    .line 6437
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6309
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6309
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;
    .locals 1

    .prologue
    .line 6441
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;

    move-result-object v0

    return-object v0
.end method
