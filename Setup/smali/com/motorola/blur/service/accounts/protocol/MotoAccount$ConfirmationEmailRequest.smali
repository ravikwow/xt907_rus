.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConfirmationEmailRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;
    }
.end annotation


# static fields
.field public static final APPINFO_FIELD_NUMBER:I = 0x2

.field public static final MESSAGEINFO_FIELD_NUMBER:I = 0x4

.field public static final TOKEN_FIELD_NUMBER:I = 0x3

.field public static final USERINFO_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;


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
    .line 9718
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    .line 9719
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internalForceInit()V

    .line 9720
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->initFields()V

    .line 9721
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 9382
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 9423
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->token_:Ljava/lang/String;

    .line 9383
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->initFields()V

    .line 9384
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;

    .prologue
    .line 9379
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 9385
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 9423
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->token_:Ljava/lang/String;

    .line 9385
    return-void
.end method

.method static synthetic access$33802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 9379
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->hasUserInfo:Z

    return p1
.end method

.method static synthetic access$33900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    .prologue
    .line 9379
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    return-object v0
.end method

.method static synthetic access$33902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .prologue
    .line 9379
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    return-object p1
.end method

.method static synthetic access$34002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 9379
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->hasAppInfo:Z

    return p1
.end method

.method static synthetic access$34100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    .prologue
    .line 9379
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object v0
.end method

.method static synthetic access$34102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 9379
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object p1
.end method

.method static synthetic access$34202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 9379
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->hasToken:Z

    return p1
.end method

.method static synthetic access$34302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 9379
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->token_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$34402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 9379
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->hasMessageInfo:Z

    return p1
.end method

.method static synthetic access$34500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    .prologue
    .line 9379
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method static synthetic access$34502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 9379
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;
    .locals 1

    .prologue
    .line 9389
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 9398
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_ConfirmationEmailRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$33300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 9435
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 9436
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 9437
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 9438
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;
    .locals 1

    .prologue
    .line 9506
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->access$33600()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    .prologue
    .line 9509
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9475
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;

    move-result-object v0

    .line 9476
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9477
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->access$33500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    move-result-object v1

    .line 9479
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9486
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;

    move-result-object v0

    .line 9487
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9488
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->access$33500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    move-result-object v1

    .line 9490
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9442
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->access$33500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9448
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->access$33500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9496
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->access$33500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9502
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->access$33500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9464
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->access$33500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9470
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->access$33500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9453
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->access$33500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9459
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->access$33500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1

    .prologue
    .line 9418
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 9379
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9379
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;
    .locals 1

    .prologue
    .line 9393
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 9432
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9425
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->token_:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1

    .prologue
    .line 9411
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    return-object v0
.end method

.method public hasAppInfo()Z
    .locals 1

    .prologue
    .line 9417
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->hasAppInfo:Z

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 9431
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->hasMessageInfo:Z

    return v0
.end method

.method public hasToken()Z
    .locals 1

    .prologue
    .line 9424
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->hasToken:Z

    return v0
.end method

.method public hasUserInfo()Z
    .locals 1

    .prologue
    .line 9410
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->hasUserInfo:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 9403
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_ConfirmationEmailRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$33400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 9379
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9379
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;
    .locals 1

    .prologue
    .line 9507
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 9379
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9379
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;
    .locals 1

    .prologue
    .line 9511
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;

    move-result-object v0

    return-object v0
.end method
