.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetAccountResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;
    }
.end annotation


# static fields
.field public static final ERROR_FIELD_NUMBER:I = 0x1

.field public static final MESSAGEINFO_FIELD_NUMBER:I = 0x3

.field public static final USERINFO_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;


# instance fields
.field private error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field private hasError:Z

.field private hasMessageInfo:Z

.field private hasUserInfo:Z

.field private messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

.field private userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4113
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    .line 4114
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internalForceInit()V

    .line 4115
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->initFields()V

    .line 4116
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3821
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 3822
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->initFields()V

    .line 3823
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;

    .prologue
    .line 3818
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "noInit"    # Z

    .prologue
    .line 3824
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    return-void
.end method

.method static synthetic access$14002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 3818
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->hasError:Z

    return p1
.end method

.method static synthetic access$14102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .prologue
    .line 3818
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    return-object p1
.end method

.method static synthetic access$14202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 3818
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->hasUserInfo:Z

    return p1
.end method

.method static synthetic access$14300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    .prologue
    .line 3818
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    return-object v0
.end method

.method static synthetic access$14302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .prologue
    .line 3818
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    return-object p1
.end method

.method static synthetic access$14402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 3818
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->hasMessageInfo:Z

    return p1
.end method

.method static synthetic access$14500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    .prologue
    .line 3818
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method static synthetic access$14502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 3818
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;
    .locals 1

    .prologue
    .line 3828
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3837
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_GetAccountResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$13500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 3867
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->UNKNOWN_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 3868
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 3869
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 3870
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;
    .locals 1

    .prologue
    .line 3938
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->access$13800()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    .prologue
    .line 3941
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3907
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;

    move-result-object v0

    .line 3908
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3909
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->access$13700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    move-result-object v1

    .line 3911
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3918
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;

    move-result-object v0

    .line 3919
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3920
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->access$13700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    move-result-object v1

    .line 3922
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3874
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->access$13700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3880
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->access$13700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3928
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->access$13700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3934
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->access$13700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3896
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->access$13700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3902
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->access$13700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3885
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->access$13700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3891
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->access$13700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3818
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3818
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;
    .locals 1

    .prologue
    .line 3832
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 1

    .prologue
    .line 3850
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 3864
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method public getUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1

    .prologue
    .line 3857
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 3849
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->hasError:Z

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 3863
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->hasMessageInfo:Z

    return v0
.end method

.method public hasUserInfo()Z
    .locals 1

    .prologue
    .line 3856
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->hasUserInfo:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 3842
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_GetAccountResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$13600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3818
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3818
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;
    .locals 1

    .prologue
    .line 3939
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3818
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3818
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;
    .locals 1

    .prologue
    .line 3943
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method
