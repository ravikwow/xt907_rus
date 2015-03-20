.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ForgotPasswordResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;
    }
.end annotation


# static fields
.field public static final ERROR_FIELD_NUMBER:I = 0x1

.field public static final MESSAGEINFO_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;


# instance fields
.field private error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field private hasError:Z

.field private hasMessageInfo:Z

.field private messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8189
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    .line 8190
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internalForceInit()V

    .line 8191
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->initFields()V

    .line 8192
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7942
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 7943
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->initFields()V

    .line 7944
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;

    .prologue
    .line 7939
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "noInit"    # Z

    .prologue
    .line 7945
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    return-void
.end method

.method static synthetic access$28702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 7939
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->hasError:Z

    return p1
.end method

.method static synthetic access$28802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .prologue
    .line 7939
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    return-object p1
.end method

.method static synthetic access$28902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 7939
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->hasMessageInfo:Z

    return p1
.end method

.method static synthetic access$29000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    .prologue
    .line 7939
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method static synthetic access$29002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 7939
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;
    .locals 1

    .prologue
    .line 7949
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 7958
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_ForgotPasswordResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$28200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 7981
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->UNKNOWN_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 7982
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 7983
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;
    .locals 1

    .prologue
    .line 8051
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->access$28500()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    .prologue
    .line 8054
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8020
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;

    move-result-object v0

    .line 8021
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8022
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->access$28400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    move-result-object v1

    .line 8024
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8031
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;

    move-result-object v0

    .line 8032
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8033
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->access$28400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    move-result-object v1

    .line 8035
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7987
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->access$28400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7993
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->access$28400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8041
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->access$28400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8047
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->access$28400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8009
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->access$28400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8015
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->access$28400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7998
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->access$28400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8004
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->access$28400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 7939
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7939
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;
    .locals 1

    .prologue
    .line 7953
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 1

    .prologue
    .line 7971
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 7978
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 7970
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->hasError:Z

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 7977
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->hasMessageInfo:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 7963
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_ForgotPasswordResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$28300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7939
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7939
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;
    .locals 1

    .prologue
    .line 8052
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7939
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7939
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;
    .locals 1

    .prologue
    .line 8056
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method
