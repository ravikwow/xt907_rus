.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VerifyAccountResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;
    }
.end annotation


# static fields
.field public static final ERROR_FIELD_NUMBER:I = 0x1

.field public static final MESSAGEINFO_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;


# instance fields
.field private error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field private hasError:Z

.field private hasMessageInfo:Z

.field private messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2180
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    .line 2181
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internalForceInit()V

    .line 2182
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->initFields()V

    .line 2183
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1933
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1934
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->initFields()V

    .line 1935
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;

    .prologue
    .line 1930
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "noInit"    # Z

    .prologue
    .line 1936
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    return-void
.end method

.method static synthetic access$7002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 1930
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->hasError:Z

    return p1
.end method

.method static synthetic access$7102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .prologue
    .line 1930
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    return-object p1
.end method

.method static synthetic access$7202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 1930
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->hasMessageInfo:Z

    return p1
.end method

.method static synthetic access$7300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    .prologue
    .line 1930
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method static synthetic access$7302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 1930
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;
    .locals 1

    .prologue
    .line 1940
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1949
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_VerifyAccountResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$6500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 1972
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->UNKNOWN_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 1973
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 1974
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;
    .locals 1

    .prologue
    .line 2042
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->access$6800()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    .prologue
    .line 2045
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2011
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;

    move-result-object v0

    .line 2012
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2013
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->access$6700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    move-result-object v1

    .line 2015
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2022
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;

    move-result-object v0

    .line 2023
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2024
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->access$6700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    move-result-object v1

    .line 2026
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1978
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->access$6700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1984
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->access$6700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2032
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->access$6700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2038
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->access$6700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2000
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->access$6700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2006
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->access$6700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1989
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->access$6700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1995
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->access$6700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1930
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1930
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;
    .locals 1

    .prologue
    .line 1944
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 1

    .prologue
    .line 1962
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 1969
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 1961
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->hasError:Z

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 1968
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->hasMessageInfo:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1954
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_VerifyAccountResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$6600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1930
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1930
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;
    .locals 1

    .prologue
    .line 2043
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1930
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1930
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;
    .locals 1

    .prologue
    .line 2047
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method
