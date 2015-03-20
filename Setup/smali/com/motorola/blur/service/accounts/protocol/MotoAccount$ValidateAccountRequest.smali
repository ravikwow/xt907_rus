.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ValidateAccountRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;
    }
.end annotation


# static fields
.field public static final APPINFO_FIELD_NUMBER:I = 0x2

.field public static final MESSAGEINFO_FIELD_NUMBER:I = 0x3

.field public static final SESSION_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;


# instance fields
.field private appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

.field private hasAppInfo:Z

.field private hasMessageInfo:Z

.field private hasSession:Z

.field private messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

.field private session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9113
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    .line 9114
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internalForceInit()V

    .line 9115
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->initFields()V

    .line 9116
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8805
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 8806
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->initFields()V

    .line 8807
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;

    .prologue
    .line 8802
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "noInit"    # Z

    .prologue
    .line 8808
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    return-void
.end method

.method static synthetic access$31802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 8802
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->hasSession:Z

    return p1
.end method

.method static synthetic access$31900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    .prologue
    .line 8802
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    return-object v0
.end method

.method static synthetic access$31902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    .prologue
    .line 8802
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    return-object p1
.end method

.method static synthetic access$32002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 8802
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->hasAppInfo:Z

    return p1
.end method

.method static synthetic access$32100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    .prologue
    .line 8802
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object v0
.end method

.method static synthetic access$32102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 8802
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object p1
.end method

.method static synthetic access$32202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 8802
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->hasMessageInfo:Z

    return p1
.end method

.method static synthetic access$32300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    .prologue
    .line 8802
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method static synthetic access$32302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 8802
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;
    .locals 1

    .prologue
    .line 8812
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 8821
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_ValidateAccountRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$31300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 8851
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    .line 8852
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 8853
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 8854
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;
    .locals 1

    .prologue
    .line 8922
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->access$31600()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    .prologue
    .line 8925
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8891
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;

    move-result-object v0

    .line 8892
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8893
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->access$31500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    move-result-object v1

    .line 8895
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8902
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;

    move-result-object v0

    .line 8903
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8904
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->access$31500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    move-result-object v1

    .line 8906
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8858
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->access$31500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8864
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->access$31500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8912
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->access$31500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8918
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->access$31500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8880
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->access$31500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8886
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->access$31500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8869
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->access$31500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8875
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->access$31500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1

    .prologue
    .line 8841
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 8802
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8802
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;
    .locals 1

    .prologue
    .line 8816
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 8848
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method public getSession()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    .locals 1

    .prologue
    .line 8834
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    return-object v0
.end method

.method public hasAppInfo()Z
    .locals 1

    .prologue
    .line 8840
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->hasAppInfo:Z

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 8847
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->hasMessageInfo:Z

    return v0
.end method

.method public hasSession()Z
    .locals 1

    .prologue
    .line 8833
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->hasSession:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 8826
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_ValidateAccountRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$31400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 8802
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8802
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;
    .locals 1

    .prologue
    .line 8923
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 8802
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8802
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;
    .locals 1

    .prologue
    .line 8927
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method
