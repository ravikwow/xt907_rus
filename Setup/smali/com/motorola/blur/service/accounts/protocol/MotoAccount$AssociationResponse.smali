.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssociationResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;
    }
.end annotation


# static fields
.field public static final ASSOCIATIONS_FIELD_NUMBER:I = 0x2

.field public static final ERROR_FIELD_NUMBER:I = 0x1

.field public static final MESSAGEINFO_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;


# instance fields
.field private associations_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;",
            ">;"
        }
    .end annotation
.end field

.field private error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field private hasError:Z

.field private hasMessageInfo:Z

.field private messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12196
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    .line 12197
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internalForceInit()V

    .line 12198
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->initFields()V

    .line 12199
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 11882
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 11915
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->associations_:Ljava/util/List;

    .line 11883
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->initFields()V

    .line 11884
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;

    .prologue
    .line 11879
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 11885
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 11915
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->associations_:Ljava/util/List;

    .line 11885
    return-void
.end method

.method static synthetic access$43100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    .prologue
    .line 11879
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->associations_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$43102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 11879
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->associations_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$43202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 11879
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->hasError:Z

    return p1
.end method

.method static synthetic access$43302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .prologue
    .line 11879
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    return-object p1
.end method

.method static synthetic access$43402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 11879
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->hasMessageInfo:Z

    return p1
.end method

.method static synthetic access$43500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    .prologue
    .line 11879
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method static synthetic access$43502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 11879
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;
    .locals 1

    .prologue
    .line 11889
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 11898
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_AssociationResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$42600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 11933
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->UNKNOWN_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 11934
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 11935
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;
    .locals 1

    .prologue
    .line 12003
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->access$42900()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    .prologue
    .line 12006
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11972
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;

    move-result-object v0

    .line 11973
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11974
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->access$42800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    move-result-object v1

    .line 11976
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11983
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;

    move-result-object v0

    .line 11984
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11985
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->access$42800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    move-result-object v1

    .line 11987
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11939
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->access$42800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11945
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->access$42800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11993
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->access$42800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11999
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->access$42800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11961
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->access$42800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11967
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->access$42800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11950
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->access$42800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11956
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->access$42800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAssociations(I)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 11922
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->associations_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    return-object v0
.end method

.method public getAssociationsCount()I
    .locals 1

    .prologue
    .line 11920
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->associations_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAssociationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11918
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->associations_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 11879
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11879
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;
    .locals 1

    .prologue
    .line 11893
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 1

    .prologue
    .line 11911
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 11930
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 11910
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->hasError:Z

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 11929
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->hasMessageInfo:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 11903
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_AssociationResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$42700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11879
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11879
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;
    .locals 1

    .prologue
    .line 12004
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11879
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11879
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;
    .locals 1

    .prologue
    .line 12008
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method
