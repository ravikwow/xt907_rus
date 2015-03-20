.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RestoreAccountResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;
    }
.end annotation


# static fields
.field public static final ERROR_FIELD_NUMBER:I = 0x1

.field public static final MESSAGEINFO_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;


# instance fields
.field private error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field private hasError:Z

.field private hasMessageInfo:Z

.field private messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6301
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    .line 6302
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internalForceInit()V

    .line 6303
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->initFields()V

    .line 6304
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6054
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 6055
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->initFields()V

    .line 6056
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;

    .prologue
    .line 6051
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "noInit"    # Z

    .prologue
    .line 6057
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    return-void
.end method

.method static synthetic access$22002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 6051
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->hasError:Z

    return p1
.end method

.method static synthetic access$22102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .prologue
    .line 6051
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    return-object p1
.end method

.method static synthetic access$22202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 6051
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->hasMessageInfo:Z

    return p1
.end method

.method static synthetic access$22300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    .prologue
    .line 6051
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method static synthetic access$22302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 6051
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;
    .locals 1

    .prologue
    .line 6061
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6070
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_RestoreAccountResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$21500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 6093
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->UNKNOWN_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 6094
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 6095
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;
    .locals 1

    .prologue
    .line 6163
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->access$21800()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    .prologue
    .line 6166
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6132
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;

    move-result-object v0

    .line 6133
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6134
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->access$21700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    move-result-object v1

    .line 6136
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6143
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;

    move-result-object v0

    .line 6144
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6145
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->access$21700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    move-result-object v1

    .line 6147
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6099
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->access$21700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6105
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->access$21700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6153
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->access$21700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6159
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->access$21700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6121
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->access$21700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6127
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->access$21700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6110
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->access$21700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6116
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->access$21700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6051
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6051
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;
    .locals 1

    .prologue
    .line 6065
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 1

    .prologue
    .line 6083
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 6090
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 6082
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->hasError:Z

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 6089
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->hasMessageInfo:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6075
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_RestoreAccountResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$21600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6051
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6051
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;
    .locals 1

    .prologue
    .line 6164
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6051
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6051
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;
    .locals 1

    .prologue
    .line 6168
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method
