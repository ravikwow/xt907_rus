.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TokenValidationRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;,
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;
    }
.end annotation


# static fields
.field public static final APPINFO_FIELD_NUMBER:I = 0x1

.field public static final MESSAGEINFO_FIELD_NUMBER:I = 0x2

.field public static final TOKEN_FIELD_NUMBER:I = 0x3

.field public static final TYPE_FIELD_NUMBER:I = 0x4

.field public static final USERINFO_FIELD_NUMBER:I = 0x5

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;


# instance fields
.field private appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

.field private hasAppInfo:Z

.field private hasMessageInfo:Z

.field private hasToken:Z

.field private hasType:Z

.field private hasUserInfo:Z

.field private messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

.field private token_:Ljava/lang/String;

.field private type_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;

.field private userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11026
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    .line 11027
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internalForceInit()V

    .line 11028
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->initFields()V

    .line 11029
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 10592
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 10702
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->token_:Ljava/lang/String;

    .line 10593
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->initFields()V

    .line 10594
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;

    .prologue
    .line 10589
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 10595
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 10702
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->token_:Ljava/lang/String;

    .line 10595
    return-void
.end method

.method static synthetic access$38202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 10589
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->hasAppInfo:Z

    return p1
.end method

.method static synthetic access$38300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    .prologue
    .line 10589
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object v0
.end method

.method static synthetic access$38302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 10589
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object p1
.end method

.method static synthetic access$38402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 10589
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->hasMessageInfo:Z

    return p1
.end method

.method static synthetic access$38500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    .prologue
    .line 10589
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method static synthetic access$38502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 10589
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object p1
.end method

.method static synthetic access$38602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 10589
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->hasToken:Z

    return p1
.end method

.method static synthetic access$38702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 10589
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->token_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$38802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 10589
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->hasType:Z

    return p1
.end method

.method static synthetic access$38902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;

    .prologue
    .line 10589
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->type_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;

    return-object p1
.end method

.method static synthetic access$39002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 10589
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->hasUserInfo:Z

    return p1
.end method

.method static synthetic access$39100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    .prologue
    .line 10589
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    return-object v0
.end method

.method static synthetic access$39102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .prologue
    .line 10589
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;
    .locals 1

    .prologue
    .line 10599
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 10608
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_TokenValidationRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$37700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 10721
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 10722
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 10723
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;->CREATE_ACCOUNT:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->type_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;

    .line 10724
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 10725
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;
    .locals 1

    .prologue
    .line 10793
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->access$38000()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    .prologue
    .line 10796
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10762
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;

    move-result-object v0

    .line 10763
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10764
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->access$37900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    move-result-object v1

    .line 10766
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10773
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;

    move-result-object v0

    .line 10774
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10775
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->access$37900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    move-result-object v1

    .line 10777
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10729
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->access$37900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10735
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->access$37900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10783
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->access$37900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10789
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->access$37900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10751
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->access$37900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10757
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->access$37900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10740
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->access$37900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10746
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->access$37900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1

    .prologue
    .line 10690
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 10589
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10589
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;
    .locals 1

    .prologue
    .line 10603
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 10697
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10704
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->token_:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;
    .locals 1

    .prologue
    .line 10711
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->type_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;

    return-object v0
.end method

.method public getUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1

    .prologue
    .line 10718
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    return-object v0
.end method

.method public hasAppInfo()Z
    .locals 1

    .prologue
    .line 10689
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->hasAppInfo:Z

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 10696
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->hasMessageInfo:Z

    return v0
.end method

.method public hasToken()Z
    .locals 1

    .prologue
    .line 10703
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->hasToken:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 10710
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->hasType:Z

    return v0
.end method

.method public hasUserInfo()Z
    .locals 1

    .prologue
    .line 10717
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->hasUserInfo:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 10613
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_TokenValidationRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$37800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 10589
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10589
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;
    .locals 1

    .prologue
    .line 10794
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 10589
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10589
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;
    .locals 1

    .prologue
    .line 10798
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;

    move-result-object v0

    return-object v0
.end method